.class public interface abstract Lorg/mediasoup/droid/SendTransport$Listener;
.super Ljava/lang/Object;
.source "SendTransport.java"

# interfaces
.implements Lorg/mediasoup/droid/Transport$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mediasoup/droid/SendTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onProduce(Lorg/mediasoup/droid/Transport;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract onProduceData(Lorg/mediasoup/droid/Transport;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method
