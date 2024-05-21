.class public Lorg/webrtc/VideoSource;
.super Lorg/webrtc/MediaSource;
.source "VideoSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/VideoSource$AspectRatio;
    }
.end annotation


# instance fields
.field private final capturerObserver:Lorg/webrtc/CapturerObserver;

.field private isCapturerRunning:Z

.field private final nativeAndroidVideoTrackSource:Lorg/webrtc/NativeAndroidVideoTrackSource;

.field private videoProcessor:Lorg/webrtc/VideoProcessor;

.field private final videoProcessorLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .line 80
    invoke-direct {p0, p1, p2}, Lorg/webrtc/MediaSource;-><init>(J)V

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/webrtc/VideoSource;->videoProcessorLock:Ljava/lang/Object;

    .line 37
    new-instance v0, Lorg/webrtc/VideoSource$1;

    invoke-direct {v0, p0}, Lorg/webrtc/VideoSource$1;-><init>(Lorg/webrtc/VideoSource;)V

    iput-object v0, p0, Lorg/webrtc/VideoSource;->capturerObserver:Lorg/webrtc/CapturerObserver;

    .line 81
    new-instance v0, Lorg/webrtc/NativeAndroidVideoTrackSource;

    invoke-direct {v0, p1, p2}, Lorg/webrtc/NativeAndroidVideoTrackSource;-><init>(J)V

    iput-object v0, p0, Lorg/webrtc/VideoSource;->nativeAndroidVideoTrackSource:Lorg/webrtc/NativeAndroidVideoTrackSource;

    return-void
.end method

.method static synthetic access$000(Lorg/webrtc/VideoSource;)Lorg/webrtc/NativeAndroidVideoTrackSource;
    .locals 0

    .line 18
    iget-object p0, p0, Lorg/webrtc/VideoSource;->nativeAndroidVideoTrackSource:Lorg/webrtc/NativeAndroidVideoTrackSource;

    return-object p0
.end method

.method static synthetic access$100(Lorg/webrtc/VideoSource;)Ljava/lang/Object;
    .locals 0

    .line 18
    iget-object p0, p0, Lorg/webrtc/VideoSource;->videoProcessorLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$202(Lorg/webrtc/VideoSource;Z)Z
    .locals 0

    .line 18
    iput-boolean p1, p0, Lorg/webrtc/VideoSource;->isCapturerRunning:Z

    return p1
.end method

.method static synthetic access$300(Lorg/webrtc/VideoSource;)Lorg/webrtc/VideoProcessor;
    .locals 0

    .line 18
    iget-object p0, p0, Lorg/webrtc/VideoSource;->videoProcessor:Lorg/webrtc/VideoProcessor;

    return-object p0
.end method


# virtual methods
.method public adaptOutputFormat(III)V
    .locals 6

    .line 91
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 92
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v3

    move-object v0, p0

    move v1, v4

    move v2, v3

    move v5, p3

    .line 93
    invoke-virtual/range {v0 .. v5}, Lorg/webrtc/VideoSource;->adaptOutputFormat(IIIII)V

    return-void
.end method

.method public adaptOutputFormat(IIIII)V
    .locals 2

    .line 103
    new-instance v0, Lorg/webrtc/VideoSource$AspectRatio;

    invoke-direct {v0, p1, p2}, Lorg/webrtc/VideoSource$AspectRatio;-><init>(II)V

    mul-int/2addr p1, p2

    .line 104
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v1, Lorg/webrtc/VideoSource$AspectRatio;

    invoke-direct {v1, p3, p4}, Lorg/webrtc/VideoSource$AspectRatio;-><init>(II)V

    mul-int/2addr p3, p4

    .line 106
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    move-object p1, v0

    move-object p3, v1

    .line 103
    invoke-virtual/range {p0 .. p5}, Lorg/webrtc/VideoSource;->adaptOutputFormat(Lorg/webrtc/VideoSource$AspectRatio;Ljava/lang/Integer;Lorg/webrtc/VideoSource$AspectRatio;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public adaptOutputFormat(Lorg/webrtc/VideoSource$AspectRatio;Ljava/lang/Integer;Lorg/webrtc/VideoSource$AspectRatio;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 6

    iget-object v0, p0, Lorg/webrtc/VideoSource;->nativeAndroidVideoTrackSource:Lorg/webrtc/NativeAndroidVideoTrackSource;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 113
    invoke-virtual/range {v0 .. v5}, Lorg/webrtc/NativeAndroidVideoTrackSource;->adaptOutputFormat(Lorg/webrtc/VideoSource$AspectRatio;Ljava/lang/Integer;Lorg/webrtc/VideoSource$AspectRatio;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x0

    .line 159
    invoke-virtual {p0, v0}, Lorg/webrtc/VideoSource;->setVideoProcessor(Lorg/webrtc/VideoProcessor;)V

    .line 160
    invoke-super {p0}, Lorg/webrtc/MediaSource;->dispose()V

    return-void
.end method

.method public getCapturerObserver()Lorg/webrtc/CapturerObserver;
    .locals 0

    iget-object p0, p0, Lorg/webrtc/VideoSource;->capturerObserver:Lorg/webrtc/CapturerObserver;

    return-object p0
.end method

.method getNativeVideoTrackSource()J
    .locals 2

    .line 154
    invoke-virtual {p0}, Lorg/webrtc/VideoSource;->getNativeMediaSource()J

    move-result-wide v0

    return-wide v0
.end method

.method synthetic lambda$setVideoProcessor$0$org-webrtc-VideoSource(Lorg/webrtc/VideoFrame;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/webrtc/VideoSource;->nativeAndroidVideoTrackSource:Lorg/webrtc/NativeAndroidVideoTrackSource;

    .line 140
    invoke-virtual {p0, p1}, Lorg/webrtc/NativeAndroidVideoTrackSource;->onFrameCaptured(Lorg/webrtc/VideoFrame;)V

    return-void
.end method

.method synthetic lambda$setVideoProcessor$1$org-webrtc-VideoSource(Lorg/webrtc/VideoFrame;)V
    .locals 1

    .line 140
    new-instance v0, Lorg/webrtc/VideoSource$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/webrtc/VideoSource$$ExternalSyntheticLambda0;-><init>(Lorg/webrtc/VideoSource;Lorg/webrtc/VideoFrame;)V

    invoke-virtual {p0, v0}, Lorg/webrtc/VideoSource;->runWithReference(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setIsScreencast(Z)V
    .locals 0

    iget-object p0, p0, Lorg/webrtc/VideoSource;->nativeAndroidVideoTrackSource:Lorg/webrtc/NativeAndroidVideoTrackSource;

    .line 118
    invoke-virtual {p0, p1}, Lorg/webrtc/NativeAndroidVideoTrackSource;->setIsScreencast(Z)V

    return-void
.end method

.method public setVideoProcessor(Lorg/webrtc/VideoProcessor;)V
    .locals 3

    iget-object v0, p0, Lorg/webrtc/VideoSource;->videoProcessorLock:Ljava/lang/Object;

    .line 129
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/webrtc/VideoSource;->videoProcessor:Lorg/webrtc/VideoProcessor;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 131
    invoke-interface {v1, v2}, Lorg/webrtc/VideoProcessor;->setSink(Lorg/webrtc/VideoSink;)V

    iget-boolean v1, p0, Lorg/webrtc/VideoSource;->isCapturerRunning:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/webrtc/VideoSource;->videoProcessor:Lorg/webrtc/VideoProcessor;

    .line 133
    invoke-interface {v1}, Lorg/webrtc/VideoProcessor;->onCapturerStopped()V

    :cond_0
    iput-object p1, p0, Lorg/webrtc/VideoSource;->videoProcessor:Lorg/webrtc/VideoProcessor;

    if-eqz p1, :cond_1

    .line 138
    new-instance v1, Lorg/webrtc/VideoSource$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/webrtc/VideoSource$$ExternalSyntheticLambda1;-><init>(Lorg/webrtc/VideoSource;)V

    invoke-interface {p1, v1}, Lorg/webrtc/VideoProcessor;->setSink(Lorg/webrtc/VideoSink;)V

    iget-boolean p0, p0, Lorg/webrtc/VideoSource;->isCapturerRunning:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    .line 142
    invoke-interface {p1, p0}, Lorg/webrtc/VideoProcessor;->onCapturerStarted(Z)V

    .line 145
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
