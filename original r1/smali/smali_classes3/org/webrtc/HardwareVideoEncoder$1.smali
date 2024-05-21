.class Lorg/webrtc/HardwareVideoEncoder$1;
.super Ljava/lang/Thread;
.source "HardwareVideoEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/HardwareVideoEncoder;->createOutputThread()Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/HardwareVideoEncoder;


# direct methods
.method constructor <init>(Lorg/webrtc/HardwareVideoEncoder;)V
    .locals 0

    iput-object p1, p0, Lorg/webrtc/HardwareVideoEncoder$1;->this$0:Lorg/webrtc/HardwareVideoEncoder;

    .line 520
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    :goto_0
    iget-object v0, p0, Lorg/webrtc/HardwareVideoEncoder$1;->this$0:Lorg/webrtc/HardwareVideoEncoder;

    .line 523
    invoke-static {v0}, Lorg/webrtc/HardwareVideoEncoder;->access$100(Lorg/webrtc/HardwareVideoEncoder;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/webrtc/HardwareVideoEncoder$1;->this$0:Lorg/webrtc/HardwareVideoEncoder;

    .line 524
    invoke-virtual {v0}, Lorg/webrtc/HardwareVideoEncoder;->deliverEncodedImage()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/webrtc/HardwareVideoEncoder$1;->this$0:Lorg/webrtc/HardwareVideoEncoder;

    .line 526
    invoke-static {p0}, Lorg/webrtc/HardwareVideoEncoder;->access$200(Lorg/webrtc/HardwareVideoEncoder;)V

    return-void
.end method
