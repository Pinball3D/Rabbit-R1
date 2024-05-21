.class Lorg/webrtc/CameraCapturer$3;
.super Ljava/lang/Object;
.source "CameraCapturer.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lorg/webrtc/CameraCapturer$3;->this$0:Lorg/webrtc/CameraCapturer;

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Lorg/webrtc/CameraCapturer$3;->this$0:Lorg/webrtc/CameraCapturer;

    .line 175
    invoke-static {p0}, Lorg/webrtc/CameraCapturer;->access$1000(Lorg/webrtc/CameraCapturer;)Lorg/webrtc/CameraVideoCapturer$CameraEventsHandler;

    move-result-object p0

    const-string v0, "Camera failed to start within timeout."

    invoke-interface {p0, v0}, Lorg/webrtc/CameraVideoCapturer$CameraEventsHandler;->onCameraError(Ljava/lang/String;)V

    return-void
.end method
