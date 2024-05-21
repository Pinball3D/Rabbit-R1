.class Lorg/webrtc/CameraCapturer$2;
.super Ljava/lang/Object;
.source "CameraCapturer.java"

# interfaces
.implements Lorg/webrtc/CameraSession$Events;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/CameraCapturer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/CameraCapturer;


# direct methods
.method constructor <init>(Lorg/webrtc/CameraCapturer;)V
    .locals 0

    iput-object p1, p0, Lorg/webrtc/CameraCapturer$2;->this$0:Lorg/webrtc/CameraCapturer;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraClosed(Lorg/webrtc/CameraSession;)V
    .locals 2

    iget-object v0, p0, Lorg/webrtc/CameraCapturer$2;->this$0:Lorg/webrtc/CameraCapturer;

    .line 144
    invoke-static {v0}, Lorg/webrtc/CameraCapturer;->access$000(Lorg/webrtc/CameraCapturer;)V

    iget-object v0, p0, Lorg/webrtc/CameraCapturer$2;->this$0:Lorg/webrtc/CameraCapturer;

    .line 145
    invoke-static {v0}, Lorg/webrtc/CameraCapturer;->access$400(Lorg/webrtc/CameraCapturer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/webrtc/CameraCapturer$2;->this$0:Lorg/webrtc/CameraCapturer;

    .line 146
    invoke-static {v1}, Lorg/webrtc/CameraCapturer;->access$700(Lorg/webrtc/CameraCapturer;)Lorg/webrtc/CameraSession;

    move-result-object v1

    if-eq p1, v1, :cond_0

    iget-object p1, p0, Lorg/webrtc/CameraCapturer$2;->this$0:Lorg/webrtc/CameraCapturer;

    invoke-static {p1}, Lorg/webrtc/CameraCapturer;->access$700(Lorg/webrtc/CameraCapturer;)Lorg/webrtc/CameraSession;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p0, "CameraCapturer"

    const-string p1, "onCameraClosed from another session."

    .line 147
    invoke-static {p0, p1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    monitor-exit v0

    return-void

    :cond_0
    iget-object p0, p0, Lorg/webrtc/CameraCapturer$2;->this$0:Lorg/webrtc/CameraCapturer;

    .line 150
    invoke-static {p0}, Lorg/webrtc/CameraCapturer;->access$1000(Lorg/webrtc/CameraCapturer;)Lorg/webrtc/CameraVideoCapturer$CameraEventsHandler;

    move-result-object p0

    invoke-interface {p0}, Lorg/webrtc/CameraVideoCapturer$CameraEventsHandler;->onCameraClosed()V

    .line 151
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onCameraDisconnected(Lorg/webrtc/CameraSession;)V
    .locals 2

    iget-object v0, p0, Lorg/webrtc/CameraCapturer$2;->this$0:Lorg/webrtc/CameraCapturer;

    .line 131
    invoke-static {v0}, Lorg/webrtc/CameraCapturer;->access$000(Lorg/webrtc/CameraCapturer;)V

    iget-object v0, p0, Lorg/webrtc/CameraCapturer$2;->this$0:Lorg/webrtc/CameraCapturer;

    .line 132
    invoke-static {v0}, Lorg/webrtc/CameraCapturer;->access$400(Lorg/webrtc/CameraCapturer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/webrtc/CameraCapturer$2;->this$0:Lorg/webrtc/CameraCapturer;

    .line 133
    invoke-static {v1}, Lorg/webrtc/CameraCapturer;->access$700(Lorg/webrtc/CameraCapturer;)Lorg/webrtc/CameraSession;

    move-result-object v1

    if-eq p1, v1, :cond_0

    const-string p0, "CameraCapturer"

    const-string p1, "onCameraDisconnected from another session."

    .line 134
    invoke-static {p0, p1}, Lorg/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    monitor-exit v0

    return-void

    :cond_0
    iget-object p1, p0, Lorg/webrtc/CameraCapturer$2;->this$0:Lorg/webrtc/CameraCapturer;

    .line 137
    invoke-static {p1}, Lorg/webrtc/CameraCapturer;->access$1000(Lorg/webrtc/CameraCapturer;)Lorg/webrtc/CameraVideoCapturer$CameraEventsHandler;

    move-result-object p1

    invoke-interface {p1}, Lorg/webrtc/CameraVideoCapturer$CameraEventsHandler;->onCameraDisconnected()V

    iget-object p0, p0, Lorg/webrtc/CameraCapturer$2;->this$0:Lorg/webrtc/CameraCapturer;

    .line 138
    invoke-virtual {p0}, Lorg/webrtc/CameraCapturer;->stopCapture()V

    .line 139
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onCameraError(Lorg/webrtc/CameraSession;Ljava/lang/String;)V
    .locals 3

    const-string v0, "onCameraError from another session: "

    iget-object v1, p0, Lorg/webrtc/CameraCapturer$2;->this$0:Lorg/webrtc/CameraCapturer;

    .line 118
    invoke-static {v1}, Lorg/webrtc/CameraCapturer;->access$000(Lorg/webrtc/CameraCapturer;)V

    iget-object v1, p0, Lorg/webrtc/CameraCapturer$2;->this$0:Lorg/webrtc/CameraCapturer;

    .line 119
    invoke-static {v1}, Lorg/webrtc/CameraCapturer;->access$400(Lorg/webrtc/CameraCapturer;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lorg/webrtc/CameraCapturer$2;->this$0:Lorg/webrtc/CameraCapturer;

    .line 120
    invoke-static {v2}, Lorg/webrtc/CameraCapturer;->access$700(Lorg/webrtc/CameraCapturer;)Lorg/webrtc/CameraSession;

    move-result-object v2

    if-eq p1, v2, :cond_0

    const-string p0, "CameraCapturer"

    .line 121
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    monitor-exit v1

    return-void

    :cond_0
    iget-object p1, p0, Lorg/webrtc/CameraCapturer$2;->this$0:Lorg/webrtc/CameraCapturer;

    .line 124
    invoke-static {p1}, Lorg/webrtc/CameraCapturer;->access$1000(Lorg/webrtc/CameraCapturer;)Lorg/webrtc/CameraVideoCapturer$CameraEventsHandler;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/webrtc/CameraVideoCapturer$CameraEventsHandler;->onCameraError(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/webrtc/CameraCapturer$2;->this$0:Lorg/webrtc/CameraCapturer;

    .line 125
    invoke-virtual {p0}, Lorg/webrtc/CameraCapturer;->stopCapture()V

    .line 126
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onCameraOpening()V
    .locals 2

    iget-object v0, p0, Lorg/webrtc/CameraCapturer$2;->this$0:Lorg/webrtc/CameraCapturer;

    .line 106
    invoke-static {v0}, Lorg/webrtc/CameraCapturer;->access$000(Lorg/webrtc/CameraCapturer;)V

    iget-object v0, p0, Lorg/webrtc/CameraCapturer$2;->this$0:Lorg/webrtc/CameraCapturer;

    .line 107
    invoke-static {v0}, Lorg/webrtc/CameraCapturer;->access$400(Lorg/webrtc/CameraCapturer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/webrtc/CameraCapturer$2;->this$0:Lorg/webrtc/CameraCapturer;

    .line 108
    invoke-static {v1}, Lorg/webrtc/CameraCapturer;->access$700(Lorg/webrtc/CameraCapturer;)Lorg/webrtc/CameraSession;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string p0, "CameraCapturer"

    const-string v1, "onCameraOpening while session was open."

    .line 109
    invoke-static {p0, v1}, Lorg/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/webrtc/CameraCapturer$2;->this$0:Lorg/webrtc/CameraCapturer;

    .line 112
    invoke-static {v1}, Lorg/webrtc/CameraCapturer;->access$1000(Lorg/webrtc/CameraCapturer;)Lorg/webrtc/CameraVideoCapturer$CameraEventsHandler;

    move-result-object v1

    iget-object p0, p0, Lorg/webrtc/CameraCapturer$2;->this$0:Lorg/webrtc/CameraCapturer;

    invoke-static {p0}, Lorg/webrtc/CameraCapturer;->access$1300(Lorg/webrtc/CameraCapturer;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Lorg/webrtc/CameraVideoCapturer$CameraEventsHandler;->onCameraOpening(Ljava/lang/String;)V

    .line 113
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onFrameCaptured(Lorg/webrtc/CameraSession;Lorg/webrtc/VideoFrame;)V
    .locals 2

    iget-object v0, p0, Lorg/webrtc/CameraCapturer$2;->this$0:Lorg/webrtc/CameraCapturer;

    .line 156
    invoke-static {v0}, Lorg/webrtc/CameraCapturer;->access$000(Lorg/webrtc/CameraCapturer;)V

    iget-object v0, p0, Lorg/webrtc/CameraCapturer$2;->this$0:Lorg/webrtc/CameraCapturer;

    .line 157
    invoke-static {v0}, Lorg/webrtc/CameraCapturer;->access$400(Lorg/webrtc/CameraCapturer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/webrtc/CameraCapturer$2;->this$0:Lorg/webrtc/CameraCapturer;

    .line 158
    invoke-static {v1}, Lorg/webrtc/CameraCapturer;->access$700(Lorg/webrtc/CameraCapturer;)Lorg/webrtc/CameraSession;

    move-result-object v1

    if-eq p1, v1, :cond_0

    const-string p0, "CameraCapturer"

    const-string p1, "onFrameCaptured from another session."

    .line 159
    invoke-static {p0, p1}, Lorg/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    monitor-exit v0

    return-void

    :cond_0
    iget-object p1, p0, Lorg/webrtc/CameraCapturer$2;->this$0:Lorg/webrtc/CameraCapturer;

    .line 162
    invoke-static {p1}, Lorg/webrtc/CameraCapturer;->access$1100(Lorg/webrtc/CameraCapturer;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/webrtc/CameraCapturer$2;->this$0:Lorg/webrtc/CameraCapturer;

    .line 163
    invoke-static {p1}, Lorg/webrtc/CameraCapturer;->access$1000(Lorg/webrtc/CameraCapturer;)Lorg/webrtc/CameraVideoCapturer$CameraEventsHandler;

    move-result-object p1

    invoke-interface {p1}, Lorg/webrtc/CameraVideoCapturer$CameraEventsHandler;->onFirstFrameAvailable()V

    iget-object p1, p0, Lorg/webrtc/CameraCapturer$2;->this$0:Lorg/webrtc/CameraCapturer;

    const/4 v1, 0x1

    .line 164
    invoke-static {p1, v1}, Lorg/webrtc/CameraCapturer;->access$1102(Lorg/webrtc/CameraCapturer;Z)Z

    :cond_1
    iget-object p1, p0, Lorg/webrtc/CameraCapturer$2;->this$0:Lorg/webrtc/CameraCapturer;

    .line 166
    invoke-static {p1}, Lorg/webrtc/CameraCapturer;->access$800(Lorg/webrtc/CameraCapturer;)Lorg/webrtc/CameraVideoCapturer$CameraStatistics;

    move-result-object p1

    invoke-virtual {p1}, Lorg/webrtc/CameraVideoCapturer$CameraStatistics;->addFrame()V

    iget-object p0, p0, Lorg/webrtc/CameraCapturer$2;->this$0:Lorg/webrtc/CameraCapturer;

    .line 167
    invoke-static {p0}, Lorg/webrtc/CameraCapturer;->access$500(Lorg/webrtc/CameraCapturer;)Lorg/webrtc/CapturerObserver;

    move-result-object p0

    invoke-interface {p0, p2}, Lorg/webrtc/CapturerObserver;->onFrameCaptured(Lorg/webrtc/VideoFrame;)V

    .line 168
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
