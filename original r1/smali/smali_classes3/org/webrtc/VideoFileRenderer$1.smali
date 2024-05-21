.class Lorg/webrtc/VideoFileRenderer$1;
.super Ljava/lang/Object;
.source "VideoFileRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/VideoFileRenderer;-><init>(Ljava/lang/String;IILorg/webrtc/EglBase$Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/VideoFileRenderer;

.field final synthetic val$sharedContext:Lorg/webrtc/EglBase$Context;


# direct methods
.method constructor <init>(Lorg/webrtc/VideoFileRenderer;Lorg/webrtc/EglBase$Context;)V
    .locals 0

    iput-object p1, p0, Lorg/webrtc/VideoFileRenderer$1;->this$0:Lorg/webrtc/VideoFileRenderer;

    iput-object p2, p0, Lorg/webrtc/VideoFileRenderer$1;->val$sharedContext:Lorg/webrtc/EglBase$Context;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lorg/webrtc/VideoFileRenderer$1;->this$0:Lorg/webrtc/VideoFileRenderer;

    iget-object v1, p0, Lorg/webrtc/VideoFileRenderer$1;->val$sharedContext:Lorg/webrtc/EglBase$Context;

    .line 70
    sget-object v2, Lorg/webrtc/EglBase;->CONFIG_PIXEL_BUFFER:[I

    invoke-static {v1, v2}, Lorg/webrtc/EglBase;->create(Lorg/webrtc/EglBase$Context;[I)Lorg/webrtc/EglBase;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/VideoFileRenderer;->access$002(Lorg/webrtc/VideoFileRenderer;Lorg/webrtc/EglBase;)Lorg/webrtc/EglBase;

    iget-object v0, p0, Lorg/webrtc/VideoFileRenderer$1;->this$0:Lorg/webrtc/VideoFileRenderer;

    .line 71
    invoke-static {v0}, Lorg/webrtc/VideoFileRenderer;->access$000(Lorg/webrtc/VideoFileRenderer;)Lorg/webrtc/EglBase;

    move-result-object v0

    invoke-interface {v0}, Lorg/webrtc/EglBase;->createDummyPbufferSurface()V

    iget-object v0, p0, Lorg/webrtc/VideoFileRenderer$1;->this$0:Lorg/webrtc/VideoFileRenderer;

    .line 72
    invoke-static {v0}, Lorg/webrtc/VideoFileRenderer;->access$000(Lorg/webrtc/VideoFileRenderer;)Lorg/webrtc/EglBase;

    move-result-object v0

    invoke-interface {v0}, Lorg/webrtc/EglBase;->makeCurrent()V

    iget-object p0, p0, Lorg/webrtc/VideoFileRenderer$1;->this$0:Lorg/webrtc/VideoFileRenderer;

    .line 73
    new-instance v0, Lorg/webrtc/YuvConverter;

    invoke-direct {v0}, Lorg/webrtc/YuvConverter;-><init>()V

    invoke-static {p0, v0}, Lorg/webrtc/VideoFileRenderer;->access$102(Lorg/webrtc/VideoFileRenderer;Lorg/webrtc/YuvConverter;)Lorg/webrtc/YuvConverter;

    return-void
.end method
