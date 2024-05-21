.class public Lorg/webrtc/FileVideoCapturer;
.super Ljava/lang/Object;
.source "FileVideoCapturer.java"

# interfaces
.implements Lorg/webrtc/VideoCapturer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/FileVideoCapturer$VideoReaderY4M;,
        Lorg/webrtc/FileVideoCapturer$VideoReader;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FileVideoCapturer"


# instance fields
.field private capturerObserver:Lorg/webrtc/CapturerObserver;

.field private final tickTask:Ljava/util/TimerTask;

.field private final timer:Ljava/util/Timer;

.field private final videoReader:Lorg/webrtc/FileVideoCapturer$VideoReader;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lorg/webrtc/FileVideoCapturer;->timer:Ljava/util/Timer;

    .line 149
    new-instance v0, Lorg/webrtc/FileVideoCapturer$1;

    invoke-direct {v0, p0}, Lorg/webrtc/FileVideoCapturer$1;-><init>(Lorg/webrtc/FileVideoCapturer;)V

    iput-object v0, p0, Lorg/webrtc/FileVideoCapturer;->tickTask:Ljava/util/TimerTask;

    .line 158
    :try_start_0
    new-instance v0, Lorg/webrtc/FileVideoCapturer$VideoReaderY4M;

    invoke-direct {v0, p1}, Lorg/webrtc/FileVideoCapturer$VideoReaderY4M;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/webrtc/FileVideoCapturer;->videoReader:Lorg/webrtc/FileVideoCapturer$VideoReader;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not open video file: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FileVideoCapturer"

    invoke-static {v0, p1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    throw p0
.end method


# virtual methods
.method public changeCaptureFormat(III)V
    .locals 0

    return-void
.end method

.method public dispose()V
    .locals 0

    iget-object p0, p0, Lorg/webrtc/FileVideoCapturer;->videoReader:Lorg/webrtc/FileVideoCapturer$VideoReader;

    .line 194
    invoke-interface {p0}, Lorg/webrtc/FileVideoCapturer$VideoReader;->close()V

    return-void
.end method

.method public initialize(Lorg/webrtc/SurfaceTextureHelper;Landroid/content/Context;Lorg/webrtc/CapturerObserver;)V
    .locals 0

    iput-object p3, p0, Lorg/webrtc/FileVideoCapturer;->capturerObserver:Lorg/webrtc/CapturerObserver;

    return-void
.end method

.method public isScreencast()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public startCapture(III)V
    .locals 6

    iget-object v0, p0, Lorg/webrtc/FileVideoCapturer;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lorg/webrtc/FileVideoCapturer;->tickTask:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    const/16 p0, 0x3e8

    .line 179
    div-int/2addr p0, p3

    int-to-long v4, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public stopCapture()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object p0, p0, Lorg/webrtc/FileVideoCapturer;->timer:Ljava/util/Timer;

    .line 184
    invoke-virtual {p0}, Ljava/util/Timer;->cancel()V

    return-void
.end method

.method public tick()V
    .locals 1

    iget-object v0, p0, Lorg/webrtc/FileVideoCapturer;->videoReader:Lorg/webrtc/FileVideoCapturer$VideoReader;

    .line 166
    invoke-interface {v0}, Lorg/webrtc/FileVideoCapturer$VideoReader;->getNextFrame()Lorg/webrtc/VideoFrame;

    move-result-object v0

    iget-object p0, p0, Lorg/webrtc/FileVideoCapturer;->capturerObserver:Lorg/webrtc/CapturerObserver;

    .line 167
    invoke-interface {p0, v0}, Lorg/webrtc/CapturerObserver;->onFrameCaptured(Lorg/webrtc/VideoFrame;)V

    .line 168
    invoke-virtual {v0}, Lorg/webrtc/VideoFrame;->release()V

    return-void
.end method
