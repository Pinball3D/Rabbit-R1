.class Lorg/webrtc/VideoSource$1;
.super Ljava/lang/Object;
.source "VideoSource.java"

# interfaces
.implements Lorg/webrtc/CapturerObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/VideoSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/VideoSource;


# direct methods
.method constructor <init>(Lorg/webrtc/VideoSource;)V
    .locals 0

    iput-object p1, p0, Lorg/webrtc/VideoSource$1;->this$0:Lorg/webrtc/VideoSource;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCapturerStarted(Z)V
    .locals 2

    iget-object v0, p0, Lorg/webrtc/VideoSource$1;->this$0:Lorg/webrtc/VideoSource;

    .line 40
    invoke-static {v0}, Lorg/webrtc/VideoSource;->access$000(Lorg/webrtc/VideoSource;)Lorg/webrtc/NativeAndroidVideoTrackSource;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/webrtc/NativeAndroidVideoTrackSource;->setState(Z)V

    iget-object v0, p0, Lorg/webrtc/VideoSource$1;->this$0:Lorg/webrtc/VideoSource;

    .line 41
    invoke-static {v0}, Lorg/webrtc/VideoSource;->access$100(Lorg/webrtc/VideoSource;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/webrtc/VideoSource$1;->this$0:Lorg/webrtc/VideoSource;

    .line 42
    invoke-static {v1, p1}, Lorg/webrtc/VideoSource;->access$202(Lorg/webrtc/VideoSource;Z)Z

    iget-object v1, p0, Lorg/webrtc/VideoSource$1;->this$0:Lorg/webrtc/VideoSource;

    .line 43
    invoke-static {v1}, Lorg/webrtc/VideoSource;->access$300(Lorg/webrtc/VideoSource;)Lorg/webrtc/VideoProcessor;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lorg/webrtc/VideoSource$1;->this$0:Lorg/webrtc/VideoSource;

    .line 44
    invoke-static {p0}, Lorg/webrtc/VideoSource;->access$300(Lorg/webrtc/VideoSource;)Lorg/webrtc/VideoProcessor;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/webrtc/VideoProcessor;->onCapturerStarted(Z)V

    .line 46
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onCapturerStopped()V
    .locals 3

    iget-object v0, p0, Lorg/webrtc/VideoSource$1;->this$0:Lorg/webrtc/VideoSource;

    .line 51
    invoke-static {v0}, Lorg/webrtc/VideoSource;->access$000(Lorg/webrtc/VideoSource;)Lorg/webrtc/NativeAndroidVideoTrackSource;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/webrtc/NativeAndroidVideoTrackSource;->setState(Z)V

    iget-object v0, p0, Lorg/webrtc/VideoSource$1;->this$0:Lorg/webrtc/VideoSource;

    .line 52
    invoke-static {v0}, Lorg/webrtc/VideoSource;->access$100(Lorg/webrtc/VideoSource;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lorg/webrtc/VideoSource$1;->this$0:Lorg/webrtc/VideoSource;

    .line 53
    invoke-static {v2, v1}, Lorg/webrtc/VideoSource;->access$202(Lorg/webrtc/VideoSource;Z)Z

    iget-object v1, p0, Lorg/webrtc/VideoSource$1;->this$0:Lorg/webrtc/VideoSource;

    .line 54
    invoke-static {v1}, Lorg/webrtc/VideoSource;->access$300(Lorg/webrtc/VideoSource;)Lorg/webrtc/VideoProcessor;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lorg/webrtc/VideoSource$1;->this$0:Lorg/webrtc/VideoSource;

    .line 55
    invoke-static {p0}, Lorg/webrtc/VideoSource;->access$300(Lorg/webrtc/VideoSource;)Lorg/webrtc/VideoProcessor;

    move-result-object p0

    invoke-interface {p0}, Lorg/webrtc/VideoProcessor;->onCapturerStopped()V

    .line 57
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onFrameCaptured(Lorg/webrtc/VideoFrame;)V
    .locals 3

    iget-object v0, p0, Lorg/webrtc/VideoSource$1;->this$0:Lorg/webrtc/VideoSource;

    .line 63
    invoke-static {v0}, Lorg/webrtc/VideoSource;->access$000(Lorg/webrtc/VideoSource;)Lorg/webrtc/NativeAndroidVideoTrackSource;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/webrtc/NativeAndroidVideoTrackSource;->adaptFrame(Lorg/webrtc/VideoFrame;)Lorg/webrtc/VideoProcessor$FrameAdaptationParameters;

    move-result-object v0

    iget-object v1, p0, Lorg/webrtc/VideoSource$1;->this$0:Lorg/webrtc/VideoSource;

    .line 64
    invoke-static {v1}, Lorg/webrtc/VideoSource;->access$100(Lorg/webrtc/VideoSource;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lorg/webrtc/VideoSource$1;->this$0:Lorg/webrtc/VideoSource;

    .line 65
    invoke-static {v2}, Lorg/webrtc/VideoSource;->access$300(Lorg/webrtc/VideoSource;)Lorg/webrtc/VideoProcessor;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lorg/webrtc/VideoSource$1;->this$0:Lorg/webrtc/VideoSource;

    .line 66
    invoke-static {p0}, Lorg/webrtc/VideoSource;->access$300(Lorg/webrtc/VideoSource;)Lorg/webrtc/VideoProcessor;

    move-result-object p0

    invoke-interface {p0, p1, v0}, Lorg/webrtc/VideoProcessor;->onFrameCaptured(Lorg/webrtc/VideoFrame;Lorg/webrtc/VideoProcessor$FrameAdaptationParameters;)V

    .line 67
    monitor-exit v1

    return-void

    .line 69
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    invoke-static {p1, v0}, Lorg/webrtc/VideoProcessor;->applyFrameAdaptationParameters(Lorg/webrtc/VideoFrame;Lorg/webrtc/VideoProcessor$FrameAdaptationParameters;)Lorg/webrtc/VideoFrame;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/webrtc/VideoSource$1;->this$0:Lorg/webrtc/VideoSource;

    .line 73
    invoke-static {p0}, Lorg/webrtc/VideoSource;->access$000(Lorg/webrtc/VideoSource;)Lorg/webrtc/NativeAndroidVideoTrackSource;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/webrtc/NativeAndroidVideoTrackSource;->onFrameCaptured(Lorg/webrtc/VideoFrame;)V

    .line 74
    invoke-virtual {p1}, Lorg/webrtc/VideoFrame;->release()V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    .line 69
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
