.class public abstract Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;
.super Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer;
.source "SubtitleOutputBuffer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/text/Subtitle;


# instance fields
.field private subsampleOffsetUs:J

.field private subtitle:Lcom/google/android/exoplayer2/text/Subtitle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 68
    invoke-super {p0}, Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->subtitle:Lcom/google/android/exoplayer2/text/Subtitle;

    return-void
.end method

.method public getCues(J)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->subtitle:Lcom/google/android/exoplayer2/text/Subtitle;

    .line 63
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/text/Subtitle;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->subsampleOffsetUs:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/text/Subtitle;->getCues(J)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getEventTime(I)J
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->subtitle:Lcom/google/android/exoplayer2/text/Subtitle;

    .line 53
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/text/Subtitle;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/text/Subtitle;->getEventTime(I)J

    move-result-wide v0

    iget-wide p0, p0, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->subsampleOffsetUs:J

    add-long/2addr v0, p0

    return-wide v0
.end method

.method public getEventTimeCount()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->subtitle:Lcom/google/android/exoplayer2/text/Subtitle;

    .line 48
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/text/Subtitle;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/text/Subtitle;->getEventTimeCount()I

    move-result p0

    return p0
.end method

.method public getNextEventTimeIndex(J)I
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->subtitle:Lcom/google/android/exoplayer2/text/Subtitle;

    .line 58
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/text/Subtitle;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->subsampleOffsetUs:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/text/Subtitle;->getNextEventTimeIndex(J)I

    move-result p0

    return p0
.end method

.method public setContent(JLcom/google/android/exoplayer2/text/Subtitle;J)V
    .locals 0

    .line 40
    iput-wide p1, p0, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->timeUs:J

    iput-object p3, p0, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->subtitle:Lcom/google/android/exoplayer2/text/Subtitle;

    const-wide p1, 0x7fffffffffffffffL

    cmp-long p1, p4, p1

    if-nez p1, :cond_0

    .line 43
    iget-wide p4, p0, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->timeUs:J

    :cond_0
    iput-wide p4, p0, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->subsampleOffsetUs:J

    return-void
.end method
