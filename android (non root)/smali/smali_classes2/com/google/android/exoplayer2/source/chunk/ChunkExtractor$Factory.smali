.class public interface abstract Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor$Factory;
.super Ljava/lang/Object;
.source "ChunkExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation


# virtual methods
.method public abstract createProgressiveMediaExtractor(ILcom/google/android/exoplayer2/Format;ZLjava/util/List;Lcom/google/android/exoplayer2/extractor/TrackOutput;Lcom/google/android/exoplayer2/analytics/PlayerId;)Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/exoplayer2/Format;",
            "Z",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;",
            "Lcom/google/android/exoplayer2/extractor/TrackOutput;",
            "Lcom/google/android/exoplayer2/analytics/PlayerId;",
            ")",
            "Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;"
        }
    .end annotation
.end method
