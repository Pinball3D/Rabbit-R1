.class public interface abstract Landroidx/media3/extractor/TrackOutput;
.super Ljava/lang/Object;
.source "TrackOutput.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/TrackOutput$SampleDataPart;,
        Landroidx/media3/extractor/TrackOutput$CryptoData;
    }
.end annotation


# static fields
.field public static final SAMPLE_DATA_PART_ENCRYPTION:I = 0x1

.field public static final SAMPLE_DATA_PART_MAIN:I = 0x0

.field public static final SAMPLE_DATA_PART_SUPPLEMENTAL:I = 0x2


# virtual methods
.method public abstract format(Landroidx/media3/common/Format;)V
.end method

.method public sampleData(Landroidx/media3/common/DataReader;IZ)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 159
    invoke-interface {p0, p1, p2, p3, v0}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/DataReader;IZI)I

    move-result p0

    return p0
.end method

.method public abstract sampleData(Landroidx/media3/common/DataReader;IZI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V
    .locals 1

    const/4 v0, 0x0

    .line 167
    invoke-interface {p0, p1, p2, v0}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;II)V

    return-void
.end method

.method public abstract sampleData(Landroidx/media3/common/util/ParsableByteArray;II)V
.end method

.method public abstract sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V
.end method
