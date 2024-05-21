.class public final synthetic Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor$Factory;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createProgressiveMediaExtractor(Landroidx/media3/exoplayer/analytics/PlayerId;)Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor;
    .locals 0

    new-instance p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;-><init>(Landroidx/media3/exoplayer/analytics/PlayerId;)V

    check-cast p0, Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor;

    return-object p0
.end method
