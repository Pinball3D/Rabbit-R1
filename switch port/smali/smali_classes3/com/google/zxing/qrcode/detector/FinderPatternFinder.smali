.class public Lcom/google/zxing/qrcode/detector/FinderPatternFinder;
.super Ljava/lang/Object;
.source "FinderPatternFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/qrcode/detector/FinderPatternFinder$EstimatedModuleComparator;
    }
.end annotation


# static fields
.field private static final CENTER_QUORUM:I = 0x2

.field protected static final MAX_MODULES:I = 0x61

.field protected static final MIN_SKIP:I = 0x3

.field private static final moduleComparator:Lcom/google/zxing/qrcode/detector/FinderPatternFinder$EstimatedModuleComparator;


# instance fields
.field private final crossCheckStateCount:[I

.field private hasSkipped:Z

.field private final image:Lcom/google/zxing/common/BitMatrix;

.field private final possibleCenters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/zxing/qrcode/detector/FinderPattern;",
            ">;"
        }
    .end annotation
.end field

.field private final resultPointCallback:Lcom/google/zxing/ResultPointCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    new-instance v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$EstimatedModuleComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$EstimatedModuleComparator;-><init>(Lcom/google/zxing/qrcode/detector/FinderPatternFinder$1;)V

    sput-object v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->moduleComparator:Lcom/google/zxing/qrcode/detector/FinderPatternFinder$EstimatedModuleComparator;

    return-void
.end method

.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, v0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;-><init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPointCallback;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPointCallback;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    .line 64
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    const/4 p1, 0x5

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I

    iput-object p2, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    return-void
.end method

.method private static centerFromEnd([II)F
    .locals 1

    const/4 v0, 0x4

    .line 175
    aget v0, p0, v0

    sub-int/2addr p1, v0

    const/4 v0, 0x3

    aget v0, p0, v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    const/4 v0, 0x2

    aget p0, p0, v0

    int-to-float p0, p0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    sub-float/2addr p1, p0

    return p1
.end method

.method private crossCheckDiagonal(II)Z
    .locals 10

    .line 271
    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->getCrossCheckStateCount()[I

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x2

    const/4 v4, 0x1

    if-lt p1, v2, :cond_0

    if-lt p2, v2, :cond_0

    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    sub-int v6, p2, v2

    sub-int v7, p1, v2

    .line 275
    invoke-virtual {v5, v6, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 276
    aget v5, v0, v3

    add-int/2addr v5, v4

    aput v5, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 279
    :cond_0
    aget v5, v0, v3

    if-nez v5, :cond_1

    return v1

    :cond_1
    :goto_1
    if-lt p1, v2, :cond_2

    if-lt p2, v2, :cond_2

    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    sub-int v6, p2, v2

    sub-int v7, p1, v2

    .line 284
    invoke-virtual {v5, v6, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-nez v5, :cond_2

    .line 285
    aget v5, v0, v4

    add-int/2addr v5, v4

    aput v5, v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 288
    :cond_2
    aget v5, v0, v4

    if-nez v5, :cond_3

    return v1

    :cond_3
    :goto_2
    if-lt p1, v2, :cond_4

    if-lt p2, v2, :cond_4

    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    sub-int v6, p2, v2

    sub-int v7, p1, v2

    .line 293
    invoke-virtual {v5, v6, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 294
    aget v5, v0, v1

    add-int/2addr v5, v4

    aput v5, v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 297
    :cond_4
    aget v2, v0, v1

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    .line 301
    invoke-virtual {v2}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v2

    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    .line 302
    invoke-virtual {v5}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v5

    move v6, v4

    :goto_3
    add-int v7, p1, v6

    if-ge v7, v2, :cond_6

    add-int v8, p2, v6

    if-ge v8, v5, :cond_6

    iget-object v9, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    .line 306
    invoke-virtual {v9, v8, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 307
    aget v7, v0, v3

    add-int/2addr v7, v4

    aput v7, v0, v3

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    add-int v3, p1, v6

    const/4 v7, 0x3

    if-ge v3, v2, :cond_7

    add-int v8, p2, v6

    if-ge v8, v5, :cond_7

    iget-object v9, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    .line 311
    invoke-virtual {v9, v8, v3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v3

    if-nez v3, :cond_7

    .line 312
    aget v3, v0, v7

    add-int/2addr v3, v4

    aput v3, v0, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 315
    :cond_7
    aget v3, v0, v7

    if-nez v3, :cond_8

    return v1

    :cond_8
    :goto_5
    add-int v3, p1, v6

    const/4 v7, 0x4

    if-ge v3, v2, :cond_9

    add-int v8, p2, v6

    if-ge v8, v5, :cond_9

    iget-object v9, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    .line 319
    invoke-virtual {v9, v8, v3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 320
    aget v3, v0, v7

    add-int/2addr v3, v4

    aput v3, v0, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 323
    :cond_9
    aget p0, v0, v7

    if-nez p0, :cond_a

    return v1

    .line 327
    :cond_a
    invoke-static {v0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternDiagonal([I)Z

    move-result p0

    return p0
.end method

.method private crossCheckHorizontal(IIII)F
    .locals 9

    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    .line 417
    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v1

    .line 418
    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->getCrossCheckStateCount()[I

    move-result-object p0

    move v2, p1

    :goto_0
    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ltz v2, :cond_0

    .line 421
    invoke-virtual {v0, v2, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 422
    aget v5, p0, v3

    add-int/2addr v5, v4

    aput v5, p0, v3

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    const/high16 v5, 0x7fc00000    # Float.NaN

    if-gez v2, :cond_1

    return v5

    :cond_1
    :goto_1
    if-ltz v2, :cond_2

    .line 428
    invoke-virtual {v0, v2, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v6

    if-nez v6, :cond_2

    aget v6, p0, v4

    if-gt v6, p3, :cond_2

    add-int/lit8 v6, v6, 0x1

    .line 429
    aput v6, p0, v4

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_2
    if-ltz v2, :cond_d

    .line 432
    aget v6, p0, v4

    if-le v6, p3, :cond_3

    goto/16 :goto_6

    :cond_3
    :goto_2
    const/4 v6, 0x0

    if-ltz v2, :cond_4

    .line 435
    invoke-virtual {v0, v2, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v7

    if-eqz v7, :cond_4

    aget v7, p0, v6

    if-gt v7, p3, :cond_4

    add-int/lit8 v7, v7, 0x1

    .line 436
    aput v7, p0, v6

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 439
    :cond_4
    aget v2, p0, v6

    if-le v2, p3, :cond_5

    return v5

    :cond_5
    add-int/2addr p1, v4

    :goto_3
    if-ge p1, v1, :cond_6

    .line 444
    invoke-virtual {v0, p1, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 445
    aget v2, p0, v3

    add-int/2addr v2, v4

    aput v2, p0, v3

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_6
    if-ne p1, v1, :cond_7

    return v5

    :cond_7
    :goto_4
    const/4 v2, 0x3

    if-ge p1, v1, :cond_8

    .line 451
    invoke-virtual {v0, p1, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v7

    if-nez v7, :cond_8

    aget v7, p0, v2

    if-ge v7, p3, :cond_8

    add-int/lit8 v7, v7, 0x1

    .line 452
    aput v7, p0, v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_8
    if-eq p1, v1, :cond_d

    .line 455
    aget v7, p0, v2

    if-lt v7, p3, :cond_9

    goto :goto_6

    :cond_9
    :goto_5
    const/4 v7, 0x4

    if-ge p1, v1, :cond_a

    .line 458
    invoke-virtual {v0, p1, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v8

    if-eqz v8, :cond_a

    aget v8, p0, v7

    if-ge v8, p3, :cond_a

    add-int/lit8 v8, v8, 0x1

    .line 459
    aput v8, p0, v7

    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    .line 462
    :cond_a
    aget p2, p0, v7

    if-lt p2, p3, :cond_b

    return v5

    .line 468
    :cond_b
    aget p3, p0, v6

    aget v0, p0, v4

    add-int/2addr p3, v0

    aget v0, p0, v3

    add-int/2addr p3, v0

    aget v0, p0, v2

    add-int/2addr p3, v0

    add-int/2addr p3, p2

    sub-int/2addr p3, p4

    .line 470
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p2

    mul-int/lit8 p2, p2, 0x5

    if-lt p2, p4, :cond_c

    return v5

    .line 474
    :cond_c
    invoke-static {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-static {p0, p1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->centerFromEnd([II)F

    move-result p0

    return p0

    :cond_d
    :goto_6
    return v5
.end method

.method private crossCheckVertical(IIII)F
    .locals 9

    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    .line 345
    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v1

    .line 346
    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->getCrossCheckStateCount()[I

    move-result-object p0

    move v2, p1

    :goto_0
    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ltz v2, :cond_0

    .line 350
    invoke-virtual {v0, p2, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 351
    aget v5, p0, v3

    add-int/2addr v5, v4

    aput v5, p0, v3

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    const/high16 v5, 0x7fc00000    # Float.NaN

    if-gez v2, :cond_1

    return v5

    :cond_1
    :goto_1
    if-ltz v2, :cond_2

    .line 357
    invoke-virtual {v0, p2, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v6

    if-nez v6, :cond_2

    aget v6, p0, v4

    if-gt v6, p3, :cond_2

    add-int/lit8 v6, v6, 0x1

    .line 358
    aput v6, p0, v4

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_2
    if-ltz v2, :cond_d

    .line 362
    aget v6, p0, v4

    if-le v6, p3, :cond_3

    goto/16 :goto_6

    :cond_3
    :goto_2
    const/4 v6, 0x0

    if-ltz v2, :cond_4

    .line 365
    invoke-virtual {v0, p2, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v7

    if-eqz v7, :cond_4

    aget v7, p0, v6

    if-gt v7, p3, :cond_4

    add-int/lit8 v7, v7, 0x1

    .line 366
    aput v7, p0, v6

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 369
    :cond_4
    aget v2, p0, v6

    if-le v2, p3, :cond_5

    return v5

    :cond_5
    add-int/2addr p1, v4

    :goto_3
    if-ge p1, v1, :cond_6

    .line 375
    invoke-virtual {v0, p2, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 376
    aget v2, p0, v3

    add-int/2addr v2, v4

    aput v2, p0, v3

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_6
    if-ne p1, v1, :cond_7

    return v5

    :cond_7
    :goto_4
    const/4 v2, 0x3

    if-ge p1, v1, :cond_8

    .line 382
    invoke-virtual {v0, p2, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v7

    if-nez v7, :cond_8

    aget v7, p0, v2

    if-ge v7, p3, :cond_8

    add-int/lit8 v7, v7, 0x1

    .line 383
    aput v7, p0, v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_8
    if-eq p1, v1, :cond_d

    .line 386
    aget v7, p0, v2

    if-lt v7, p3, :cond_9

    goto :goto_6

    :cond_9
    :goto_5
    const/4 v7, 0x4

    if-ge p1, v1, :cond_a

    .line 389
    invoke-virtual {v0, p2, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v8

    if-eqz v8, :cond_a

    aget v8, p0, v7

    if-ge v8, p3, :cond_a

    add-int/lit8 v8, v8, 0x1

    .line 390
    aput v8, p0, v7

    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    .line 393
    :cond_a
    aget p2, p0, v7

    if-lt p2, p3, :cond_b

    return v5

    .line 399
    :cond_b
    aget p3, p0, v6

    aget v0, p0, v4

    add-int/2addr p3, v0

    aget v0, p0, v3

    add-int/2addr p3, v0

    aget v0, p0, v2

    add-int/2addr p3, v0

    add-int/2addr p3, p2

    sub-int/2addr p3, p4

    .line 401
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p2

    mul-int/lit8 p2, p2, 0x5

    mul-int/2addr p4, v3

    if-lt p2, p4, :cond_c

    return v5

    .line 405
    :cond_c
    invoke-static {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-static {p0, p1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->centerFromEnd([II)F

    move-result p0

    return p0

    :cond_d
    :goto_6
    return v5
.end method

.method protected static doClearCounts([I)V
    .locals 1

    const/4 v0, 0x0

    .line 250
    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method protected static doShiftCounts2([I)V
    .locals 6

    const/4 v0, 0x2

    .line 254
    aget v1, p0, v0

    const/4 v2, 0x0

    aput v1, p0, v2

    const/4 v1, 0x3

    .line 255
    aget v3, p0, v1

    const/4 v4, 0x1

    aput v3, p0, v4

    const/4 v3, 0x4

    .line 256
    aget v5, p0, v3

    aput v5, p0, v0

    .line 257
    aput v4, p0, v1

    .line 258
    aput v2, p0, v3

    return-void
.end method

.method private findRowSkip()I
    .locals 7

    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    .line 548
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    .line 553
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 554
    invoke-virtual {v4}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getCount()I

    move-result v5

    const/4 v6, 0x2

    if-lt v5, v6, :cond_1

    if-nez v3, :cond_2

    move-object v3, v4

    goto :goto_0

    :cond_2
    iput-boolean v2, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->hasSkipped:Z

    .line 564
    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result p0

    invoke-virtual {v4}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getX()F

    move-result v0

    sub-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    .line 565
    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v0

    invoke-virtual {v4}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float/2addr p0, v0

    float-to-int p0, p0

    div-int/2addr p0, v6

    return p0

    :cond_3
    return v1
.end method

.method protected static foundPatternCross([I)Z
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    const/4 v3, 0x5

    if-ge v1, v3, :cond_1

    .line 186
    aget v3, p0, v1

    if-nez v3, :cond_0

    return v0

    :cond_0
    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x7

    if-ge v2, v1, :cond_2

    return v0

    :cond_2
    int-to-float v1, v2

    const/high16 v2, 0x40e00000    # 7.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v1, v2

    .line 198
    aget v3, p0, v0

    int-to-float v3, v3

    sub-float v3, v1, v3

    .line 199
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v2

    if-gez v3, :cond_3

    const/4 v3, 0x1

    aget v4, p0, v3

    int-to-float v4, v4

    sub-float v4, v1, v4

    .line 200
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v2

    if-gez v4, :cond_3

    const/high16 v4, 0x40400000    # 3.0f

    mul-float v5, v1, v4

    const/4 v6, 0x2

    aget v6, p0, v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    .line 201
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v4, v2

    cmpg-float v4, v5, v4

    if-gez v4, :cond_3

    const/4 v4, 0x3

    aget v4, p0, v4

    int-to-float v4, v4

    sub-float v4, v1, v4

    .line 202
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v2

    if-gez v4, :cond_3

    const/4 v4, 0x4

    aget p0, p0, v4

    int-to-float p0, p0

    sub-float/2addr v1, p0

    .line 203
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, v2

    if-gez p0, :cond_3

    return v3

    :cond_3
    return v0
.end method

.method protected static foundPatternDiagonal([I)Z
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    const/4 v3, 0x5

    if-ge v1, v3, :cond_1

    .line 214
    aget v3, p0, v1

    if-nez v3, :cond_0

    return v0

    :cond_0
    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x7

    if-ge v2, v1, :cond_2

    return v0

    :cond_2
    int-to-float v1, v2

    const/high16 v2, 0x40e00000    # 7.0f

    div-float/2addr v1, v2

    const v2, 0x3faa9fbe    # 1.333f

    div-float v2, v1, v2

    .line 226
    aget v3, p0, v0

    int-to-float v3, v3

    sub-float v3, v1, v3

    .line 227
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v2

    if-gez v3, :cond_3

    const/4 v3, 0x1

    aget v4, p0, v3

    int-to-float v4, v4

    sub-float v4, v1, v4

    .line 228
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v2

    if-gez v4, :cond_3

    const/high16 v4, 0x40400000    # 3.0f

    mul-float v5, v1, v4

    const/4 v6, 0x2

    aget v6, p0, v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    .line 229
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v4, v2

    cmpg-float v4, v5, v4

    if-gez v4, :cond_3

    const/4 v4, 0x3

    aget v4, p0, v4

    int-to-float v4, v4

    sub-float v4, v1, v4

    .line 230
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v2

    if-gez v4, :cond_3

    const/4 v4, 0x4

    aget p0, p0, v4

    int-to-float p0, p0

    sub-float/2addr v1, p0

    .line 231
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, v2

    if-gez p0, :cond_3

    return v3

    :cond_3
    return v0
.end method

.method private getCrossCheckStateCount()[I
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I

    .line 235
    invoke-static {v0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->doClearCounts([I)V

    iget-object p0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I

    return-object p0
.end method

.method private haveMultiplyConfirmedCenters()Z
    .locals 9

    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    .line 580
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    .line 581
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v2

    move v5, v3

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 582
    invoke-virtual {v6}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getCount()I

    move-result v7

    const/4 v8, 0x2

    if-lt v7, v8, :cond_0

    add-int/lit8 v4, v4, 0x1

    .line 584
    invoke-virtual {v6}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v6

    add-float/2addr v5, v6

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ge v4, v1, :cond_2

    return v2

    :cond_2
    int-to-float v0, v0

    div-float v0, v5, v0

    iget-object p0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    .line 596
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 597
    invoke-virtual {v1}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v1

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v3, v1

    goto :goto_1

    :cond_3
    const p0, 0x3d4ccccd    # 0.05f

    mul-float/2addr v5, p0

    cmpg-float p0, v3, v5

    if-gtz p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    return v2
.end method

.method private selectBestPatterns()[Lcom/google/zxing/qrcode/detector/FinderPattern;
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    .line 618
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_a

    iget-object v1, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    sget-object v3, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->moduleComparator:Lcom/google/zxing/qrcode/detector/FinderPatternFinder$EstimatedModuleComparator;

    .line 624
    invoke-interface {v1, v3}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    new-array v1, v2, [Lcom/google/zxing/qrcode/detector/FinderPattern;

    const/4 v2, 0x0

    move v5, v2

    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    :cond_0
    iget-object v8, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    .line 629
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x2

    sub-int/2addr v8, v9

    if-ge v5, v8, :cond_8

    iget-object v8, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    .line 630
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 631
    invoke-virtual {v8}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v10

    add-int/lit8 v5, v5, 0x1

    move v11, v5

    :cond_1
    iget-object v12, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    .line 633
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    if-ge v11, v12, :cond_0

    iget-object v12, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    .line 634
    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 635
    invoke-static {v8, v12}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->squaredDistance(Lcom/google/zxing/qrcode/detector/FinderPattern;Lcom/google/zxing/qrcode/detector/FinderPattern;)D

    move-result-wide v14

    add-int/lit8 v11, v11, 0x1

    move v3, v11

    :goto_0
    iget-object v4, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    .line 637
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    iget-object v4, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    .line 638
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 639
    invoke-virtual {v4}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v16

    const v17, 0x3fb33333    # 1.4f

    mul-float v17, v17, v10

    cmpl-float v16, v16, v17

    if-gtz v16, :cond_7

    .line 646
    invoke-static {v12, v4}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->squaredDistance(Lcom/google/zxing/qrcode/detector/FinderPattern;Lcom/google/zxing/qrcode/detector/FinderPattern;)D

    move-result-wide v16

    .line 647
    invoke-static {v8, v4}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->squaredDistance(Lcom/google/zxing/qrcode/detector/FinderPattern;Lcom/google/zxing/qrcode/detector/FinderPattern;)D

    move-result-wide v18

    cmpg-double v20, v14, v16

    if-gez v20, :cond_4

    cmpl-double v20, v16, v18

    if-lez v20, :cond_3

    cmpg-double v20, v14, v18

    if-gez v20, :cond_2

    move-wide/from16 v20, v14

    goto :goto_3

    :cond_2
    move-wide/from16 v20, v18

    goto :goto_1

    :cond_3
    move-wide/from16 v20, v14

    move-wide/from16 v24, v16

    move-wide/from16 v16, v18

    move-wide/from16 v18, v24

    goto :goto_3

    :cond_4
    cmpg-double v20, v16, v18

    if-gez v20, :cond_6

    cmpg-double v20, v14, v18

    if-gez v20, :cond_5

    move-wide/from16 v20, v16

    move-wide/from16 v16, v18

    :goto_1
    move-wide/from16 v18, v14

    goto :goto_3

    :cond_5
    move-wide/from16 v20, v16

    goto :goto_2

    :cond_6
    move-wide/from16 v20, v18

    move-wide/from16 v18, v16

    :goto_2
    move-wide/from16 v16, v14

    :goto_3
    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    mul-double v18, v18, v22

    sub-double v18, v16, v18

    .line 687
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(D)D

    move-result-wide v18

    mul-double v20, v20, v22

    sub-double v16, v16, v20

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(D)D

    move-result-wide v16

    add-double v18, v18, v16

    cmpg-double v16, v18, v6

    if-gez v16, :cond_7

    aput-object v8, v1, v2

    aput-object v12, v1, v13

    aput-object v4, v1, v9

    move-wide/from16 v6, v18

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_8
    const-wide v3, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v0, v6, v3

    if-eqz v0, :cond_9

    return-object v1

    .line 699
    :cond_9
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 621
    :cond_a
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method

.method private static squaredDistance(Lcom/google/zxing/qrcode/detector/FinderPattern;Lcom/google/zxing/qrcode/detector/FinderPattern;)D
    .locals 2

    .line 606
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    .line 607
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getY()F

    move-result p0

    invoke-virtual {p1}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getY()F

    move-result p1

    sub-float/2addr p0, p1

    float-to-double p0, p0

    mul-double/2addr v0, v0

    mul-double/2addr p0, p0

    add-double/2addr v0, p0

    return-wide v0
.end method


# virtual methods
.method protected final clearCounts([I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 241
    invoke-static {p1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->doClearCounts([I)V

    return-void
.end method

.method final find(Ljava/util/Map;)Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/qrcode/detector/FinderPatternInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 78
    sget-object v2, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    .line 79
    invoke-virtual {v2}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    .line 80
    invoke-virtual {v3}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v3

    mul-int/lit8 v4, v2, 0x3

    .line 88
    div-int/lit16 v4, v4, 0x184

    const/4 v5, 0x3

    if-lt v4, v5, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    move v4, v5

    :cond_2
    const/4 p1, 0x5

    new-array p1, p1, [I

    add-int/lit8 v6, v4, -0x1

    move v7, v0

    :goto_1
    if-ge v6, v2, :cond_d

    if-nez v7, :cond_d

    .line 97
    invoke-static {p1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->doClearCounts([I)V

    move v8, v0

    move v9, v8

    :goto_2
    if-ge v8, v3, :cond_b

    iget-object v10, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    .line 100
    invoke-virtual {v10, v8, v6}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v10

    if-eqz v10, :cond_4

    and-int/lit8 v10, v9, 0x1

    if-ne v10, v1, :cond_3

    add-int/lit8 v9, v9, 0x1

    .line 105
    :cond_3
    aget v10, p1, v9

    add-int/2addr v10, v1

    aput v10, p1, v9

    goto :goto_5

    :cond_4
    and-int/lit8 v10, v9, 0x1

    if-nez v10, :cond_a

    const/4 v10, 0x4

    if-ne v9, v10, :cond_9

    .line 109
    invoke-static {p1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 110
    invoke-virtual {p0, p1, v6, v8}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->handlePossibleCenter([III)Z

    move-result v9

    if-eqz v9, :cond_7

    iget-boolean v4, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->hasSkipped:Z

    const/4 v9, 0x2

    if-eqz v4, :cond_5

    .line 116
    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->haveMultiplyConfirmedCenters()Z

    move-result v7

    goto :goto_3

    .line 118
    :cond_5
    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->findRowSkip()I

    move-result v4

    aget v10, p1, v9

    if-le v4, v10, :cond_6

    sub-int/2addr v4, v10

    sub-int/2addr v4, v9

    add-int/2addr v6, v4

    add-int/lit8 v8, v3, -0x1

    .line 139
    :cond_6
    :goto_3
    invoke-static {p1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->doClearCounts([I)V

    move v4, v9

    move v9, v0

    goto :goto_5

    .line 133
    :cond_7
    invoke-static {p1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->doShiftCounts2([I)V

    goto :goto_4

    .line 141
    :cond_8
    invoke-static {p1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->doShiftCounts2([I)V

    :goto_4
    move v9, v5

    goto :goto_5

    :cond_9
    add-int/lit8 v9, v9, 0x1

    .line 145
    aget v10, p1, v9

    add-int/2addr v10, v1

    aput v10, p1, v9

    goto :goto_5

    .line 148
    :cond_a
    aget v10, p1, v9

    add-int/2addr v10, v1

    aput v10, p1, v9

    :goto_5
    add-int/2addr v8, v1

    goto :goto_2

    .line 152
    :cond_b
    invoke-static {p1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 153
    invoke-virtual {p0, p1, v6, v3}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->handlePossibleCenter([III)Z

    move-result v8

    if-eqz v8, :cond_c

    aget v4, p1, v0

    iget-boolean v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->hasSkipped:Z

    if-eqz v8, :cond_c

    .line 158
    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->haveMultiplyConfirmedCenters()Z

    move-result v7

    :cond_c
    add-int/2addr v6, v4

    goto :goto_1

    .line 164
    :cond_d
    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->selectBestPatterns()[Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object p0

    .line 165
    invoke-static {p0}, Lcom/google/zxing/ResultPoint;->orderBestPatterns([Lcom/google/zxing/ResultPoint;)V

    .line 167
    new-instance p1, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    invoke-direct {p1, p0}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;-><init>([Lcom/google/zxing/qrcode/detector/FinderPattern;)V

    return-object p1
.end method

.method protected final getImage()Lcom/google/zxing/common/BitMatrix;
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    return-object p0
.end method

.method protected final getPossibleCenters()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/zxing/qrcode/detector/FinderPattern;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    return-object p0
.end method

.method protected final handlePossibleCenter([III)Z
    .locals 5

    const/4 v0, 0x0

    .line 509
    aget v1, p1, v0

    const/4 v2, 0x1

    aget v3, p1, v2

    add-int/2addr v1, v3

    const/4 v3, 0x2

    aget v4, p1, v3

    add-int/2addr v1, v4

    const/4 v4, 0x3

    aget v4, p1, v4

    add-int/2addr v1, v4

    const/4 v4, 0x4

    aget v4, p1, v4

    add-int/2addr v1, v4

    .line 511
    invoke-static {p1, p3}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->centerFromEnd([II)F

    move-result p3

    float-to-int p3, p3

    .line 512
    aget v4, p1, v3

    invoke-direct {p0, p2, p3, v4, v1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckVertical(IIII)F

    move-result p2

    .line 513
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_3

    float-to-int v4, p2

    .line 515
    aget p1, p1, v3

    invoke-direct {p0, p3, v4, p1, v1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckHorizontal(IIII)F

    move-result p1

    .line 516
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p3

    if-nez p3, :cond_3

    float-to-int p3, p1

    invoke-direct {p0, v4, p3}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckDiagonal(II)Z

    move-result p3

    if-eqz p3, :cond_3

    int-to-float p3, v1

    const/high16 v1, 0x40e00000    # 7.0f

    div-float/2addr p3, v1

    :goto_0
    iget-object v1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    .line 519
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    .line 520
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 522
    invoke-virtual {v1, p3, p2, p1}, Lcom/google/zxing/qrcode/detector/FinderPattern;->aboutEquals(FFF)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object p0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    .line 523
    invoke-virtual {v1, p2, p1, p3}, Lcom/google/zxing/qrcode/detector/FinderPattern;->combineEstimate(FFF)Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 529
    :cond_1
    new-instance v0, Lcom/google/zxing/qrcode/detector/FinderPattern;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/zxing/qrcode/detector/FinderPattern;-><init>(FFF)V

    iget-object p1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    .line 530
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    if-eqz p0, :cond_2

    .line 532
    invoke-interface {p0, v0}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    :cond_2
    :goto_1
    return v2

    :cond_3
    return v0
.end method

.method protected final handlePossibleCenter([IIIZ)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 488
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->handlePossibleCenter([III)Z

    move-result p0

    return p0
.end method

.method protected final shiftCounts2([I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 246
    invoke-static {p1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->doShiftCounts2([I)V

    return-void
.end method
