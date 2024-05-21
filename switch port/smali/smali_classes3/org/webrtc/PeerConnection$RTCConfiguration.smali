.class public Lorg/webrtc/PeerConnection$RTCConfiguration;
.super Ljava/lang/Object;
.source "PeerConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/PeerConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RTCConfiguration"
.end annotation


# instance fields
.field public activeResetSrtpParams:Z

.field public allowCodecSwitching:Ljava/lang/Boolean;

.field public audioJitterBufferFastAccelerate:Z

.field public audioJitterBufferMaxPackets:I

.field public bundlePolicy:Lorg/webrtc/PeerConnection$BundlePolicy;

.field public candidateNetworkPolicy:Lorg/webrtc/PeerConnection$CandidateNetworkPolicy;

.field public certificate:Lorg/webrtc/RtcCertificatePem;

.field public combinedAudioVideoBwe:Ljava/lang/Boolean;

.field public continualGatheringPolicy:Lorg/webrtc/PeerConnection$ContinualGatheringPolicy;

.field public cryptoOptions:Lorg/webrtc/CryptoOptions;

.field public disableIPv6OnWifi:Z

.field public disableIpv6:Z

.field public enableCpuOveruseDetection:Z

.field public enableDscp:Z

.field public enableDtlsSrtp:Ljava/lang/Boolean;

.field public enableImplicitRollback:Z

.field public iceBackupCandidatePairPingInterval:I

.field public iceCandidatePoolSize:I

.field public iceCheckIntervalStrongConnectivityMs:Ljava/lang/Integer;

.field public iceCheckIntervalWeakConnectivityMs:Ljava/lang/Integer;

.field public iceCheckMinInterval:Ljava/lang/Integer;

.field public iceConnectionReceivingTimeout:I

.field public iceServers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/webrtc/PeerConnection$IceServer;",
            ">;"
        }
    .end annotation
.end field

.field public iceTransportsType:Lorg/webrtc/PeerConnection$IceTransportsType;

.field public iceUnwritableMinChecks:Ljava/lang/Integer;

.field public iceUnwritableTimeMs:Ljava/lang/Integer;

.field public keyType:Lorg/webrtc/PeerConnection$KeyType;

.field public maxIPv6Networks:I

.field public networkPreference:Lorg/webrtc/PeerConnection$AdapterType;

.field public offerExtmapAllowMixed:Z

.field public presumeWritableWhenFullyRelayed:Z

.field public pruneTurnPorts:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public rtcpMuxPolicy:Lorg/webrtc/PeerConnection$RtcpMuxPolicy;

.field public screencastMinBitrate:Ljava/lang/Integer;

.field public sdpSemantics:Lorg/webrtc/PeerConnection$SdpSemantics;

.field public stableWritableConnectionPingIntervalMs:Ljava/lang/Integer;

.field public stunCandidateKeepaliveIntervalMs:Ljava/lang/Integer;

.field public surfaceIceCandidatesOnIceTransportTypeChanged:Z

.field public suspendBelowMinBitrate:Z

.field public tcpCandidatePolicy:Lorg/webrtc/PeerConnection$TcpCandidatePolicy;

.field public turnCustomizer:Lorg/webrtc/TurnCustomizer;

.field public turnLoggingId:Ljava/lang/String;

.field public turnPortPrunePolicy:Lorg/webrtc/PeerConnection$PortPrunePolicy;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/webrtc/PeerConnection$IceServer;",
            ">;)V"
        }
    .end annotation

    .line 578
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 579
    sget-object v0, Lorg/webrtc/PeerConnection$IceTransportsType;->ALL:Lorg/webrtc/PeerConnection$IceTransportsType;

    iput-object v0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->iceTransportsType:Lorg/webrtc/PeerConnection$IceTransportsType;

    .line 580
    sget-object v0, Lorg/webrtc/PeerConnection$BundlePolicy;->BALANCED:Lorg/webrtc/PeerConnection$BundlePolicy;

    iput-object v0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->bundlePolicy:Lorg/webrtc/PeerConnection$BundlePolicy;

    .line 581
    sget-object v0, Lorg/webrtc/PeerConnection$RtcpMuxPolicy;->REQUIRE:Lorg/webrtc/PeerConnection$RtcpMuxPolicy;

    iput-object v0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->rtcpMuxPolicy:Lorg/webrtc/PeerConnection$RtcpMuxPolicy;

    .line 582
    sget-object v0, Lorg/webrtc/PeerConnection$TcpCandidatePolicy;->ENABLED:Lorg/webrtc/PeerConnection$TcpCandidatePolicy;

    iput-object v0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->tcpCandidatePolicy:Lorg/webrtc/PeerConnection$TcpCandidatePolicy;

    .line 583
    sget-object v0, Lorg/webrtc/PeerConnection$CandidateNetworkPolicy;->ALL:Lorg/webrtc/PeerConnection$CandidateNetworkPolicy;

    iput-object v0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->candidateNetworkPolicy:Lorg/webrtc/PeerConnection$CandidateNetworkPolicy;

    iput-object p1, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->iceServers:Ljava/util/List;

    const/16 p1, 0x32

    iput p1, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->audioJitterBufferMaxPackets:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->audioJitterBufferFastAccelerate:Z

    const/4 v0, -0x1

    iput v0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->iceConnectionReceivingTimeout:I

    iput v0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->iceBackupCandidatePairPingInterval:I

    .line 589
    sget-object v0, Lorg/webrtc/PeerConnection$KeyType;->ECDSA:Lorg/webrtc/PeerConnection$KeyType;

    iput-object v0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->keyType:Lorg/webrtc/PeerConnection$KeyType;

    .line 590
    sget-object v0, Lorg/webrtc/PeerConnection$ContinualGatheringPolicy;->GATHER_ONCE:Lorg/webrtc/PeerConnection$ContinualGatheringPolicy;

    iput-object v0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->continualGatheringPolicy:Lorg/webrtc/PeerConnection$ContinualGatheringPolicy;

    iput p1, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->iceCandidatePoolSize:I

    iput-boolean p1, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->pruneTurnPorts:Z

    .line 593
    sget-object v0, Lorg/webrtc/PeerConnection$PortPrunePolicy;->NO_PRUNE:Lorg/webrtc/PeerConnection$PortPrunePolicy;

    iput-object v0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->turnPortPrunePolicy:Lorg/webrtc/PeerConnection$PortPrunePolicy;

    iput-boolean p1, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->presumeWritableWhenFullyRelayed:Z

    iput-boolean p1, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->surfaceIceCandidatesOnIceTransportTypeChanged:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->iceCheckIntervalStrongConnectivityMs:Ljava/lang/Integer;

    iput-object v0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->iceCheckIntervalWeakConnectivityMs:Ljava/lang/Integer;

    iput-object v0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->iceCheckMinInterval:Ljava/lang/Integer;

    iput-object v0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->iceUnwritableTimeMs:Ljava/lang/Integer;

    iput-object v0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->iceUnwritableMinChecks:Ljava/lang/Integer;

    iput-object v0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->stunCandidateKeepaliveIntervalMs:Ljava/lang/Integer;

    iput-object v0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->stableWritableConnectionPingIntervalMs:Ljava/lang/Integer;

    iput-boolean p1, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->disableIPv6OnWifi:Z

    const/4 v1, 0x5

    iput v1, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->maxIPv6Networks:I

    iput-boolean p1, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->disableIpv6:Z

    iput-boolean p1, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->enableDscp:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->enableCpuOveruseDetection:Z

    iput-boolean p1, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->suspendBelowMinBitrate:Z

    iput-object v0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->screencastMinBitrate:Ljava/lang/Integer;

    iput-object v0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->combinedAudioVideoBwe:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->enableDtlsSrtp:Ljava/lang/Boolean;

    .line 612
    sget-object v2, Lorg/webrtc/PeerConnection$AdapterType;->UNKNOWN:Lorg/webrtc/PeerConnection$AdapterType;

    iput-object v2, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->networkPreference:Lorg/webrtc/PeerConnection$AdapterType;

    .line 613
    sget-object v2, Lorg/webrtc/PeerConnection$SdpSemantics;->PLAN_B:Lorg/webrtc/PeerConnection$SdpSemantics;

    iput-object v2, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->sdpSemantics:Lorg/webrtc/PeerConnection$SdpSemantics;

    iput-boolean p1, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->activeResetSrtpParams:Z

    iput-object v0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->cryptoOptions:Lorg/webrtc/CryptoOptions;

    iput-object v0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->turnLoggingId:Ljava/lang/String;

    iput-object v0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->allowCodecSwitching:Ljava/lang/Boolean;

    iput-boolean p1, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->enableImplicitRollback:Z

    iput-boolean v1, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->offerExtmapAllowMixed:Z

    return-void
.end method


# virtual methods
.method getActiveResetSrtpParams()Z
    .locals 0

    iget-boolean p0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->activeResetSrtpParams:Z

    return p0
.end method

.method getAllowCodecSwitching()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->allowCodecSwitching:Ljava/lang/Boolean;

    return-object p0
.end method

.method getAudioJitterBufferFastAccelerate()Z
    .locals 0

    iget-boolean p0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->audioJitterBufferFastAccelerate:Z

    return p0
.end method

.method getAudioJitterBufferMaxPackets()I
    .locals 0

    iget p0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->audioJitterBufferMaxPackets:I

    return p0
.end method

.method getBundlePolicy()Lorg/webrtc/PeerConnection$BundlePolicy;
    .locals 0

    iget-object p0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->bundlePolicy:Lorg/webrtc/PeerConnection$BundlePolicy;

    return-object p0
.end method

.method getCandidateNetworkPolicy()Lorg/webrtc/PeerConnection$CandidateNetworkPolicy;
    .locals 0

    iget-object p0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->candidateNetworkPolicy:Lorg/webrtc/PeerConnection$CandidateNetworkPolicy;

    return-object p0
.end method

.method getCertificate()Lorg/webrtc/RtcCertificatePem;
    .locals 0

    iget-object p0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->certificate:Lorg/webrtc/RtcCertificatePem;

    return-object p0
.end method

.method getCombinedAudioVideoBwe()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->combinedAudioVideoBwe:Ljava/lang/Boolean;

    return-object p0
.end method

.method getContinualGatheringPolicy()Lorg/webrtc/PeerConnection$ContinualGatheringPolicy;
    .locals 0

    iget-object p0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->continualGatheringPolicy:Lorg/webrtc/PeerConnection$ContinualGatheringPolicy;

    return-object p0
.end method

.method getCryptoOptions()Lorg/webrtc/CryptoOptions;
    .locals 0

    iget-object p0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->cryptoOptions:Lorg/webrtc/CryptoOptions;

    return-object p0
.end method

.method getDisableIPv6OnWifi()Z
    .locals 0

    iget-boolean p0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->disableIPv6OnWifi:Z

    return p0
.end method

.method getDisableIpv6()Z
    .locals 0

    iget-boolean p0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->disableIpv6:Z

    return p0
.end method

.method getEnableCpuOveruseDetection()Z
    .locals 0

    iget-boolean p0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->enableCpuOveruseDetection:Z

    return p0
.end method

.method getEnableDscp()Z
    .locals 0

    iget-boolean p0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->enableDscp:Z

    return p0
.end method

.method getEnableDtlsSrtp()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->enableDtlsSrtp:Ljava/lang/Boolean;

    return-object p0
.end method

.method getEnableImplicitRollback()Z
    .locals 0

    iget-boolean p0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->enableImplicitRollback:Z

    return p0
.end method

.method getIceBackupCandidatePairPingInterval()I
    .locals 0

    iget p0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->iceBackupCandidatePairPingInterval:I

    return p0
.end method

.method getIceCandidatePoolSize()I
    .locals 0

    iget p0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->iceCandidatePoolSize:I

    return p0
.end method

.method getIceCheckIntervalStrongConnectivity()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->iceCheckIntervalStrongConnectivityMs:Ljava/lang/Integer;

    return-object p0
.end method

.method getIceCheckIntervalWeakConnectivity()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->iceCheckIntervalWeakConnectivityMs:Ljava/lang/Integer;

    return-object p0
.end method

.method getIceCheckMinInterval()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->iceCheckMinInterval:Ljava/lang/Integer;

    return-object p0
.end method

.method getIceConnectionReceivingTimeout()I
    .locals 0

    iget p0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->iceConnectionReceivingTimeout:I

    return p0
.end method

.method getIceServers()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/webrtc/PeerConnection$IceServer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->iceServers:Ljava/util/List;

    return-object p0
.end method

.method getIceTransportsType()Lorg/webrtc/PeerConnection$IceTransportsType;
    .locals 0

    iget-object p0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->iceTransportsType:Lorg/webrtc/PeerConnection$IceTransportsType;

    return-object p0
.end method

.method getIceUnwritableMinChecks()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->iceUnwritableMinChecks:Ljava/lang/Integer;

    return-object p0
.end method

.method getIceUnwritableTimeout()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->iceUnwritableTimeMs:Ljava/lang/Integer;

    return-object p0
.end method

.method getKeyType()Lorg/webrtc/PeerConnection$KeyType;
    .locals 0

    iget-object p0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->keyType:Lorg/webrtc/PeerConnection$KeyType;

    return-object p0
.end method

.method getMaxIPv6Networks()I
    .locals 0

    iget p0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->maxIPv6Networks:I

    return p0
.end method

.method getNetworkPreference()Lorg/webrtc/PeerConnection$AdapterType;
    .locals 0

    iget-object p0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->networkPreference:Lorg/webrtc/PeerConnection$AdapterType;

    return-object p0
.end method

.method getOfferExtmapAllowMixed()Z
    .locals 0

    iget-boolean p0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->offerExtmapAllowMixed:Z

    return p0
.end method

.method getPresumeWritableWhenFullyRelayed()Z
    .locals 0

    iget-boolean p0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->presumeWritableWhenFullyRelayed:Z

    return p0
.end method

.method getPruneTurnPorts()Z
    .locals 0

    iget-boolean p0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->pruneTurnPorts:Z

    return p0
.end method

.method getRtcpMuxPolicy()Lorg/webrtc/PeerConnection$RtcpMuxPolicy;
    .locals 0

    iget-object p0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->rtcpMuxPolicy:Lorg/webrtc/PeerConnection$RtcpMuxPolicy;

    return-object p0
.end method

.method getScreencastMinBitrate()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->screencastMinBitrate:Ljava/lang/Integer;

    return-object p0
.end method

.method getSdpSemantics()Lorg/webrtc/PeerConnection$SdpSemantics;
    .locals 0

    iget-object p0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->sdpSemantics:Lorg/webrtc/PeerConnection$SdpSemantics;

    return-object p0
.end method

.method getStableWritableConnectionPingIntervalMs()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->stableWritableConnectionPingIntervalMs:Ljava/lang/Integer;

    return-object p0
.end method

.method getStunCandidateKeepaliveInterval()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->stunCandidateKeepaliveIntervalMs:Ljava/lang/Integer;

    return-object p0
.end method

.method getSurfaceIceCandidatesOnIceTransportTypeChanged()Z
    .locals 0

    iget-boolean p0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->surfaceIceCandidatesOnIceTransportTypeChanged:Z

    return p0
.end method

.method getSuspendBelowMinBitrate()Z
    .locals 0

    iget-boolean p0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->suspendBelowMinBitrate:Z

    return p0
.end method

.method getTcpCandidatePolicy()Lorg/webrtc/PeerConnection$TcpCandidatePolicy;
    .locals 0

    iget-object p0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->tcpCandidatePolicy:Lorg/webrtc/PeerConnection$TcpCandidatePolicy;

    return-object p0
.end method

.method getTurnCustomizer()Lorg/webrtc/TurnCustomizer;
    .locals 0

    iget-object p0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->turnCustomizer:Lorg/webrtc/TurnCustomizer;

    return-object p0
.end method

.method getTurnLoggingId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->turnLoggingId:Ljava/lang/String;

    return-object p0
.end method

.method getTurnPortPrunePolicy()Lorg/webrtc/PeerConnection$PortPrunePolicy;
    .locals 0

    iget-object p0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->turnPortPrunePolicy:Lorg/webrtc/PeerConnection$PortPrunePolicy;

    return-object p0
.end method
