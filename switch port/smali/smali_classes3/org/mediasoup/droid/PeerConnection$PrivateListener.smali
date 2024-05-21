.class public Lorg/mediasoup/droid/PeerConnection$PrivateListener;
.super Ljava/lang/Object;
.source "PeerConnection.java"

# interfaces
.implements Lorg/webrtc/PeerConnection$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mediasoup/droid/PeerConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrivateListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddStream(Lorg/webrtc/MediaStream;)V
    .locals 0

    return-void
.end method

.method public onAddTrack(Lorg/webrtc/RtpReceiver;[Lorg/webrtc/MediaStream;)V
    .locals 0

    return-void
.end method

.method public onConnectionChange(Lorg/webrtc/PeerConnection$PeerConnectionState;)V
    .locals 0

    return-void
.end method

.method public onDataChannel(Lorg/webrtc/DataChannel;)V
    .locals 0

    return-void
.end method

.method public onIceCandidate(Lorg/webrtc/IceCandidate;)V
    .locals 0

    return-void
.end method

.method public onIceCandidatesRemoved([Lorg/webrtc/IceCandidate;)V
    .locals 0

    return-void
.end method

.method public onIceConnectionChange(Lorg/webrtc/PeerConnection$IceConnectionState;)V
    .locals 0

    return-void
.end method

.method public onIceConnectionReceivingChange(Z)V
    .locals 0

    return-void
.end method

.method public onIceGatheringChange(Lorg/webrtc/PeerConnection$IceGatheringState;)V
    .locals 0

    return-void
.end method

.method public onRemoveStream(Lorg/webrtc/MediaStream;)V
    .locals 0

    return-void
.end method

.method public onRenegotiationNeeded()V
    .locals 0

    return-void
.end method

.method public onSignalingChange(Lorg/webrtc/PeerConnection$SignalingState;)V
    .locals 0

    return-void
.end method

.method public onTrack(Lorg/webrtc/RtpTransceiver;)V
    .locals 0

    return-void
.end method
