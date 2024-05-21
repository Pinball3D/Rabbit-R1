.class public Landroidx/media3/extractor/ForwardingExtractorInput;
.super Ljava/lang/Object;
.source "ForwardingExtractorInput.java"

# interfaces
.implements Landroidx/media3/extractor/ExtractorInput;


# instance fields
.field private final input:Landroidx/media3/extractor/ExtractorInput;


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/ExtractorInput;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ForwardingExtractorInput;->input:Landroidx/media3/extractor/ExtractorInput;

    return-void
.end method


# virtual methods
.method public advancePeekPosition(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Landroidx/media3/extractor/ForwardingExtractorInput;->input:Landroidx/media3/extractor/ExtractorInput;

    .line 85
    invoke-interface {p0, p1}, Landroidx/media3/extractor/ExtractorInput;->advancePeekPosition(I)V

    return-void
.end method

.method public advancePeekPosition(IZ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Landroidx/media3/extractor/ForwardingExtractorInput;->input:Landroidx/media3/extractor/ExtractorInput;

    .line 80
    invoke-interface {p0, p1, p2}, Landroidx/media3/extractor/ExtractorInput;->advancePeekPosition(IZ)Z

    move-result p0

    return p0
.end method

.method public getLength()J
    .locals 2

    iget-object p0, p0, Landroidx/media3/extractor/ForwardingExtractorInput;->input:Landroidx/media3/extractor/ExtractorInput;

    .line 105
    invoke-interface {p0}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPeekPosition()J
    .locals 2

    iget-object p0, p0, Landroidx/media3/extractor/ForwardingExtractorInput;->input:Landroidx/media3/extractor/ExtractorInput;

    .line 95
    invoke-interface {p0}, Landroidx/media3/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPosition()J
    .locals 2

    iget-object p0, p0, Landroidx/media3/extractor/ForwardingExtractorInput;->input:Landroidx/media3/extractor/ExtractorInput;

    .line 100
    invoke-interface {p0}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public peek([BII)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Landroidx/media3/extractor/ForwardingExtractorInput;->input:Landroidx/media3/extractor/ExtractorInput;

    .line 64
    invoke-interface {p0, p1, p2, p3}, Landroidx/media3/extractor/ExtractorInput;->peek([BII)I

    move-result p0

    return p0
.end method

.method public peekFully([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Landroidx/media3/extractor/ForwardingExtractorInput;->input:Landroidx/media3/extractor/ExtractorInput;

    .line 75
    invoke-interface {p0, p1, p2, p3}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BII)V

    return-void
.end method

.method public peekFully([BIIZ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Landroidx/media3/extractor/ForwardingExtractorInput;->input:Landroidx/media3/extractor/ExtractorInput;

    .line 70
    invoke-interface {p0, p1, p2, p3, p4}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BIIZ)Z

    move-result p0

    return p0
.end method

.method public read([BII)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Landroidx/media3/extractor/ForwardingExtractorInput;->input:Landroidx/media3/extractor/ExtractorInput;

    .line 33
    invoke-interface {p0, p1, p2, p3}, Landroidx/media3/extractor/ExtractorInput;->read([BII)I

    move-result p0

    return p0
.end method

.method public readFully([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Landroidx/media3/extractor/ForwardingExtractorInput;->input:Landroidx/media3/extractor/ExtractorInput;

    .line 44
    invoke-interface {p0, p1, p2, p3}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    return-void
.end method

.method public readFully([BIIZ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Landroidx/media3/extractor/ForwardingExtractorInput;->input:Landroidx/media3/extractor/ExtractorInput;

    .line 39
    invoke-interface {p0, p1, p2, p3, p4}, Landroidx/media3/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result p0

    return p0
.end method

.method public resetPeekPosition()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/ForwardingExtractorInput;->input:Landroidx/media3/extractor/ExtractorInput;

    .line 90
    invoke-interface {p0}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    return-void
.end method

.method public setRetryPosition(JLjava/lang/Throwable;)V
    .locals 0
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

    iget-object p0, p0, Landroidx/media3/extractor/ForwardingExtractorInput;->input:Landroidx/media3/extractor/ExtractorInput;

    .line 110
    invoke-interface {p0, p1, p2, p3}, Landroidx/media3/extractor/ExtractorInput;->setRetryPosition(JLjava/lang/Throwable;)V

    return-void
.end method

.method public skip(I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Landroidx/media3/extractor/ForwardingExtractorInput;->input:Landroidx/media3/extractor/ExtractorInput;

    .line 49
    invoke-interface {p0, p1}, Landroidx/media3/extractor/ExtractorInput;->skip(I)I

    move-result p0

    return p0
.end method

.method public skipFully(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Landroidx/media3/extractor/ForwardingExtractorInput;->input:Landroidx/media3/extractor/ExtractorInput;

    .line 59
    invoke-interface {p0, p1}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    return-void
.end method

.method public skipFully(IZ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Landroidx/media3/extractor/ForwardingExtractorInput;->input:Landroidx/media3/extractor/ExtractorInput;

    .line 54
    invoke-interface {p0, p1, p2}, Landroidx/media3/extractor/ExtractorInput;->skipFully(IZ)Z

    move-result p0

    return p0
.end method
