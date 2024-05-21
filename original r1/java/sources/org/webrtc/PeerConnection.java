package org.webrtc;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.webrtc.DataChannel;
import org.webrtc.MediaStreamTrack;
import org.webrtc.RtpTransceiver;

/* loaded from: classes3.dex */
public class PeerConnection {
    private final List<MediaStream> localStreams;
    private final long nativePeerConnection;
    private List<RtpReceiver> receivers;
    private List<RtpSender> senders;
    private List<RtpTransceiver> transceivers;

    /* loaded from: classes3.dex */
    public enum BundlePolicy {
        BALANCED,
        MAXBUNDLE,
        MAXCOMPAT
    }

    /* loaded from: classes3.dex */
    public enum CandidateNetworkPolicy {
        ALL,
        LOW_COST
    }

    /* loaded from: classes3.dex */
    public enum ContinualGatheringPolicy {
        GATHER_ONCE,
        GATHER_CONTINUALLY
    }

    /* loaded from: classes3.dex */
    public enum IceTransportsType {
        NONE,
        RELAY,
        NOHOST,
        ALL
    }

    /* loaded from: classes3.dex */
    public enum KeyType {
        RSA,
        ECDSA
    }

    /* loaded from: classes3.dex */
    public interface Observer {
        void onAddStream(MediaStream mediaStream);

        default void onAddTrack(RtpReceiver rtpReceiver, MediaStream[] mediaStreamArr) {
        }

        default void onConnectionChange(PeerConnectionState peerConnectionState) {
        }

        void onDataChannel(DataChannel dataChannel);

        void onIceCandidate(IceCandidate iceCandidate);

        void onIceCandidatesRemoved(IceCandidate[] iceCandidateArr);

        void onIceConnectionChange(IceConnectionState iceConnectionState);

        void onIceConnectionReceivingChange(boolean z);

        void onIceGatheringChange(IceGatheringState iceGatheringState);

        void onRemoveStream(MediaStream mediaStream);

        default void onRemoveTrack(RtpReceiver rtpReceiver) {
        }

        void onRenegotiationNeeded();

        default void onSelectedCandidatePairChanged(CandidatePairChangeEvent candidatePairChangeEvent) {
        }

        void onSignalingChange(SignalingState signalingState);

        default void onStandardizedIceConnectionChange(IceConnectionState iceConnectionState) {
        }

        default void onTrack(RtpTransceiver rtpTransceiver) {
        }
    }

    /* loaded from: classes3.dex */
    public enum PortPrunePolicy {
        NO_PRUNE,
        PRUNE_BASED_ON_PRIORITY,
        KEEP_FIRST_READY
    }

    /* loaded from: classes3.dex */
    public enum RtcpMuxPolicy {
        NEGOTIATE,
        REQUIRE
    }

    /* loaded from: classes3.dex */
    public enum SdpSemantics {
        PLAN_B,
        UNIFIED_PLAN
    }

    /* loaded from: classes3.dex */
    public enum TcpCandidatePolicy {
        ENABLED,
        DISABLED
    }

    /* loaded from: classes3.dex */
    public enum TlsCertPolicy {
        TLS_CERT_POLICY_SECURE,
        TLS_CERT_POLICY_INSECURE_NO_CHECK
    }

    private native boolean nativeAddIceCandidate(String str, int i, String str2);

    private native void nativeAddIceCandidateWithObserver(String str, int i, String str2, AddIceObserver addIceObserver);

    private native boolean nativeAddLocalStream(long j);

    private native RtpSender nativeAddTrack(long j, List<String> list);

    private native RtpTransceiver nativeAddTransceiverOfType(MediaStreamTrack.MediaType mediaType, RtpTransceiver.RtpTransceiverInit rtpTransceiverInit);

    private native RtpTransceiver nativeAddTransceiverWithTrack(long j, RtpTransceiver.RtpTransceiverInit rtpTransceiverInit);

    private native void nativeClose();

    private native PeerConnectionState nativeConnectionState();

    private native void nativeCreateAnswer(SdpObserver sdpObserver, MediaConstraints mediaConstraints);

    private native DataChannel nativeCreateDataChannel(String str, DataChannel.Init init);

    private native void nativeCreateOffer(SdpObserver sdpObserver, MediaConstraints mediaConstraints);

    private static native long nativeCreatePeerConnectionObserver(Observer observer);

    private native RtpSender nativeCreateSender(String str, String str2);

    private static native void nativeFreeOwnedPeerConnection(long j);

    private native RtcCertificatePem nativeGetCertificate();

    private native SessionDescription nativeGetLocalDescription();

    private native long nativeGetNativePeerConnection();

    private native List<RtpReceiver> nativeGetReceivers();

    private native SessionDescription nativeGetRemoteDescription();

    private native List<RtpSender> nativeGetSenders();

    private native List<RtpTransceiver> nativeGetTransceivers();

    private native IceConnectionState nativeIceConnectionState();

    private native IceGatheringState nativeIceGatheringState();

    private native void nativeNewGetStats(RTCStatsCollectorCallback rTCStatsCollectorCallback);

    private native boolean nativeOldGetStats(StatsObserver statsObserver, long j);

    private native boolean nativeRemoveIceCandidates(IceCandidate[] iceCandidateArr);

    private native void nativeRemoveLocalStream(long j);

    private native boolean nativeRemoveTrack(long j);

    private native void nativeRestartIce();

    private native void nativeSetAudioPlayout(boolean z);

    private native void nativeSetAudioRecording(boolean z);

    private native boolean nativeSetBitrate(Integer num, Integer num2, Integer num3);

    private native boolean nativeSetConfiguration(RTCConfiguration rTCConfiguration);

    private native void nativeSetLocalDescription(SdpObserver sdpObserver, SessionDescription sessionDescription);

    private native void nativeSetLocalDescriptionAutomatically(SdpObserver sdpObserver);

    private native void nativeSetRemoteDescription(SdpObserver sdpObserver, SessionDescription sessionDescription);

    private native SignalingState nativeSignalingState();

    private native boolean nativeStartRtcEventLog(int i, int i2);

    private native void nativeStopRtcEventLog();

    long getNativeOwnedPeerConnection() {
        return this.nativePeerConnection;
    }

    /* loaded from: classes3.dex */
    public enum IceGatheringState {
        NEW,
        GATHERING,
        COMPLETE;

        static IceGatheringState fromNativeIndex(int i) {
            return values()[i];
        }
    }

    /* loaded from: classes3.dex */
    public enum IceConnectionState {
        NEW,
        CHECKING,
        CONNECTED,
        COMPLETED,
        FAILED,
        DISCONNECTED,
        CLOSED;

        static IceConnectionState fromNativeIndex(int i) {
            return values()[i];
        }
    }

    /* loaded from: classes3.dex */
    public enum PeerConnectionState {
        NEW,
        CONNECTING,
        CONNECTED,
        DISCONNECTED,
        FAILED,
        CLOSED;

        static PeerConnectionState fromNativeIndex(int i) {
            return values()[i];
        }
    }

    /* loaded from: classes3.dex */
    public enum SignalingState {
        STABLE,
        HAVE_LOCAL_OFFER,
        HAVE_LOCAL_PRANSWER,
        HAVE_REMOTE_OFFER,
        HAVE_REMOTE_PRANSWER,
        CLOSED;

        static SignalingState fromNativeIndex(int i) {
            return values()[i];
        }
    }

    /* loaded from: classes3.dex */
    public static class IceServer {
        public final String hostname;
        public final String password;
        public final List<String> tlsAlpnProtocols;
        public final TlsCertPolicy tlsCertPolicy;
        public final List<String> tlsEllipticCurves;

        @Deprecated
        public final String uri;
        public final List<String> urls;
        public final String username;

        String getHostname() {
            return this.hostname;
        }

        String getPassword() {
            return this.password;
        }

        List<String> getTlsAlpnProtocols() {
            return this.tlsAlpnProtocols;
        }

        TlsCertPolicy getTlsCertPolicy() {
            return this.tlsCertPolicy;
        }

        List<String> getTlsEllipticCurves() {
            return this.tlsEllipticCurves;
        }

        List<String> getUrls() {
            return this.urls;
        }

        String getUsername() {
            return this.username;
        }

        @Deprecated
        public IceServer(String str) {
            this(str, "", "");
        }

        @Deprecated
        public IceServer(String str, String str2, String str3) {
            this(str, str2, str3, TlsCertPolicy.TLS_CERT_POLICY_SECURE);
        }

        @Deprecated
        public IceServer(String str, String str2, String str3, TlsCertPolicy tlsCertPolicy) {
            this(str, str2, str3, tlsCertPolicy, "");
        }

        @Deprecated
        public IceServer(String str, String str2, String str3, TlsCertPolicy tlsCertPolicy, String str4) {
            this(str, Collections.singletonList(str), str2, str3, tlsCertPolicy, str4, null, null);
        }

        private IceServer(String str, List<String> list, String str2, String str3, TlsCertPolicy tlsCertPolicy, String str4, List<String> list2, List<String> list3) {
            if (str == null || list == null || list.isEmpty()) {
                throw new IllegalArgumentException("uri == null || urls == null || urls.isEmpty()");
            }
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                if (it.next() == null) {
                    throw new IllegalArgumentException("urls element is null: " + list);
                }
            }
            if (str2 == null) {
                throw new IllegalArgumentException("username == null");
            }
            if (str3 == null) {
                throw new IllegalArgumentException("password == null");
            }
            if (str4 == null) {
                throw new IllegalArgumentException("hostname == null");
            }
            this.uri = str;
            this.urls = list;
            this.username = str2;
            this.password = str3;
            this.tlsCertPolicy = tlsCertPolicy;
            this.hostname = str4;
            this.tlsAlpnProtocols = list2;
            this.tlsEllipticCurves = list3;
        }

        public String toString() {
            return this.urls + " [" + this.username + ":" + this.password + "] [" + this.tlsCertPolicy + "] [" + this.hostname + "] [" + this.tlsAlpnProtocols + "] [" + this.tlsEllipticCurves + "]";
        }

        public boolean equals(Object obj) {
            if (obj == null) {
                return false;
            }
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof IceServer)) {
                return false;
            }
            IceServer iceServer = (IceServer) obj;
            return this.uri.equals(iceServer.uri) && this.urls.equals(iceServer.urls) && this.username.equals(iceServer.username) && this.password.equals(iceServer.password) && this.tlsCertPolicy.equals(iceServer.tlsCertPolicy) && this.hostname.equals(iceServer.hostname) && this.tlsAlpnProtocols.equals(iceServer.tlsAlpnProtocols) && this.tlsEllipticCurves.equals(iceServer.tlsEllipticCurves);
        }

        public int hashCode() {
            return Arrays.hashCode(new Object[]{this.uri, this.urls, this.username, this.password, this.tlsCertPolicy, this.hostname, this.tlsAlpnProtocols, this.tlsEllipticCurves});
        }

        public static Builder builder(String str) {
            return new Builder(Collections.singletonList(str));
        }

        public static Builder builder(List<String> list) {
            return new Builder(list);
        }

        /* loaded from: classes3.dex */
        public static class Builder {
            private String hostname;
            private String password;
            private List<String> tlsAlpnProtocols;
            private TlsCertPolicy tlsCertPolicy;
            private List<String> tlsEllipticCurves;
            private final List<String> urls;
            private String username;

            public Builder setHostname(String str) {
                this.hostname = str;
                return this;
            }

            public Builder setPassword(String str) {
                this.password = str;
                return this;
            }

            public Builder setTlsAlpnProtocols(List<String> list) {
                this.tlsAlpnProtocols = list;
                return this;
            }

            public Builder setTlsCertPolicy(TlsCertPolicy tlsCertPolicy) {
                this.tlsCertPolicy = tlsCertPolicy;
                return this;
            }

            public Builder setTlsEllipticCurves(List<String> list) {
                this.tlsEllipticCurves = list;
                return this;
            }

            public Builder setUsername(String str) {
                this.username = str;
                return this;
            }

            private Builder(List<String> list) {
                this.username = "";
                this.password = "";
                this.tlsCertPolicy = TlsCertPolicy.TLS_CERT_POLICY_SECURE;
                this.hostname = "";
                if (list == null || list.isEmpty()) {
                    throw new IllegalArgumentException("urls == null || urls.isEmpty(): " + list);
                }
                this.urls = list;
            }

            public IceServer createIceServer() {
                return new IceServer(this.urls.get(0), this.urls, this.username, this.password, this.tlsCertPolicy, this.hostname, this.tlsAlpnProtocols, this.tlsEllipticCurves);
            }
        }
    }

    /* loaded from: classes3.dex */
    public enum AdapterType {
        UNKNOWN(0),
        ETHERNET(1),
        WIFI(2),
        CELLULAR(4),
        VPN(8),
        LOOPBACK(16),
        ADAPTER_TYPE_ANY(32),
        CELLULAR_2G(64),
        CELLULAR_3G(128),
        CELLULAR_4G(256),
        CELLULAR_5G(512);

        private static final Map<Integer, AdapterType> BY_BITMASK = new HashMap();
        public final Integer bitMask;

        static {
            for (AdapterType adapterType : values()) {
                BY_BITMASK.put(adapterType.bitMask, adapterType);
            }
        }

        AdapterType(Integer num) {
            this.bitMask = num;
        }

        static AdapterType fromNativeIndex(int i) {
            return BY_BITMASK.get(Integer.valueOf(i));
        }
    }

    /* loaded from: classes3.dex */
    public static class RTCConfiguration {
        public RtcCertificatePem certificate;
        public List<IceServer> iceServers;
        public TurnCustomizer turnCustomizer;
        public IceTransportsType iceTransportsType = IceTransportsType.ALL;
        public BundlePolicy bundlePolicy = BundlePolicy.BALANCED;
        public RtcpMuxPolicy rtcpMuxPolicy = RtcpMuxPolicy.REQUIRE;
        public TcpCandidatePolicy tcpCandidatePolicy = TcpCandidatePolicy.ENABLED;
        public CandidateNetworkPolicy candidateNetworkPolicy = CandidateNetworkPolicy.ALL;
        public int audioJitterBufferMaxPackets = 50;
        public boolean audioJitterBufferFastAccelerate = false;
        public int iceConnectionReceivingTimeout = -1;
        public int iceBackupCandidatePairPingInterval = -1;
        public KeyType keyType = KeyType.ECDSA;
        public ContinualGatheringPolicy continualGatheringPolicy = ContinualGatheringPolicy.GATHER_ONCE;
        public int iceCandidatePoolSize = 0;

        @Deprecated
        public boolean pruneTurnPorts = false;
        public PortPrunePolicy turnPortPrunePolicy = PortPrunePolicy.NO_PRUNE;
        public boolean presumeWritableWhenFullyRelayed = false;
        public boolean surfaceIceCandidatesOnIceTransportTypeChanged = false;
        public Integer iceCheckIntervalStrongConnectivityMs = null;
        public Integer iceCheckIntervalWeakConnectivityMs = null;
        public Integer iceCheckMinInterval = null;
        public Integer iceUnwritableTimeMs = null;
        public Integer iceUnwritableMinChecks = null;
        public Integer stunCandidateKeepaliveIntervalMs = null;
        public Integer stableWritableConnectionPingIntervalMs = null;
        public boolean disableIPv6OnWifi = false;
        public int maxIPv6Networks = 5;
        public boolean disableIpv6 = false;
        public boolean enableDscp = false;
        public boolean enableCpuOveruseDetection = true;
        public boolean suspendBelowMinBitrate = false;
        public Integer screencastMinBitrate = null;
        public Boolean combinedAudioVideoBwe = null;
        public Boolean enableDtlsSrtp = null;
        public AdapterType networkPreference = AdapterType.UNKNOWN;
        public SdpSemantics sdpSemantics = SdpSemantics.PLAN_B;
        public boolean activeResetSrtpParams = false;
        public CryptoOptions cryptoOptions = null;
        public String turnLoggingId = null;
        public Boolean allowCodecSwitching = null;
        public boolean enableImplicitRollback = false;
        public boolean offerExtmapAllowMixed = true;

        boolean getActiveResetSrtpParams() {
            return this.activeResetSrtpParams;
        }

        Boolean getAllowCodecSwitching() {
            return this.allowCodecSwitching;
        }

        boolean getAudioJitterBufferFastAccelerate() {
            return this.audioJitterBufferFastAccelerate;
        }

        int getAudioJitterBufferMaxPackets() {
            return this.audioJitterBufferMaxPackets;
        }

        BundlePolicy getBundlePolicy() {
            return this.bundlePolicy;
        }

        CandidateNetworkPolicy getCandidateNetworkPolicy() {
            return this.candidateNetworkPolicy;
        }

        RtcCertificatePem getCertificate() {
            return this.certificate;
        }

        Boolean getCombinedAudioVideoBwe() {
            return this.combinedAudioVideoBwe;
        }

        ContinualGatheringPolicy getContinualGatheringPolicy() {
            return this.continualGatheringPolicy;
        }

        CryptoOptions getCryptoOptions() {
            return this.cryptoOptions;
        }

        boolean getDisableIPv6OnWifi() {
            return this.disableIPv6OnWifi;
        }

        boolean getDisableIpv6() {
            return this.disableIpv6;
        }

        boolean getEnableCpuOveruseDetection() {
            return this.enableCpuOveruseDetection;
        }

        boolean getEnableDscp() {
            return this.enableDscp;
        }

        Boolean getEnableDtlsSrtp() {
            return this.enableDtlsSrtp;
        }

        boolean getEnableImplicitRollback() {
            return this.enableImplicitRollback;
        }

        int getIceBackupCandidatePairPingInterval() {
            return this.iceBackupCandidatePairPingInterval;
        }

        int getIceCandidatePoolSize() {
            return this.iceCandidatePoolSize;
        }

        Integer getIceCheckIntervalStrongConnectivity() {
            return this.iceCheckIntervalStrongConnectivityMs;
        }

        Integer getIceCheckIntervalWeakConnectivity() {
            return this.iceCheckIntervalWeakConnectivityMs;
        }

        Integer getIceCheckMinInterval() {
            return this.iceCheckMinInterval;
        }

        int getIceConnectionReceivingTimeout() {
            return this.iceConnectionReceivingTimeout;
        }

        List<IceServer> getIceServers() {
            return this.iceServers;
        }

        IceTransportsType getIceTransportsType() {
            return this.iceTransportsType;
        }

        Integer getIceUnwritableMinChecks() {
            return this.iceUnwritableMinChecks;
        }

        Integer getIceUnwritableTimeout() {
            return this.iceUnwritableTimeMs;
        }

        KeyType getKeyType() {
            return this.keyType;
        }

        int getMaxIPv6Networks() {
            return this.maxIPv6Networks;
        }

        AdapterType getNetworkPreference() {
            return this.networkPreference;
        }

        boolean getOfferExtmapAllowMixed() {
            return this.offerExtmapAllowMixed;
        }

        boolean getPresumeWritableWhenFullyRelayed() {
            return this.presumeWritableWhenFullyRelayed;
        }

        boolean getPruneTurnPorts() {
            return this.pruneTurnPorts;
        }

        RtcpMuxPolicy getRtcpMuxPolicy() {
            return this.rtcpMuxPolicy;
        }

        Integer getScreencastMinBitrate() {
            return this.screencastMinBitrate;
        }

        SdpSemantics getSdpSemantics() {
            return this.sdpSemantics;
        }

        Integer getStableWritableConnectionPingIntervalMs() {
            return this.stableWritableConnectionPingIntervalMs;
        }

        Integer getStunCandidateKeepaliveInterval() {
            return this.stunCandidateKeepaliveIntervalMs;
        }

        boolean getSurfaceIceCandidatesOnIceTransportTypeChanged() {
            return this.surfaceIceCandidatesOnIceTransportTypeChanged;
        }

        boolean getSuspendBelowMinBitrate() {
            return this.suspendBelowMinBitrate;
        }

        TcpCandidatePolicy getTcpCandidatePolicy() {
            return this.tcpCandidatePolicy;
        }

        TurnCustomizer getTurnCustomizer() {
            return this.turnCustomizer;
        }

        String getTurnLoggingId() {
            return this.turnLoggingId;
        }

        PortPrunePolicy getTurnPortPrunePolicy() {
            return this.turnPortPrunePolicy;
        }

        public RTCConfiguration(List<IceServer> list) {
            this.iceServers = list;
        }
    }

    public PeerConnection(NativePeerConnectionFactory nativePeerConnectionFactory) {
        this(nativePeerConnectionFactory.createNativePeerConnection());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PeerConnection(long j) {
        this.localStreams = new ArrayList();
        this.senders = new ArrayList();
        this.receivers = new ArrayList();
        this.transceivers = new ArrayList();
        this.nativePeerConnection = j;
    }

    public SessionDescription getLocalDescription() {
        return nativeGetLocalDescription();
    }

    public SessionDescription getRemoteDescription() {
        return nativeGetRemoteDescription();
    }

    public RtcCertificatePem getCertificate() {
        return nativeGetCertificate();
    }

    public DataChannel createDataChannel(String str, DataChannel.Init init) {
        return nativeCreateDataChannel(str, init);
    }

    public void createOffer(SdpObserver sdpObserver, MediaConstraints mediaConstraints) {
        nativeCreateOffer(sdpObserver, mediaConstraints);
    }

    public void createAnswer(SdpObserver sdpObserver, MediaConstraints mediaConstraints) {
        nativeCreateAnswer(sdpObserver, mediaConstraints);
    }

    public void setLocalDescription(SdpObserver sdpObserver) {
        nativeSetLocalDescriptionAutomatically(sdpObserver);
    }

    public void setLocalDescription(SdpObserver sdpObserver, SessionDescription sessionDescription) {
        nativeSetLocalDescription(sdpObserver, sessionDescription);
    }

    public void setRemoteDescription(SdpObserver sdpObserver, SessionDescription sessionDescription) {
        nativeSetRemoteDescription(sdpObserver, sessionDescription);
    }

    public void restartIce() {
        nativeRestartIce();
    }

    public void setAudioPlayout(boolean z) {
        nativeSetAudioPlayout(z);
    }

    public void setAudioRecording(boolean z) {
        nativeSetAudioRecording(z);
    }

    public boolean setConfiguration(RTCConfiguration rTCConfiguration) {
        return nativeSetConfiguration(rTCConfiguration);
    }

    public boolean addIceCandidate(IceCandidate iceCandidate) {
        return nativeAddIceCandidate(iceCandidate.sdpMid, iceCandidate.sdpMLineIndex, iceCandidate.sdp);
    }

    public void addIceCandidate(IceCandidate iceCandidate, AddIceObserver addIceObserver) {
        nativeAddIceCandidateWithObserver(iceCandidate.sdpMid, iceCandidate.sdpMLineIndex, iceCandidate.sdp, addIceObserver);
    }

    public boolean removeIceCandidates(IceCandidate[] iceCandidateArr) {
        return nativeRemoveIceCandidates(iceCandidateArr);
    }

    public boolean addStream(MediaStream mediaStream) {
        if (!nativeAddLocalStream(mediaStream.getNativeMediaStream())) {
            return false;
        }
        this.localStreams.add(mediaStream);
        return true;
    }

    public void removeStream(MediaStream mediaStream) {
        nativeRemoveLocalStream(mediaStream.getNativeMediaStream());
        this.localStreams.remove(mediaStream);
    }

    public RtpSender createSender(String str, String str2) {
        RtpSender nativeCreateSender = nativeCreateSender(str, str2);
        if (nativeCreateSender != null) {
            this.senders.add(nativeCreateSender);
        }
        return nativeCreateSender;
    }

    public List<RtpSender> getSenders() {
        Iterator<RtpSender> it = this.senders.iterator();
        while (it.hasNext()) {
            it.next().dispose();
        }
        List<RtpSender> nativeGetSenders = nativeGetSenders();
        this.senders = nativeGetSenders;
        return Collections.unmodifiableList(nativeGetSenders);
    }

    public List<RtpReceiver> getReceivers() {
        Iterator<RtpReceiver> it = this.receivers.iterator();
        while (it.hasNext()) {
            it.next().dispose();
        }
        List<RtpReceiver> nativeGetReceivers = nativeGetReceivers();
        this.receivers = nativeGetReceivers;
        return Collections.unmodifiableList(nativeGetReceivers);
    }

    public List<RtpTransceiver> getTransceivers() {
        Iterator<RtpTransceiver> it = this.transceivers.iterator();
        while (it.hasNext()) {
            it.next().dispose();
        }
        List<RtpTransceiver> nativeGetTransceivers = nativeGetTransceivers();
        this.transceivers = nativeGetTransceivers;
        return Collections.unmodifiableList(nativeGetTransceivers);
    }

    public RtpSender addTrack(MediaStreamTrack mediaStreamTrack) {
        return addTrack(mediaStreamTrack, Collections.emptyList());
    }

    public RtpSender addTrack(MediaStreamTrack mediaStreamTrack, List<String> list) {
        if (mediaStreamTrack == null || list == null) {
            throw new NullPointerException("No MediaStreamTrack specified in addTrack.");
        }
        RtpSender nativeAddTrack = nativeAddTrack(mediaStreamTrack.getNativeMediaStreamTrack(), list);
        if (nativeAddTrack == null) {
            throw new IllegalStateException("C++ addTrack failed.");
        }
        this.senders.add(nativeAddTrack);
        return nativeAddTrack;
    }

    public boolean removeTrack(RtpSender rtpSender) {
        if (rtpSender == null) {
            throw new NullPointerException("No RtpSender specified for removeTrack.");
        }
        return nativeRemoveTrack(rtpSender.getNativeRtpSender());
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
        RtpTransceiver nativeAddTransceiverWithTrack = nativeAddTransceiverWithTrack(mediaStreamTrack.getNativeMediaStreamTrack(), rtpTransceiverInit);
        if (nativeAddTransceiverWithTrack == null) {
            throw new IllegalStateException("C++ addTransceiver failed.");
        }
        this.transceivers.add(nativeAddTransceiverWithTrack);
        return nativeAddTransceiverWithTrack;
    }

    public RtpTransceiver addTransceiver(MediaStreamTrack.MediaType mediaType) {
        return addTransceiver(mediaType, new RtpTransceiver.RtpTransceiverInit());
    }

    public RtpTransceiver addTransceiver(MediaStreamTrack.MediaType mediaType, RtpTransceiver.RtpTransceiverInit rtpTransceiverInit) {
        if (mediaType == null) {
            throw new NullPointerException("No MediaType specified for addTransceiver.");
        }
        if (rtpTransceiverInit == null) {
            rtpTransceiverInit = new RtpTransceiver.RtpTransceiverInit();
        }
        RtpTransceiver nativeAddTransceiverOfType = nativeAddTransceiverOfType(mediaType, rtpTransceiverInit);
        if (nativeAddTransceiverOfType == null) {
            throw new IllegalStateException("C++ addTransceiver failed.");
        }
        this.transceivers.add(nativeAddTransceiverOfType);
        return nativeAddTransceiverOfType;
    }

    @Deprecated
    public boolean getStats(StatsObserver statsObserver, MediaStreamTrack mediaStreamTrack) {
        return nativeOldGetStats(statsObserver, mediaStreamTrack == null ? 0L : mediaStreamTrack.getNativeMediaStreamTrack());
    }

    public void getStats(RTCStatsCollectorCallback rTCStatsCollectorCallback) {
        nativeNewGetStats(rTCStatsCollectorCallback);
    }

    public boolean setBitrate(Integer num, Integer num2, Integer num3) {
        return nativeSetBitrate(num, num2, num3);
    }

    public boolean startRtcEventLog(int i, int i2) {
        return nativeStartRtcEventLog(i, i2);
    }

    public void stopRtcEventLog() {
        nativeStopRtcEventLog();
    }

    public SignalingState signalingState() {
        return nativeSignalingState();
    }

    public IceConnectionState iceConnectionState() {
        return nativeIceConnectionState();
    }

    public PeerConnectionState connectionState() {
        return nativeConnectionState();
    }

    public IceGatheringState iceGatheringState() {
        return nativeIceGatheringState();
    }

    public void close() {
        nativeClose();
    }

    public void dispose() {
        close();
        for (MediaStream mediaStream : this.localStreams) {
            nativeRemoveLocalStream(mediaStream.getNativeMediaStream());
            mediaStream.dispose();
        }
        this.localStreams.clear();
        Iterator<RtpSender> it = this.senders.iterator();
        while (it.hasNext()) {
            it.next().dispose();
        }
        this.senders.clear();
        Iterator<RtpReceiver> it2 = this.receivers.iterator();
        while (it2.hasNext()) {
            it2.next().dispose();
        }
        Iterator<RtpTransceiver> it3 = this.transceivers.iterator();
        while (it3.hasNext()) {
            it3.next().dispose();
        }
        this.transceivers.clear();
        this.receivers.clear();
        nativeFreeOwnedPeerConnection(this.nativePeerConnection);
    }

    public long getNativePeerConnection() {
        return nativeGetNativePeerConnection();
    }

    public static long createNativePeerConnectionObserver(Observer observer) {
        return nativeCreatePeerConnectionObserver(observer);
    }
}
