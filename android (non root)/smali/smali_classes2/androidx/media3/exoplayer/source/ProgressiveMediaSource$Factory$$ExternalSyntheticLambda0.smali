.class public final synthetic Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor$Factory;


# instance fields
.field public final synthetic f$0:Landroidx/media3/extractor/ExtractorsFactory;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/extractor/ExtractorsFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/extractor/ExtractorsFactory;

    return-void
.end method


# virtual methods
.method public final createProgressiveMediaExtractor(Landroidx/media3/exoplayer/analytics/PlayerId;)Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/extractor/ExtractorsFactory;

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->lambda$new$0(Landroidx/media3/extractor/ExtractorsFactory;Landroidx/media3/exoplayer/analytics/PlayerId;)Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor;

    move-result-object p0

    return-object p0
.end method
