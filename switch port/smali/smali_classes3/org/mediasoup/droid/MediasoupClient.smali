.class public Lorg/mediasoup/droid/MediasoupClient;
.super Ljava/lang/Object;
.source "MediasoupClient.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "mediasoupclient_so"

    .line 11
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-static {p0, v0}, Lorg/mediasoup/droid/MediasoupClient;->initialize(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-static {p0}, Lorg/webrtc/PeerConnectionFactory$InitializationOptions;->builder(Landroid/content/Context;)Lorg/webrtc/PeerConnectionFactory$InitializationOptions$Builder;

    move-result-object p0

    .line 32
    invoke-virtual {p0, p1}, Lorg/webrtc/PeerConnectionFactory$InitializationOptions$Builder;->setFieldTrials(Ljava/lang/String;)Lorg/webrtc/PeerConnectionFactory$InitializationOptions$Builder;

    move-result-object p0

    const/4 p1, 0x1

    .line 33
    invoke-virtual {p0, p1}, Lorg/webrtc/PeerConnectionFactory$InitializationOptions$Builder;->setEnableInternalTracer(Z)Lorg/webrtc/PeerConnectionFactory$InitializationOptions$Builder;

    move-result-object p0

    const-string p1, "mediasoupclient_so"

    .line 34
    invoke-virtual {p0, p1}, Lorg/webrtc/PeerConnectionFactory$InitializationOptions$Builder;->setNativeLibraryName(Ljava/lang/String;)Lorg/webrtc/PeerConnectionFactory$InitializationOptions$Builder;

    move-result-object p0

    .line 35
    invoke-virtual {p0}, Lorg/webrtc/PeerConnectionFactory$InitializationOptions$Builder;->createInitializationOptions()Lorg/webrtc/PeerConnectionFactory$InitializationOptions;

    move-result-object p0

    .line 36
    invoke-static {p0}, Lorg/webrtc/PeerConnectionFactory;->initialize(Lorg/webrtc/PeerConnectionFactory$InitializationOptions;)V

    return-void
.end method

.method private static native nativeVersion()Ljava/lang/String;
.end method

.method public static version()Ljava/lang/String;
    .locals 1

    .line 43
    invoke-static {}, Lorg/mediasoup/droid/MediasoupClient;->nativeVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
