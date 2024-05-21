package org.webrtc;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

@Retention(RetentionPolicy.SOURCE)
/* loaded from: classes3.dex */
public @interface VideoFrameBufferType {
    public static final int I010 = 4;
    public static final int I420 = 1;
    public static final int I420A = 2;
    public static final int I444 = 3;
    public static final int NATIVE = 0;
    public static final int NV12 = 5;
}
