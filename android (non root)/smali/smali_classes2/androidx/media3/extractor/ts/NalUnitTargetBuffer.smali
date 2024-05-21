.class final Landroidx/media3/extractor/ts/NalUnitTargetBuffer;
.super Ljava/lang/Object;
.source "NalUnitTargetBuffer.java"


# instance fields
.field private isCompleted:Z

.field private isFilling:Z

.field public nalData:[B

.field public nalLength:I

.field private final targetType:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->targetType:I

    add-int/lit8 p2, p2, 0x3

    .line 39
    new-array p1, p2, [B

    iput-object p1, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    const/4 p0, 0x2

    const/4 p2, 0x1

    .line 40
    aput-byte p2, p1, p0

    return-void
.end method


# virtual methods
.method public appendToNalUnit([BII)V
    .locals 4

    iget-boolean v0, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->isFilling:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sub-int/2addr p3, p2

    iget-object v0, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    .line 81
    array-length v1, v0

    iget v2, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    add-int v3, v2, p3

    if-ge v1, v3, :cond_1

    add-int/2addr v2, p3

    mul-int/lit8 v2, v2, 0x2

    .line 82
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    :cond_1
    iget-object v0, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget v1, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    .line 84
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    add-int/2addr p1, p3

    iput p1, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    return-void
.end method

.method public endNalUnit(I)Z
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->isFilling:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    iput-boolean v1, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->isFilling:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->isCompleted:Z

    return p1
.end method

.method public isCompleted()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->isCompleted:Z

    return p0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->isFilling:Z

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->isCompleted:Z

    return-void
.end method

.method public startNalUnit(I)V
    .locals 3

    iget-boolean v0, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->isFilling:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 60
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iget v0, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->targetType:I

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->isFilling:Z

    if-eqz v1, :cond_1

    const/4 p1, 0x3

    iput p1, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    iput-boolean v2, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->isCompleted:Z

    :cond_1
    return-void
.end method
