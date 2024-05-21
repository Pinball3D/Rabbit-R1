.class final Landroidx/media3/extractor/jpeg/StartOffsetExtractorInput;
.super Landroidx/media3/extractor/ForwardingExtractorInput;
.source "StartOffsetExtractorInput.java"


# instance fields
.field private final startOffset:J


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/ExtractorInput;J)V
    .locals 2

    .line 45
    invoke-direct {p0, p1}, Landroidx/media3/extractor/ForwardingExtractorInput;-><init>(Landroidx/media3/extractor/ExtractorInput;)V

    .line 46
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    cmp-long p1, v0, p2

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iput-wide p2, p0, Landroidx/media3/extractor/jpeg/StartOffsetExtractorInput;->startOffset:J

    return-void
.end method


# virtual methods
.method public getLength()J
    .locals 4

    .line 62
    invoke-super {p0}, Landroidx/media3/extractor/ForwardingExtractorInput;->getLength()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/media3/extractor/jpeg/StartOffsetExtractorInput;->startOffset:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getPeekPosition()J
    .locals 4

    .line 57
    invoke-super {p0}, Landroidx/media3/extractor/ForwardingExtractorInput;->getPeekPosition()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/media3/extractor/jpeg/StartOffsetExtractorInput;->startOffset:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getPosition()J
    .locals 4

    .line 52
    invoke-super {p0}, Landroidx/media3/extractor/ForwardingExtractorInput;->getPosition()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/media3/extractor/jpeg/StartOffsetExtractorInput;->startOffset:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public setRetryPosition(JLjava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(JTE;)V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-wide v0, p0, Landroidx/media3/extractor/jpeg/StartOffsetExtractorInput;->startOffset:J

    add-long/2addr p1, v0

    .line 67
    invoke-super {p0, p1, p2, p3}, Landroidx/media3/extractor/ForwardingExtractorInput;->setRetryPosition(JLjava/lang/Throwable;)V

    return-void
.end method
