.class public interface abstract Landroidx/media3/extractor/ts/ElementaryStreamReader;
.super Ljava/lang/Object;
.source "ElementaryStreamReader.java"


# virtual methods
.method public abstract consume(Landroidx/media3/common/util/ParsableByteArray;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation
.end method

.method public abstract createTracks(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
.end method

.method public abstract packetFinished()V
.end method

.method public abstract packetStarted(JI)V
.end method

.method public abstract seek()V
.end method
