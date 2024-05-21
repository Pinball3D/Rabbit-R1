.class Lcom/google/android/material/carousel/KeylineStateList;
.super Ljava/lang/Object;
.source "KeylineStateList.java"


# static fields
.field private static final NO_INDEX:I = -0x1


# instance fields
.field private final defaultState:Lcom/google/android/material/carousel/KeylineState;

.field private final endShiftRange:F

.field private final endStateSteps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/carousel/KeylineState;",
            ">;"
        }
    .end annotation
.end field

.field private final endStateStepsInterpolationPoints:[F

.field private final startShiftRange:F

.field private final startStateSteps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/carousel/KeylineState;",
            ">;"
        }
    .end annotation
.end field

.field private final startStateStepsInterpolationPoints:[F


# direct methods
.method private constructor <init>(Lcom/google/android/material/carousel/KeylineState;Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/carousel/KeylineState;",
            "Ljava/util/List<",
            "Lcom/google/android/material/carousel/KeylineState;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/material/carousel/KeylineState;",
            ">;)V"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/carousel/KeylineStateList;->defaultState:Lcom/google/android/material/carousel/KeylineState;

    .line 63
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/carousel/KeylineStateList;->startStateSteps:Ljava/util/List;

    .line 64
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/carousel/KeylineStateList;->endStateSteps:Ljava/util/List;

    .line 69
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/carousel/KeylineState;

    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineState;->getFirstKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v0

    iget v0, v0, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    .line 70
    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getFirstKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v2

    iget v2, v2, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/google/android/material/carousel/KeylineStateList;->startShiftRange:F

    .line 72
    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getLastKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object p1

    iget p1, p1, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    .line 73
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/carousel/KeylineState;

    invoke-virtual {v2}, Lcom/google/android/material/carousel/KeylineState;->getLastKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v2

    iget v2, v2, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    sub-float/2addr p1, v2

    iput p1, p0, Lcom/google/android/material/carousel/KeylineStateList;->endShiftRange:F

    .line 78
    invoke-static {v0, p2, v1}, Lcom/google/android/material/carousel/KeylineStateList;->getStateStepInterpolationPoints(FLjava/util/List;Z)[F

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/carousel/KeylineStateList;->startStateStepsInterpolationPoints:[F

    const/4 p2, 0x0

    .line 81
    invoke-static {p1, p3, p2}, Lcom/google/android/material/carousel/KeylineStateList;->getStateStepInterpolationPoints(FLjava/util/List;Z)[F

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/carousel/KeylineStateList;->endStateStepsInterpolationPoints:[F

    return-void
.end method

.method private closestStateStepFromInterpolation(Ljava/util/List;F[F)Lcom/google/android/material/carousel/KeylineState;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/material/carousel/KeylineState;",
            ">;F[F)",
            "Lcom/google/android/material/carousel/KeylineState;"
        }
    .end annotation

    .line 247
    invoke-static {p1, p2, p3}, Lcom/google/android/material/carousel/KeylineStateList;->getStateStepsRange(Ljava/util/List;F[F)[F

    move-result-object p0

    const/4 p2, 0x0

    .line 250
    aget p2, p0, p2

    const/high16 p3, 0x3f000000    # 0.5f

    cmpl-float p2, p2, p3

    if-lez p2, :cond_0

    const/4 p2, 0x2

    .line 251
    aget p0, p0, p2

    float-to-int p0, p0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/carousel/KeylineState;

    return-object p0

    :cond_0
    const/4 p2, 0x1

    .line 253
    aget p0, p0, p2

    float-to-int p0, p0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/carousel/KeylineState;

    return-object p0
.end method

.method private static findFirstIndexAfterLastFocalKeylineWithMask(Lcom/google/android/material/carousel/KeylineState;F)I
    .locals 2

    .line 572
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getLastFocalKeylineIndex()I

    move-result v0

    .line 573
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 574
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget v1, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->mask:F

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 579
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method private static findFirstNonAnchorKeylineIndex(Lcom/google/android/material/carousel/KeylineState;)I
    .locals 2

    const/4 v0, 0x0

    .line 594
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 595
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget-boolean v1, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->isAnchor:Z

    if-nez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private static findLastIndexBeforeFirstFocalKeylineWithMask(Lcom/google/android/material/carousel/KeylineState;F)I
    .locals 2

    .line 583
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeylineIndex()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 585
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget v1, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->mask:F

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static findLastNonAnchorKeylineIndex(Lcom/google/android/material/carousel/KeylineState;)I
    .locals 2

    .line 604
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 605
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget-boolean v1, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->isAnchor:Z

    if-nez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method static from(Lcom/google/android/material/carousel/Carousel;Lcom/google/android/material/carousel/KeylineState;)Lcom/google/android/material/carousel/KeylineStateList;
    .locals 2

    .line 86
    new-instance v0, Lcom/google/android/material/carousel/KeylineStateList;

    .line 87
    invoke-static {p0, p1}, Lcom/google/android/material/carousel/KeylineStateList;->getStateStepsStart(Lcom/google/android/material/carousel/Carousel;Lcom/google/android/material/carousel/KeylineState;)Ljava/util/List;

    move-result-object v1

    invoke-static {p0, p1}, Lcom/google/android/material/carousel/KeylineStateList;->getStateStepsEnd(Lcom/google/android/material/carousel/Carousel;Lcom/google/android/material/carousel/KeylineState;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p1, v1, p0}, Lcom/google/android/material/carousel/KeylineStateList;-><init>(Lcom/google/android/material/carousel/KeylineState;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method private static getStateStepInterpolationPoints(FLjava/util/List;Z)[F
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/util/List<",
            "Lcom/google/android/material/carousel/KeylineState;",
            ">;Z)[F"
        }
    .end annotation

    .line 286
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 287
    new-array v1, v0, [F

    const/4 v2, 0x1

    :goto_0
    if-ge v2, v0, :cond_2

    add-int/lit8 v3, v2, -0x1

    .line 292
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/carousel/KeylineState;

    .line 293
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/carousel/KeylineState;

    if-eqz p2, :cond_0

    .line 297
    invoke-virtual {v5}, Lcom/google/android/material/carousel/KeylineState;->getFirstKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v5

    iget v5, v5, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    invoke-virtual {v4}, Lcom/google/android/material/carousel/KeylineState;->getFirstKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v4

    iget v4, v4, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    sub-float/2addr v5, v4

    goto :goto_1

    .line 298
    :cond_0
    invoke-virtual {v4}, Lcom/google/android/material/carousel/KeylineState;->getLastKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v4

    iget v4, v4, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    invoke-virtual {v5}, Lcom/google/android/material/carousel/KeylineState;->getLastKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v5

    iget v5, v5, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    sub-float v5, v4, v5

    :goto_1
    div-float/2addr v5, p0

    add-int/lit8 v4, v0, -0x1

    if-ne v2, v4, :cond_1

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_2

    .line 302
    :cond_1
    aget v3, v1, v3

    add-float/2addr v3, v5

    :goto_2
    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private static getStateStepsEnd(Lcom/google/android/material/carousel/Carousel;Lcom/google/android/material/carousel/KeylineState;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/carousel/Carousel;",
            "Lcom/google/android/material/carousel/KeylineState;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/material/carousel/KeylineState;",
            ">;"
        }
    .end annotation

    .line 442
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 443
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 444
    invoke-static {p1}, Lcom/google/android/material/carousel/KeylineStateList;->findLastNonAnchorKeylineIndex(Lcom/google/android/material/carousel/KeylineState;)I

    move-result v8

    .line 449
    invoke-static {p0, p1}, Lcom/google/android/material/carousel/KeylineStateList;->isLastFocalItemVisibleAtRightOfContainer(Lcom/google/android/material/carousel/Carousel;Lcom/google/android/material/carousel/KeylineState;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, -0x1

    if-ne v8, v1, :cond_0

    goto/16 :goto_3

    .line 454
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getLastFocalKeylineIndex()I

    move-result v1

    sub-int v9, v8, v1

    .line 458
    invoke-interface {p0}, Lcom/google/android/material/carousel/Carousel;->isHorizontal()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Lcom/google/android/material/carousel/Carousel;->getContainerWidth()I

    move-result p0

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lcom/google/android/material/carousel/Carousel;->getContainerHeight()I

    move-result p0

    :goto_0
    int-to-float p0, p0

    .line 460
    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getFirstKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v1

    iget v1, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->locOffset:F

    .line 461
    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getFirstKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v2

    iget v2, v2, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float v10, v1, v2

    const/4 v1, 0x0

    if-gtz v9, :cond_2

    .line 463
    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getLastFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v2

    iget v2, v2, Lcom/google/android/material/carousel/KeylineState$Keyline;->cutoff:F

    cmpl-float v2, v2, v1

    if-lez v2, :cond_2

    .line 467
    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getLastFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v1

    iget v1, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->cutoff:F

    sub-float/2addr v10, v1

    .line 469
    invoke-static {p1, v10, p0}, Lcom/google/android/material/carousel/KeylineStateList;->shiftKeylinesAndCreateKeylineState(Lcom/google/android/material/carousel/KeylineState;FF)Lcom/google/android/material/carousel/KeylineState;

    move-result-object p0

    .line 468
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_2
    const/4 v11, 0x0

    move v12, v11

    :goto_1
    if-ge v12, v9, :cond_4

    .line 475
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/carousel/KeylineState;

    sub-int v3, v8, v12

    .line 477
    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget v4, v4, Lcom/google/android/material/carousel/KeylineState$Keyline;->cutoff:F

    add-float v13, v1, v4

    add-int/lit8 v3, v3, 0x1

    .line 482
    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_3

    .line 483
    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget v1, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->mask:F

    .line 485
    invoke-static {v2, v1}, Lcom/google/android/material/carousel/KeylineStateList;->findLastIndexBeforeFirstFocalKeylineWithMask(Lcom/google/android/material/carousel/KeylineState;F)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    move v3, v1

    goto :goto_2

    :cond_3
    move v3, v11

    .line 490
    :goto_2
    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeylineIndex()I

    move-result v1

    add-int/2addr v1, v12

    add-int/lit8 v5, v1, 0x1

    .line 491
    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getLastFocalKeylineIndex()I

    move-result v1

    add-int/2addr v1, v12

    add-int/lit8 v6, v1, 0x1

    sub-float v4, v10, v13

    move-object v1, v2

    move v2, v8

    move v7, p0

    .line 493
    invoke-static/range {v1 .. v7}, Lcom/google/android/material/carousel/KeylineStateList;->moveKeylineAndCreateKeylineState(Lcom/google/android/material/carousel/KeylineState;IIFIIF)Lcom/google/android/material/carousel/KeylineState;

    move-result-object v1

    .line 501
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    move v1, v13

    goto :goto_1

    :cond_4
    :goto_3
    return-object v0
.end method

.method private static getStateStepsRange(Ljava/util/List;F[F)[F
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/material/carousel/KeylineState;",
            ">;F[F)[F"
        }
    .end annotation

    .line 223
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    .line 226
    aget v1, p2, v0

    const/4 v2, 0x1

    move v3, v2

    :goto_0
    const/4 v4, 0x3

    if-ge v3, p0, :cond_1

    .line 228
    aget v5, p2, v3

    cmpg-float v6, p1, v5

    if-gtz v6, :cond_0

    add-int/lit8 p0, v3, -0x1

    const/4 p2, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    .line 233
    invoke-static {p2, v6, v1, v5, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFFFF)F

    move-result p1

    new-array p2, v4, [F

    aput p1, p2, v0

    int-to-float p0, p0

    aput p0, p2, v2

    const/4 p0, 0x2

    int-to-float p1, v3

    aput p1, p2, p0

    return-object p2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    move v1, v5

    goto :goto_0

    :cond_1
    new-array p0, v4, [F

    fill-array-data p0, :array_0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static getStateStepsStart(Lcom/google/android/material/carousel/Carousel;Lcom/google/android/material/carousel/KeylineState;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/carousel/Carousel;",
            "Lcom/google/android/material/carousel/KeylineState;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/material/carousel/KeylineState;",
            ">;"
        }
    .end annotation

    .line 362
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 363
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    invoke-static {p1}, Lcom/google/android/material/carousel/KeylineStateList;->findFirstNonAnchorKeylineIndex(Lcom/google/android/material/carousel/KeylineState;)I

    move-result v8

    .line 369
    invoke-static {p1}, Lcom/google/android/material/carousel/KeylineStateList;->isFirstFocalItemAtLeftOfContainer(Lcom/google/android/material/carousel/KeylineState;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, -0x1

    if-ne v8, v1, :cond_0

    goto/16 :goto_3

    .line 374
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeylineIndex()I

    move-result v1

    sub-int v9, v1, v8

    .line 377
    invoke-interface {p0}, Lcom/google/android/material/carousel/Carousel;->isHorizontal()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Lcom/google/android/material/carousel/Carousel;->getContainerWidth()I

    move-result p0

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lcom/google/android/material/carousel/Carousel;->getContainerHeight()I

    move-result p0

    :goto_0
    int-to-float p0, p0

    .line 379
    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getFirstKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v1

    iget v1, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->locOffset:F

    .line 380
    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getFirstKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v2

    iget v2, v2, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float v10, v1, v2

    const/4 v1, 0x0

    if-gtz v9, :cond_2

    .line 382
    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v2

    iget v2, v2, Lcom/google/android/material/carousel/KeylineState$Keyline;->cutoff:F

    cmpl-float v2, v2, v1

    if-lez v2, :cond_2

    .line 386
    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v1

    iget v1, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->cutoff:F

    add-float/2addr v10, v1

    .line 388
    invoke-static {p1, v10, p0}, Lcom/google/android/material/carousel/KeylineStateList;->shiftKeylinesAndCreateKeylineState(Lcom/google/android/material/carousel/KeylineState;FF)Lcom/google/android/material/carousel/KeylineState;

    move-result-object p0

    .line 387
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_2
    const/4 v2, 0x0

    move v11, v2

    :goto_1
    if-ge v11, v9, :cond_4

    .line 394
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/carousel/KeylineState;

    add-int v3, v8, v11

    .line 399
    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 400
    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget v5, v5, Lcom/google/android/material/carousel/KeylineState$Keyline;->cutoff:F

    add-float v12, v1, v5

    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_3

    .line 402
    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget v1, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->mask:F

    .line 404
    invoke-static {v2, v1}, Lcom/google/android/material/carousel/KeylineStateList;->findFirstIndexAfterLastFocalKeylineWithMask(Lcom/google/android/material/carousel/KeylineState;F)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v3, v1

    goto :goto_2

    :cond_3
    move v3, v4

    .line 408
    :goto_2
    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeylineIndex()I

    move-result v1

    sub-int/2addr v1, v11

    add-int/lit8 v5, v1, -0x1

    .line 409
    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getLastFocalKeylineIndex()I

    move-result v1

    sub-int/2addr v1, v11

    add-int/lit8 v6, v1, -0x1

    add-float v4, v10, v12

    move-object v1, v2

    move v2, v8

    move v7, p0

    .line 412
    invoke-static/range {v1 .. v7}, Lcom/google/android/material/carousel/KeylineStateList;->moveKeylineAndCreateKeylineState(Lcom/google/android/material/carousel/KeylineState;IIFIIF)Lcom/google/android/material/carousel/KeylineState;

    move-result-object v1

    .line 420
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    move v1, v12

    goto :goto_1

    :cond_4
    :goto_3
    return-object v0
.end method

.method private static isFirstFocalItemAtLeftOfContainer(Lcom/google/android/material/carousel/KeylineState;)Z
    .locals 3

    .line 318
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v0

    iget v0, v0, Lcom/google/android/material/carousel/KeylineState$Keyline;->locOffset:F

    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v1

    iget v1, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 320
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getFirstNonAnchorKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isLastFocalItemVisibleAtRightOfContainer(Lcom/google/android/material/carousel/Carousel;Lcom/google/android/material/carousel/KeylineState;)Z
    .locals 3

    .line 334
    invoke-interface {p0}, Lcom/google/android/material/carousel/Carousel;->getContainerHeight()I

    move-result v0

    .line 335
    invoke-interface {p0}, Lcom/google/android/material/carousel/Carousel;->isHorizontal()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 336
    invoke-interface {p0}, Lcom/google/android/material/carousel/Carousel;->getContainerWidth()I

    move-result v0

    .line 339
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getLastFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object p0

    iget p0, p0, Lcom/google/android/material/carousel/KeylineState$Keyline;->locOffset:F

    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getLastFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v1

    iget v1, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr p0, v1

    int-to-float v0, v0

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_1

    .line 341
    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getLastFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getLastNonAnchorKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object p1

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static lerp(Ljava/util/List;F[F)Lcom/google/android/material/carousel/KeylineState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/material/carousel/KeylineState;",
            ">;F[F)",
            "Lcom/google/android/material/carousel/KeylineState;"
        }
    .end annotation

    .line 202
    invoke-static {p0, p1, p2}, Lcom/google/android/material/carousel/KeylineStateList;->getStateStepsRange(Ljava/util/List;F[F)[F

    move-result-object p1

    const/4 p2, 0x1

    .line 203
    aget p2, p1, p2

    float-to-int p2, p2

    .line 204
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/carousel/KeylineState;

    const/4 v0, 0x2

    aget v0, p1, v0

    float-to-int v0, v0

    .line 205
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/carousel/KeylineState;

    const/4 v0, 0x0

    aget p1, p1, v0

    .line 203
    invoke-static {p2, p0, p1}, Lcom/google/android/material/carousel/KeylineState;->lerp(Lcom/google/android/material/carousel/KeylineState;Lcom/google/android/material/carousel/KeylineState;F)Lcom/google/android/material/carousel/KeylineState;

    move-result-object p0

    return-object p0
.end method

.method private static moveKeylineAndCreateKeylineState(Lcom/google/android/material/carousel/KeylineState;IIFIIF)Lcom/google/android/material/carousel/KeylineState;
    .locals 8

    .line 551
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 552
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 553
    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 555
    new-instance p1, Lcom/google/android/material/carousel/KeylineState$Builder;

    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    move-result p0

    invoke-direct {p1, p0, p6}, Lcom/google/android/material/carousel/KeylineState$Builder;-><init>(FF)V

    const/4 p0, 0x0

    move p2, p0

    .line 557
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p6

    if-ge p2, p6, :cond_1

    .line 558
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 559
    iget v1, p6, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float v2, p3, v1

    if-lt p2, p4, :cond_0

    if-gt p2, p5, :cond_0

    const/4 v1, 0x1

    move v5, v1

    goto :goto_1

    :cond_0
    move v5, p0

    .line 564
    :goto_1
    iget v3, p6, Lcom/google/android/material/carousel/KeylineState$Keyline;->mask:F

    iget v4, p6, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    iget-boolean v6, p6, Lcom/google/android/material/carousel/KeylineState$Keyline;->isAnchor:Z

    iget v7, p6, Lcom/google/android/material/carousel/KeylineState$Keyline;->cutoff:F

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/material/carousel/KeylineState$Builder;->addKeyline(FFFZZF)Lcom/google/android/material/carousel/KeylineState$Builder;

    .line 565
    iget p6, p6, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    add-float/2addr p3, p6

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 568
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState$Builder;->build()Lcom/google/android/material/carousel/KeylineState;

    move-result-object p0

    return-object p0
.end method

.method private static shiftKeylinesAndCreateKeylineState(Lcom/google/android/material/carousel/KeylineState;FF)Lcom/google/android/material/carousel/KeylineState;
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 524
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeylineIndex()I

    move-result v4

    .line 525
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getLastFocalKeylineIndex()I

    move-result v5

    move-object v0, p0

    move v3, p1

    move v6, p2

    .line 519
    invoke-static/range {v0 .. v6}, Lcom/google/android/material/carousel/KeylineStateList;->moveKeylineAndCreateKeylineState(Lcom/google/android/material/carousel/KeylineState;IIFIIF)Lcom/google/android/material/carousel/KeylineState;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method getDefaultState()Lcom/google/android/material/carousel/KeylineState;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/carousel/KeylineStateList;->defaultState:Lcom/google/android/material/carousel/KeylineState;

    return-object p0
.end method

.method getEndState()Lcom/google/android/material/carousel/KeylineState;
    .locals 1

    iget-object p0, p0, Lcom/google/android/material/carousel/KeylineStateList;->endStateSteps:Ljava/util/List;

    .line 107
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/carousel/KeylineState;

    return-object p0
.end method

.method getKeylineStateForPositionMap(IIIZ)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIZ)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/material/carousel/KeylineState;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/carousel/KeylineStateList;->defaultState:Lcom/google/android/material/carousel/KeylineState;

    .line 615
    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    move-result v0

    .line 616
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    const/4 v5, -0x1

    const/4 v6, 0x1

    if-ge v3, p1, :cond_4

    if-eqz p4, :cond_0

    sub-int v7, p1, v3

    sub-int/2addr v7, v6

    goto :goto_1

    :cond_0
    move v7, v3

    :goto_1
    int-to-float v8, v7

    mul-float/2addr v8, v0

    if-eqz p4, :cond_1

    goto :goto_2

    :cond_1
    move v5, v6

    :goto_2
    int-to-float v5, v5

    mul-float/2addr v8, v5

    int-to-float v5, p3

    iget v9, p0, Lcom/google/android/material/carousel/KeylineStateList;->endShiftRange:F

    sub-float/2addr v5, v9

    cmpl-float v5, v8, v5

    if-gtz v5, :cond_2

    iget-object v5, p0, Lcom/google/android/material/carousel/KeylineStateList;->endStateSteps:Ljava/util/List;

    .line 625
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int v5, p1, v5

    if-lt v3, v5, :cond_3

    .line 627
    :cond_2
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v7, p0, Lcom/google/android/material/carousel/KeylineStateList;->endStateSteps:Ljava/util/List;

    .line 628
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v6

    invoke-static {v4, v2, v8}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v6

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/material/carousel/KeylineState;

    .line 626
    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 p3, p1, -0x1

    move v3, v2

    :goto_3
    if-ltz p3, :cond_9

    if-eqz p4, :cond_5

    sub-int v4, p1, p3

    sub-int/2addr v4, v6

    goto :goto_4

    :cond_5
    move v4, p3

    :goto_4
    int-to-float v7, v4

    mul-float/2addr v7, v0

    if-eqz p4, :cond_6

    move v8, v5

    goto :goto_5

    :cond_6
    move v8, v6

    :goto_5
    int-to-float v8, v8

    mul-float/2addr v7, v8

    int-to-float v8, p2

    iget v9, p0, Lcom/google/android/material/carousel/KeylineStateList;->startShiftRange:F

    add-float/2addr v8, v9

    cmpg-float v7, v7, v8

    if-ltz v7, :cond_7

    iget-object v7, p0, Lcom/google/android/material/carousel/KeylineStateList;->startStateSteps:Ljava/util/List;

    .line 639
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge p3, v7, :cond_8

    .line 643
    :cond_7
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v7, p0, Lcom/google/android/material/carousel/KeylineStateList;->startStateSteps:Ljava/util/List;

    .line 644
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v6

    invoke-static {v3, v2, v8}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v8

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/material/carousel/KeylineState;

    .line 642
    invoke-interface {v1, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    :cond_8
    add-int/lit8 p3, p3, -0x1

    goto :goto_3

    :cond_9
    return-object v1
.end method

.method public getShiftedState(FFF)Lcom/google/android/material/carousel/KeylineState;
    .locals 1

    const/4 v0, 0x0

    .line 127
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/material/carousel/KeylineStateList;->getShiftedState(FFFZ)Lcom/google/android/material/carousel/KeylineState;

    move-result-object p0

    return-object p0
.end method

.method getShiftedState(FFFZ)Lcom/google/android/material/carousel/KeylineState;
    .locals 5

    iget v0, p0, Lcom/google/android/material/carousel/KeylineStateList;->startShiftRange:F

    add-float/2addr v0, p2

    iget v1, p0, Lcom/google/android/material/carousel/KeylineStateList;->endShiftRange:F

    sub-float v1, p3, v1

    cmpg-float v2, p1, v0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-gez v2, :cond_0

    .line 160
    invoke-static {v4, v3, p2, v0, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFFFF)F

    move-result p1

    iget-object p2, p0, Lcom/google/android/material/carousel/KeylineStateList;->startStateSteps:Ljava/util/List;

    iget-object p3, p0, Lcom/google/android/material/carousel/KeylineStateList;->startStateStepsInterpolationPoints:[F

    goto :goto_0

    :cond_0
    cmpl-float p2, p1, v1

    if-lez p2, :cond_2

    .line 170
    invoke-static {v3, v4, v1, p3, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFFFF)F

    move-result p1

    iget-object p2, p0, Lcom/google/android/material/carousel/KeylineStateList;->endStateSteps:Ljava/util/List;

    iget-object p3, p0, Lcom/google/android/material/carousel/KeylineStateList;->endStateStepsInterpolationPoints:[F

    :goto_0
    if-eqz p4, :cond_1

    .line 183
    invoke-direct {p0, p2, p1, p3}, Lcom/google/android/material/carousel/KeylineStateList;->closestStateStepFromInterpolation(Ljava/util/List;F[F)Lcom/google/android/material/carousel/KeylineState;

    move-result-object p0

    return-object p0

    .line 185
    :cond_1
    invoke-static {p2, p1, p3}, Lcom/google/android/material/carousel/KeylineStateList;->lerp(Ljava/util/List;F[F)Lcom/google/android/material/carousel/KeylineState;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object p0, p0, Lcom/google/android/material/carousel/KeylineStateList;->defaultState:Lcom/google/android/material/carousel/KeylineState;

    return-object p0
.end method

.method getStartState()Lcom/google/android/material/carousel/KeylineState;
    .locals 1

    iget-object p0, p0, Lcom/google/android/material/carousel/KeylineStateList;->startStateSteps:Ljava/util/List;

    .line 99
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/carousel/KeylineState;

    return-object p0
.end method
