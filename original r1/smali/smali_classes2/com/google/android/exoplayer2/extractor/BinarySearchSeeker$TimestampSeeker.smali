.class public interface abstract Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSeeker;
.super Ljava/lang/Object;
.source "BinarySearchSeeker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "TimestampSeeker"
.end annotation


# virtual methods
.method public onSeekFinished()V
    .locals 0

    return-void
.end method

.method public abstract searchForTimestamp(Lcom/google/android/exoplayer2/extractor/ExtractorInput;J)Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
