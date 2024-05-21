.class final Landroidx/media3/extractor/mp4/AtomParsers$Stz2SampleSizeBox;
.super Ljava/lang/Object;
.source "AtomParsers.java"

# interfaces
.implements Landroidx/media3/extractor/mp4/AtomParsers$SampleSizeBox;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/mp4/AtomParsers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Stz2SampleSizeBox"
.end annotation


# instance fields
.field private currentByte:I

.field private final data:Landroidx/media3/common/util/ParsableByteArray;

.field private final fieldSize:I

.field private final sampleCount:I

.field private sampleIndex:I


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/mp4/Atom$LeafAtom;)V
    .locals 1

    .line 2156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2157
    iget-object p1, p1, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media3/common/util/ParsableByteArray;

    iput-object p1, p0, Landroidx/media3/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    const/16 v0, 0xc

    .line 2158
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2159
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Landroidx/media3/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->fieldSize:I

    .line 2160
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result p1

    iput p1, p0, Landroidx/media3/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->sampleCount:I

    return-void
.end method


# virtual methods
.method public getFixedSampleSize()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getSampleCount()I
    .locals 0

    iget p0, p0, Landroidx/media3/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->sampleCount:I

    return p0
.end method

.method public readNextSampleSize()I
    .locals 2

    iget v0, p0, Landroidx/media3/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->fieldSize:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Landroidx/media3/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    .line 2176
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    return p0

    :cond_0
    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Landroidx/media3/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    .line 2178
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result p0

    return p0

    :cond_1
    iget v0, p0, Landroidx/media3/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->sampleIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroidx/media3/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->sampleIndex:I

    .line 2181
    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/media3/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    .line 2183
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    iput v0, p0, Landroidx/media3/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->currentByte:I

    and-int/lit16 p0, v0, 0xf0

    shr-int/lit8 p0, p0, 0x4

    return p0

    :cond_2
    iget p0, p0, Landroidx/media3/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->currentByte:I

    and-int/lit8 p0, p0, 0xf

    return p0
.end method
