package com.davemorrissey.labs.subscaleview.decoder;

import android.app.ActivityManager;
import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapRegionDecoder;
import android.graphics.Point;
import android.graphics.Rect;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import com.davemorrissey.labs.subscaleview.SubsamplingScaleImageView;
import java.io.File;
import java.io.FileFilter;
import java.io.InputStream;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public class SkiaPooledImageRegionDecoder implements ImageRegionDecoder {
    private static final String ASSET_PREFIX = "file:///android_asset/";
    private static final String FILE_PREFIX = "file://";
    private static final String RESOURCE_PREFIX = "android.resource://";
    private static final String TAG = "SkiaPooledImageRegionDecoder";
    private static boolean debug;
    private final Bitmap.Config bitmapConfig;
    private Context context;
    private final ReadWriteLock decoderLock;
    private DecoderPool decoderPool;
    private long fileLength;
    private final Point imageDimensions;
    private final AtomicBoolean lazyInited;
    private Uri uri;

    public static void setDebug(boolean z) {
        debug = z;
    }

    public SkiaPooledImageRegionDecoder() {
        this(null);
    }

    public SkiaPooledImageRegionDecoder(Bitmap.Config config) {
        this.decoderPool = new DecoderPool();
        this.decoderLock = new ReentrantReadWriteLock(true);
        this.fileLength = Long.MAX_VALUE;
        this.imageDimensions = new Point(0, 0);
        this.lazyInited = new AtomicBoolean(false);
        Bitmap.Config preferredBitmapConfig = SubsamplingScaleImageView.getPreferredBitmapConfig();
        if (config != null) {
            this.bitmapConfig = config;
        } else if (preferredBitmapConfig != null) {
            this.bitmapConfig = preferredBitmapConfig;
        } else {
            this.bitmapConfig = Bitmap.Config.RGB_565;
        }
    }

    @Override // com.davemorrissey.labs.subscaleview.decoder.ImageRegionDecoder
    public Point init(Context context, Uri uri) throws Exception {
        this.context = context;
        this.uri = uri;
        initialiseDecoder();
        return this.imageDimensions;
    }

    private void lazyInit() {
        if (!this.lazyInited.compareAndSet(false, true) || this.fileLength >= Long.MAX_VALUE) {
            return;
        }
        debug("Starting lazy init of additional decoders");
        new Thread() { // from class: com.davemorrissey.labs.subscaleview.decoder.SkiaPooledImageRegionDecoder.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                while (SkiaPooledImageRegionDecoder.this.decoderPool != null) {
                    SkiaPooledImageRegionDecoder skiaPooledImageRegionDecoder = SkiaPooledImageRegionDecoder.this;
                    if (!skiaPooledImageRegionDecoder.allowAdditionalDecoder(skiaPooledImageRegionDecoder.decoderPool.size(), SkiaPooledImageRegionDecoder.this.fileLength)) {
                        return;
                    }
                    try {
                        if (SkiaPooledImageRegionDecoder.this.decoderPool != null) {
                            long currentTimeMillis = System.currentTimeMillis();
                            SkiaPooledImageRegionDecoder.this.debug("Starting decoder");
                            SkiaPooledImageRegionDecoder.this.initialiseDecoder();
                            SkiaPooledImageRegionDecoder.this.debug("Started decoder, took " + (System.currentTimeMillis() - currentTimeMillis) + "ms");
                        }
                    } catch (Exception e) {
                        SkiaPooledImageRegionDecoder.this.debug("Failed to start decoder: " + e.getMessage());
                    }
                }
            }
        }.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initialiseDecoder() throws Exception {
        BitmapRegionDecoder bitmapRegionDecoder;
        Resources resourcesForApplication;
        int i;
        String uri = this.uri.toString();
        long j = Long.MAX_VALUE;
        if (uri.startsWith(RESOURCE_PREFIX)) {
            String authority = this.uri.getAuthority();
            if (this.context.getPackageName().equals(authority)) {
                resourcesForApplication = this.context.getResources();
            } else {
                resourcesForApplication = this.context.getPackageManager().getResourcesForApplication(authority);
            }
            List<String> pathSegments = this.uri.getPathSegments();
            int size = pathSegments.size();
            if (size == 2 && pathSegments.get(0).equals("drawable")) {
                i = resourcesForApplication.getIdentifier(pathSegments.get(1), "drawable", authority);
            } else {
                if (size == 1 && TextUtils.isDigitsOnly(pathSegments.get(0))) {
                    try {
                        i = Integer.parseInt(pathSegments.get(0));
                    } catch (NumberFormatException unused) {
                    }
                }
                i = 0;
            }
            try {
                j = this.context.getResources().openRawResourceFd(i).getLength();
            } catch (Exception unused2) {
            }
            bitmapRegionDecoder = BitmapRegionDecoder.newInstance(this.context.getResources().openRawResource(i), false);
        } else if (uri.startsWith(ASSET_PREFIX)) {
            String substring = uri.substring(22);
            try {
                j = this.context.getAssets().openFd(substring).getLength();
            } catch (Exception unused3) {
            }
            bitmapRegionDecoder = BitmapRegionDecoder.newInstance(this.context.getAssets().open(substring, 1), false);
        } else if (uri.startsWith(FILE_PREFIX)) {
            BitmapRegionDecoder newInstance = BitmapRegionDecoder.newInstance(uri.substring(7), false);
            try {
                File file = new File(uri);
                if (file.exists()) {
                    j = file.length();
                }
            } catch (Exception unused4) {
            }
            bitmapRegionDecoder = newInstance;
        } else {
            InputStream inputStream = null;
            try {
                ContentResolver contentResolver = this.context.getContentResolver();
                inputStream = contentResolver.openInputStream(this.uri);
                BitmapRegionDecoder newInstance2 = BitmapRegionDecoder.newInstance(inputStream, false);
                try {
                    AssetFileDescriptor openAssetFileDescriptor = contentResolver.openAssetFileDescriptor(this.uri, "r");
                    if (openAssetFileDescriptor != null) {
                        j = openAssetFileDescriptor.getLength();
                    }
                } catch (Exception unused5) {
                }
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (Exception unused6) {
                    }
                }
                bitmapRegionDecoder = newInstance2;
            } catch (Throwable th) {
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (Exception unused7) {
                    }
                }
                throw th;
            }
        }
        this.fileLength = j;
        this.imageDimensions.set(bitmapRegionDecoder.getWidth(), bitmapRegionDecoder.getHeight());
        this.decoderLock.writeLock().lock();
        try {
            DecoderPool decoderPool = this.decoderPool;
            if (decoderPool != null) {
                decoderPool.add(bitmapRegionDecoder);
            }
        } finally {
            this.decoderLock.writeLock().unlock();
        }
    }

    @Override // com.davemorrissey.labs.subscaleview.decoder.ImageRegionDecoder
    public Bitmap decodeRegion(Rect rect, int i) {
        debug("Decode region " + rect + " on thread " + Thread.currentThread().getName());
        if (rect.width() < this.imageDimensions.x || rect.height() < this.imageDimensions.y) {
            lazyInit();
        }
        this.decoderLock.readLock().lock();
        try {
            DecoderPool decoderPool = this.decoderPool;
            if (decoderPool != null) {
                BitmapRegionDecoder acquire = decoderPool.acquire();
                if (acquire != null) {
                    try {
                        if (!acquire.isRecycled()) {
                            BitmapFactory.Options options = new BitmapFactory.Options();
                            options.inSampleSize = i;
                            options.inPreferredConfig = this.bitmapConfig;
                            Bitmap decodeRegion = acquire.decodeRegion(rect, options);
                            if (decodeRegion != null) {
                                return decodeRegion;
                            }
                            throw new RuntimeException("Skia image decoder returned null bitmap - image format may not be supported");
                        }
                    } finally {
                        if (acquire != null) {
                            this.decoderPool.release(acquire);
                        }
                    }
                }
                if (acquire != null) {
                    this.decoderPool.release(acquire);
                }
            }
            throw new IllegalStateException("Cannot decode region after decoder has been recycled");
        } finally {
            this.decoderLock.readLock().unlock();
        }
    }

    @Override // com.davemorrissey.labs.subscaleview.decoder.ImageRegionDecoder
    public synchronized boolean isReady() {
        boolean z;
        DecoderPool decoderPool = this.decoderPool;
        if (decoderPool != null) {
            z = decoderPool.isEmpty() ? false : true;
        }
        return z;
    }

    @Override // com.davemorrissey.labs.subscaleview.decoder.ImageRegionDecoder
    public synchronized void recycle() {
        this.decoderLock.writeLock().lock();
        try {
            DecoderPool decoderPool = this.decoderPool;
            if (decoderPool != null) {
                decoderPool.recycle();
                this.decoderPool = null;
                this.context = null;
                this.uri = null;
            }
        } finally {
            this.decoderLock.writeLock().unlock();
        }
    }

    protected boolean allowAdditionalDecoder(int i, long j) {
        if (i >= 4) {
            debug("No additional decoders allowed, reached hard limit (4)");
            return false;
        }
        long j2 = i * j;
        if (j2 > 20971520) {
            debug("No additional encoders allowed, reached hard memory limit (20Mb)");
            return false;
        }
        if (i >= getNumberOfCores()) {
            debug("No additional encoders allowed, limited by CPU cores (" + getNumberOfCores() + ")");
            return false;
        }
        if (isLowMemory()) {
            debug("No additional encoders allowed, memory is low");
            return false;
        }
        debug("Additional decoder allowed, current count is " + i + ", estimated native memory " + (j2 / 1048576) + "Mb");
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class DecoderPool {
        private final Semaphore available;
        private final Map<BitmapRegionDecoder, Boolean> decoders;

        private DecoderPool() {
            this.available = new Semaphore(0, true);
            this.decoders = new ConcurrentHashMap();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public synchronized boolean isEmpty() {
            return this.decoders.isEmpty();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public synchronized int size() {
            return this.decoders.size();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public BitmapRegionDecoder acquire() {
            this.available.acquireUninterruptibly();
            return getNextAvailable();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void release(BitmapRegionDecoder bitmapRegionDecoder) {
            if (markAsUnused(bitmapRegionDecoder)) {
                this.available.release();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public synchronized void add(BitmapRegionDecoder bitmapRegionDecoder) {
            this.decoders.put(bitmapRegionDecoder, false);
            this.available.release();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public synchronized void recycle() {
            while (!this.decoders.isEmpty()) {
                BitmapRegionDecoder acquire = acquire();
                acquire.recycle();
                this.decoders.remove(acquire);
            }
        }

        private synchronized BitmapRegionDecoder getNextAvailable() {
            for (Map.Entry<BitmapRegionDecoder, Boolean> entry : this.decoders.entrySet()) {
                if (!entry.getValue().booleanValue()) {
                    entry.setValue(true);
                    return entry.getKey();
                }
            }
            return null;
        }

        private synchronized boolean markAsUnused(BitmapRegionDecoder bitmapRegionDecoder) {
            for (Map.Entry<BitmapRegionDecoder, Boolean> entry : this.decoders.entrySet()) {
                if (bitmapRegionDecoder == entry.getKey()) {
                    if (!entry.getValue().booleanValue()) {
                        return false;
                    }
                    entry.setValue(false);
                    return true;
                }
            }
            return false;
        }
    }

    private int getNumberOfCores() {
        return Runtime.getRuntime().availableProcessors();
    }

    private int getNumCoresOldPhones() {
        try {
            return new File("/sys/devices/system/cpu/").listFiles(new FileFilter() { // from class: com.davemorrissey.labs.subscaleview.decoder.SkiaPooledImageRegionDecoder.1CpuFilter
                @Override // java.io.FileFilter
                public boolean accept(File file) {
                    return Pattern.matches("cpu[0-9]+", file.getName());
                }
            }).length;
        } catch (Exception unused) {
            return 1;
        }
    }

    private boolean isLowMemory() {
        ActivityManager activityManager = (ActivityManager) this.context.getSystemService("activity");
        if (activityManager == null) {
            return true;
        }
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        activityManager.getMemoryInfo(memoryInfo);
        return memoryInfo.lowMemory;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void debug(String str) {
        if (debug) {
            Log.d(TAG, str);
        }
    }
}
