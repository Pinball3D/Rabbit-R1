.class Lorg/webrtc/CameraCapturer$8;
.super Ljava/lang/Object;
.source "CameraCapturer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/CameraCapturer;->switchCamera(Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/CameraCapturer;

.field final synthetic val$cameraName:Ljava/lang/String;

.field final synthetic val$switchEventsHandler:Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;


# direct methods
.method constructor <init>(Lorg/webrtc/CameraCapturer;Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/webrtc/CameraCapturer$8;->this$0:Lorg/webrtc/CameraCapturer;

    iput-object p2, p0, Lorg/webrtc/CameraCapturer$8;->val$switchEventsHandler:Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;

    iput-object p3, p0, Lorg/webrtc/CameraCapturer$8;->val$cameraName:Ljava/lang/String;

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/webrtc/CameraCapturer$8;->this$0:Lorg/webrtc/CameraCapturer;

    iget-object v1, p0, Lorg/webrtc/CameraCapturer$8;->val$switchEventsHandler:Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;

    iget-object p0, p0, Lorg/webrtc/CameraCapturer$8;->val$cameraName:Ljava/lang/String;

    .line 356
    invoke-static {v0, v1, p0}, Lorg/webrtc/CameraCapturer;->access$1600(Lorg/webrtc/CameraCapturer;Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;Ljava/lang/String;)V

    return-void
.end method
