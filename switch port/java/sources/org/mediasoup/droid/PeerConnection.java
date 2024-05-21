package org.mediasoup.droid;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.webrtc.DataChannel;
import org.webrtc.IceCandidate;
import org.webrtc.MediaConstraints;
import org.webrtc.MediaStream;
import org.webrtc.MediaStreamTrack;
import org.webrtc.PeerConnection;
import org.webrtc.PeerConnectionFactory;
import org.webrtc.RTCUtils;
import org.webrtc.RtpReceiver;
import org.webrtc.RtpSender;
import org.webrtc.RtpTransceiver;
import org.webrtc.SessionDescription;

/* loaded from: classes3.dex */
public class PeerConnection {
    private long mNativePeerConnection;
    private final Options mOptions;
    private List<RtpSender> mSenders = new ArrayList();
    private List<RtpTransceiver> mTransceivers = new ArrayList();

    /* loaded from: classes3.dex */
    public static class Options {
        public PeerConnectionFactory mFactory;
        public PeerConnection.RTCConfiguration mRTCConfig;

        public void setFactory(PeerConnectionFactory peerConnectionFactory) {
            this.mFactory = peerConnectionFactory;
        }

        public void setRTCConfig(PeerConnection.RTCConfiguration rTCConfiguration) {
            this.mRTCConfig = rTCConfiguration;
        }
    }

    /* loaded from: classes3.dex */
    public static class PrivateListener implements PeerConnection.Observer {
        @Override // org.webrtc.PeerConnection.Observer
        public void onAddStream(MediaStream mediaStream) {
        }

        @Override // org.webrtc.PeerConnection.Observer
        public void onAddTrack(RtpReceiver rtpReceiver, MediaStream[] mediaStreamArr) {
        }

        @Override // org.webrtc.PeerConnection.Observer
        public void onConnectionChange(PeerConnection.PeerConnectionState peerConnectionState) {
        }

        @Override // org.webrtc.PeerConnection.Observer
        public void onDataChannel(DataChannel dataChannel) {
        }

        @Override // org.webrtc.PeerConnection.Observer
        public void onIceCandidate(IceCandidate iceCandidate) {
        }

        @Override // org.webrtc.PeerConnection.Observer
        public void onIceCandidatesRemoved(IceCandidate[] iceCandidateArr) {
        }

        @Override // org.webrtc.PeerConnection.Observer
        public void onIceConnectionChange(PeerConnection.IceConnectionState iceConnectionState) {
        }

        @Override // org.webrtc.PeerConnection.Observer
        public void onIceConnectionReceivingChange(boolean z) {
        }

        @Override // org.webrtc.PeerConnection.Observer
        public void onIceGatheringChange(PeerConnection.IceGatheringState iceGatheringState) {
        }

        @Override // org.webrtc.PeerConnection.Observer
        public void onRemoveStream(MediaStream mediaStream) {
        }

        @Override // org.webrtc.PeerConnection.Observer
        public void onRenegotiationNeeded() {
        }

        @Override // org.webrtc.PeerConnection.Observer
        public void onSignalingChange(PeerConnection.SignalingState signalingState) {
        }

        @Override // org.webrtc.PeerConnection.Observer
        public void onTrack(RtpTransceiver rtpTransceiver) {
        }
    }

    private native RtpTransceiver nativeAddTransceiverOfType(MediaStreamTrack.MediaType mediaType);

    private native RtpTransceiver nativeAddTransceiverWithTrack(long j, RtpTransceiver.RtpTransceiverInit rtpTransceiverInit);

    private native void nativeClose();

    private native String nativeCreateAnswer(MediaConstraints mediaConstraints);

    private native String nativeCreateOffer(MediaConstraints mediaConstraints);

    private static native void nativeFreeOwnedPeerConnection(long j);

    private native String nativeGetLocalDescription();

    private native long nativeGetNativePeerConnection();

    private native String nativeGetRemoteDescription();

    private native List<RtpSender> nativeGetSenders();

    private native String nativeGetStats();

    private native String nativeGetStatsForRtpReceiver(long j);

    private native String nativeGetStatsForRtpSender(long j);

    private native List<RtpTransceiver> nativeGetTransceivers();

    private static native long nativeNewPeerConnection(PrivateListener privateListener, PeerConnection.RTCConfiguration rTCConfiguration, long j);

    private native boolean nativeRemoveTrack(long j);

    private native boolean nativeSetConfiguration(PeerConnection.RTCConfiguration rTCConfiguration);

    private native void nativeSetLocalDescription(int i, String str);

    private native void nativeSetRemoteDescription(int i, String str);

    long getNativeOwnedPeerConnection() {
        return this.mNativePeerConnection;
    }

    public PeerConnection(PrivateListener privateListener, Options options) {
        if (privateListener == null) {
            throw new IllegalArgumentException("given listener is null");
        }
        Options options2 = new Options();
        this.mOptions = options2;
        if (options != null && options.mRTCConfig != null) {
            options2.mRTCConfig = options.mRTCConfig;
        } else {
            options2.mRTCConfig = new PeerConnection.RTCConfiguration(new ArrayList());
        }
        if (options != null && options.mFactory != null) {
            options2.mFactory = options.mFactory;
        }
        this.mNativePeerConnection = nativeNewPeerConnection(privateListener, options2.mRTCConfig, options2.mFactory != null ? options2.mFactory.getNativePeerConnectionFactory() : 0L);
    }

    public void dispose() {
        close();
        Iterator<RtpSender> it = this.mSenders.iterator();
        while (it.hasNext()) {
            it.next().dispose();
        }
        this.mSenders.clear();
        Iterator<RtpTransceiver> it2 = this.mTransceivers.iterator();
        while (it2.hasNext()) {
            it2.next().dispose();
        }
        this.mTransceivers.clear();
        nativeFreeOwnedPeerConnection(this.mNativePeerConnection);
        this.mNativePeerConnection = 0L;
    }

    public PeerConnection.RTCConfiguration getConfiguration() {
        return this.mOptions.mRTCConfig;
    }

    public boolean setConfiguration(PeerConnection.RTCConfiguration rTCConfiguration) {
        return nativeSetConfiguration(rTCConfiguration);
    }

    public String createOffer(MediaConstraints mediaConstraints) {
        return nativeCreateOffer(mediaConstraints);
    }

    public String createAnswer(MediaConstraints mediaConstraints) throws MediasoupException {
        return nativeCreateAnswer(mediaConstraints);
    }

    public void setLocalDescription(SessionDescription sessionDescription) throws MediasoupException {
        if (sessionDescription == null) {
            throw new IllegalArgumentException("given sessionDescription is null");
        }
        nativeSetLocalDescription(sessionDescription.type.ordinal(), sessionDescription.description);
    }

    public void setRemoteDescription(SessionDescription sessionDescription) throws MediasoupException {
        if (sessionDescription == null) {
            throw new IllegalArgumentException("given sessionDescription is null");
        }
        nativeSetRemoteDescription(sessionDescription.type.ordinal(), sessionDescription.description);
    }

    public String getLocalDescription() {
        return nativeGetLocalDescription();
    }

    public String getRemoteDescription() {
        return nativeGetRemoteDescription();
    }

    public List<RtpTransceiver> getTransceivers() {
        Iterator<RtpTransceiver> it = this.mTransceivers.iterator();
        while (it.hasNext()) {
            it.next().dispose();
        }
        List<RtpTransceiver> nativeGetTransceivers = nativeGetTransceivers();
        this.mTransceivers = nativeGetTransceivers;
        return Collections.unmodifiableList(nativeGetTransceivers);
    }

    public RtpTransceiver addTransceiver(MediaStreamTrack.MediaType mediaType) {
        if (mediaType == null) {
            throw new NullPointerException("No MediaType specified for addTransceiver.");
        }
        RtpTransceiver nativeAddTransceiverOfType = nativeAddTransceiverOfType(mediaType);
        if (nativeAddTransceiverOfType == null) {
            throw new IllegalStateException("C++ addTransceiver failed.");
        }
        this.mTransceivers.add(nativeAddTransceiverOfType);
        return nativeAddTransceiverOfType;
    }

    public RtpTransceiver addTransceiver(MediaStreamTrack mediaStreamTrack) {
        return addTransceiver(mediaStreamTrack, new RtpTransceiver.RtpTransceiverInit());
    }

    public RtpTransceiver addTransceiver(MediaStreamTrack mediaStreamTrack, RtpTransceiver.RtpTransceiverInit rtpTransceiverInit) {
        if (mediaStreamTrack == null) {
            throw new NullPointerException("No MediaStreamTrack specified for addTransceiver.");
        }
        if (rtpTransceiverInit == null) {
            rtpTransceiverInit = new RtpTransceiver.RtpTransceiverInit();
        }
        RtpTransceiver nativeAddTransceiverWithTrack = nativeAddTransceiverWithTrack(RTCUtils.getNativeMediaStreamTrack(mediaStreamTrack), rtpTransceiverInit);
        if (nativeAddTransceiverWithTrack == null) {
            throw new IllegalStateException("C++ addTransceiver failed.");
        }
        this.mTransceivers.add(nativeAddTransceiverWithTrack);
        return nativeAddTransceiverWithTrack;
    }

    public void close() {
        nativeClose();
    }

    public List<RtpSender> getSenders() {
        Iterator<RtpSender> it = this.mSenders.iterator();
        while (it.hasNext()) {
            it.next().dispose();
        }
        List<RtpSender> nativeGetSenders = nativeGetSenders();
        this.mSenders = nativeGetSenders;
        return Collections.unmodifiableList(nativeGetSenders);
    }

    public boolean removeTrack(RtpSender rtpSender) {
        if (rtpSender == null) {
            throw new NullPointerException("No RtpSender specified for removeTrack.");
        }
        return nativeRemoveTrack(RTCUtils.getNativeRtpSender(rtpSender));
    }

    public String getStats() {
        return nativeGetStats();
    }

    public String getStats(RtpSender rtpSender) {
        return nativeGetStatsForRtpSender(RTCUtils.getNativeRtpSender(rtpSender));
    }

    public String getStats(RtpReceiver rtpReceiver) {
        return nativeGetStatsForRtpReceiver(RTCUtils.getNativeRtpReceiver(rtpReceiver));
    }

    public long getNativePeerConnection() {
        return nativeGetNativePeerConnection();
    }
}
