.class final Lcom/google/android/material/carousel/KeylineState$Builder;
.super Ljava/lang/Object;
.source "KeylineState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/carousel/KeylineState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# static fields
.field private static final NO_INDEX:I = -0x1

.field private static final UNKNOWN_LOC:F = 1.4E-45f


# instance fields
.field private final availableSpace:F

.field private firstFocalKeylineIndex:I

.field private final itemSize:F

.field private lastFocalKeylineIndex:I

.field private lastKeylineMaskedSize:F

.field private latestAnchorKeylineIndex:I

.field private tmpFirstFocalKeyline:Lcom/google/android/material/carousel/KeylineState$Keyline;

.field private final tmpKeylines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/carousel/KeylineState$Keyline;",
            ">;"
        }
    .end annotation
.end field

.field private tmpLastFocalKeyline:Lcom/google/android/material/carousel/KeylineState$Keyline;


# direct methods
.method constructor <init>(FF)V
    .locals 2

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->tmpKeylines:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->firstFocalKeylineIndex:I

    iput v0, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->lastFocalKeylineIndex:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->lastKeylineMaskedSize:F

    iput v0, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->latestAnchorKeylineIndex:I

    iput p1, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->itemSize:F

    iput p2, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->availableSpace:F

    return-void
.end method

.method private static calculateKeylineLocationForItemPosition(FFII)F
    .locals 0

    int-to-float p2, p2

    mul-float/2addr p2, p1

    sub-float/2addr p0, p2

    int-to-float p2, p3

    mul-float/2addr p2, p1

    add-float/2addr p0, p2

    return p0
.end method


# virtual methods
.method addAnchorKeyline(FFF)Lcom/google/android/material/carousel/KeylineState$Builder;
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    .line 462
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/material/carousel/KeylineState$Builder;->addKeyline(FFFZZ)Lcom/google/android/material/carousel/KeylineState$Builder;

    move-result-object p0

    return-object p0
.end method

.method addKeyline(FFF)Lcom/google/android/material/carousel/KeylineState$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 304
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/material/carousel/KeylineState$Builder;->addKeyline(FFFZ)Lcom/google/android/material/carousel/KeylineState$Builder;

    move-result-object p0

    return-object p0
.end method

.method addKeyline(FFFZ)Lcom/google/android/material/carousel/KeylineState$Builder;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 291
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/material/carousel/KeylineState$Builder;->addKeyline(FFFZZ)Lcom/google/android/material/carousel/KeylineState$Builder;

    move-result-object p0

    return-object p0
.end method

.method addKeyline(FFFZZ)Lcom/google/android/material/carousel/KeylineState$Builder;
    .locals 8

    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, p3, v0

    sub-float v1, p1, v0

    add-float/2addr v0, p1

    iget v2, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->availableSpace:F

    cmpl-float v3, v0, v2

    if-lez v3, :cond_0

    sub-float v1, v0, p3

    .line 431
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    cmpg-float v2, v1, v0

    if-gez v2, :cond_1

    add-float v2, v1, p3

    .line 433
    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    :cond_1
    :goto_0
    move v7, v0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 436
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/material/carousel/KeylineState$Builder;->addKeyline(FFFZZF)Lcom/google/android/material/carousel/KeylineState$Builder;

    move-result-object p0

    return-object p0
.end method

.method addKeyline(FFFZZF)Lcom/google/android/material/carousel/KeylineState$Builder;
    .locals 9

    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-gtz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, -0x1

    if-eqz p5, :cond_4

    if-nez p4, :cond_3

    iget v1, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->latestAnchorKeylineIndex:I

    if-eq v1, v0, :cond_2

    if-nez v1, :cond_1

    goto :goto_0

    .line 349
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Anchor keylines must be either the first or last keyline."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->tmpKeylines:Ljava/util/List;

    .line 352
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->latestAnchorKeylineIndex:I

    goto :goto_1

    .line 346
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Anchor keylines cannot be focal."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 355
    :cond_4
    :goto_1
    new-instance v8, Lcom/google/android/material/carousel/KeylineState$Keyline;

    const/4 v2, 0x1

    move-object v1, v8

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/google/android/material/carousel/KeylineState$Keyline;-><init>(FFFFZF)V

    if-eqz p4, :cond_9

    iget-object p1, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->tmpFirstFocalKeyline:Lcom/google/android/material/carousel/KeylineState$Keyline;

    if-nez p1, :cond_5

    iput-object v8, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->tmpFirstFocalKeyline:Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget-object p1, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->tmpKeylines:Ljava/util/List;

    .line 360
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->firstFocalKeylineIndex:I

    :cond_5
    iget p1, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->lastFocalKeylineIndex:I

    if-eq p1, v0, :cond_7

    iget-object p1, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->tmpKeylines:Ljava/util/List;

    .line 363
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget p2, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->lastFocalKeylineIndex:I

    sub-int/2addr p1, p2

    const/4 p2, 0x1

    if-gt p1, p2, :cond_6

    goto :goto_2

    .line 364
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Keylines marked as focal must be placed next to each other. There cannot be non-focal keylines between focal keylines."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->tmpFirstFocalKeyline:Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 368
    iget p1, p1, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    cmpl-float p1, p3, p1

    if-nez p1, :cond_8

    iput-object v8, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->tmpLastFocalKeyline:Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget-object p1, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->tmpKeylines:Ljava/util/List;

    .line 373
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->lastFocalKeylineIndex:I

    goto :goto_4

    .line 369
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Keylines that are marked as focal must all have the same masked item size."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    iget-object p1, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->tmpFirstFocalKeyline:Lcom/google/android/material/carousel/KeylineState$Keyline;

    if-nez p1, :cond_b

    .line 375
    iget p1, v8, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    iget p2, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->lastKeylineMaskedSize:F

    cmpg-float p1, p1, p2

    if-ltz p1, :cond_a

    goto :goto_3

    .line 376
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Keylines before the first focal keyline must be ordered by incrementing masked item size."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    :goto_3
    iget-object p1, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->tmpLastFocalKeyline:Lcom/google/android/material/carousel/KeylineState$Keyline;

    if-eqz p1, :cond_d

    .line 379
    iget p1, v8, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    iget p2, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->lastKeylineMaskedSize:F

    cmpl-float p1, p1, p2

    if-gtz p1, :cond_c

    goto :goto_4

    .line 381
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Keylines after the last focal keyline must be ordered by decreasing masked item size."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 386
    :cond_d
    :goto_4
    iget p1, v8, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    iput p1, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->lastKeylineMaskedSize:F

    iget-object p1, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->tmpKeylines:Ljava/util/List;

    .line 387
    invoke-interface {p1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method addKeylineRange(FFFI)Lcom/google/android/material/carousel/KeylineState$Builder;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 480
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/material/carousel/KeylineState$Builder;->addKeylineRange(FFFIZ)Lcom/google/android/material/carousel/KeylineState$Builder;

    move-result-object p0

    return-object p0
.end method

.method addKeylineRange(FFFIZ)Lcom/google/android/material/carousel/KeylineState$Builder;
    .locals 2

    if-lez p4, :cond_1

    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_1

    int-to-float v1, v0

    mul-float/2addr v1, p3

    add-float/2addr v1, p1

    .line 516
    invoke-virtual {p0, v1, p2, p3, p5}, Lcom/google/android/material/carousel/KeylineState$Builder;->addKeyline(FFFZ)Lcom/google/android/material/carousel/KeylineState$Builder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method build()Lcom/google/android/material/carousel/KeylineState;
    .locals 11

    iget-object v0, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->tmpFirstFocalKeyline:Lcom/google/android/material/carousel/KeylineState$Keyline;

    if-eqz v0, :cond_1

    .line 529
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->tmpKeylines:Ljava/util/List;

    .line 530
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->tmpKeylines:Ljava/util/List;

    .line 531
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 532
    new-instance v2, Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget-object v4, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->tmpFirstFocalKeyline:Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget v4, v4, Lcom/google/android/material/carousel/KeylineState$Keyline;->locOffset:F

    iget v5, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->itemSize:F

    iget v6, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->firstFocalKeylineIndex:I

    .line 534
    invoke-static {v4, v5, v6, v0}, Lcom/google/android/material/carousel/KeylineState$Builder;->calculateKeylineLocationForItemPosition(FFII)F

    move-result v5

    iget v6, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->locOffset:F

    iget v7, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->mask:F

    iget v8, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    iget-boolean v9, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->isAnchor:Z

    iget v10, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->cutoff:F

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, Lcom/google/android/material/carousel/KeylineState$Keyline;-><init>(FFFFZF)V

    .line 541
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 544
    :cond_0
    new-instance v0, Lcom/google/android/material/carousel/KeylineState;

    iget v2, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->itemSize:F

    iget v4, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->firstFocalKeylineIndex:I

    iget v5, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->lastFocalKeylineIndex:I

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/material/carousel/KeylineState;-><init>(FLjava/util/List;IILcom/google/android/material/carousel/KeylineState$1;)V

    return-object v0

    .line 526
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "There must be a keyline marked as focal."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
