.class Landroidx/media3/exoplayer/ExoPlayerImplInternal$1;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"

# interfaces
.implements Landroidx/media3/exoplayer/Renderer$WakeupListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/exoplayer/ExoPlayerImplInternal;->enableRenderer(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/exoplayer/ExoPlayerImplInternal;


# direct methods
.method constructor <init>(Landroidx/media3/exoplayer/ExoPlayerImplInternal;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$1;->this$0:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    .line 2574
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSleep()V
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$1;->this$0:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    const/4 v0, 0x1

    .line 2577
    invoke-static {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->access$602(Landroidx/media3/exoplayer/ExoPlayerImplInternal;Z)Z

    return-void
.end method

.method public onWakeup()V
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$1;->this$0:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    .line 2582
    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->access$700(Landroidx/media3/exoplayer/ExoPlayerImplInternal;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object p0

    const/4 v0, 0x2

    invoke-interface {p0, v0}, Landroidx/media3/common/util/HandlerWrapper;->sendEmptyMessage(I)Z

    return-void
.end method
