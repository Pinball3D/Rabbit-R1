.class public interface abstract Lorg/webrtc/NetworkChangeDetector$Observer;
.super Ljava/lang/Object;
.source "NetworkChangeDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/NetworkChangeDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Observer"
.end annotation


# virtual methods
.method public abstract onConnectionTypeChanged(Lorg/webrtc/NetworkChangeDetector$ConnectionType;)V
.end method

.method public abstract onNetworkConnect(Lorg/webrtc/NetworkChangeDetector$NetworkInformation;)V
.end method

.method public abstract onNetworkDisconnect(J)V
.end method

.method public abstract onNetworkPreference(Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/webrtc/NetworkChangeDetector$ConnectionType;",
            ">;I)V"
        }
    .end annotation
.end method
