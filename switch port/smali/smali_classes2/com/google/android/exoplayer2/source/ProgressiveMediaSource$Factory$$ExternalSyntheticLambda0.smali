.class public final synthetic Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor$Factory;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    return-void
.end method


# virtual methods
.method public final createProgressiveMediaExtractor(Lcom/google/android/exoplayer2/analytics/PlayerId;)Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;->lambda$new$0(Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;Lcom/google/android/exoplayer2/analytics/PlayerId;)Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;

    move-result-object p0

    return-object p0
.end method
