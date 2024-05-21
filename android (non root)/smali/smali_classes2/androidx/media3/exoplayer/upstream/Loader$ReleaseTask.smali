.class final Landroidx/media3/exoplayer/upstream/Loader$ReleaseTask;
.super Ljava/lang/Object;
.source "Loader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/upstream/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ReleaseTask"
.end annotation


# instance fields
.field private final callback:Landroidx/media3/exoplayer/upstream/Loader$ReleaseCallback;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/upstream/Loader$ReleaseCallback;)V
    .locals 0

    .line 528
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/upstream/Loader$ReleaseTask;->callback:Landroidx/media3/exoplayer/upstream/Loader$ReleaseCallback;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/upstream/Loader$ReleaseTask;->callback:Landroidx/media3/exoplayer/upstream/Loader$ReleaseCallback;

    .line 534
    invoke-interface {p0}, Landroidx/media3/exoplayer/upstream/Loader$ReleaseCallback;->onLoaderReleased()V

    return-void
.end method
