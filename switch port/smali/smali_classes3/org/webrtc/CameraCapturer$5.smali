.class Lorg/webrtc/CameraCapturer$5;
.super Ljava/lang/Object;
.source "CameraCapturer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/CameraCapturer;->createSessionInternal(I)V
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

    iput-object p1, p0, Lorg/webrtc/CameraCapturer$5;->this$0:Lorg/webrtc/CameraCapturer;

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lorg/webrtc/CameraCapturer$5;->this$0:Lorg/webrtc/CameraCapturer;

    .line 272
    invoke-static {v0}, Lorg/webrtc/CameraCapturer;->access$1900(Lorg/webrtc/CameraCapturer;)Lorg/webrtc/CameraSession$CreateSessionCallback;

    move-result-object v1

    iget-object v2, p0, Lorg/webrtc/CameraCapturer$5;->this$0:Lorg/webrtc/CameraCapturer;

    invoke-static {v2}, Lorg/webrtc/CameraCapturer;->access$2000(Lorg/webrtc/CameraCapturer;)Lorg/webrtc/CameraSession$Events;

    move-result-object v2

    iget-object v3, p0, Lorg/webrtc/CameraCapturer$5;->this$0:Lorg/webrtc/CameraCapturer;

    invoke-static {v3}, Lorg/webrtc/CameraCapturer;->access$2100(Lorg/webrtc/CameraCapturer;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lorg/webrtc/CameraCapturer$5;->this$0:Lorg/webrtc/CameraCapturer;

    .line 273
    invoke-static {v4}, Lorg/webrtc/CameraCapturer;->access$900(Lorg/webrtc/CameraCapturer;)Lorg/webrtc/SurfaceTextureHelper;

    move-result-object v4

    iget-object v5, p0, Lorg/webrtc/CameraCapturer$5;->this$0:Lorg/webrtc/CameraCapturer;

    invoke-static {v5}, Lorg/webrtc/CameraCapturer;->access$1300(Lorg/webrtc/CameraCapturer;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/webrtc/CameraCapturer$5;->this$0:Lorg/webrtc/CameraCapturer;

    invoke-static {v6}, Lorg/webrtc/CameraCapturer;->access$2200(Lorg/webrtc/CameraCapturer;)I

    move-result v6

    iget-object v7, p0, Lorg/webrtc/CameraCapturer$5;->this$0:Lorg/webrtc/CameraCapturer;

    invoke-static {v7}, Lorg/webrtc/CameraCapturer;->access$2300(Lorg/webrtc/CameraCapturer;)I

    move-result v7

    iget-object p0, p0, Lorg/webrtc/CameraCapturer$5;->this$0:Lorg/webrtc/CameraCapturer;

    invoke-static {p0}, Lorg/webrtc/CameraCapturer;->access$2400(Lorg/webrtc/CameraCapturer;)I

    move-result v8

    .line 272
    invoke-virtual/range {v0 .. v8}, Lorg/webrtc/CameraCapturer;->createCameraSession(Lorg/webrtc/CameraSession$CreateSessionCallback;Lorg/webrtc/CameraSession$Events;Landroid/content/Context;Lorg/webrtc/SurfaceTextureHelper;Ljava/lang/String;III)V

    return-void
.end method
