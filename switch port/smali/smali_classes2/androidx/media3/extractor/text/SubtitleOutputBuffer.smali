.class public abstract Landroidx/media3/extractor/text/SubtitleOutputBuffer;
.super Landroidx/media3/decoder/DecoderOutputBuffer;
.source "SubtitleOutputBuffer.java"

# interfaces
.implements Landroidx/media3/extractor/text/Subtitle;


# instance fields
.field private subsampleOffsetUs:J

.field private subtitle:Landroidx/media3/extractor/text/Subtitle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroidx/media3/decoder/DecoderOutputBuffer;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 71
    invoke-super {p0}, Landroidx/media3/decoder/DecoderOutputBuffer;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->subtitle:Landroidx/media3/extractor/text/Subtitle;

    return-void
.end method

.method public getCues(J)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Landroidx/media3/common/text/Cue;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->subtitle:Landroidx/media3/extractor/text/Subtitle;

    .line 66
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/text/Subtitle;

    iget-wide v1, p0, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->subsampleOffsetUs:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Landroidx/media3/extractor/text/Subtitle;->getCues(J)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getEventTime(I)J
    .locals 2

    iget-object v0, p0, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->subtitle:Landroidx/media3/extractor/text/Subtitle;

    .line 56
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/text/Subtitle;

    invoke-interface {v0, p1}, Landroidx/media3/extractor/text/Subtitle;->getEventTime(I)J

    move-result-wide v0

    iget-wide p0, p0, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->subsampleOffsetUs:J

    add-long/2addr v0, p0

    return-wide v0
.end method

.method public getEventTimeCount()I
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->subtitle:Landroidx/media3/extractor/text/Subtitle;

    .line 51
    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/extractor/text/Subtitle;

    invoke-interface {p0}, Landroidx/media3/extractor/text/Subtitle;->getEventTimeCount()I

    move-result p0

    return p0
.end method

.method public getNextEventTimeIndex(J)I
    .locals 3

    iget-object v0, p0, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->subtitle:Landroidx/media3/extractor/text/Subtitle;

    .line 61
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/text/Subtitle;

    iget-wide v1, p0, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->subsampleOffsetUs:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Landroidx/media3/extractor/text/Subtitle;->getNextEventTimeIndex(J)I

    move-result p0

    return p0
.end method

.method public setContent(JLandroidx/media3/extractor/text/Subtitle;J)V
    .locals 0

    .line 43
    iput-wide p1, p0, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->timeUs:J

    iput-object p3, p0, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->subtitle:Landroidx/media3/extractor/text/Subtitle;

    const-wide p1, 0x7fffffffffffffffL

    cmp-long p1, p4, p1

    if-nez p1, :cond_0

    .line 46
    iget-wide p4, p0, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->timeUs:J

    :cond_0
    iput-wide p4, p0, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->subsampleOffsetUs:J

    return-void
.end method
