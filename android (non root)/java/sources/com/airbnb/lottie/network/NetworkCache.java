package com.airbnb.lottie.network;

import android.util.Pair;
import com.airbnb.lottie.utils.Logger;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* loaded from: classes2.dex */
public class NetworkCache {
    private final LottieNetworkCacheProvider cacheProvider;

    public NetworkCache(LottieNetworkCacheProvider lottieNetworkCacheProvider) {
        this.cacheProvider = lottieNetworkCacheProvider;
    }

    public void clear() {
        File parentDir = parentDir();
        if (parentDir.exists()) {
            File[] listFiles = parentDir.listFiles();
            if (listFiles != null && listFiles.length > 0) {
                for (File file : listFiles) {
                    file.delete();
                }
            }
            parentDir.delete();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Pair<FileExtension, InputStream> fetch(String str) {
        FileExtension fileExtension;
        try {
            File cachedFile = getCachedFile(str);
            if (cachedFile == null) {
                return null;
            }
            FileInputStream fileInputStream = new FileInputStream(cachedFile);
            if (cachedFile.getAbsolutePath().endsWith(".zip")) {
                fileExtension = FileExtension.ZIP;
            } else {
                fileExtension = FileExtension.JSON;
            }
            Logger.debug("Cache hit for " + str + " at " + cachedFile.getAbsolutePath());
            return new Pair<>(fileExtension, fileInputStream);
        } catch (FileNotFoundException unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public File writeTempCacheFile(String str, InputStream inputStream, FileExtension fileExtension) throws IOException {
        File file = new File(parentDir(), filenameForUrl(str, fileExtension, true));
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            try {
                byte[] bArr = new byte[1024];
                while (true) {
                    int read = inputStream.read(bArr);
                    if (read != -1) {
                        fileOutputStream.write(bArr, 0, read);
                    } else {
                        fileOutputStream.flush();
                        return file;
                    }
                }
            } finally {
                fileOutputStream.close();
            }
        } finally {
            inputStream.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void renameTempFile(String str, FileExtension fileExtension) {
        File file = new File(parentDir(), filenameForUrl(str, fileExtension, true));
        File file2 = new File(file.getAbsolutePath().replace(".temp", ""));
        boolean renameTo = file.renameTo(file2);
        Logger.debug("Copying temp file to real file (" + file2 + ")");
        if (renameTo) {
            return;
        }
        Logger.warning("Unable to rename cache file " + file.getAbsolutePath() + " to " + file2.getAbsolutePath() + ".");
    }

    private File getCachedFile(String str) throws FileNotFoundException {
        File file = new File(parentDir(), filenameForUrl(str, FileExtension.JSON, false));
        if (file.exists()) {
            return file;
        }
        File file2 = new File(parentDir(), filenameForUrl(str, FileExtension.ZIP, false));
        if (file2.exists()) {
            return file2;
        }
        return null;
    }

    private File parentDir() {
        File cacheDir = this.cacheProvider.getCacheDir();
        if (cacheDir.isFile()) {
            cacheDir.delete();
        }
        if (!cacheDir.exists()) {
            cacheDir.mkdirs();
        }
        return cacheDir;
    }

    private static String filenameForUrl(String str, FileExtension fileExtension, boolean z) {
        String tempExtension = z ? fileExtension.tempExtension() : fileExtension.extension;
        String replaceAll = str.replaceAll("\\W+", "");
        int length = 242 - tempExtension.length();
        if (replaceAll.length() > length) {
            replaceAll = getMD5(replaceAll, length);
        }
        return "lottie_cache_" + replaceAll + tempExtension;
    }

    private static String getMD5(String str, int i) {
        try {
            byte[] digest = MessageDigest.getInstance("MD5").digest(str.getBytes());
            StringBuilder sb = new StringBuilder();
            for (byte b : digest) {
                sb.append(String.format("%02x", Byte.valueOf(b)));
            }
            return sb.toString();
        } catch (NoSuchAlgorithmException unused) {
            return str.substring(0, i);
        }
    }
}
