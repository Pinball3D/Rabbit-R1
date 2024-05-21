package org.webrtc;

/* loaded from: classes3.dex */
class WebRtcClassLoader {
    WebRtcClassLoader() {
    }

    static Object getClassLoader() {
        ClassLoader classLoader = WebRtcClassLoader.class.getClassLoader();
        if (classLoader != null) {
            return classLoader;
        }
        throw new RuntimeException("Failed to get WebRTC class loader.");
    }
}
