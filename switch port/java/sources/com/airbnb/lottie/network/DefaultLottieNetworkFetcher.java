package com.airbnb.lottie.network;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;

/* loaded from: classes2.dex */
public class DefaultLottieNetworkFetcher implements LottieNetworkFetcher {
    @Override // com.airbnb.lottie.network.LottieNetworkFetcher
    public LottieFetchResult fetchSync(String str) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        httpURLConnection.setRequestMethod("GET");
        httpURLConnection.connect();
        return new DefaultLottieFetchResult(httpURLConnection);
    }
}
