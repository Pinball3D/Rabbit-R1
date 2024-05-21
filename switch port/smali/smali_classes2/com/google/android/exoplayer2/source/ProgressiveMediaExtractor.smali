.class public interface abstract Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;
.super Ljava/lang/Object;
.source "ProgressiveMediaExtractor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor$Factory;
    }
.end annotation


# virtual methods
.method public abstract disableSeekingOnMp3Streams()V
.end method

.method public abstract getCurrentInputPosition()J
.end method

.method public abstract init(Lcom/google/android/exoplayer2/upstream/DataReader;Landroid/net/Uri;Ljava/util/Map;JJLcom/google/android/exoplayer2/extractor/ExtractorOutput;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/DataReader;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;JJ",
            "Lcom/google/android/exoplayer2/extractor/ExtractorOutput;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract read(Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract release()V
.end method

.method public abstract seek(JJ)V
.end method
