.class Lorg/webrtc/Camera1Session$2;
.super Ljava/lang/Object;
.source "Camera1Session.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/Camera1Session;->listenForBytebufferFrames()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/Camera1Session;


# direct methods
.method constructor <init>(Lorg/webrtc/Camera1Session;)V
    .locals 0

    iput-object p1, p0, Lorg/webrtc/Camera1Session$2;->this$0:Lorg/webrtc/Camera1Session;

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onPreviewFrame$0$org-webrtc-Camera1Session$2([B)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/webrtc/Camera1Session$2;->this$0:Lorg/webrtc/Camera1Session;

    .line 304
    invoke-static {v0}, Lorg/webrtc/Camera1Session;->access$400(Lorg/webrtc/Camera1Session;)Lorg/webrtc/Camera1Session$SessionState;

    move-result-object v0

    sget-object v1, Lorg/webrtc/Camera1Session$SessionState;->RUNNING:Lorg/webrtc/Camera1Session$SessionState;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lorg/webrtc/Camera1Session$2;->this$0:Lorg/webrtc/Camera1Session;

    .line 305
    invoke-static {p0}, Lorg/webrtc/Camera1Session;->access$300(Lorg/webrtc/Camera1Session;)Landroid/hardware/Camera;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    :cond_0
    return-void
.end method

.method synthetic lambda$onPreviewFrame$1$org-webrtc-Camera1Session$2([B)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/webrtc/Camera1Session$2;->this$0:Lorg/webrtc/Camera1Session;

    .line 303
    invoke-static {v0}, Lorg/webrtc/Camera1Session;->access$1000(Lorg/webrtc/Camera1Session;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lorg/webrtc/Camera1Session$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lorg/webrtc/Camera1Session$2$$ExternalSyntheticLambda0;-><init>(Lorg/webrtc/Camera1Session$2;[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 6

    iget-object v0, p0, Lorg/webrtc/Camera1Session$2;->this$0:Lorg/webrtc/Camera1Session;

    .line 281
    invoke-static {v0}, Lorg/webrtc/Camera1Session;->access$200(Lorg/webrtc/Camera1Session;)V

    iget-object v0, p0, Lorg/webrtc/Camera1Session$2;->this$0:Lorg/webrtc/Camera1Session;

    .line 283
    invoke-static {v0}, Lorg/webrtc/Camera1Session;->access$300(Lorg/webrtc/Camera1Session;)Landroid/hardware/Camera;

    move-result-object v0

    const-string v1, "Camera1Session"

    if-eq p2, v0, :cond_0

    const-string p0, "Callback from a different camera. This should never happen."

    .line 284
    invoke-static {v1, p0}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p2, p0, Lorg/webrtc/Camera1Session$2;->this$0:Lorg/webrtc/Camera1Session;

    .line 288
    invoke-static {p2}, Lorg/webrtc/Camera1Session;->access$400(Lorg/webrtc/Camera1Session;)Lorg/webrtc/Camera1Session$SessionState;

    move-result-object p2

    sget-object v0, Lorg/webrtc/Camera1Session$SessionState;->RUNNING:Lorg/webrtc/Camera1Session$SessionState;

    if-eq p2, v0, :cond_1

    const-string p0, "Bytebuffer frame captured but camera is no longer running."

    .line 289
    invoke-static {v1, p0}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 293
    :cond_1
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iget-object p2, p0, Lorg/webrtc/Camera1Session$2;->this$0:Lorg/webrtc/Camera1Session;

    .line 295
    invoke-static {p2}, Lorg/webrtc/Camera1Session;->access$500(Lorg/webrtc/Camera1Session;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 296
    sget-object p2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 297
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-object v4, p0, Lorg/webrtc/Camera1Session$2;->this$0:Lorg/webrtc/Camera1Session;

    invoke-static {v4}, Lorg/webrtc/Camera1Session;->access$600(Lorg/webrtc/Camera1Session;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {p2, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    long-to-int p2, v2

    .line 298
    invoke-static {}, Lorg/webrtc/Camera1Session;->access$700()Lorg/webrtc/Histogram;

    move-result-object v2

    invoke-virtual {v2, p2}, Lorg/webrtc/Histogram;->addSample(I)V

    iget-object p2, p0, Lorg/webrtc/Camera1Session$2;->this$0:Lorg/webrtc/Camera1Session;

    const/4 v2, 0x1

    .line 299
    invoke-static {p2, v2}, Lorg/webrtc/Camera1Session;->access$502(Lorg/webrtc/Camera1Session;Z)Z

    .line 302
    :cond_2
    new-instance p2, Lorg/webrtc/NV21Buffer;

    iget-object v2, p0, Lorg/webrtc/Camera1Session$2;->this$0:Lorg/webrtc/Camera1Session;

    .line 303
    invoke-static {v2}, Lorg/webrtc/Camera1Session;->access$800(Lorg/webrtc/Camera1Session;)Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;

    move-result-object v2

    iget v2, v2, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;->width:I

    iget-object v3, p0, Lorg/webrtc/Camera1Session$2;->this$0:Lorg/webrtc/Camera1Session;

    invoke-static {v3}, Lorg/webrtc/Camera1Session;->access$800(Lorg/webrtc/Camera1Session;)Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;

    move-result-object v3

    iget v3, v3, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;->height:I

    new-instance v4, Lorg/webrtc/Camera1Session$2$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, p1}, Lorg/webrtc/Camera1Session$2$$ExternalSyntheticLambda1;-><init>(Lorg/webrtc/Camera1Session$2;[B)V

    invoke-direct {p2, p1, v2, v3, v4}, Lorg/webrtc/NV21Buffer;-><init>([BIILjava/lang/Runnable;)V

    .line 308
    new-instance p1, Lorg/webrtc/VideoFrame;

    iget-object v2, p0, Lorg/webrtc/Camera1Session$2;->this$0:Lorg/webrtc/Camera1Session;

    invoke-static {v2}, Lorg/webrtc/Camera1Session;->access$900(Lorg/webrtc/Camera1Session;)I

    move-result v2

    invoke-direct {p1, p2, v2, v0, v1}, Lorg/webrtc/VideoFrame;-><init>(Lorg/webrtc/VideoFrame$Buffer;IJ)V

    iget-object p2, p0, Lorg/webrtc/Camera1Session$2;->this$0:Lorg/webrtc/Camera1Session;

    .line 309
    invoke-static {p2}, Lorg/webrtc/Camera1Session;->access$100(Lorg/webrtc/Camera1Session;)Lorg/webrtc/CameraSession$Events;

    move-result-object p2

    iget-object p0, p0, Lorg/webrtc/Camera1Session$2;->this$0:Lorg/webrtc/Camera1Session;

    invoke-interface {p2, p0, p1}, Lorg/webrtc/CameraSession$Events;->onFrameCaptured(Lorg/webrtc/CameraSession;Lorg/webrtc/VideoFrame;)V

    .line 310
    invoke-virtual {p1}, Lorg/webrtc/VideoFrame;->release()V

    return-void
.end method
