.class public Lorg/mediasoup/droid/PeerConnection$Options;
.super Ljava/lang/Object;
.source "PeerConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mediasoup/droid/PeerConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Options"
.end annotation


# instance fields
.field public mFactory:Lorg/webrtc/PeerConnectionFactory;

.field public mRTCConfig:Lorg/webrtc/PeerConnection$RTCConfiguration;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setFactory(Lorg/webrtc/PeerConnectionFactory;)V
    .locals 0

    iput-object p1, p0, Lorg/mediasoup/droid/PeerConnection$Options;->mFactory:Lorg/webrtc/PeerConnectionFactory;

    return-void
.end method

.method public setRTCConfig(Lorg/webrtc/PeerConnection$RTCConfiguration;)V
    .locals 0

    iput-object p1, p0, Lorg/mediasoup/droid/PeerConnection$Options;->mRTCConfig:Lorg/webrtc/PeerConnection$RTCConfiguration;

    return-void
.end method
