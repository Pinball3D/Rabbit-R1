.class interface abstract Landroidx/media3/extractor/wav/WavExtractor$OutputWriter;
.super Ljava/lang/Object;
.source "WavExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/wav/WavExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "OutputWriter"
.end annotation


# virtual methods
.method public abstract init(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation
.end method

.method public abstract reset(J)V
.end method

.method public abstract sampleData(Landroidx/media3/extractor/ExtractorInput;J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
