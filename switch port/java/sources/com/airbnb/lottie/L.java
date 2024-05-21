package com.airbnb.lottie;

import android.content.Context;
import com.airbnb.lottie.network.DefaultLottieNetworkFetcher;
import com.airbnb.lottie.network.LottieNetworkCacheProvider;
import com.airbnb.lottie.network.LottieNetworkFetcher;
import com.airbnb.lottie.network.NetworkCache;
import com.airbnb.lottie.network.NetworkFetcher;
import com.airbnb.lottie.utils.LottieTrace;
import java.io.File;

/* loaded from: classes2.dex */
public class L {
    public static boolean DBG = false;
    public static final String TAG = "LOTTIE";
    private static LottieNetworkCacheProvider cacheProvider = null;
    private static AsyncUpdates defaultAsyncUpdates = AsyncUpdates.AUTOMATIC;
    private static boolean disablePathInterpolatorCache = true;
    private static LottieNetworkFetcher fetcher = null;
    private static ThreadLocal<LottieTrace> lottieTrace = null;
    private static volatile NetworkCache networkCache = null;
    private static boolean networkCacheEnabled = true;
    private static volatile NetworkFetcher networkFetcher = null;
    private static boolean traceEnabled = false;

    public static AsyncUpdates getDefaultAsyncUpdates() {
        return defaultAsyncUpdates;
    }

    public static boolean getDisablePathInterpolatorCache() {
        return disablePathInterpolatorCache;
    }

    public static void setDefaultAsyncUpdates(AsyncUpdates asyncUpdates) {
        defaultAsyncUpdates = asyncUpdates;
    }

    public static void setDisablePathInterpolatorCache(boolean z) {
        disablePathInterpolatorCache = z;
    }

    public static void setNetworkCacheEnabled(boolean z) {
        networkCacheEnabled = z;
    }

    private L() {
    }

    public static void setTraceEnabled(boolean z) {
        if (traceEnabled == z) {
            return;
        }
        traceEnabled = z;
        if (z && lottieTrace == null) {
            lottieTrace = new ThreadLocal<>();
        }
    }

    public static void beginSection(String str) {
        if (traceEnabled) {
            getTrace().beginSection(str);
        }
    }

    public static float endSection(String str) {
        if (traceEnabled) {
            return getTrace().endSection(str);
        }
        return 0.0f;
    }

    private static LottieTrace getTrace() {
        LottieTrace lottieTrace2 = lottieTrace.get();
        if (lottieTrace2 != null) {
            return lottieTrace2;
        }
        LottieTrace lottieTrace3 = new LottieTrace();
        lottieTrace.set(lottieTrace3);
        return lottieTrace3;
    }

    public static void setFetcher(LottieNetworkFetcher lottieNetworkFetcher) {
        LottieNetworkFetcher lottieNetworkFetcher2 = fetcher;
        if (lottieNetworkFetcher2 == null && lottieNetworkFetcher == null) {
            return;
        }
        if (lottieNetworkFetcher2 == null || !lottieNetworkFetcher2.equals(lottieNetworkFetcher)) {
            fetcher = lottieNetworkFetcher;
            networkFetcher = null;
        }
    }

    public static void setCacheProvider(LottieNetworkCacheProvider lottieNetworkCacheProvider) {
        LottieNetworkCacheProvider lottieNetworkCacheProvider2 = cacheProvider;
        if (lottieNetworkCacheProvider2 == null && lottieNetworkCacheProvider == null) {
            return;
        }
        if (lottieNetworkCacheProvider2 == null || !lottieNetworkCacheProvider2.equals(lottieNetworkCacheProvider)) {
            cacheProvider = lottieNetworkCacheProvider;
            networkCache = null;
        }
    }

    public static NetworkFetcher networkFetcher(Context context) {
        NetworkFetcher networkFetcher2 = networkFetcher;
        if (networkFetcher2 == null) {
            synchronized (NetworkFetcher.class) {
                networkFetcher2 = networkFetcher;
                if (networkFetcher2 == null) {
                    NetworkCache networkCache2 = networkCache(context);
                    LottieNetworkFetcher lottieNetworkFetcher = fetcher;
                    if (lottieNetworkFetcher == null) {
                        lottieNetworkFetcher = new DefaultLottieNetworkFetcher();
                    }
                    networkFetcher2 = new NetworkFetcher(networkCache2, lottieNetworkFetcher);
                    networkFetcher = networkFetcher2;
                }
            }
        }
        return networkFetcher2;
    }

    public static NetworkCache networkCache(Context context) {
        if (!networkCacheEnabled) {
            return null;
        }
        final Context applicationContext = context.getApplicationContext();
        NetworkCache networkCache2 = networkCache;
        if (networkCache2 == null) {
            synchronized (NetworkCache.class) {
                networkCache2 = networkCache;
                if (networkCache2 == null) {
                    LottieNetworkCacheProvider lottieNetworkCacheProvider = cacheProvider;
                    if (lottieNetworkCacheProvider == null) {
                        lottieNetworkCacheProvider = new LottieNetworkCacheProvider() { // from class: com.airbnb.lottie.L$$ExternalSyntheticLambda0
                            @Override // com.airbnb.lottie.network.LottieNetworkCacheProvider
                            public final File getCacheDir() {
                                return L.lambda$networkCache$0(applicationContext);
                            }
                        };
                    }
                    networkCache2 = new NetworkCache(lottieNetworkCacheProvider);
                    networkCache = networkCache2;
                }
            }
        }
        return networkCache2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ File lambda$networkCache$0(Context context) {
        return new File(context.getCacheDir(), "lottie_network_cache");
    }
}
