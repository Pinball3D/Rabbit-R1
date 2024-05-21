.class final Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;
.super Landroidx/media3/extractor/ConstantBitrateSeekMap;
.source "ConstantBitrateSeeker.java"

# interfaces
.implements Landroidx/media3/extractor/mp3/Seeker;


# direct methods
.method public constructor <init>(JJLandroidx/media3/extractor/MpegAudioUtil$Header;Z)V
    .locals 8

    .line 42
    iget v5, p5, Landroidx/media3/extractor/MpegAudioUtil$Header;->bitrate:I

    iget v6, p5, Landroidx/media3/extractor/MpegAudioUtil$Header;->frameSize:I

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v7, p6

    invoke-direct/range {v0 .. v7}, Landroidx/media3/extractor/ConstantBitrateSeekMap;-><init>(JJIIZ)V

    return-void
.end method


# virtual methods
.method public getDataEndPosition()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getTimeUs(J)J
    .locals 0

    .line 52
    invoke-virtual {p0, p1, p2}, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;->getTimeUsAtPosition(J)J

    move-result-wide p0

    return-wide p0
.end method
