.class Lorg/webrtc/Camera1Session$1;
.super Ljava/lang/Object;
.source "Camera1Session.java"

# interfaces
.implements Landroid/hardware/Camera$ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/Camera1Session;->startCapturing()V
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

    iput-object p1, p0, Lorg/webrtc/Camera1Session$1;->this$0:Lorg/webrtc/Camera1Session;

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILandroid/hardware/Camera;)V
    .locals 1

    const/16 p2, 0x64

    if-ne p1, p2, :cond_0

    const-string p2, "Camera server died!"

    goto :goto_0

    .line 204
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Camera error: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    const-string v0, "Camera1Session"

    .line 206
    invoke-static {v0, p2}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/webrtc/Camera1Session$1;->this$0:Lorg/webrtc/Camera1Session;

    .line 207
    invoke-static {v0}, Lorg/webrtc/Camera1Session;->access$000(Lorg/webrtc/Camera1Session;)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lorg/webrtc/Camera1Session$1;->this$0:Lorg/webrtc/Camera1Session;

    .line 209
    invoke-static {p1}, Lorg/webrtc/Camera1Session;->access$100(Lorg/webrtc/Camera1Session;)Lorg/webrtc/CameraSession$Events;

    move-result-object p1

    iget-object p0, p0, Lorg/webrtc/Camera1Session$1;->this$0:Lorg/webrtc/Camera1Session;

    invoke-interface {p1, p0}, Lorg/webrtc/CameraSession$Events;->onCameraDisconnected(Lorg/webrtc/CameraSession;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lorg/webrtc/Camera1Session$1;->this$0:Lorg/webrtc/Camera1Session;

    .line 211
    invoke-static {p1}, Lorg/webrtc/Camera1Session;->access$100(Lorg/webrtc/Camera1Session;)Lorg/webrtc/CameraSession$Events;

    move-result-object p1

    iget-object p0, p0, Lorg/webrtc/Camera1Session$1;->this$0:Lorg/webrtc/Camera1Session;

    invoke-interface {p1, p0, p2}, Lorg/webrtc/CameraSession$Events;->onCameraError(Lorg/webrtc/CameraSession;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
