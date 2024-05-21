package org.webrtc;

import com.google.android.exoplayer2.C;
import java.io.UnsupportedEncodingException;
import java.util.Map;

/* loaded from: classes3.dex */
class JniHelper {
    JniHelper() {
    }

    static byte[] getStringBytes(String str) {
        try {
            return str.getBytes(C.ISO88591_NAME);
        } catch (UnsupportedEncodingException unused) {
            throw new RuntimeException("ISO-8859-1 is unsupported");
        }
    }

    static Object getStringClass() {
        return String.class;
    }

    static Object getKey(Map.Entry entry) {
        return entry.getKey();
    }

    static Object getValue(Map.Entry entry) {
        return entry.getValue();
    }
}
