.class public final synthetic Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;

.field public final synthetic f$1:Landroidx/media3/extractor/SeekMap;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;Landroidx/media3/extractor/SeekMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$$ExternalSyntheticLambda3;->f$0:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;

    iput-object p2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$$ExternalSyntheticLambda3;->f$1:Landroidx/media3/extractor/SeekMap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$$ExternalSyntheticLambda3;->f$0:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$$ExternalSyntheticLambda3;->f$1:Landroidx/media3/extractor/SeekMap;

    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->lambda$seekMap$1$androidx-media3-exoplayer-source-ProgressiveMediaPeriod(Landroidx/media3/extractor/SeekMap;)V

    return-void
.end method
