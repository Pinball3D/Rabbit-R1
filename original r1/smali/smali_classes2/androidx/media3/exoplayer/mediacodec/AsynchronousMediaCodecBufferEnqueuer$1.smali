.class Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer$1;
.super Landroid/os/Handler;
.source "AsynchronousMediaCodecBufferEnqueuer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;


# direct methods
.method constructor <init>(Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer$1;->this$0:Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;

    .line 93
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer$1;->this$0:Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;

    .line 96
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->access$000(Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;Landroid/os/Message;)V

    return-void
.end method
