.class final Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;
.super Ljava/lang/Object;
.source "ClippingMediaPeriod.java"

# interfaces
.implements Landroidx/media3/exoplayer/source/SampleStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/ClippingMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ClippingSampleStream"
.end annotation


# instance fields
.field public final childStream:Landroidx/media3/exoplayer/source/SampleStream;

.field private sentEos:Z

.field final synthetic this$0:Landroidx/media3/exoplayer/source/ClippingMediaPeriod;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/ClippingMediaPeriod;Landroidx/media3/exoplayer/source/SampleStream;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;->this$0:Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;->childStream:Landroidx/media3/exoplayer/source/SampleStream;

    return-void
.end method


# virtual methods
.method public clearSentEos()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;->sentEos:Z

    return-void
.end method

.method public isReady()Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;->this$0:Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    .line 312
    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->isPendingInitialDiscontinuity()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;->childStream:Landroidx/media3/exoplayer/source/SampleStream;

    invoke-interface {p0}, Landroidx/media3/exoplayer/source/SampleStream;->isReady()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public maybeThrowError()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;->childStream:Landroidx/media3/exoplayer/source/SampleStream;

    .line 317
    invoke-interface {p0}, Landroidx/media3/exoplayer/source/SampleStream;->maybeThrowError()V

    return-void
.end method

.method public readData(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;I)I
    .locals 12

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;->this$0:Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    .line 323
    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->isPendingInitialDiscontinuity()Z

    move-result v0

    const/4 v1, -0x3

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;->sentEos:Z

    const/4 v2, 0x4

    const/4 v3, -0x4

    if-eqz v0, :cond_1

    .line 327
    invoke-virtual {p2, v2}, Landroidx/media3/decoder/DecoderInputBuffer;->setFlags(I)V

    return v3

    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;->this$0:Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    .line 330
    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->getBufferedPositionUs()J

    move-result-wide v4

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;->childStream:Landroidx/media3/exoplayer/source/SampleStream;

    .line 331
    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/exoplayer/source/SampleStream;->readData(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;I)I

    move-result p3

    const/4 v0, -0x5

    const-wide/high16 v6, -0x8000000000000000L

    if-ne p3, v0, :cond_6

    .line 333
    iget-object p2, p1, Landroidx/media3/exoplayer/FormatHolder;->format:Landroidx/media3/common/Format;

    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media3/common/Format;

    .line 334
    iget p3, p2, Landroidx/media3/common/Format;->encoderDelay:I

    if-nez p3, :cond_2

    iget p3, p2, Landroidx/media3/common/Format;->encoderPadding:I

    if-eqz p3, :cond_5

    :cond_2
    iget-object p3, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;->this$0:Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    .line 336
    iget-wide v1, p3, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->startUs:J

    const-wide/16 v3, 0x0

    cmp-long p3, v1, v3

    const/4 v1, 0x0

    if-eqz p3, :cond_3

    move p3, v1

    goto :goto_0

    :cond_3
    iget p3, p2, Landroidx/media3/common/Format;->encoderDelay:I

    :goto_0
    iget-object p0, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;->this$0:Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    .line 337
    iget-wide v2, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->endUs:J

    cmp-long p0, v2, v6

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    iget v1, p2, Landroidx/media3/common/Format;->encoderPadding:I

    .line 340
    :goto_1
    invoke-virtual {p2}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object p0

    .line 341
    invoke-virtual {p0, p3}, Landroidx/media3/common/Format$Builder;->setEncoderDelay(I)Landroidx/media3/common/Format$Builder;

    move-result-object p0

    .line 342
    invoke-virtual {p0, v1}, Landroidx/media3/common/Format$Builder;->setEncoderPadding(I)Landroidx/media3/common/Format$Builder;

    move-result-object p0

    .line 343
    invoke-virtual {p0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p0

    iput-object p0, p1, Landroidx/media3/exoplayer/FormatHolder;->format:Landroidx/media3/common/Format;

    :cond_5
    return v0

    :cond_6
    iget-object p1, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;->this$0:Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    .line 347
    iget-wide v8, p1, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->endUs:J

    cmp-long p1, v8, v6

    if-eqz p1, :cond_9

    if-ne p3, v3, :cond_7

    iget-wide v8, p2, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    iget-object p1, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;->this$0:Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    iget-wide v10, p1, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->endUs:J

    cmp-long p1, v8, v10

    if-gez p1, :cond_8

    :cond_7
    if-ne p3, v1, :cond_9

    cmp-long p1, v4, v6

    if-nez p1, :cond_9

    iget-boolean p1, p2, Landroidx/media3/decoder/DecoderInputBuffer;->waitingForKeys:Z

    if-nez p1, :cond_9

    .line 352
    :cond_8
    invoke-virtual {p2}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    .line 353
    invoke-virtual {p2, v2}, Landroidx/media3/decoder/DecoderInputBuffer;->setFlags(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;->sentEos:Z

    return v3

    :cond_9
    return p3
.end method

.method public skipData(J)I
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;->this$0:Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    .line 362
    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->isPendingInitialDiscontinuity()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x3

    return p0

    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;->childStream:Landroidx/media3/exoplayer/source/SampleStream;

    .line 365
    invoke-interface {p0, p1, p2}, Landroidx/media3/exoplayer/source/SampleStream;->skipData(J)I

    move-result p0

    return p0
.end method
