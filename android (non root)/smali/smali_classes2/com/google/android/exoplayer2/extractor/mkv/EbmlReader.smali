.class interface abstract Lcom/google/android/exoplayer2/extractor/mkv/EbmlReader;
.super Ljava/lang/Object;
.source "EbmlReader.java"


# virtual methods
.method public abstract init(Lcom/google/android/exoplayer2/extractor/mkv/EbmlProcessor;)V
.end method

.method public abstract read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract reset()V
.end method
