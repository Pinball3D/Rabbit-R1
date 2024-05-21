.class Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;
.super Ljava/lang/Object;
.source "AviExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/avi/AviExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChunkHeaderHolder"
.end annotation


# instance fields
.field public chunkType:I

.field public listType:I

.field public size:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 537
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/extractor/avi/AviExtractor$1;)V
    .locals 0

    .line 537
    invoke-direct {p0}, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;-><init>()V

    return-void
.end method


# virtual methods
.method public populateFrom(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 1

    .line 552
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v0

    iput v0, p0, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->chunkType:I

    .line 553
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result p1

    iput p1, p0, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->size:I

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->listType:I

    return-void
.end method

.method public populateWithListHeaderFrom(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 543
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->populateFrom(Landroidx/media3/common/util/ParsableByteArray;)V

    iget v0, p0, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->chunkType:I

    const v1, 0x5453494c

    if-ne v0, v1, :cond_0

    .line 548
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result p1

    iput p1, p0, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->listType:I

    return-void

    .line 545
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "LIST expected, found: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->chunkType:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0
.end method
