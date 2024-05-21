package com.google.android.exoplayer2.util;

/* loaded from: classes2.dex */
public final class FrameProcessingException extends Exception {
    public final long presentationTimeUs;

    public static FrameProcessingException from(Exception exc) {
        return from(exc, -9223372036854775807L);
    }

    public static FrameProcessingException from(Exception exc, long j) {
        if (exc instanceof FrameProcessingException) {
            return (FrameProcessingException) exc;
        }
        return new FrameProcessingException(exc, j);
    }

    public FrameProcessingException(String str) {
        this(str, -9223372036854775807L);
    }

    public FrameProcessingException(String str, long j) {
        super(str);
        this.presentationTimeUs = j;
    }

    public FrameProcessingException(String str, Throwable th) {
        this(str, th, -9223372036854775807L);
    }

    public FrameProcessingException(String str, Throwable th, long j) {
        super(str, th);
        this.presentationTimeUs = j;
    }

    public FrameProcessingException(Throwable th) {
        this(th, -9223372036854775807L);
    }

    public FrameProcessingException(Throwable th, long j) {
        super(th);
        this.presentationTimeUs = j;
    }
}
