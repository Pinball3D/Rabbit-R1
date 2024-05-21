.class interface abstract Lorg/webrtc/FileVideoCapturer$VideoReader;
.super Ljava/lang/Object;
.source "FileVideoCapturer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/FileVideoCapturer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "VideoReader"
.end annotation


# virtual methods
.method public abstract close()V
.end method

.method public abstract getNextFrame()Lorg/webrtc/VideoFrame;
.end method
