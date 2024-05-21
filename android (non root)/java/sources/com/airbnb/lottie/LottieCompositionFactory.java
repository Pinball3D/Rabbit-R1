package com.airbnb.lottie;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Typeface;
import android.util.Base64;
import com.airbnb.lottie.model.Font;
import com.airbnb.lottie.model.LottieCompositionCache;
import com.airbnb.lottie.network.NetworkCache;
import com.airbnb.lottie.parser.LottieCompositionMoshiParser;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.utils.Logger;
import com.airbnb.lottie.utils.Utils;
import com.google.common.base.Ascii;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.zip.GZIPInputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import okio.BufferedSource;
import okio.Okio;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class LottieCompositionFactory {
    private static final Map<String, LottieTask<LottieComposition>> taskCache = new HashMap();
    private static final Set<LottieTaskIdleListener> taskIdleListeners = new HashSet();
    private static final byte[] ZIP_MAGIC = {80, 75, 3, 4};
    private static final byte[] GZIP_MAGIC = {Ascii.US, -117, 8};

    private LottieCompositionFactory() {
    }

    public static void setMaxCacheSize(int i) {
        LottieCompositionCache.getInstance().resize(i);
    }

    public static void clearCache(Context context) {
        taskCache.clear();
        LottieCompositionCache.getInstance().clear();
        NetworkCache networkCache = L.networkCache(context);
        if (networkCache != null) {
            networkCache.clear();
        }
    }

    public static void registerLottieTaskIdleListener(LottieTaskIdleListener lottieTaskIdleListener) {
        taskIdleListeners.add(lottieTaskIdleListener);
        lottieTaskIdleListener.onIdleChanged(taskCache.size() == 0);
    }

    public static void unregisterLottieTaskIdleListener(LottieTaskIdleListener lottieTaskIdleListener) {
        taskIdleListeners.remove(lottieTaskIdleListener);
    }

    public static LottieTask<LottieComposition> fromUrl(Context context, String str) {
        return fromUrl(context, str, "url_" + str);
    }

    public static LottieTask<LottieComposition> fromUrl(final Context context, final String str, final String str2) {
        return cache(str2, new Callable() { // from class: com.airbnb.lottie.LottieCompositionFactory$$ExternalSyntheticLambda15
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return LottieCompositionFactory.lambda$fromUrl$0(context, str, str2);
            }
        }, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ LottieResult lambda$fromUrl$0(Context context, String str, String str2) throws Exception {
        LottieResult<LottieComposition> fetchSync = L.networkFetcher(context).fetchSync(context, str, str2);
        if (str2 != null && fetchSync.getValue() != null) {
            LottieCompositionCache.getInstance().put(str2, fetchSync.getValue());
        }
        return fetchSync;
    }

    public static LottieResult<LottieComposition> fromUrlSync(Context context, String str) {
        return fromUrlSync(context, str, str);
    }

    public static LottieResult<LottieComposition> fromUrlSync(Context context, String str, String str2) {
        LottieComposition lottieComposition = str2 == null ? null : LottieCompositionCache.getInstance().get(str2);
        if (lottieComposition != null) {
            return new LottieResult<>(lottieComposition);
        }
        LottieResult<LottieComposition> fetchSync = L.networkFetcher(context).fetchSync(context, str, str2);
        if (str2 != null && fetchSync.getValue() != null) {
            LottieCompositionCache.getInstance().put(str2, fetchSync.getValue());
        }
        return fetchSync;
    }

    public static LottieTask<LottieComposition> fromAsset(Context context, String str) {
        return fromAsset(context, str, "asset_" + str);
    }

    public static LottieTask<LottieComposition> fromAsset(Context context, final String str, final String str2) {
        final Context applicationContext = context.getApplicationContext();
        return cache(str2, new Callable() { // from class: com.airbnb.lottie.LottieCompositionFactory$$ExternalSyntheticLambda6
            @Override // java.util.concurrent.Callable
            public final Object call() {
                LottieResult fromAssetSync;
                fromAssetSync = LottieCompositionFactory.fromAssetSync(applicationContext, str, str2);
                return fromAssetSync;
            }
        }, null);
    }

    public static LottieResult<LottieComposition> fromAssetSync(Context context, String str) {
        return fromAssetSync(context, str, "asset_" + str);
    }

    public static LottieResult<LottieComposition> fromAssetSync(Context context, String str, String str2) {
        LottieComposition lottieComposition = str2 == null ? null : LottieCompositionCache.getInstance().get(str2);
        if (lottieComposition != null) {
            return new LottieResult<>(lottieComposition);
        }
        try {
            BufferedSource buffer = Okio.buffer(Okio.source(context.getAssets().open(str)));
            if (isZipCompressed(buffer).booleanValue()) {
                return fromZipStreamSync(context, new ZipInputStream(buffer.inputStream()), str2);
            }
            if (isGzipCompressed(buffer).booleanValue()) {
                return fromJsonInputStreamSync(new GZIPInputStream(buffer.inputStream()), str2);
            }
            return fromJsonInputStreamSync(buffer.inputStream(), str2);
        } catch (IOException e) {
            return new LottieResult<>((Throwable) e);
        }
    }

    public static LottieTask<LottieComposition> fromRawRes(Context context, int i) {
        return fromRawRes(context, i, rawResCacheKey(context, i));
    }

    public static LottieTask<LottieComposition> fromRawRes(Context context, final int i, final String str) {
        final WeakReference weakReference = new WeakReference(context);
        final Context applicationContext = context.getApplicationContext();
        return cache(str, new Callable() { // from class: com.airbnb.lottie.LottieCompositionFactory$$ExternalSyntheticLambda7
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return LottieCompositionFactory.lambda$fromRawRes$2(weakReference, applicationContext, i, str);
            }
        }, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ LottieResult lambda$fromRawRes$2(WeakReference weakReference, Context context, int i, String str) throws Exception {
        Context context2 = (Context) weakReference.get();
        if (context2 != null) {
            context = context2;
        }
        return fromRawResSync(context, i, str);
    }

    public static LottieResult<LottieComposition> fromRawResSync(Context context, int i) {
        return fromRawResSync(context, i, rawResCacheKey(context, i));
    }

    public static LottieResult<LottieComposition> fromRawResSync(Context context, int i, String str) {
        LottieComposition lottieComposition = str == null ? null : LottieCompositionCache.getInstance().get(str);
        if (lottieComposition != null) {
            return new LottieResult<>(lottieComposition);
        }
        try {
            BufferedSource buffer = Okio.buffer(Okio.source(context.getResources().openRawResource(i)));
            if (isZipCompressed(buffer).booleanValue()) {
                return fromZipStreamSync(context, new ZipInputStream(buffer.inputStream()), str);
            }
            if (isGzipCompressed(buffer).booleanValue()) {
                try {
                    return fromJsonInputStreamSync(new GZIPInputStream(buffer.inputStream()), str);
                } catch (IOException e) {
                    return new LottieResult<>((Throwable) e);
                }
            }
            return fromJsonInputStreamSync(buffer.inputStream(), str);
        } catch (Resources.NotFoundException e2) {
            return new LottieResult<>((Throwable) e2);
        }
    }

    private static String rawResCacheKey(Context context, int i) {
        return "rawRes" + (isNightMode(context) ? "_night_" : "_day_") + i;
    }

    private static boolean isNightMode(Context context) {
        return (context.getResources().getConfiguration().uiMode & 48) == 32;
    }

    public static LottieTask<LottieComposition> fromJsonInputStream(final InputStream inputStream, final String str) {
        return cache(str, new Callable() { // from class: com.airbnb.lottie.LottieCompositionFactory$$ExternalSyntheticLambda2
            @Override // java.util.concurrent.Callable
            public final Object call() {
                LottieResult fromJsonInputStreamSync;
                fromJsonInputStreamSync = LottieCompositionFactory.fromJsonInputStreamSync(inputStream, str);
                return fromJsonInputStreamSync;
            }
        }, new Runnable() { // from class: com.airbnb.lottie.LottieCompositionFactory$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                Utils.closeQuietly(inputStream);
            }
        });
    }

    public static LottieTask<LottieComposition> fromJsonInputStream(final InputStream inputStream, final String str, final boolean z) {
        return cache(str, new Callable() { // from class: com.airbnb.lottie.LottieCompositionFactory$$ExternalSyntheticLambda0
            @Override // java.util.concurrent.Callable
            public final Object call() {
                LottieResult fromJsonInputStreamSync;
                fromJsonInputStreamSync = LottieCompositionFactory.fromJsonInputStreamSync(inputStream, str, z);
                return fromJsonInputStreamSync;
            }
        }, new Runnable() { // from class: com.airbnb.lottie.LottieCompositionFactory$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                LottieCompositionFactory.lambda$fromJsonInputStream$6(z, inputStream);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$fromJsonInputStream$6(boolean z, InputStream inputStream) {
        if (z) {
            Utils.closeQuietly(inputStream);
        }
    }

    public static LottieResult<LottieComposition> fromJsonInputStreamSync(InputStream inputStream, String str) {
        return fromJsonInputStreamSync(inputStream, str, true);
    }

    public static LottieResult<LottieComposition> fromJsonInputStreamSync(InputStream inputStream, String str, boolean z) {
        return fromJsonReaderSync(JsonReader.of(Okio.buffer(Okio.source(inputStream))), str, z);
    }

    @Deprecated
    public static LottieTask<LottieComposition> fromJson(final JSONObject jSONObject, final String str) {
        return cache(str, new Callable() { // from class: com.airbnb.lottie.LottieCompositionFactory$$ExternalSyntheticLambda16
            @Override // java.util.concurrent.Callable
            public final Object call() {
                LottieResult fromJsonSync;
                fromJsonSync = LottieCompositionFactory.fromJsonSync(jSONObject, str);
                return fromJsonSync;
            }
        }, null);
    }

    @Deprecated
    public static LottieResult<LottieComposition> fromJsonSync(JSONObject jSONObject, String str) {
        return fromJsonStringSync(jSONObject.toString(), str);
    }

    public static LottieTask<LottieComposition> fromJsonString(final String str, final String str2) {
        return cache(str2, new Callable() { // from class: com.airbnb.lottie.LottieCompositionFactory$$ExternalSyntheticLambda1
            @Override // java.util.concurrent.Callable
            public final Object call() {
                LottieResult fromJsonStringSync;
                fromJsonStringSync = LottieCompositionFactory.fromJsonStringSync(str, str2);
                return fromJsonStringSync;
            }
        }, null);
    }

    public static LottieResult<LottieComposition> fromJsonStringSync(String str, String str2) {
        return fromJsonReaderSync(JsonReader.of(Okio.buffer(Okio.source(new ByteArrayInputStream(str.getBytes())))), str2);
    }

    public static LottieTask<LottieComposition> fromJsonReader(final JsonReader jsonReader, final String str) {
        return cache(str, new Callable() { // from class: com.airbnb.lottie.LottieCompositionFactory$$ExternalSyntheticLambda13
            @Override // java.util.concurrent.Callable
            public final Object call() {
                LottieResult fromJsonReaderSync;
                fromJsonReaderSync = LottieCompositionFactory.fromJsonReaderSync(JsonReader.this, str);
                return fromJsonReaderSync;
            }
        }, new Runnable() { // from class: com.airbnb.lottie.LottieCompositionFactory$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                Utils.closeQuietly(JsonReader.this);
            }
        });
    }

    public static LottieResult<LottieComposition> fromJsonReaderSync(JsonReader jsonReader, String str) {
        return fromJsonReaderSync(jsonReader, str, true);
    }

    public static LottieResult<LottieComposition> fromJsonReaderSync(JsonReader jsonReader, String str, boolean z) {
        return fromJsonReaderSyncInternal(jsonReader, str, z);
    }

    private static LottieResult<LottieComposition> fromJsonReaderSyncInternal(JsonReader jsonReader, String str, boolean z) {
        LottieComposition lottieComposition;
        try {
            if (str == null) {
                lottieComposition = null;
            } else {
                try {
                    lottieComposition = LottieCompositionCache.getInstance().get(str);
                } catch (Exception e) {
                    LottieResult<LottieComposition> lottieResult = new LottieResult<>(e);
                    if (z) {
                        Utils.closeQuietly(jsonReader);
                    }
                    return lottieResult;
                }
            }
            if (lottieComposition != null) {
                LottieResult<LottieComposition> lottieResult2 = new LottieResult<>(lottieComposition);
                if (z) {
                    Utils.closeQuietly(jsonReader);
                }
                return lottieResult2;
            }
            LottieComposition parse = LottieCompositionMoshiParser.parse(jsonReader);
            if (str != null) {
                LottieCompositionCache.getInstance().put(str, parse);
            }
            LottieResult<LottieComposition> lottieResult3 = new LottieResult<>(parse);
            if (z) {
                Utils.closeQuietly(jsonReader);
            }
            return lottieResult3;
        } catch (Throwable th) {
            if (z) {
                Utils.closeQuietly(jsonReader);
            }
            throw th;
        }
    }

    public static LottieTask<LottieComposition> fromZipStream(ZipInputStream zipInputStream, String str) {
        return fromZipStream((Context) null, zipInputStream, str);
    }

    public static LottieTask<LottieComposition> fromZipStream(ZipInputStream zipInputStream, String str, boolean z) {
        return fromZipStream(null, zipInputStream, str, z);
    }

    public static LottieTask<LottieComposition> fromZipStream(final Context context, final ZipInputStream zipInputStream, final String str) {
        return cache(str, new Callable() { // from class: com.airbnb.lottie.LottieCompositionFactory$$ExternalSyntheticLambda9
            @Override // java.util.concurrent.Callable
            public final Object call() {
                LottieResult fromZipStreamSync;
                fromZipStreamSync = LottieCompositionFactory.fromZipStreamSync(context, zipInputStream, str);
                return fromZipStreamSync;
            }
        }, new Runnable() { // from class: com.airbnb.lottie.LottieCompositionFactory$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                Utils.closeQuietly(zipInputStream);
            }
        });
    }

    public static LottieTask<LottieComposition> fromZipStream(final Context context, final ZipInputStream zipInputStream, final String str, boolean z) {
        return cache(str, new Callable() { // from class: com.airbnb.lottie.LottieCompositionFactory$$ExternalSyntheticLambda11
            @Override // java.util.concurrent.Callable
            public final Object call() {
                LottieResult fromZipStreamSync;
                fromZipStreamSync = LottieCompositionFactory.fromZipStreamSync(context, zipInputStream, str);
                return fromZipStreamSync;
            }
        }, z ? new Runnable() { // from class: com.airbnb.lottie.LottieCompositionFactory$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                Utils.closeQuietly(zipInputStream);
            }
        } : null);
    }

    public static LottieResult<LottieComposition> fromZipStreamSync(ZipInputStream zipInputStream, String str) {
        return fromZipStreamSync(zipInputStream, str, true);
    }

    public static LottieResult<LottieComposition> fromZipStreamSync(ZipInputStream zipInputStream, String str, boolean z) {
        return fromZipStreamSync(null, zipInputStream, str, z);
    }

    public static LottieResult<LottieComposition> fromZipStreamSync(Context context, ZipInputStream zipInputStream, String str) {
        return fromZipStreamSync(context, zipInputStream, str, true);
    }

    public static LottieResult<LottieComposition> fromZipStreamSync(Context context, ZipInputStream zipInputStream, String str, boolean z) {
        try {
            return fromZipStreamSyncInternal(context, zipInputStream, str);
        } finally {
            if (z) {
                Utils.closeQuietly(zipInputStream);
            }
        }
    }

    private static LottieResult<LottieComposition> fromZipStreamSyncInternal(Context context, ZipInputStream zipInputStream, String str) {
        LottieComposition lottieComposition;
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        if (str == null) {
            lottieComposition = null;
        } else {
            try {
                lottieComposition = LottieCompositionCache.getInstance().get(str);
            } catch (IOException e) {
                return new LottieResult<>((Throwable) e);
            }
        }
        if (lottieComposition != null) {
            return new LottieResult<>(lottieComposition);
        }
        ZipEntry nextEntry = zipInputStream.getNextEntry();
        LottieComposition lottieComposition2 = null;
        while (nextEntry != null) {
            String name = nextEntry.getName();
            if (name.contains("__MACOSX")) {
                zipInputStream.closeEntry();
            } else if (nextEntry.getName().equalsIgnoreCase("manifest.json")) {
                zipInputStream.closeEntry();
            } else if (nextEntry.getName().contains(".json")) {
                lottieComposition2 = fromJsonReaderSyncInternal(JsonReader.of(Okio.buffer(Okio.source(zipInputStream))), null, false).getValue();
            } else {
                if (!name.contains(".png") && !name.contains(".webp") && !name.contains(".jpg") && !name.contains(".jpeg")) {
                    if (!name.contains(".ttf") && !name.contains(".otf")) {
                        zipInputStream.closeEntry();
                    }
                    String[] split = name.split("/");
                    String str2 = split[split.length - 1];
                    String str3 = str2.split("\\.")[0];
                    File file = new File(context.getCacheDir(), str2);
                    new FileOutputStream(file);
                    try {
                        FileOutputStream fileOutputStream = new FileOutputStream(file);
                        try {
                            byte[] bArr = new byte[4096];
                            while (true) {
                                int read = zipInputStream.read(bArr);
                                if (read == -1) {
                                    break;
                                }
                                fileOutputStream.write(bArr, 0, read);
                            }
                            fileOutputStream.flush();
                            fileOutputStream.close();
                        } catch (Throwable th) {
                            try {
                                fileOutputStream.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                            throw th;
                            break;
                        }
                    } catch (Throwable th3) {
                        Logger.warning("Unable to save font " + str3 + " to the temporary file: " + str2 + ". ", th3);
                    }
                    Typeface createFromFile = Typeface.createFromFile(file);
                    if (!file.delete()) {
                        Logger.warning("Failed to delete temp font file " + file.getAbsolutePath() + ".");
                    }
                    hashMap2.put(str3, createFromFile);
                }
                String[] split2 = name.split("/");
                hashMap.put(split2[split2.length - 1], BitmapFactory.decodeStream(zipInputStream));
            }
            nextEntry = zipInputStream.getNextEntry();
        }
        if (lottieComposition2 == null) {
            return new LottieResult<>((Throwable) new IllegalArgumentException("Unable to parse composition"));
        }
        for (Map.Entry entry : hashMap.entrySet()) {
            LottieImageAsset findImageAssetForFileName = findImageAssetForFileName(lottieComposition2, (String) entry.getKey());
            if (findImageAssetForFileName != null) {
                findImageAssetForFileName.setBitmap(Utils.resizeBitmapIfNeeded((Bitmap) entry.getValue(), findImageAssetForFileName.getWidth(), findImageAssetForFileName.getHeight()));
            }
        }
        for (Map.Entry entry2 : hashMap2.entrySet()) {
            boolean z = false;
            for (Font font : lottieComposition2.getFonts().values()) {
                if (font.getFamily().equals(entry2.getKey())) {
                    font.setTypeface((Typeface) entry2.getValue());
                    z = true;
                }
            }
            if (!z) {
                Logger.warning("Parsed font for " + ((String) entry2.getKey()) + " however it was not found in the animation.");
            }
        }
        if (hashMap.isEmpty()) {
            Iterator<Map.Entry<String, LottieImageAsset>> it = lottieComposition2.getImages().entrySet().iterator();
            while (it.hasNext()) {
                LottieImageAsset value = it.next().getValue();
                if (value == null) {
                    return null;
                }
                String fileName = value.getFileName();
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inScaled = true;
                options.inDensity = 160;
                if (fileName.startsWith("data:") && fileName.indexOf("base64,") > 0) {
                    try {
                        byte[] decode = Base64.decode(fileName.substring(fileName.indexOf(44) + 1), 0);
                        value.setBitmap(BitmapFactory.decodeByteArray(decode, 0, decode.length, options));
                    } catch (IllegalArgumentException e2) {
                        Logger.warning("data URL did not have correct base64 format.", e2);
                        return null;
                    }
                }
            }
        }
        if (str != null) {
            LottieCompositionCache.getInstance().put(str, lottieComposition2);
        }
        return new LottieResult<>(lottieComposition2);
    }

    private static Boolean isZipCompressed(BufferedSource bufferedSource) {
        return matchesMagicBytes(bufferedSource, ZIP_MAGIC);
    }

    private static Boolean isGzipCompressed(BufferedSource bufferedSource) {
        return matchesMagicBytes(bufferedSource, GZIP_MAGIC);
    }

    private static Boolean matchesMagicBytes(BufferedSource bufferedSource, byte[] bArr) {
        try {
            BufferedSource peek = bufferedSource.peek();
            for (byte b : bArr) {
                if (peek.readByte() != b) {
                    return false;
                }
            }
            peek.close();
            return true;
        } catch (Exception e) {
            Logger.error("Failed to check zip file header", e);
            return false;
        } catch (NoSuchMethodError unused) {
            return false;
        }
    }

    private static LottieImageAsset findImageAssetForFileName(LottieComposition lottieComposition, String str) {
        for (LottieImageAsset lottieImageAsset : lottieComposition.getImages().values()) {
            if (lottieImageAsset.getFileName().equals(str)) {
                return lottieImageAsset;
            }
        }
        return null;
    }

    private static LottieTask<LottieComposition> cache(final String str, Callable<LottieResult<LottieComposition>> callable, Runnable runnable) {
        LottieComposition lottieComposition = str == null ? null : LottieCompositionCache.getInstance().get(str);
        LottieTask<LottieComposition> lottieTask = lottieComposition != null ? new LottieTask<>(lottieComposition) : null;
        if (str != null) {
            Map<String, LottieTask<LottieComposition>> map = taskCache;
            if (map.containsKey(str)) {
                lottieTask = map.get(str);
            }
        }
        if (lottieTask != null) {
            if (runnable != null) {
                runnable.run();
            }
            return lottieTask;
        }
        LottieTask<LottieComposition> lottieTask2 = new LottieTask<>(callable);
        if (str != null) {
            final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
            lottieTask2.addListener(new LottieListener() { // from class: com.airbnb.lottie.LottieCompositionFactory$$ExternalSyntheticLambda4
                @Override // com.airbnb.lottie.LottieListener
                public final void onResult(Object obj) {
                    LottieCompositionFactory.lambda$cache$15(str, atomicBoolean, (LottieComposition) obj);
                }
            });
            lottieTask2.addFailureListener(new LottieListener() { // from class: com.airbnb.lottie.LottieCompositionFactory$$ExternalSyntheticLambda5
                @Override // com.airbnb.lottie.LottieListener
                public final void onResult(Object obj) {
                    LottieCompositionFactory.lambda$cache$16(str, atomicBoolean, (Throwable) obj);
                }
            });
            if (!atomicBoolean.get()) {
                Map<String, LottieTask<LottieComposition>> map2 = taskCache;
                map2.put(str, lottieTask2);
                if (map2.size() == 1) {
                    notifyTaskCacheIdleListeners(false);
                }
            }
        }
        return lottieTask2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$cache$15(String str, AtomicBoolean atomicBoolean, LottieComposition lottieComposition) {
        Map<String, LottieTask<LottieComposition>> map = taskCache;
        map.remove(str);
        atomicBoolean.set(true);
        if (map.size() == 0) {
            notifyTaskCacheIdleListeners(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$cache$16(String str, AtomicBoolean atomicBoolean, Throwable th) {
        Map<String, LottieTask<LottieComposition>> map = taskCache;
        map.remove(str);
        atomicBoolean.set(true);
        if (map.size() == 0) {
            notifyTaskCacheIdleListeners(true);
        }
    }

    private static void notifyTaskCacheIdleListeners(boolean z) {
        ArrayList arrayList = new ArrayList(taskIdleListeners);
        for (int i = 0; i < arrayList.size(); i++) {
            ((LottieTaskIdleListener) arrayList.get(i)).onIdleChanged(z);
        }
    }
}
