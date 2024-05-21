package com.airbnb.lottie.network;

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes2.dex */
public interface LottieFetchResult extends Closeable {
    InputStream bodyByteStream() throws IOException;

    String contentType();

    String error();

    boolean isSuccessful();
}
