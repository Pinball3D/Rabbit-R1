.class public interface abstract Lorg/webrtc/VideoEncoderFactory$VideoEncoderSelector;
.super Ljava/lang/Object;
.source "VideoEncoderFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/VideoEncoderFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VideoEncoderSelector"
.end annotation


# virtual methods
.method public abstract onAvailableBitrate(I)Lorg/webrtc/VideoCodecInfo;
.end method

.method public abstract onCurrentEncoder(Lorg/webrtc/VideoCodecInfo;)V
.end method

.method public abstract onEncoderBroken()Lorg/webrtc/VideoCodecInfo;
.end method
