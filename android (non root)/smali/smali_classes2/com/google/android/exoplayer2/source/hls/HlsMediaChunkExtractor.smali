.class public interface abstract Lcom/google/android/exoplayer2/source/hls/HlsMediaChunkExtractor;
.super Ljava/lang/Object;
.source "HlsMediaChunkExtractor.java"


# virtual methods
.method public abstract init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V
.end method

.method public abstract isPackedAudioExtractor()Z
.end method

.method public abstract isReusable()Z
.end method

.method public abstract onTruncatedSegmentParsed()V
.end method

.method public abstract read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract recreate()Lcom/google/android/exoplayer2/source/hls/HlsMediaChunkExtractor;
.end method
