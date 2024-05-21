.class public interface abstract Lorg/mediasoup/droid/Transport$Listener;
.super Ljava/lang/Object;
.source "Transport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mediasoup/droid/Transport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onConnect(Lorg/mediasoup/droid/Transport;Ljava/lang/String;)V
.end method

.method public abstract onConnectionStateChange(Lorg/mediasoup/droid/Transport;Ljava/lang/String;)V
.end method
