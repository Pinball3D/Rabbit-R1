.class public abstract Lorg/mediasoup/droid/Transport;
.super Ljava/lang/Object;
.source "Transport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mediasoup/droid/Transport$Listener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native nativeClose()V
.end method

.method private native nativeGetAppData()Ljava/lang/String;
.end method

.method private native nativeGetConnectionState()Ljava/lang/String;
.end method

.method private native nativeGetId()Ljava/lang/String;
.end method

.method private native nativeGetStats()Ljava/lang/String;
.end method

.method private native nativeIsClosed()Z
.end method

.method private native nativeRestartIce(Ljava/lang/String;)V
.end method

.method private native nativeUpdateIceServers(Ljava/lang/String;)V
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 91
    invoke-direct {p0}, Lorg/mediasoup/droid/Transport;->nativeClose()V

    return-void
.end method

.method public getAppData()Ljava/lang/String;
    .locals 0

    .line 44
    invoke-direct {p0}, Lorg/mediasoup/droid/Transport;->nativeGetAppData()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getConnectionState()Ljava/lang/String;
    .locals 0

    .line 34
    invoke-direct {p0}, Lorg/mediasoup/droid/Transport;->nativeGetConnectionState()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    .line 24
    invoke-direct {p0}, Lorg/mediasoup/droid/Transport;->nativeGetId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract getNativeTransport()J
.end method

.method public getStats()Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/mediasoup/droid/MediasoupException;
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Lorg/mediasoup/droid/Transport;->nativeGetStats()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isClosed()Z
    .locals 0

    .line 65
    invoke-direct {p0}, Lorg/mediasoup/droid/Transport;->nativeIsClosed()Z

    move-result p0

    return p0
.end method

.method public restartIce(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/mediasoup/droid/MediasoupException;
        }
    .end annotation

    .line 76
    invoke-direct {p0, p1}, Lorg/mediasoup/droid/Transport;->nativeRestartIce(Ljava/lang/String;)V

    return-void
.end method

.method public updateIceServers(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/mediasoup/droid/MediasoupException;
        }
    .end annotation

    .line 86
    invoke-direct {p0, p1}, Lorg/mediasoup/droid/Transport;->nativeUpdateIceServers(Ljava/lang/String;)V

    return-void
.end method
