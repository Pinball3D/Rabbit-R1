.class public final synthetic Lcom/google/android/exoplayer2/source/MediaParserExtractorAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor$Factory;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createProgressiveMediaExtractor(Lcom/google/android/exoplayer2/analytics/PlayerId;)Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;
    .locals 0

    new-instance p0, Lcom/google/android/exoplayer2/source/MediaParserExtractorAdapter;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/MediaParserExtractorAdapter;-><init>(Lcom/google/android/exoplayer2/analytics/PlayerId;)V

    check-cast p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;

    return-object p0
.end method
