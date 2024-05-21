package org.webrtc;

import java.lang.reflect.Field;
import org.webrtc.RtpParameters;

/* loaded from: classes3.dex */
public class RTCUtils {
    public static long getNativeMediaStreamTrack(MediaStreamTrack mediaStreamTrack) {
        if (mediaStreamTrack != null) {
            return mediaStreamTrack.getNativeMediaStreamTrack();
        }
        return 0L;
    }

    public static long getNativeRtpSender(RtpSender rtpSender) {
        if (rtpSender != null) {
            return rtpSender.getNativeRtpSender();
        }
        return 0L;
    }

    public static long getNativeRtpReceiver(RtpReceiver rtpReceiver) {
        try {
            Field declaredField = rtpReceiver.getClass().getDeclaredField("nativeRtpReceiver");
            declaredField.setAccessible(true);
            return ((Long) declaredField.get(rtpReceiver)).longValue();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
            return 0L;
        } catch (NoSuchFieldException e2) {
            e2.printStackTrace();
            return 0L;
        }
    }

    public static RtpParameters.Encoding genRtpEncodingParameters(String str, boolean z, double d, int i, Integer num, Integer num2, Integer num3, Integer num4, Double d2, Long l, boolean z2) {
        return new RtpParameters.Encoding(str, z, d, i, num, num2, num3, num4, d2, l, z2);
    }

    public static MediaStreamTrack createMediaStreamTrack(long j) {
        return MediaStreamTrack.createMediaStreamTrack(j);
    }
}
