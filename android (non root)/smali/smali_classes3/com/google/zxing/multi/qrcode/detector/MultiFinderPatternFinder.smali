.class public final Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;
.super Lcom/google/zxing/qrcode/detector/FinderPatternFinder;
.source "MultiFinderPatternFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder$ModuleSizeComparator;
    }
.end annotation


# static fields
.field private static final DIFF_MODSIZE_CUTOFF:F = 0.5f

.field private static final DIFF_MODSIZE_CUTOFF_PERCENT:F = 0.05f

.field private static final EMPTY_FP_2D_ARRAY:[[Lcom/google/zxing/qrcode/detector/FinderPattern;

.field private static final EMPTY_FP_ARRAY:[Lcom/google/zxing/qrcode/detector/FinderPattern;

.field private static final EMPTY_RESULT_ARRAY:[Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

.field private static final MAX_MODULE_COUNT_PER_EDGE:F = 180.0f

.field private static final MIN_MODULE_COUNT_PER_EDGE:F = 9.0f


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    sput-object v1, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->EMPTY_RESULT_ARRAY:[Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    new-array v1, v0, [Lcom/google/zxing/qrcode/detector/FinderPattern;

    sput-object v1, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->EMPTY_FP_ARRAY:[Lcom/google/zxing/qrcode/detector/FinderPattern;

    new-array v0, v0, [[Lcom/google/zxing/qrcode/detector/FinderPattern;

    sput-object v0, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->EMPTY_FP_2D_ARRAY:[[Lcom/google/zxing/qrcode/detector/FinderPattern;

    return-void
.end method

.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPointCallback;)V
    .locals 0

    .line 90
    invoke-direct {p0, p1, p2}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;-><init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPointCallback;)V

    return-void
.end method

.method private selectMultipleBestPatterns()[[Lcom/google/zxing/qrcode/detector/FinderPattern;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 100
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->getPossibleCenters()Ljava/util/List;

    move-result-object v0

    .line 101
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_8

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    new-array v1, v4, [[Lcom/google/zxing/qrcode/detector/FinderPattern;

    sget-object v2, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->EMPTY_FP_ARRAY:[Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 112
    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v0, v1, v3

    return-object v1

    .line 116
    :cond_0
    new-instance v5, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder$ModuleSizeComparator;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder$ModuleSizeComparator;-><init>(Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder$1;)V

    invoke-static {v0, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 133
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v6, v3

    :goto_0
    add-int/lit8 v7, v1, -0x2

    if-ge v6, v7, :cond_6

    .line 136
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/zxing/qrcode/detector/FinderPattern;

    if-eqz v7, :cond_5

    add-int/lit8 v8, v6, 0x1

    :goto_1
    add-int/lit8 v9, v1, -0x1

    if-ge v8, v9, :cond_5

    .line 142
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/zxing/qrcode/detector/FinderPattern;

    if-eqz v9, :cond_4

    .line 148
    invoke-virtual {v7}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v10

    invoke-virtual {v9}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v11

    sub-float/2addr v10, v11

    .line 149
    invoke-virtual {v7}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v11

    invoke-virtual {v9}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v11

    div-float/2addr v10, v11

    .line 150
    invoke-virtual {v7}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v11

    invoke-virtual {v9}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v12

    sub-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    const/high16 v12, 0x3f000000    # 0.5f

    cmpl-float v11, v11, v12

    const v13, 0x3d4ccccd    # 0.05f

    if-lez v11, :cond_1

    cmpl-float v10, v10, v13

    if-gez v10, :cond_5

    :cond_1
    add-int/lit8 v10, v8, 0x1

    :goto_2
    if-ge v10, v1, :cond_4

    .line 158
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/zxing/qrcode/detector/FinderPattern;

    if-eqz v11, :cond_3

    .line 164
    invoke-virtual {v9}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v14

    invoke-virtual {v11}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v15

    sub-float/2addr v14, v15

    .line 165
    invoke-virtual {v9}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v15

    invoke-virtual {v11}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v4

    invoke-static {v15, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    div-float/2addr v14, v4

    .line 166
    invoke-virtual {v9}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v4

    invoke-virtual {v11}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v15

    sub-float/2addr v4, v15

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v12

    if-lez v4, :cond_2

    cmpl-float v4, v14, v13

    if-gez v4, :cond_4

    :cond_2
    new-array v4, v2, [Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v7, v4, v3

    const/4 v14, 0x1

    aput-object v9, v4, v14

    const/4 v15, 0x2

    aput-object v11, v4, v15

    .line 174
    invoke-static {v4}, Lcom/google/zxing/ResultPoint;->orderBestPatterns([Lcom/google/zxing/ResultPoint;)V

    .line 177
    new-instance v11, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    invoke-direct {v11, v4}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;-><init>([Lcom/google/zxing/qrcode/detector/FinderPattern;)V

    .line 178
    invoke-virtual {v11}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v15

    invoke-virtual {v11}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getBottomLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v2

    invoke-static {v15, v2}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v2

    .line 179
    invoke-virtual {v11}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopRight()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v15

    invoke-virtual {v11}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getBottomLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v3

    .line 180
    invoke-virtual {v11}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v15

    invoke-virtual {v11}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopRight()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v11

    invoke-static {v15, v11}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v11

    add-float v15, v2, v11

    .line 183
    invoke-virtual {v7}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v16

    const/high16 v17, 0x40000000    # 2.0f

    mul-float v16, v16, v17

    div-float v15, v15, v16

    const/high16 v16, 0x43340000    # 180.0f

    cmpl-float v16, v15, v16

    if-gtz v16, :cond_3

    const/high16 v16, 0x41100000    # 9.0f

    cmpg-float v15, v15, v16

    if-ltz v15, :cond_3

    sub-float v15, v2, v11

    .line 190
    invoke-static {v2, v11}, Ljava/lang/Math;->min(FF)F

    move-result v16

    div-float v15, v15, v16

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    const v16, 0x3dcccccd    # 0.1f

    cmpl-float v15, v15, v16

    if-gez v15, :cond_3

    float-to-double v12, v2

    mul-double/2addr v12, v12

    float-to-double v14, v11

    mul-double/2addr v14, v14

    add-double/2addr v12, v14

    .line 196
    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-float v11, v11

    sub-float v12, v3, v11

    .line 198
    invoke-static {v3, v11}, Ljava/lang/Math;->min(FF)F

    move-result v3

    div-float/2addr v12, v3

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v16

    if-gez v3, :cond_3

    .line 205
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v10, v10, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/high16 v12, 0x3f000000    # 0.5f

    const v13, 0x3d4ccccd    # 0.05f

    goto/16 :goto_2

    :cond_4
    add-int/lit8 v8, v8, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    goto/16 :goto_1

    :cond_5
    add-int/lit8 v6, v6, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    goto/16 :goto_0

    .line 210
    :cond_6
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->EMPTY_FP_2D_ARRAY:[[Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 211
    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/google/zxing/qrcode/detector/FinderPattern;

    return-object v0

    .line 215
    :cond_7
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 105
    :cond_8
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public findMulti(Ljava/util/Map;)[Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)[",
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

    .line 219
    sget-object v2, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 220
    :goto_0
    invoke-virtual {p0}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->getImage()Lcom/google/zxing/common/BitMatrix;

    move-result-object v2

    .line 221
    invoke-virtual {v2}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v3

    .line 222
    invoke-virtual {v2}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v4

    mul-int/lit8 v5, v3, 0x3

    .line 230
    div-int/lit16 v5, v5, 0x184

    const/4 v6, 0x3

    if-lt v5, v6, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    move v5, v6

    :cond_2
    const/4 p1, 0x5

    new-array p1, p1, [I

    add-int/lit8 v7, v5, -0x1

    :goto_1
    if-ge v7, v3, :cond_a

    .line 238
    invoke-static {p1}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->doClearCounts([I)V

    move v8, v0

    move v9, v8

    :goto_2
    if-ge v8, v4, :cond_8

    .line 241
    invoke-virtual {v2, v8, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v10

    if-eqz v10, :cond_4

    and-int/lit8 v10, v9, 0x1

    if-ne v10, v1, :cond_3

    add-int/lit8 v9, v9, 0x1

    .line 246
    :cond_3
    aget v10, p1, v9

    add-int/2addr v10, v1

    aput v10, p1, v9

    goto :goto_3

    :cond_4
    and-int/lit8 v10, v9, 0x1

    if-nez v10, :cond_7

    const/4 v10, 0x4

    if-ne v9, v10, :cond_6

    .line 250
    invoke-static {p1}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->foundPatternCross([I)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {p0, p1, v7, v8}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->handlePossibleCenter([III)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 253
    invoke-static {p1}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->doClearCounts([I)V

    move v9, v0

    goto :goto_3

    .line 255
    :cond_5
    invoke-static {p1}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->doShiftCounts2([I)V

    move v9, v6

    goto :goto_3

    :cond_6
    add-int/lit8 v9, v9, 0x1

    .line 259
    aget v10, p1, v9

    add-int/2addr v10, v1

    aput v10, p1, v9

    goto :goto_3

    .line 262
    :cond_7
    aget v10, p1, v9

    add-int/2addr v10, v1

    aput v10, p1, v9

    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 267
    :cond_8
    invoke-static {p1}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->foundPatternCross([I)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 268
    invoke-virtual {p0, p1, v7, v4}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->handlePossibleCenter([III)Z

    :cond_9
    add-int/2addr v7, v5

    goto :goto_1

    .line 271
    :cond_a
    invoke-direct {p0}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->selectMultipleBestPatterns()[[Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object p0

    .line 272
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 273
    array-length v1, p0

    :goto_4
    if-ge v0, v1, :cond_b

    aget-object v2, p0, v0

    .line 274
    invoke-static {v2}, Lcom/google/zxing/ResultPoint;->orderBestPatterns([Lcom/google/zxing/ResultPoint;)V

    .line 275
    new-instance v3, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    invoke-direct {v3, v2}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;-><init>([Lcom/google/zxing/qrcode/detector/FinderPattern;)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 278
    :cond_b
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_c

    sget-object p0, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->EMPTY_RESULT_ARRAY:[Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    return-object p0

    :cond_c
    sget-object p0, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->EMPTY_RESULT_ARRAY:[Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    .line 281
    invoke-interface {p1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    return-object p0
.end method
