package org.webrtc;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.webrtc.MediaStreamTrack;
import org.webrtc.RtpParameters;

/* loaded from: classes3.dex */
public class RtpTransceiver {
    private RtpReceiver cachedReceiver;
    private RtpSender cachedSender;
    private long nativeRtpTransceiver;

    private static native RtpTransceiverDirection nativeCurrentDirection(long j);

    private static native RtpTransceiverDirection nativeDirection(long j);

    private static native MediaStreamTrack.MediaType nativeGetMediaType(long j);

    private static native String nativeGetMid(long j);

    private static native RtpReceiver nativeGetReceiver(long j);

    private static native RtpSender nativeGetSender(long j);

    private static native boolean nativeSetDirection(long j, RtpTransceiverDirection rtpTransceiverDirection);

    private static native void nativeStopInternal(long j);

    private static native void nativeStopStandard(long j);

    private static native boolean nativeStopped(long j);

    public RtpReceiver getReceiver() {
        return this.cachedReceiver;
    }

    public RtpSender getSender() {
        return this.cachedSender;
    }

    /* loaded from: classes3.dex */
    public enum RtpTransceiverDirection {
        SEND_RECV(0),
        SEND_ONLY(1),
        RECV_ONLY(2),
        INACTIVE(3);

        private final int nativeIndex;

        int getNativeIndex() {
            return this.nativeIndex;
        }

        RtpTransceiverDirection(int i) {
            this.nativeIndex = i;
        }

        static RtpTransceiverDirection fromNativeIndex(int i) {
            for (RtpTransceiverDirection rtpTransceiverDirection : values()) {
                if (rtpTransceiverDirection.getNativeIndex() == i) {
                    return rtpTransceiverDirection;
                }
            }
            throw new IllegalArgumentException("Uknown native RtpTransceiverDirection type" + i);
        }
    }

    /* loaded from: classes3.dex */
    public static final class RtpTransceiverInit {
        private final RtpTransceiverDirection direction;
        private final List<RtpParameters.Encoding> sendEncodings;
        private final List<String> streamIds;

        public RtpTransceiverInit() {
            this(RtpTransceiverDirection.SEND_RECV);
        }

        public RtpTransceiverInit(RtpTransceiverDirection rtpTransceiverDirection) {
            this(rtpTransceiverDirection, Collections.emptyList(), Collections.emptyList());
        }

        public RtpTransceiverInit(RtpTransceiverDirection rtpTransceiverDirection, List<String> list) {
            this(rtpTransceiverDirection, list, Collections.emptyList());
        }

        public RtpTransceiverInit(RtpTransceiverDirection rtpTransceiverDirection, List<String> list, List<RtpParameters.Encoding> list2) {
            this.direction = rtpTransceiverDirection;
            this.streamIds = new ArrayList(list);
            this.sendEncodings = new ArrayList(list2);
        }

        int getDirectionNativeIndex() {
            return this.direction.getNativeIndex();
        }

        List<String> getStreamIds() {
            return new ArrayList(this.streamIds);
        }

        List<RtpParameters.Encoding> getSendEncodings() {
            return new ArrayList(this.sendEncodings);
        }
    }

    protected RtpTransceiver(long j) {
        this.nativeRtpTransceiver = j;
        this.cachedSender = nativeGetSender(j);
        this.cachedReceiver = nativeGetReceiver(j);
    }

    public MediaStreamTrack.MediaType getMediaType() {
        checkRtpTransceiverExists();
        return nativeGetMediaType(this.nativeRtpTransceiver);
    }

    public String getMid() {
        checkRtpTransceiverExists();
        return nativeGetMid(this.nativeRtpTransceiver);
    }

    public boolean isStopped() {
        checkRtpTransceiverExists();
        return nativeStopped(this.nativeRtpTransceiver);
    }

    public RtpTransceiverDirection getDirection() {
        checkRtpTransceiverExists();
        return nativeDirection(this.nativeRtpTransceiver);
    }

    public RtpTransceiverDirection getCurrentDirection() {
        checkRtpTransceiverExists();
        return nativeCurrentDirection(this.nativeRtpTransceiver);
    }

    public boolean setDirection(RtpTransceiverDirection rtpTransceiverDirection) {
        checkRtpTransceiverExists();
        return nativeSetDirection(this.nativeRtpTransceiver, rtpTransceiverDirection);
    }

    public void stop() {
        checkRtpTransceiverExists();
        nativeStopInternal(this.nativeRtpTransceiver);
    }

    public void stopInternal() {
        checkRtpTransceiverExists();
        nativeStopInternal(this.nativeRtpTransceiver);
    }

    public void stopStandard() {
        checkRtpTransceiverExists();
        nativeStopStandard(this.nativeRtpTransceiver);
    }

    public void dispose() {
        checkRtpTransceiverExists();
        this.cachedSender.dispose();
        this.cachedReceiver.dispose();
        JniCommon.nativeReleaseRef(this.nativeRtpTransceiver);
        this.nativeRtpTransceiver = 0L;
    }

    private void checkRtpTransceiverExists() {
        if (this.nativeRtpTransceiver == 0) {
            throw new IllegalStateException("RtpTransceiver has been disposed.");
        }
    }
}
