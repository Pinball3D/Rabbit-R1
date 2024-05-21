package com.airbnb.lottie.network;

import android.content.Context;
import android.util.Pair;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.LottieCompositionFactory;
import com.airbnb.lottie.LottieResult;
import com.airbnb.lottie.utils.Logger;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.ZipInputStream;

/* loaded from: classes2.dex */
public class NetworkFetcher {
    private final LottieNetworkFetcher fetcher;
    private final NetworkCache networkCache;

    public NetworkFetcher(NetworkCache networkCache, LottieNetworkFetcher lottieNetworkFetcher) {
        this.networkCache = networkCache;
        this.fetcher = lottieNetworkFetcher;
    }

    public LottieResult<LottieComposition> fetchSync(Context context, String str, String str2) {
        LottieComposition fetchFromCache = fetchFromCache(context, str, str2);
        if (fetchFromCache != null) {
            return new LottieResult<>(fetchFromCache);
        }
        Logger.debug("Animation for " + str + " not found in cache. Fetching from network.");
        return fetchFromNetwork(context, str, str2);
    }

    private LottieComposition fetchFromCache(Context context, String str, String str2) {
        NetworkCache networkCache;
        Pair<FileExtension, InputStream> fetch;
        LottieResult<LottieComposition> fromJsonInputStreamSync;
        if (str2 == null || (networkCache = this.networkCache) == null || (fetch = networkCache.fetch(str)) == null) {
            return null;
        }
        FileExtension fileExtension = (FileExtension) fetch.first;
        InputStream inputStream = (InputStream) fetch.second;
        if (fileExtension == FileExtension.ZIP) {
            fromJsonInputStreamSync = LottieCompositionFactory.fromZipStreamSync(context, new ZipInputStream(inputStream), str2);
        } else {
            fromJsonInputStreamSync = LottieCompositionFactory.fromJsonInputStreamSync(inputStream, str2);
        }
        if (fromJsonInputStreamSync.getValue() != null) {
            return fromJsonInputStreamSync.getValue();
        }
        return null;
    }

    private LottieResult<LottieComposition> fetchFromNetwork(Context context, String str, String str2) {
        Logger.debug("Fetching " + str);
        LottieFetchResult lottieFetchResult = null;
        try {
            try {
                LottieFetchResult fetchSync = this.fetcher.fetchSync(str);
                if (!fetchSync.isSuccessful()) {
                    LottieResult<LottieComposition> lottieResult = new LottieResult<>(new IllegalArgumentException(fetchSync.error()));
                    if (fetchSync != null) {
                        try {
                            fetchSync.close();
                        } catch (IOException e) {
                            Logger.warning("LottieFetchResult close failed ", e);
                        }
                    }
                    return lottieResult;
                }
                LottieResult<LottieComposition> fromInputStream = fromInputStream(context, str, fetchSync.bodyByteStream(), fetchSync.contentType(), str2);
                Logger.debug("Completed fetch from network. Success: " + (fromInputStream.getValue() != null));
                if (fetchSync != null) {
                    try {
                        fetchSync.close();
                    } catch (IOException e2) {
                        Logger.warning("LottieFetchResult close failed ", e2);
                    }
                }
                return fromInputStream;
            } catch (Throwable th) {
                if (0 != 0) {
                    try {
                        lottieFetchResult.close();
                    } catch (IOException e3) {
                        Logger.warning("LottieFetchResult close failed ", e3);
                    }
                }
                throw th;
            }
        } catch (Exception e4) {
            LottieResult<LottieComposition> lottieResult2 = new LottieResult<>(e4);
            if (0 != 0) {
                try {
                    lottieFetchResult.close();
                } catch (IOException e5) {
                    Logger.warning("LottieFetchResult close failed ", e5);
                }
            }
            return lottieResult2;
        }
    }

    private LottieResult<LottieComposition> fromInputStream(Context context, String str, InputStream inputStream, String str2, String str3) throws IOException {
        LottieResult<LottieComposition> fromZipStream;
        FileExtension fileExtension;
        NetworkCache networkCache;
        if (str2 == null) {
            str2 = "application/json";
        }
        if (str2.contains("application/zip") || str2.contains("application/x-zip") || str2.contains("application/x-zip-compressed") || str.split("\\?")[0].endsWith(".lottie")) {
            Logger.debug("Handling zip response.");
            FileExtension fileExtension2 = FileExtension.ZIP;
            fromZipStream = fromZipStream(context, str, inputStream, str3);
            fileExtension = fileExtension2;
        } else {
            Logger.debug("Received json response.");
            fileExtension = FileExtension.JSON;
            fromZipStream = fromJsonStream(str, inputStream, str3);
        }
        if (str3 != null && fromZipStream.getValue() != null && (networkCache = this.networkCache) != null) {
            networkCache.renameTempFile(str, fileExtension);
        }
        return fromZipStream;
    }

    private LottieResult<LottieComposition> fromZipStream(Context context, String str, InputStream inputStream, String str2) throws IOException {
        NetworkCache networkCache;
        if (str2 == null || (networkCache = this.networkCache) == null) {
            return LottieCompositionFactory.fromZipStreamSync(context, new ZipInputStream(inputStream), (String) null);
        }
        return LottieCompositionFactory.fromZipStreamSync(context, new ZipInputStream(new FileInputStream(networkCache.writeTempCacheFile(str, inputStream, FileExtension.ZIP))), str);
    }

    private LottieResult<LottieComposition> fromJsonStream(String str, InputStream inputStream, String str2) throws IOException {
        NetworkCache networkCache;
        if (str2 == null || (networkCache = this.networkCache) == null) {
            return LottieCompositionFactory.fromJsonInputStreamSync(inputStream, null);
        }
        return LottieCompositionFactory.fromJsonInputStreamSync(new FileInputStream(networkCache.writeTempCacheFile(str, inputStream, FileExtension.JSON).getAbsolutePath()), str);
    }
}
