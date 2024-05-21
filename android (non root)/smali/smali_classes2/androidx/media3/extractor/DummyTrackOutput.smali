.class public final Landroidx/media3/extractor/DummyTrackOutput;
.super Ljava/lang/Object;
.source "DummyTrackOutput.java"

# interfaces
.implements Landroidx/media3/extractor/TrackOutput;


# instance fields
.field private final readBuffer:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Landroidx/media3/extractor/DummyTrackOutput;->readBuffer:[B

    return-void
.end method


# virtual methods
.method public format(Landroidx/media3/common/Format;)V
    .locals 0

    return-void
.end method

.method public sampleData(Landroidx/media3/common/DataReader;IZI)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p4, p0, Landroidx/media3/extractor/DummyTrackOutput;->readBuffer:[B

    .line 51
    array-length p4, p4

    invoke-static {p4, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget-object p0, p0, Landroidx/media3/extractor/DummyTrackOutput;->readBuffer:[B

    const/4 p4, 0x0

    .line 52
    invoke-interface {p1, p0, p4, p2}, Landroidx/media3/common/DataReader;->read([BII)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_1

    if-eqz p3, :cond_0

    return p1

    .line 57
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_1
    return p0
.end method

.method public sampleData(Landroidx/media3/common/util/ParsableByteArray;II)V
    .locals 0

    .line 64
    invoke-virtual {p1, p2}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    return-void
.end method

.method public sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V
    .locals 0

    return-void
.end method
