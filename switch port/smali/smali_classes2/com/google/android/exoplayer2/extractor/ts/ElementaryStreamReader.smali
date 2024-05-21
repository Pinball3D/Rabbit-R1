.class public interface abstract Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;
.super Ljava/lang/Object;
.source "ElementaryStreamReader.java"


# virtual methods
.method public abstract consume(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation
.end method

.method public abstract createTracks(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
.end method

.method public abstract packetFinished()V
.end method

.method public abstract packetStarted(JI)V
.end method

.method public abstract seek()V
.end method
