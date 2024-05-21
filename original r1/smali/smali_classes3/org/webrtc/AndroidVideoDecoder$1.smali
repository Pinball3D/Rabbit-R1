.class Lorg/webrtc/AndroidVideoDecoder$1;
.super Ljava/lang/Thread;
.source "AndroidVideoDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/AndroidVideoDecoder;->createOutputThread()Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/AndroidVideoDecoder;


# direct methods
.method constructor <init>(Lorg/webrtc/AndroidVideoDecoder;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/webrtc/AndroidVideoDecoder$1;->this$0:Lorg/webrtc/AndroidVideoDecoder;

    .line 359
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/webrtc/AndroidVideoDecoder$1;->this$0:Lorg/webrtc/AndroidVideoDecoder;

    .line 362
    new-instance v1, Lorg/webrtc/ThreadUtils$ThreadChecker;

    invoke-direct {v1}, Lorg/webrtc/ThreadUtils$ThreadChecker;-><init>()V

    invoke-static {v0, v1}, Lorg/webrtc/AndroidVideoDecoder;->access$002(Lorg/webrtc/AndroidVideoDecoder;Lorg/webrtc/ThreadUtils$ThreadChecker;)Lorg/webrtc/ThreadUtils$ThreadChecker;

    :goto_0
    iget-object v0, p0, Lorg/webrtc/AndroidVideoDecoder$1;->this$0:Lorg/webrtc/AndroidVideoDecoder;

    .line 363
    invoke-static {v0}, Lorg/webrtc/AndroidVideoDecoder;->access$100(Lorg/webrtc/AndroidVideoDecoder;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/webrtc/AndroidVideoDecoder$1;->this$0:Lorg/webrtc/AndroidVideoDecoder;

    .line 364
    invoke-virtual {v0}, Lorg/webrtc/AndroidVideoDecoder;->deliverDecodedFrame()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/webrtc/AndroidVideoDecoder$1;->this$0:Lorg/webrtc/AndroidVideoDecoder;

    .line 366
    invoke-static {p0}, Lorg/webrtc/AndroidVideoDecoder;->access$200(Lorg/webrtc/AndroidVideoDecoder;)V

    return-void
.end method
