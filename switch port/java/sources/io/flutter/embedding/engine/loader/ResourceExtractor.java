package io.flutter.embedding.engine.loader;

import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import android.os.AsyncTask;
import android.os.Build;
import io.flutter.Log;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class ResourceExtractor {
    private static final String[] SUPPORTED_ABIS = getSupportedAbis();
    private static final String TAG = "ResourceExtractor";
    private static final String TIMESTAMP_PREFIX = "res_timestamp-";
    private final AssetManager mAssetManager;
    private final String mDataDirPath;
    private ExtractTask mExtractTask;
    private final PackageManager mPackageManager;
    private final String mPackageName;
    private final HashSet<String> mResources = new HashSet<>();

    static long getVersionCode(PackageInfo packageInfo) {
        return packageInfo.getLongVersionCode();
    }

    /* loaded from: classes3.dex */
    private static class ExtractTask extends AsyncTask<Void, Void, Void> {
        private final AssetManager mAssetManager;
        private final String mDataDirPath;
        private final PackageManager mPackageManager;
        private final String mPackageName;
        private final HashSet<String> mResources;

        ExtractTask(String str, HashSet<String> hashSet, String str2, PackageManager packageManager, AssetManager assetManager) {
            this.mDataDirPath = str;
            this.mResources = hashSet;
            this.mAssetManager = assetManager;
            this.mPackageName = str2;
            this.mPackageManager = packageManager;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Void doInBackground(Void... voidArr) {
            File file = new File(this.mDataDirPath);
            String checkTimestamp = ResourceExtractor.checkTimestamp(file, this.mPackageManager, this.mPackageName);
            if (checkTimestamp == null) {
                return null;
            }
            ResourceExtractor.deleteFiles(this.mDataDirPath, this.mResources);
            if (extractAPK(file) && checkTimestamp != null) {
                try {
                    new File(file, checkTimestamp).createNewFile();
                } catch (IOException unused) {
                    Log.w(ResourceExtractor.TAG, "Failed to write resource timestamp");
                }
            }
            return null;
        }

        private boolean extractAPK(File file) {
            Iterator<String> it = this.mResources.iterator();
            while (it.hasNext()) {
                String next = it.next();
                try {
                    String str = "assets/" + next;
                    File file2 = new File(file, next);
                    if (!file2.exists()) {
                        if (file2.getParentFile() != null) {
                            file2.getParentFile().mkdirs();
                        }
                        InputStream open = this.mAssetManager.open(next);
                        try {
                            FileOutputStream fileOutputStream = new FileOutputStream(file2);
                            try {
                                ResourceExtractor.copy(open, fileOutputStream);
                                fileOutputStream.close();
                                if (open != null) {
                                    open.close();
                                }
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
                            if (open != null) {
                                try {
                                    open.close();
                                } catch (Throwable th4) {
                                    th3.addSuppressed(th4);
                                }
                            }
                            throw th3;
                            break;
                        }
                    }
                } catch (FileNotFoundException unused) {
                } catch (IOException e) {
                    Log.w(ResourceExtractor.TAG, "Exception unpacking resources: " + e.getMessage());
                    ResourceExtractor.deleteFiles(this.mDataDirPath, this.mResources);
                    return false;
                }
            }
            return true;
        }
    }

    ResourceExtractor(String str, String str2, PackageManager packageManager, AssetManager assetManager) {
        this.mDataDirPath = str;
        this.mPackageName = str2;
        this.mPackageManager = packageManager;
        this.mAssetManager = assetManager;
    }

    ResourceExtractor addResource(String str) {
        this.mResources.add(str);
        return this;
    }

    ResourceExtractor addResources(Collection<String> collection) {
        this.mResources.addAll(collection);
        return this;
    }

    ResourceExtractor start() {
        ExtractTask extractTask = new ExtractTask(this.mDataDirPath, this.mResources, this.mPackageName, this.mPackageManager, this.mAssetManager);
        this.mExtractTask = extractTask;
        extractTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void waitForCompletion() {
        ExtractTask extractTask = this.mExtractTask;
        if (extractTask == null) {
            return;
        }
        try {
            extractTask.get();
        } catch (InterruptedException | CancellationException | ExecutionException unused) {
            deleteFiles(this.mDataDirPath, this.mResources);
        }
    }

    private static String[] getExistingTimestamps(File file) {
        return file.list(new FilenameFilter() { // from class: io.flutter.embedding.engine.loader.ResourceExtractor.1
            @Override // java.io.FilenameFilter
            public boolean accept(File file2, String str) {
                return str.startsWith(ResourceExtractor.TIMESTAMP_PREFIX);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void deleteFiles(String str, HashSet<String> hashSet) {
        File file = new File(str);
        Iterator<String> it = hashSet.iterator();
        while (it.hasNext()) {
            File file2 = new File(file, it.next());
            if (file2.exists()) {
                file2.delete();
            }
        }
        String[] existingTimestamps = getExistingTimestamps(file);
        if (existingTimestamps == null) {
            return;
        }
        for (String str2 : existingTimestamps) {
            new File(file, str2).delete();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String checkTimestamp(File file, PackageManager packageManager, String str) {
        try {
            PackageInfo packageInfo = packageManager.getPackageInfo(str, 0);
            if (packageInfo == null) {
                return TIMESTAMP_PREFIX;
            }
            String str2 = TIMESTAMP_PREFIX + getVersionCode(packageInfo) + "-" + packageInfo.lastUpdateTime;
            String[] existingTimestamps = getExistingTimestamps(file);
            if (existingTimestamps == null) {
                return str2;
            }
            int length = existingTimestamps.length;
            if (existingTimestamps.length == 1 && str2.equals(existingTimestamps[0])) {
                return null;
            }
            return str2;
        } catch (PackageManager.NameNotFoundException unused) {
            return TIMESTAMP_PREFIX;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void copy(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[16384];
        while (true) {
            int read = inputStream.read(bArr);
            if (read < 0) {
                return;
            } else {
                outputStream.write(bArr, 0, read);
            }
        }
    }

    private static String[] getSupportedAbis() {
        return Build.SUPPORTED_ABIS;
    }
}
