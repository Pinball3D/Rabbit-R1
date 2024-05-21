.class Landroidx/media3/extractor/ts/TsExtractor$PatReader;
.super Ljava/lang/Object;
.source "TsExtractor.java"

# interfaces
.implements Landroidx/media3/extractor/ts/SectionPayloadReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/ts/TsExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PatReader"
.end annotation


# instance fields
.field private final patScratch:Landroidx/media3/common/util/ParsableBitArray;

.field final synthetic this$0:Landroidx/media3/extractor/ts/TsExtractor;


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/ts/TsExtractor;)V
    .locals 1

    iput-object p1, p0, Landroidx/media3/extractor/ts/TsExtractor$PatReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    .line 496
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 497
    new-instance p1, Landroidx/media3/common/util/ParsableBitArray;

    const/4 v0, 0x4

    new-array v0, v0, [B

    invoke-direct {p1, v0}, Landroidx/media3/common/util/ParsableBitArray;-><init>([B)V

    iput-object p1, p0, Landroidx/media3/extractor/ts/TsExtractor$PatReader;->patScratch:Landroidx/media3/common/util/ParsableBitArray;

    return-void
.end method


# virtual methods
.method public consume(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 9

    .line 510
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 516
    :cond_0
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x6

    .line 523
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 525
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x4

    div-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_4

    iget-object v4, p0, Landroidx/media3/extractor/ts/TsExtractor$PatReader;->patScratch:Landroidx/media3/common/util/ParsableBitArray;

    .line 527
    invoke-virtual {p1, v4, v1}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(Landroidx/media3/common/util/ParsableBitArray;I)V

    iget-object v4, p0, Landroidx/media3/extractor/ts/TsExtractor$PatReader;->patScratch:Landroidx/media3/common/util/ParsableBitArray;

    const/16 v5, 0x10

    .line 528
    invoke-virtual {v4, v5}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    iget-object v5, p0, Landroidx/media3/extractor/ts/TsExtractor$PatReader;->patScratch:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v6, 0x3

    .line 529
    invoke-virtual {v5, v6}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    const/16 v5, 0xd

    if-nez v4, :cond_2

    iget-object v4, p0, Landroidx/media3/extractor/ts/TsExtractor$PatReader;->patScratch:Landroidx/media3/common/util/ParsableBitArray;

    .line 531
    invoke-virtual {v4, v5}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    goto :goto_1

    :cond_2
    iget-object v4, p0, Landroidx/media3/extractor/ts/TsExtractor$PatReader;->patScratch:Landroidx/media3/common/util/ParsableBitArray;

    .line 533
    invoke-virtual {v4, v5}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    iget-object v5, p0, Landroidx/media3/extractor/ts/TsExtractor$PatReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    .line 534
    invoke-static {v5}, Landroidx/media3/extractor/ts/TsExtractor;->access$000(Landroidx/media3/extractor/ts/TsExtractor;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_3

    iget-object v5, p0, Landroidx/media3/extractor/ts/TsExtractor$PatReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    .line 535
    invoke-static {v5}, Landroidx/media3/extractor/ts/TsExtractor;->access$000(Landroidx/media3/extractor/ts/TsExtractor;)Landroid/util/SparseArray;

    move-result-object v5

    new-instance v6, Landroidx/media3/extractor/ts/SectionReader;

    new-instance v7, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;

    iget-object v8, p0, Landroidx/media3/extractor/ts/TsExtractor$PatReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    invoke-direct {v7, v8, v4}, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;-><init>(Landroidx/media3/extractor/ts/TsExtractor;I)V

    invoke-direct {v6, v7}, Landroidx/media3/extractor/ts/SectionReader;-><init>(Landroidx/media3/extractor/ts/SectionPayloadReader;)V

    invoke-virtual {v5, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v4, p0, Landroidx/media3/extractor/ts/TsExtractor$PatReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    .line 536
    invoke-static {v4}, Landroidx/media3/extractor/ts/TsExtractor;->access$108(Landroidx/media3/extractor/ts/TsExtractor;)I

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    iget-object p1, p0, Landroidx/media3/extractor/ts/TsExtractor$PatReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    .line 540
    invoke-static {p1}, Landroidx/media3/extractor/ts/TsExtractor;->access$200(Landroidx/media3/extractor/ts/TsExtractor;)I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    iget-object p0, p0, Landroidx/media3/extractor/ts/TsExtractor$PatReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    .line 541
    invoke-static {p0}, Landroidx/media3/extractor/ts/TsExtractor;->access$000(Landroidx/media3/extractor/ts/TsExtractor;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->remove(I)V

    :cond_5
    return-void
.end method

.method public init(Landroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 0

    return-void
.end method
