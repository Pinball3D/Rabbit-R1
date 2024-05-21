.class public Landroidx/constraintlayout/solver/ArrayLinkedVariables;
.super Ljava/lang/Object;
.source "ArrayLinkedVariables.java"

# interfaces
.implements Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;


# static fields
.field private static final DEBUG:Z = false

.field private static final FULL_NEW_CHECK:Z = false

.field static final NONE:I = -0x1

.field private static epsilon:F = 0.001f


# instance fields
.field private ROW_SIZE:I

.field private candidate:Landroidx/constraintlayout/solver/SolverVariable;

.field currentSize:I

.field private mArrayIndices:[I

.field private mArrayNextIndices:[I

.field private mArrayValues:[F

.field protected final mCache:Landroidx/constraintlayout/solver/Cache;

.field private mDidFillOnce:Z

.field private mHead:I

.field private mLast:I

.field private final mRow:Landroidx/constraintlayout/solver/ArrayRow;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroidx/constraintlayout/solver/ArrayRow;Landroidx/constraintlayout/solver/Cache;)V
    .locals 3

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    const/16 v1, 0x8

    iput v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->ROW_SIZE:I

    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->candidate:Landroidx/constraintlayout/solver/SolverVariable;

    new-array v2, v1, [I

    iput-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    new-array v2, v1, [I

    iput-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    new-array v1, v1, [F

    iput-object v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    const/4 v1, -0x1

    iput v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    iput v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    iput-boolean v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    iput-object p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/solver/ArrayRow;

    iput-object p2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mCache:Landroidx/constraintlayout/solver/Cache;

    return-void
.end method


# virtual methods
.method public add(Landroidx/constraintlayout/solver/SolverVariable;FZ)V
    .locals 8

    sget v0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->epsilon:F

    neg-float v1, v0

    cmpl-float v1, p2, v1

    if-lez v1, :cond_0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v0, v2, :cond_2

    iput v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    iget-object p3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    .line 232
    aput p2, p3, v1

    iget-object p2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    .line 233
    iget p3, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    aput p3, p2, v1

    iget-object p2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget p3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 234
    aput v2, p2, p3

    .line 235
    iget p2, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    add-int/2addr p2, v3

    iput p2, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    iget-object p2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/solver/ArrayRow;

    .line 236
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/solver/SolverVariable;->addToRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    iget p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    add-int/2addr p1, v3

    iput p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    iget-boolean p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-nez p1, :cond_1

    iget p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    add-int/2addr p1, v3

    iput p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    iget-object p2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    .line 241
    array-length p3, p2

    if-lt p1, p3, :cond_1

    iput-boolean v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 243
    array-length p1, p2

    sub-int/2addr p1, v3

    iput p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    :cond_1
    return-void

    :cond_2
    move v4, v1

    move v5, v2

    :goto_0
    if-eq v0, v2, :cond_a

    iget v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v4, v6, :cond_a

    iget-object v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    .line 252
    aget v6, v6, v0

    .line 253
    iget v7, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    if-ne v6, v7, :cond_8

    iget-object v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    .line 254
    aget v2, v1, v0

    add-float/2addr v2, p2

    sget p2, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->epsilon:F

    neg-float v4, p2

    cmpl-float v4, v2, v4

    const/4 v6, 0x0

    if-lez v4, :cond_3

    cmpg-float p2, v2, p2

    if-gez p2, :cond_3

    move v2, v6

    .line 258
    :cond_3
    aput v2, v1, v0

    cmpl-float p2, v2, v6

    if-nez p2, :cond_7

    iget p2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    if-ne v0, p2, :cond_4

    iget-object p2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    .line 262
    aget p2, p2, v0

    iput p2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    goto :goto_1

    :cond_4
    iget-object p2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    .line 264
    aget v1, p2, v0

    aput v1, p2, v5

    :goto_1
    if-eqz p3, :cond_5

    iget-object p2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/solver/ArrayRow;

    .line 267
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/solver/SolverVariable;->removeFromRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    :cond_5
    iget-boolean p2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-eqz p2, :cond_6

    iput v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    .line 273
    :cond_6
    iget p2, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    sub-int/2addr p2, v3

    iput p2, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    iget p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    sub-int/2addr p1, v3

    iput p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    :cond_7
    return-void

    :cond_8
    iget-object v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    .line 278
    aget v6, v6, v0

    iget v7, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    if-ge v6, v7, :cond_9

    move v5, v0

    :cond_9
    iget-object v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    .line 281
    aget v0, v6, v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_a
    iget p3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    add-int/lit8 v0, p3, 0x1

    iget-boolean v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-eqz v4, :cond_c

    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    .line 291
    aget v4, v0, p3

    if-ne v4, v2, :cond_b

    goto :goto_2

    .line 294
    :cond_b
    array-length p3, v0

    goto :goto_2

    :cond_c
    move p3, v0

    :goto_2
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    .line 297
    array-length v4, v0

    if-lt p3, v4, :cond_e

    iget v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    .line 298
    array-length v0, v0

    if-ge v4, v0, :cond_e

    move v0, v1

    :goto_3
    iget-object v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    .line 300
    array-length v6, v4

    if-ge v0, v6, :cond_e

    .line 301
    aget v4, v4, v0

    if-ne v4, v2, :cond_d

    move p3, v0

    goto :goto_4

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_e
    :goto_4
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    .line 309
    array-length v4, v0

    if-lt p3, v4, :cond_f

    .line 310
    array-length p3, v0

    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->ROW_SIZE:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->ROW_SIZE:I

    iput-boolean v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    add-int/lit8 v1, p3, -0x1

    iput v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    iget-object v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    .line 314
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    iget v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->ROW_SIZE:I

    .line 315
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->ROW_SIZE:I

    .line 316
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    :cond_f
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    .line 320
    iget v1, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    aput v1, v0, p3

    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    .line 321
    aput p2, v0, p3

    if-eq v5, v2, :cond_10

    iget-object p2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    .line 323
    aget v0, p2, v5

    aput v0, p2, p3

    .line 324
    aput p3, p2, v5

    goto :goto_5

    :cond_10
    iget-object p2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 326
    aput v0, p2, p3

    iput p3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 329
    :goto_5
    iget p2, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    add-int/2addr p2, v3

    iput p2, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    iget-object p2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/solver/ArrayRow;

    .line 330
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/solver/SolverVariable;->addToRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    iget p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    add-int/2addr p1, v3

    iput p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    iget-boolean p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-nez p1, :cond_11

    iget p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    add-int/2addr p1, v3

    iput p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    :cond_11
    iget p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    iget-object p2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    .line 336
    array-length p3, p2

    if-lt p1, p3, :cond_12

    iput-boolean v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 338
    array-length p1, p2

    sub-int/2addr p1, v3

    iput p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    :cond_12
    return-void
.end method

.method public final clear()V
    .locals 5

    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    iget v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v2, v4, :cond_1

    iget-object v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mCache:Landroidx/constraintlayout/solver/Cache;

    .line 412
    iget-object v3, v3, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v4, v4, v0

    aget-object v3, v3, v4

    if-eqz v3, :cond_0

    iget-object v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/solver/ArrayRow;

    .line 414
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/SolverVariable;->removeFromRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    :cond_0
    iget-object v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    .line 416
    aget v0, v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iput v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    iput v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    iput-boolean v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    iput v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    return-void
.end method

.method public contains(Landroidx/constraintlayout/solver/SolverVariable;)Z
    .locals 6

    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    move v3, v1

    :goto_0
    if-eq v0, v2, :cond_2

    iget v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    .line 438
    aget v4, v4, v0

    iget v5, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    if-ne v4, v5, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    iget-object v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    .line 441
    aget v0, v4, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public display()V
    .locals 5

    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    .line 615
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, "{ "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 617
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->getVariable(I)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 621
    :cond_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->getVariableValue(I)F

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 623
    :cond_1
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, " }"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public divideByAmount(F)V
    .locals 4

    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    .line 503
    aget v3, v2, v0

    div-float/2addr v3, p1

    aput v3, v2, v0

    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    .line 504
    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final get(Landroidx/constraintlayout/solver/SolverVariable;)F
    .locals 4

    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    .line 596
    aget v2, v2, v0

    iget v3, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    if-ne v2, v3, :cond_0

    iget-object p0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    .line 597
    aget p0, p0, v0

    return p0

    :cond_0
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    .line 599
    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getCurrentSize()I
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    return p0
.end method

.method public getHead()I
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    return p0
.end method

.method public final getId(I)I
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    .line 512
    aget p0, p0, p1

    return p0
.end method

.method public final getNextIndice(I)I
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    .line 520
    aget p0, p0, p1

    return p0
.end method

.method getPivotCandidate()Landroidx/constraintlayout/solver/SolverVariable;
    .locals 6

    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->candidate:Landroidx/constraintlayout/solver/SolverVariable;

    if-nez v0, :cond_3

    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    iget v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    .line 535
    aget v3, v3, v0

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    iget-object v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mCache:Landroidx/constraintlayout/solver/Cache;

    .line 539
    iget-object v3, v3, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v4, v4, v0

    aget-object v3, v3, v4

    if-eqz v2, :cond_0

    .line 540
    iget v4, v2, Landroidx/constraintlayout/solver/SolverVariable;->strength:I

    iget v5, v3, Landroidx/constraintlayout/solver/SolverVariable;->strength:I

    if-ge v4, v5, :cond_1

    :cond_0
    move-object v2, v3

    :cond_1
    iget-object v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    .line 544
    aget v0, v3, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v2

    :cond_3
    return-object v0
.end method

.method public final getValue(I)F
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    .line 516
    aget p0, p0, p1

    return p0
.end method

.method public getVariable(I)Landroidx/constraintlayout/solver/SolverVariable;
    .locals 3

    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v1, v2, :cond_1

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mCache:Landroidx/constraintlayout/solver/Cache;

    .line 562
    iget-object p1, p1, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget-object p0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget p0, p0, v0

    aget-object p0, p1, p0

    return-object p0

    :cond_0
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    .line 564
    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getVariableValue(I)F
    .locals 3

    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v1, v2, :cond_1

    if-ne v1, p1, :cond_0

    iget-object p0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    .line 580
    aget p0, p0, v0

    return p0

    :cond_0
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    .line 582
    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method hasAtLeastOnePositiveVariable()Z
    .locals 5

    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    iget v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    .line 473
    aget v3, v3, v0

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    .line 476
    aget v0, v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public indexOf(Landroidx/constraintlayout/solver/SolverVariable;)I
    .locals 5

    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eq v0, v1, :cond_2

    iget v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    .line 454
    aget v3, v3, v0

    iget v4, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    if-ne v3, v4, :cond_1

    return v0

    :cond_1
    iget-object v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    .line 457
    aget v0, v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public invert()V
    .locals 5

    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    .line 488
    aget v3, v2, v0

    const/high16 v4, -0x40800000    # -1.0f

    mul-float/2addr v3, v4

    aput v3, v2, v0

    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    .line 489
    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final put(Landroidx/constraintlayout/solver/SolverVariable;F)V
    .locals 8

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 119
    invoke-virtual {p0, p1, v1}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->remove(Landroidx/constraintlayout/solver/SolverVariable;Z)F

    return-void

    :cond_0
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    iput v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    .line 125
    aput p2, v0, v2

    iget-object p2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    .line 126
    iget v0, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    aput v0, p2, v2

    iget-object p2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 127
    aput v3, p2, v0

    .line 128
    iget p2, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    add-int/2addr p2, v1

    iput p2, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    iget-object p2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/solver/ArrayRow;

    .line 129
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/solver/SolverVariable;->addToRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    iget p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    add-int/2addr p1, v1

    iput p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    iget-boolean p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-nez p1, :cond_1

    iget p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    add-int/2addr p1, v1

    iput p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    iget-object p2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    .line 134
    array-length v0, p2

    if-lt p1, v0, :cond_1

    iput-boolean v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 136
    array-length p1, p2

    sub-int/2addr p1, v1

    iput p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    :cond_1
    return-void

    :cond_2
    move v4, v2

    move v5, v3

    :goto_0
    if-eq v0, v3, :cond_5

    iget v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v4, v6, :cond_5

    iget-object v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    .line 145
    aget v6, v6, v0

    iget v7, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    if-ne v6, v7, :cond_3

    iget-object p0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    .line 146
    aput p2, p0, v0

    return-void

    :cond_3
    iget-object v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    .line 149
    aget v6, v6, v0

    iget v7, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    if-ge v6, v7, :cond_4

    move v5, v0

    :cond_4
    iget-object v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    .line 152
    aget v0, v6, v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    add-int/lit8 v4, v0, 0x1

    iget-boolean v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-eqz v6, :cond_7

    iget-object v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    .line 162
    aget v6, v4, v0

    if-ne v6, v3, :cond_6

    goto :goto_1

    .line 165
    :cond_6
    array-length v0, v4

    goto :goto_1

    :cond_7
    move v0, v4

    :goto_1
    iget-object v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    .line 168
    array-length v6, v4

    if-lt v0, v6, :cond_9

    iget v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    .line 169
    array-length v4, v4

    if-ge v6, v4, :cond_9

    move v4, v2

    :goto_2
    iget-object v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    .line 171
    array-length v7, v6

    if-ge v4, v7, :cond_9

    .line 172
    aget v6, v6, v4

    if-ne v6, v3, :cond_8

    move v0, v4

    goto :goto_3

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_9
    :goto_3
    iget-object v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    .line 180
    array-length v6, v4

    if-lt v0, v6, :cond_a

    .line 181
    array-length v0, v4

    iget v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->ROW_SIZE:I

    mul-int/lit8 v4, v4, 0x2

    iput v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->ROW_SIZE:I

    iput-boolean v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    .line 185
    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    iput-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    iget v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->ROW_SIZE:I

    .line 186
    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->ROW_SIZE:I

    .line 187
    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    :cond_a
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    .line 191
    iget v4, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    aput v4, v2, v0

    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    .line 192
    aput p2, v2, v0

    if-eq v5, v3, :cond_b

    iget-object p2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    .line 194
    aget v2, p2, v5

    aput v2, p2, v0

    .line 195
    aput v0, p2, v5

    goto :goto_4

    :cond_b
    iget-object p2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 197
    aput v2, p2, v0

    iput v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 200
    :goto_4
    iget p2, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    add-int/2addr p2, v1

    iput p2, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    iget-object p2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/solver/ArrayRow;

    .line 201
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/solver/SolverVariable;->addToRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    iget p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    add-int/2addr p1, v1

    iput p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    iget-boolean p2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-nez p2, :cond_c

    iget p2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    add-int/2addr p2, v1

    iput p2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    :cond_c
    iget-object p2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    .line 207
    array-length v0, p2

    if-lt p1, v0, :cond_d

    iput-boolean v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    :cond_d
    iget p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    .line 210
    array-length v0, p2

    if-lt p1, v0, :cond_e

    iput-boolean v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 212
    array-length p1, p2

    sub-int/2addr p1, v1

    iput p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    :cond_e
    return-void
.end method

.method public final remove(Landroidx/constraintlayout/solver/SolverVariable;Z)F
    .locals 8

    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->candidate:Landroidx/constraintlayout/solver/SolverVariable;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->candidate:Landroidx/constraintlayout/solver/SolverVariable;

    :cond_0
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    const/4 v3, 0x0

    move v4, v2

    :goto_0
    if-eq v0, v2, :cond_6

    iget v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v3, v5, :cond_6

    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    .line 379
    aget v5, v5, v0

    .line 380
    iget v6, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    if-ne v5, v6, :cond_5

    iget v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    .line 382
    aget v1, v1, v0

    iput v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    goto :goto_1

    :cond_2
    iget-object v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    .line 384
    aget v3, v1, v0

    aput v3, v1, v4

    :goto_1
    if-eqz p2, :cond_3

    iget-object p2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/solver/ArrayRow;

    .line 388
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/solver/SolverVariable;->removeFromRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 390
    :cond_3
    iget p2, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    iget p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    iget-object p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    .line 392
    aput v2, p1, v0

    iget-boolean p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-eqz p1, :cond_4

    iput v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    :cond_4
    iget-object p0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    .line 397
    aget p0, p0, v0

    return p0

    :cond_5
    iget-object v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    .line 400
    aget v4, v4, v0

    add-int/lit8 v3, v3, 0x1

    move v7, v4

    move v4, v0

    move v0, v7

    goto :goto_0

    :cond_6
    return v1
.end method

.method public sizeInBytes()I
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    .line 608
    array-length p0, p0

    mul-int/lit8 p0, p0, 0xc

    add-int/lit8 p0, p0, 0x24

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    const-string v1, ""

    const/4 v2, 0x0

    :goto_0
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    iget v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v2, v3, :cond_0

    .line 637
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " -> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 638
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 639
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v3, v3, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v4, v4, v0

    aget-object v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    .line 640
    aget v0, v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public use(Landroidx/constraintlayout/solver/ArrayRow;Z)F
    .locals 5

    .line 349
    iget-object v0, p1, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->get(Landroidx/constraintlayout/solver/SolverVariable;)F

    move-result v0

    .line 350
    iget-object v1, p1, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p0, v1, p2}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->remove(Landroidx/constraintlayout/solver/SolverVariable;Z)F

    .line 351
    iget-object p1, p1, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    .line 352
    invoke-interface {p1}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->getCurrentSize()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 354
    invoke-interface {p1, v2}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->getVariable(I)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v3

    .line 355
    invoke-interface {p1, v3}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->get(Landroidx/constraintlayout/solver/SolverVariable;)F

    move-result v4

    mul-float/2addr v4, v0

    .line 356
    invoke-virtual {p0, v3, v4, p2}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->add(Landroidx/constraintlayout/solver/SolverVariable;FZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method
