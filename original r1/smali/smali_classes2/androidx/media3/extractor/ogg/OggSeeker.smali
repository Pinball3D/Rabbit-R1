.class interface abstract Landroidx/media3/extractor/ogg/OggSeeker;
.super Ljava/lang/Object;
.source "OggSeeker.java"


# virtual methods
.method public abstract createSeekMap()Landroidx/media3/extractor/SeekMap;
.end method

.method public abstract read(Landroidx/media3/extractor/ExtractorInput;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract startSeek(J)V
.end method
