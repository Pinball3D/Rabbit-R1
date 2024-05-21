package com.google.zxing;

/* loaded from: classes3.dex */
public final class NotFoundException extends ReaderException {
    private static final NotFoundException INSTANCE;

    public static NotFoundException getNotFoundInstance() {
        return INSTANCE;
    }

    static {
        NotFoundException notFoundException = new NotFoundException();
        INSTANCE = notFoundException;
        notFoundException.setStackTrace(NO_TRACE);
    }

    private NotFoundException() {
    }
}
