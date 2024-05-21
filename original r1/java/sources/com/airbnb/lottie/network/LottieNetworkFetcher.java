package com.airbnb.lottie.network;

import java.io.IOException;

/* loaded from: classes2.dex */
public interface LottieNetworkFetcher {
    LottieFetchResult fetchSync(String str) throws IOException;
}
