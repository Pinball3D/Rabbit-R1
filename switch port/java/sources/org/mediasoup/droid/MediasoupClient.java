package org.mediasoup.droid;

import android.content.Context;
import org.webrtc.PeerConnectionFactory;

/* loaded from: classes3.dex */
public class MediasoupClient {
    private static native String nativeVersion();

    static {
        System.loadLibrary("mediasoupclient_so");
    }

    public static void initialize(Context context) {
        initialize(context, null);
    }

    public static void initialize(Context context, String str) {
        PeerConnectionFactory.initialize(PeerConnectionFactory.InitializationOptions.builder(context).setFieldTrials(str).setEnableInternalTracer(true).setNativeLibraryName("mediasoupclient_so").createInitializationOptions());
    }

    public static String version() {
        return nativeVersion();
    }
}
