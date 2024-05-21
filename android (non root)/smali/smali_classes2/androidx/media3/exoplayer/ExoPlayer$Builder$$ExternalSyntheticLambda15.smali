.class public final synthetic Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Supplier;


# instance fields
.field public final synthetic f$0:Landroidx/media3/exoplayer/source/MediaSource$Factory;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/source/MediaSource$Factory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda15;->f$0:Landroidx/media3/exoplayer/source/MediaSource$Factory;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda15;->f$0:Landroidx/media3/exoplayer/source/MediaSource$Factory;

    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->lambda$new$7(Landroidx/media3/exoplayer/source/MediaSource$Factory;)Landroidx/media3/exoplayer/source/MediaSource$Factory;

    move-result-object p0

    return-object p0
.end method
