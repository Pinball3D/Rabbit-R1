.class public final Lcom/google/android/material/color/utilities/QuantizerWu;
.super Ljava/lang/Object;
.source "QuantizerWu.java"

# interfaces
.implements Lcom/google/android/material/color/utilities/Quantizer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/color/utilities/QuantizerWu$Box;,
        Lcom/google/android/material/color/utilities/QuantizerWu$CreateBoxesResult;,
        Lcom/google/android/material/color/utilities/QuantizerWu$MaximizeResult;,
        Lcom/google/android/material/color/utilities/QuantizerWu$Direction;
    }
.end annotation


# static fields
.field private static final INDEX_BITS:I = 0x5

.field private static final INDEX_COUNT:I = 0x21

.field private static final TOTAL_SIZE:I = 0x8c61


# instance fields
.field cubes:[Lcom/google/android/material/color/utilities/QuantizerWu$Box;

.field moments:[D

.field momentsB:[I

.field momentsG:[I

.field momentsR:[I

.field weights:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bottom(Lcom/google/android/material/color/utilities/QuantizerWu$Box;Lcom/google/android/material/color/utilities/QuantizerWu$Direction;[I)I
    .locals 3

    .line 335
    sget-object v0, Lcom/google/android/material/color/utilities/QuantizerWu$1;->$SwitchMap$com$google$android$material$color$utilities$QuantizerWu$Direction:[I

    invoke-virtual {p1}, Lcom/google/android/material/color/utilities/QuantizerWu$Direction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 347
    iget p1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    invoke-static {p1, v0, v1}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    move-result p1

    aget p1, p2, p1

    neg-int p1, p1

    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    iget v2, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    .line 348
    invoke-static {v0, v1, v2}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    move-result v0

    aget v0, p2, v0

    add-int/2addr p1, v0

    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    iget v2, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    .line 349
    invoke-static {v0, v1, v2}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    move-result v0

    aget v0, p2, v0

    add-int/2addr p1, v0

    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    iget p0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    .line 350
    invoke-static {v0, v1, p0}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    move-result p0

    aget p0, p2, p0

    :goto_0
    sub-int/2addr p1, p0

    return p1

    .line 352
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "unexpected direction "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 342
    :cond_1
    iget p1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    invoke-static {p1, v0, v1}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    move-result p1

    aget p1, p2, p1

    neg-int p1, p1

    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    iget v2, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    .line 343
    invoke-static {v0, v1, v2}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    move-result v0

    aget v0, p2, v0

    add-int/2addr p1, v0

    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    iget v2, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    .line 344
    invoke-static {v0, v1, v2}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    move-result v0

    aget v0, p2, v0

    add-int/2addr p1, v0

    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    iget p0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    .line 345
    invoke-static {v0, v1, p0}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    move-result p0

    aget p0, p2, p0

    goto :goto_0

    .line 337
    :cond_2
    iget p1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    invoke-static {p1, v0, v1}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    move-result p1

    aget p1, p2, p1

    neg-int p1, p1

    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    iget v2, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    .line 338
    invoke-static {v0, v1, v2}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    move-result v0

    aget v0, p2, v0

    add-int/2addr p1, v0

    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    iget v2, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    .line 339
    invoke-static {v0, v1, v2}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    move-result v0

    aget v0, p2, v0

    add-int/2addr p1, v0

    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    iget p0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    .line 340
    invoke-static {v0, v1, p0}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    move-result p0

    aget p0, p2, p0

    goto :goto_0
.end method

.method static getIndex(III)I
    .locals 2

    shl-int/lit8 v0, p0, 0xa

    shl-int/lit8 v1, p0, 0x6

    add-int/2addr v0, v1

    add-int/2addr v0, p0

    shl-int/lit8 p0, p1, 0x5

    add-int/2addr v0, p0

    add-int/2addr v0, p1

    add-int/2addr v0, p2

    return v0
.end method

.method static top(Lcom/google/android/material/color/utilities/QuantizerWu$Box;Lcom/google/android/material/color/utilities/QuantizerWu$Direction;I[I)I
    .locals 2

    .line 356
    sget-object v0, Lcom/google/android/material/color/utilities/QuantizerWu$1;->$SwitchMap$com$google$android$material$color$utilities$QuantizerWu$Direction:[I

    invoke-virtual {p1}, Lcom/google/android/material/color/utilities/QuantizerWu$Direction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 368
    iget p1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    invoke-static {p1, v0, p2}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    move-result p1

    aget p1, p3, p1

    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    .line 369
    invoke-static {v0, v1, p2}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    move-result v0

    aget v0, p3, v0

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    .line 370
    invoke-static {v0, v1, p2}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    move-result v0

    aget v0, p3, v0

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    iget p0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    .line 371
    invoke-static {v0, p0, p2}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    move-result p0

    aget p0, p3, p0

    :goto_0
    add-int/2addr p1, p0

    return p1

    .line 373
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "unexpected direction "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 363
    :cond_1
    iget p1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    invoke-static {p1, p2, v0}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    move-result p1

    aget p1, p3, p1

    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    .line 364
    invoke-static {v0, p2, v1}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    move-result v0

    aget v0, p3, v0

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    .line 365
    invoke-static {v0, p2, v1}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    move-result v0

    aget v0, p3, v0

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    iget p0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    .line 366
    invoke-static {v0, p2, p0}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    move-result p0

    aget p0, p3, p0

    goto :goto_0

    .line 358
    :cond_2
    iget p1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    invoke-static {p2, p1, v0}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    move-result p1

    aget p1, p3, p1

    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    .line 359
    invoke-static {p2, v0, v1}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    move-result v0

    aget v0, p3, v0

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    .line 360
    invoke-static {p2, v0, v1}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    move-result v0

    aget v0, p3, v0

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    iget p0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    .line 361
    invoke-static {p2, v0, p0}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    move-result p0

    aget p0, p3, p0

    goto :goto_0
.end method

.method static volume(Lcom/google/android/material/color/utilities/QuantizerWu$Box;[I)I
    .locals 4

    .line 324
    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    iget v2, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    invoke-static {v0, v1, v2}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    move-result v0

    aget v0, p1, v0

    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    iget v2, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    iget v3, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    .line 325
    invoke-static {v1, v2, v3}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    move-result v1

    aget v1, p1, v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    iget v2, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    iget v3, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    .line 326
    invoke-static {v1, v2, v3}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    move-result v1

    aget v1, p1, v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    iget v2, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    iget v3, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    .line 327
    invoke-static {v1, v2, v3}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    move-result v1

    aget v1, p1, v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    iget v2, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    iget v3, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    .line 328
    invoke-static {v1, v2, v3}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    move-result v1

    aget v1, p1, v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    iget v2, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    iget v3, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    .line 329
    invoke-static {v1, v2, v3}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    move-result v1

    aget v1, p1, v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    iget v2, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    iget v3, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    .line 330
    invoke-static {v1, v2, v3}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    move-result v1

    aget v1, p1, v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    iget v2, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    iget p0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    .line 331
    invoke-static {v1, v2, p0}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    move-result p0

    aget p0, p1, p0

    sub-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method constructHistogram(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const v0, 0x8c61

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu;->weights:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu;->momentsR:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu;->momentsG:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu;->momentsB:[I

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu;->moments:[D

    .line 78
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 79
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 80
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 81
    invoke-static {v1}, Lcom/google/android/material/color/utilities/ColorUtils;->redFromArgb(I)I

    move-result v2

    .line 82
    invoke-static {v1}, Lcom/google/android/material/color/utilities/ColorUtils;->greenFromArgb(I)I

    move-result v3

    .line 83
    invoke-static {v1}, Lcom/google/android/material/color/utilities/ColorUtils;->blueFromArgb(I)I

    move-result v1

    shr-int/lit8 v4, v2, 0x3

    add-int/lit8 v4, v4, 0x1

    shr-int/lit8 v5, v3, 0x3

    add-int/lit8 v5, v5, 0x1

    shr-int/lit8 v6, v1, 0x3

    add-int/lit8 v6, v6, 0x1

    .line 88
    invoke-static {v4, v5, v6}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    move-result v4

    iget-object v5, p0, Lcom/google/android/material/color/utilities/QuantizerWu;->weights:[I

    .line 89
    aget v6, v5, v4

    add-int/2addr v6, v0

    aput v6, v5, v4

    iget-object v5, p0, Lcom/google/android/material/color/utilities/QuantizerWu;->momentsR:[I

    .line 90
    aget v6, v5, v4

    mul-int v7, v2, v0

    add-int/2addr v6, v7

    aput v6, v5, v4

    iget-object v5, p0, Lcom/google/android/material/color/utilities/QuantizerWu;->momentsG:[I

    .line 91
    aget v6, v5, v4

    mul-int v7, v3, v0

    add-int/2addr v6, v7

    aput v6, v5, v4

    iget-object v5, p0, Lcom/google/android/material/color/utilities/QuantizerWu;->momentsB:[I

    .line 92
    aget v6, v5, v4

    mul-int v7, v1, v0

    add-int/2addr v6, v7

    aput v6, v5, v4

    iget-object v5, p0, Lcom/google/android/material/color/utilities/QuantizerWu;->moments:[D

    .line 93
    aget-wide v6, v5, v4

    mul-int/2addr v2, v2

    mul-int/2addr v3, v3

    add-int/2addr v2, v3

    mul-int/2addr v1, v1

    add-int/2addr v2, v1

    mul-int/2addr v0, v2

    int-to-double v0, v0

    add-double/2addr v6, v0

    aput-wide v6, v5, v4

    goto :goto_0

    :cond_0
    return-void
.end method

.method createBoxes(I)Lcom/google/android/material/color/utilities/QuantizerWu$CreateBoxesResult;
    .locals 13

    .line 137
    new-array v0, p1, [Lcom/google/android/material/color/utilities/QuantizerWu$Box;

    iput-object v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu;->cubes:[Lcom/google/android/material/color/utilities/QuantizerWu$Box;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_0

    iget-object v2, p0, Lcom/google/android/material/color/utilities/QuantizerWu;->cubes:[Lcom/google/android/material/color/utilities/QuantizerWu$Box;

    .line 139
    new-instance v3, Lcom/google/android/material/color/utilities/QuantizerWu$Box;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/google/android/material/color/utilities/QuantizerWu$Box;-><init>(Lcom/google/android/material/color/utilities/QuantizerWu$1;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 141
    :cond_0
    new-array v1, p1, [D

    iget-object v2, p0, Lcom/google/android/material/color/utilities/QuantizerWu;->cubes:[Lcom/google/android/material/color/utilities/QuantizerWu$Box;

    .line 142
    aget-object v2, v2, v0

    const/16 v3, 0x20

    .line 143
    iput v3, v2, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    .line 144
    iput v3, v2, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    .line 145
    iput v3, v2, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    const/4 v2, 0x1

    move v4, v0

    move v3, v2

    :goto_1
    if-ge v3, p1, :cond_7

    iget-object v5, p0, Lcom/google/android/material/color/utilities/QuantizerWu;->cubes:[Lcom/google/android/material/color/utilities/QuantizerWu$Box;

    .line 150
    aget-object v6, v5, v4

    aget-object v5, v5, v3

    invoke-virtual {p0, v6, v5}, Lcom/google/android/material/color/utilities/QuantizerWu;->cut(Lcom/google/android/material/color/utilities/QuantizerWu$Box;Lcom/google/android/material/color/utilities/QuantizerWu$Box;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const-wide/16 v6, 0x0

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/google/android/material/color/utilities/QuantizerWu;->cubes:[Lcom/google/android/material/color/utilities/QuantizerWu$Box;

    .line 151
    aget-object v5, v5, v4

    iget v5, v5, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->vol:I

    if-le v5, v2, :cond_1

    iget-object v5, p0, Lcom/google/android/material/color/utilities/QuantizerWu;->cubes:[Lcom/google/android/material/color/utilities/QuantizerWu$Box;

    aget-object v5, v5, v4

    invoke-virtual {p0, v5}, Lcom/google/android/material/color/utilities/QuantizerWu;->variance(Lcom/google/android/material/color/utilities/QuantizerWu$Box;)D

    move-result-wide v8

    goto :goto_2

    :cond_1
    move-wide v8, v6

    :goto_2
    aput-wide v8, v1, v4

    iget-object v4, p0, Lcom/google/android/material/color/utilities/QuantizerWu;->cubes:[Lcom/google/android/material/color/utilities/QuantizerWu$Box;

    .line 152
    aget-object v4, v4, v3

    iget v4, v4, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->vol:I

    if-le v4, v2, :cond_2

    iget-object v4, p0, Lcom/google/android/material/color/utilities/QuantizerWu;->cubes:[Lcom/google/android/material/color/utilities/QuantizerWu$Box;

    aget-object v4, v4, v3

    invoke-virtual {p0, v4}, Lcom/google/android/material/color/utilities/QuantizerWu;->variance(Lcom/google/android/material/color/utilities/QuantizerWu$Box;)D

    move-result-wide v4

    goto :goto_3

    :cond_2
    move-wide v4, v6

    :goto_3
    aput-wide v4, v1, v3

    goto :goto_4

    .line 154
    :cond_3
    aput-wide v6, v1, v4

    add-int/lit8 v3, v3, -0x1

    .line 160
    :goto_4
    aget-wide v4, v1, v0

    move v8, v0

    move v9, v2

    :goto_5
    if-gt v9, v3, :cond_5

    .line 162
    aget-wide v10, v1, v9

    cmpl-double v12, v10, v4

    if-lez v12, :cond_4

    move v8, v9

    move-wide v4, v10

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_5
    cmpg-double v4, v4, v6

    if-gtz v4, :cond_6

    add-int/2addr v3, v2

    goto :goto_6

    :cond_6
    add-int/lit8 v3, v3, 0x1

    move v4, v8

    goto :goto_1

    :cond_7
    move v3, p1

    .line 173
    :goto_6
    new-instance p0, Lcom/google/android/material/color/utilities/QuantizerWu$CreateBoxesResult;

    invoke-direct {p0, p1, v3}, Lcom/google/android/material/color/utilities/QuantizerWu$CreateBoxesResult;-><init>(II)V

    return-object p0
.end method

.method createMoments()V
    .locals 22

    move-object/from16 v0, p0

    const/4 v2, 0x1

    :goto_0
    const/16 v3, 0x21

    if-ge v2, v3, :cond_2

    new-array v4, v3, [I

    new-array v5, v3, [I

    new-array v6, v3, [I

    new-array v7, v3, [I

    new-array v8, v3, [D

    const/4 v9, 0x1

    :goto_1
    if-ge v9, v3, :cond_1

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    move v13, v10

    move-wide v14, v11

    const/4 v1, 0x1

    move v11, v13

    move v12, v11

    :goto_2
    if-ge v1, v3, :cond_0

    .line 112
    invoke-static {v2, v9, v1}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    move-result v16

    iget-object v3, v0, Lcom/google/android/material/color/utilities/QuantizerWu;->weights:[I

    .line 113
    aget v3, v3, v16

    add-int/2addr v10, v3

    iget-object v3, v0, Lcom/google/android/material/color/utilities/QuantizerWu;->momentsR:[I

    .line 114
    aget v3, v3, v16

    add-int/2addr v11, v3

    iget-object v3, v0, Lcom/google/android/material/color/utilities/QuantizerWu;->momentsG:[I

    .line 115
    aget v3, v3, v16

    add-int/2addr v12, v3

    iget-object v3, v0, Lcom/google/android/material/color/utilities/QuantizerWu;->momentsB:[I

    .line 116
    aget v3, v3, v16

    add-int/2addr v13, v3

    iget-object v3, v0, Lcom/google/android/material/color/utilities/QuantizerWu;->moments:[D

    .line 117
    aget-wide v17, v3, v16

    add-double v14, v14, v17

    .line 119
    aget v3, v4, v1

    add-int/2addr v3, v10

    aput v3, v4, v1

    .line 120
    aget v3, v5, v1

    add-int/2addr v3, v11

    aput v3, v5, v1

    .line 121
    aget v3, v6, v1

    add-int/2addr v3, v12

    aput v3, v6, v1

    .line 122
    aget v3, v7, v1

    add-int/2addr v3, v13

    aput v3, v7, v1

    .line 123
    aget-wide v17, v8, v1

    add-double v17, v17, v14

    aput-wide v17, v8, v1

    add-int/lit8 v3, v2, -0x1

    .line 125
    invoke-static {v3, v9, v1}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    move-result v3

    move/from16 v17, v10

    iget-object v10, v0, Lcom/google/android/material/color/utilities/QuantizerWu;->weights:[I

    .line 126
    aget v18, v10, v3

    aget v19, v4, v1

    add-int v18, v18, v19

    aput v18, v10, v16

    iget-object v10, v0, Lcom/google/android/material/color/utilities/QuantizerWu;->momentsR:[I

    .line 127
    aget v18, v10, v3

    aget v19, v5, v1

    add-int v18, v18, v19

    aput v18, v10, v16

    iget-object v10, v0, Lcom/google/android/material/color/utilities/QuantizerWu;->momentsG:[I

    .line 128
    aget v18, v10, v3

    aget v19, v6, v1

    add-int v18, v18, v19

    aput v18, v10, v16

    iget-object v10, v0, Lcom/google/android/material/color/utilities/QuantizerWu;->momentsB:[I

    .line 129
    aget v18, v10, v3

    aget v19, v7, v1

    add-int v18, v18, v19

    aput v18, v10, v16

    iget-object v10, v0, Lcom/google/android/material/color/utilities/QuantizerWu;->moments:[D

    .line 130
    aget-wide v18, v10, v3

    aget-wide v20, v8, v1

    add-double v18, v18, v20

    aput-wide v18, v10, v16

    add-int/lit8 v1, v1, 0x1

    move/from16 v10, v17

    const/16 v3, 0x21

    goto :goto_2

    :cond_0
    add-int/lit8 v9, v9, 0x1

    const/16 v3, 0x21

    goto/16 :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method createResult(I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    iget-object v2, p0, Lcom/google/android/material/color/utilities/QuantizerWu;->cubes:[Lcom/google/android/material/color/utilities/QuantizerWu$Box;

    .line 179
    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/google/android/material/color/utilities/QuantizerWu;->weights:[I

    .line 180
    invoke-static {v2, v3}, Lcom/google/android/material/color/utilities/QuantizerWu;->volume(Lcom/google/android/material/color/utilities/QuantizerWu$Box;[I)I

    move-result v3

    if-lez v3, :cond_0

    iget-object v4, p0, Lcom/google/android/material/color/utilities/QuantizerWu;->momentsR:[I

    .line 182
    invoke-static {v2, v4}, Lcom/google/android/material/color/utilities/QuantizerWu;->volume(Lcom/google/android/material/color/utilities/QuantizerWu$Box;[I)I

    move-result v4

    div-int/2addr v4, v3

    iget-object v5, p0, Lcom/google/android/material/color/utilities/QuantizerWu;->momentsG:[I

    .line 183
    invoke-static {v2, v5}, Lcom/google/android/material/color/utilities/QuantizerWu;->volume(Lcom/google/android/material/color/utilities/QuantizerWu$Box;[I)I

    move-result v5

    div-int/2addr v5, v3

    iget-object v6, p0, Lcom/google/android/material/color/utilities/QuantizerWu;->momentsB:[I

    .line 184
    invoke-static {v2, v6}, Lcom/google/android/material/color/utilities/QuantizerWu;->volume(Lcom/google/android/material/color/utilities/QuantizerWu$Box;[I)I

    move-result v2

    div-int/2addr v2, v3

    and-int/lit16 v3, v4, 0xff

    shl-int/lit8 v3, v3, 0x10

    const/high16 v4, -0x1000000

    or-int/2addr v3, v4

    and-int/lit16 v4, v5, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v3

    .line 186
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method cut(Lcom/google/android/material/color/utilities/QuantizerWu$Box;Lcom/google/android/material/color/utilities/QuantizerWu$Box;)Ljava/lang/Boolean;
    .locals 17

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    iget-object v0, v9, Lcom/google/android/material/color/utilities/QuantizerWu;->momentsR:[I

    .line 212
    invoke-static {v10, v0}, Lcom/google/android/material/color/utilities/QuantizerWu;->volume(Lcom/google/android/material/color/utilities/QuantizerWu$Box;[I)I

    move-result v12

    iget-object v0, v9, Lcom/google/android/material/color/utilities/QuantizerWu;->momentsG:[I

    .line 213
    invoke-static {v10, v0}, Lcom/google/android/material/color/utilities/QuantizerWu;->volume(Lcom/google/android/material/color/utilities/QuantizerWu$Box;[I)I

    move-result v13

    iget-object v0, v9, Lcom/google/android/material/color/utilities/QuantizerWu;->momentsB:[I

    .line 214
    invoke-static {v10, v0}, Lcom/google/android/material/color/utilities/QuantizerWu;->volume(Lcom/google/android/material/color/utilities/QuantizerWu$Box;[I)I

    move-result v14

    iget-object v0, v9, Lcom/google/android/material/color/utilities/QuantizerWu;->weights:[I

    .line 215
    invoke-static {v10, v0}, Lcom/google/android/material/color/utilities/QuantizerWu;->volume(Lcom/google/android/material/color/utilities/QuantizerWu$Box;[I)I

    move-result v15

    .line 217
    sget-object v2, Lcom/google/android/material/color/utilities/QuantizerWu$Direction;->RED:Lcom/google/android/material/color/utilities/QuantizerWu$Direction;

    iget v0, v10, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    const/4 v8, 0x1

    add-int/lit8 v3, v0, 0x1

    iget v4, v10, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v5, v12

    move v6, v13

    move v7, v14

    move v9, v8

    move v8, v15

    .line 218
    invoke-virtual/range {v0 .. v8}, Lcom/google/android/material/color/utilities/QuantizerWu;->maximize(Lcom/google/android/material/color/utilities/QuantizerWu$Box;Lcom/google/android/material/color/utilities/QuantizerWu$Direction;IIIIII)Lcom/google/android/material/color/utilities/QuantizerWu$MaximizeResult;

    move-result-object v8

    .line 219
    sget-object v2, Lcom/google/android/material/color/utilities/QuantizerWu$Direction;->GREEN:Lcom/google/android/material/color/utilities/QuantizerWu$Direction;

    iget v0, v10, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    add-int/lit8 v3, v0, 0x1

    iget v4, v10, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    move-object/from16 v0, p0

    move-object/from16 v16, v8

    move v8, v15

    .line 220
    invoke-virtual/range {v0 .. v8}, Lcom/google/android/material/color/utilities/QuantizerWu;->maximize(Lcom/google/android/material/color/utilities/QuantizerWu$Box;Lcom/google/android/material/color/utilities/QuantizerWu$Direction;IIIIII)Lcom/google/android/material/color/utilities/QuantizerWu$MaximizeResult;

    move-result-object v8

    .line 221
    sget-object v2, Lcom/google/android/material/color/utilities/QuantizerWu$Direction;->BLUE:Lcom/google/android/material/color/utilities/QuantizerWu$Direction;

    iget v0, v10, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    add-int/lit8 v3, v0, 0x1

    iget v4, v10, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    move-object/from16 v0, p0

    move-object v12, v8

    move v8, v15

    .line 222
    invoke-virtual/range {v0 .. v8}, Lcom/google/android/material/color/utilities/QuantizerWu;->maximize(Lcom/google/android/material/color/utilities/QuantizerWu$Box;Lcom/google/android/material/color/utilities/QuantizerWu$Direction;IIIIII)Lcom/google/android/material/color/utilities/QuantizerWu$MaximizeResult;

    move-result-object v0

    move-object/from16 v1, v16

    .line 224
    iget-wide v2, v1, Lcom/google/android/material/color/utilities/QuantizerWu$MaximizeResult;->maximum:D

    .line 225
    iget-wide v4, v12, Lcom/google/android/material/color/utilities/QuantizerWu$MaximizeResult;->maximum:D

    .line 226
    iget-wide v6, v0, Lcom/google/android/material/color/utilities/QuantizerWu$MaximizeResult;->maximum:D

    cmpl-double v8, v2, v4

    if-ltz v8, :cond_1

    cmpl-double v8, v2, v6

    if-ltz v8, :cond_1

    .line 228
    iget v2, v1, Lcom/google/android/material/color/utilities/QuantizerWu$MaximizeResult;->cutLocation:I

    if-gez v2, :cond_0

    const/4 v0, 0x0

    .line 229
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 231
    :cond_0
    sget-object v2, Lcom/google/android/material/color/utilities/QuantizerWu$Direction;->RED:Lcom/google/android/material/color/utilities/QuantizerWu$Direction;

    goto :goto_0

    :cond_1
    cmpl-double v2, v4, v2

    if-ltz v2, :cond_2

    cmpl-double v2, v4, v6

    if-ltz v2, :cond_2

    .line 233
    sget-object v2, Lcom/google/android/material/color/utilities/QuantizerWu$Direction;->GREEN:Lcom/google/android/material/color/utilities/QuantizerWu$Direction;

    goto :goto_0

    .line 235
    :cond_2
    sget-object v2, Lcom/google/android/material/color/utilities/QuantizerWu$Direction;->BLUE:Lcom/google/android/material/color/utilities/QuantizerWu$Direction;

    .line 238
    :goto_0
    iget v3, v10, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    iput v3, v11, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    .line 239
    iget v3, v10, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    iput v3, v11, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    .line 240
    iget v3, v10, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    iput v3, v11, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    .line 242
    sget-object v3, Lcom/google/android/material/color/utilities/QuantizerWu$1;->$SwitchMap$com$google$android$material$color$utilities$QuantizerWu$Direction:[I

    invoke-virtual {v2}, Lcom/google/android/material/color/utilities/QuantizerWu$Direction;->ordinal()I

    move-result v2

    aget v2, v3, v2

    if-eq v2, v9, :cond_5

    const/4 v1, 0x2

    if-eq v2, v1, :cond_4

    const/4 v1, 0x3

    if-eq v2, v1, :cond_3

    goto :goto_1

    .line 256
    :cond_3
    iget v0, v0, Lcom/google/android/material/color/utilities/QuantizerWu$MaximizeResult;->cutLocation:I

    iput v0, v10, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    .line 257
    iget v0, v10, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    iput v0, v11, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    .line 258
    iget v0, v10, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    iput v0, v11, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    .line 259
    iget v0, v10, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    iput v0, v11, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    goto :goto_1

    .line 250
    :cond_4
    iget v0, v12, Lcom/google/android/material/color/utilities/QuantizerWu$MaximizeResult;->cutLocation:I

    iput v0, v10, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    .line 251
    iget v0, v10, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    iput v0, v11, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    .line 252
    iget v0, v10, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    iput v0, v11, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    .line 253
    iget v0, v10, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    iput v0, v11, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    goto :goto_1

    .line 244
    :cond_5
    iget v0, v1, Lcom/google/android/material/color/utilities/QuantizerWu$MaximizeResult;->cutLocation:I

    iput v0, v10, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    .line 245
    iget v0, v10, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    iput v0, v11, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    .line 246
    iget v0, v10, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    iput v0, v11, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    .line 247
    iget v0, v10, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    iput v0, v11, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    .line 263
    :goto_1
    iget v0, v10, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    iget v1, v10, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    sub-int/2addr v0, v1

    iget v1, v10, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    iget v2, v10, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    sub-int/2addr v1, v2

    mul-int/2addr v0, v1

    iget v1, v10, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    iget v2, v10, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    sub-int/2addr v1, v2

    mul-int/2addr v0, v1

    iput v0, v10, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->vol:I

    .line 264
    iget v0, v11, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    iget v1, v11, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    sub-int/2addr v0, v1

    iget v1, v11, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    iget v2, v11, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    sub-int/2addr v1, v2

    mul-int/2addr v0, v1

    iget v1, v11, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    iget v2, v11, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    sub-int/2addr v1, v2

    mul-int/2addr v0, v1

    iput v0, v11, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->vol:I

    .line 266
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method maximize(Lcom/google/android/material/color/utilities/QuantizerWu$Box;Lcom/google/android/material/color/utilities/QuantizerWu$Direction;IIIIII)Lcom/google/android/material/color/utilities/QuantizerWu$MaximizeResult;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/google/android/material/color/utilities/QuantizerWu;->momentsR:[I

    .line 278
    invoke-static {v1, v2, v3}, Lcom/google/android/material/color/utilities/QuantizerWu;->bottom(Lcom/google/android/material/color/utilities/QuantizerWu$Box;Lcom/google/android/material/color/utilities/QuantizerWu$Direction;[I)I

    move-result v3

    iget-object v4, v0, Lcom/google/android/material/color/utilities/QuantizerWu;->momentsG:[I

    .line 279
    invoke-static {v1, v2, v4}, Lcom/google/android/material/color/utilities/QuantizerWu;->bottom(Lcom/google/android/material/color/utilities/QuantizerWu$Box;Lcom/google/android/material/color/utilities/QuantizerWu$Direction;[I)I

    move-result v4

    iget-object v5, v0, Lcom/google/android/material/color/utilities/QuantizerWu;->momentsB:[I

    .line 280
    invoke-static {v1, v2, v5}, Lcom/google/android/material/color/utilities/QuantizerWu;->bottom(Lcom/google/android/material/color/utilities/QuantizerWu$Box;Lcom/google/android/material/color/utilities/QuantizerWu$Direction;[I)I

    move-result v5

    iget-object v6, v0, Lcom/google/android/material/color/utilities/QuantizerWu;->weights:[I

    .line 281
    invoke-static {v1, v2, v6}, Lcom/google/android/material/color/utilities/QuantizerWu;->bottom(Lcom/google/android/material/color/utilities/QuantizerWu$Box;Lcom/google/android/material/color/utilities/QuantizerWu$Direction;[I)I

    move-result v6

    const-wide/16 v7, 0x0

    const/4 v9, -0x1

    move/from16 v11, p4

    move v10, v9

    move-wide v8, v7

    move/from16 v7, p3

    :goto_0
    if-ge v7, v11, :cond_3

    iget-object v12, v0, Lcom/google/android/material/color/utilities/QuantizerWu;->momentsR:[I

    .line 291
    invoke-static {v1, v2, v7, v12}, Lcom/google/android/material/color/utilities/QuantizerWu;->top(Lcom/google/android/material/color/utilities/QuantizerWu$Box;Lcom/google/android/material/color/utilities/QuantizerWu$Direction;I[I)I

    move-result v12

    add-int/2addr v12, v3

    iget-object v13, v0, Lcom/google/android/material/color/utilities/QuantizerWu;->momentsG:[I

    .line 292
    invoke-static {v1, v2, v7, v13}, Lcom/google/android/material/color/utilities/QuantizerWu;->top(Lcom/google/android/material/color/utilities/QuantizerWu$Box;Lcom/google/android/material/color/utilities/QuantizerWu$Direction;I[I)I

    move-result v13

    add-int/2addr v13, v4

    iget-object v14, v0, Lcom/google/android/material/color/utilities/QuantizerWu;->momentsB:[I

    .line 293
    invoke-static {v1, v2, v7, v14}, Lcom/google/android/material/color/utilities/QuantizerWu;->top(Lcom/google/android/material/color/utilities/QuantizerWu$Box;Lcom/google/android/material/color/utilities/QuantizerWu$Direction;I[I)I

    move-result v14

    add-int/2addr v14, v5

    iget-object v15, v0, Lcom/google/android/material/color/utilities/QuantizerWu;->weights:[I

    .line 294
    invoke-static {v1, v2, v7, v15}, Lcom/google/android/material/color/utilities/QuantizerWu;->top(Lcom/google/android/material/color/utilities/QuantizerWu$Box;Lcom/google/android/material/color/utilities/QuantizerWu$Direction;I[I)I

    move-result v15

    add-int/2addr v15, v6

    if-nez v15, :cond_0

    move/from16 v16, v3

    goto :goto_1

    :cond_0
    mul-int v16, v12, v12

    mul-int v17, v13, v13

    add-int v16, v16, v17

    mul-int v17, v14, v14

    add-int v0, v16, v17

    int-to-double v0, v0

    move/from16 v16, v3

    int-to-double v2, v15

    div-double/2addr v0, v2

    sub-int v2, p5, v12

    sub-int v3, p6, v13

    sub-int v12, p7, v14

    sub-int v13, p8, v15

    if-nez v13, :cond_1

    goto :goto_1

    :cond_1
    mul-int/2addr v2, v2

    mul-int/2addr v3, v3

    add-int/2addr v2, v3

    mul-int/2addr v12, v12

    add-int/2addr v2, v12

    int-to-double v2, v2

    int-to-double v12, v13

    div-double/2addr v2, v12

    add-double/2addr v0, v2

    cmpl-double v2, v0, v8

    if-lez v2, :cond_2

    move-wide v8, v0

    move v10, v7

    :cond_2
    :goto_1
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v16

    goto :goto_0

    .line 320
    :cond_3
    new-instance v0, Lcom/google/android/material/color/utilities/QuantizerWu$MaximizeResult;

    invoke-direct {v0, v10, v8, v9}, Lcom/google/android/material/color/utilities/QuantizerWu$MaximizeResult;-><init>(ID)V

    return-object v0
.end method

.method public quantize([II)Lcom/google/android/material/color/utilities/QuantizerResult;
    .locals 1

    .line 55
    new-instance v0, Lcom/google/android/material/color/utilities/QuantizerMap;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/QuantizerMap;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/google/android/material/color/utilities/QuantizerMap;->quantize([II)Lcom/google/android/material/color/utilities/QuantizerResult;

    move-result-object p1

    .line 56
    iget-object p1, p1, Lcom/google/android/material/color/utilities/QuantizerResult;->colorToCount:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/google/android/material/color/utilities/QuantizerWu;->constructHistogram(Ljava/util/Map;)V

    .line 57
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/QuantizerWu;->createMoments()V

    .line 58
    invoke-virtual {p0, p2}, Lcom/google/android/material/color/utilities/QuantizerWu;->createBoxes(I)Lcom/google/android/material/color/utilities/QuantizerWu$CreateBoxesResult;

    move-result-object p1

    .line 59
    iget p1, p1, Lcom/google/android/material/color/utilities/QuantizerWu$CreateBoxesResult;->resultCount:I

    invoke-virtual {p0, p1}, Lcom/google/android/material/color/utilities/QuantizerWu;->createResult(I)Ljava/util/List;

    move-result-object p0

    .line 60
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 61
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 62
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 64
    :cond_0
    new-instance p0, Lcom/google/android/material/color/utilities/QuantizerResult;

    invoke-direct {p0, p1}, Lcom/google/android/material/color/utilities/QuantizerResult;-><init>(Ljava/util/Map;)V

    return-object p0
.end method

.method variance(Lcom/google/android/material/color/utilities/QuantizerWu$Box;)D
    .locals 9

    iget-object v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu;->momentsR:[I

    .line 193
    invoke-static {p1, v0}, Lcom/google/android/material/color/utilities/QuantizerWu;->volume(Lcom/google/android/material/color/utilities/QuantizerWu$Box;[I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu;->momentsG:[I

    .line 194
    invoke-static {p1, v1}, Lcom/google/android/material/color/utilities/QuantizerWu;->volume(Lcom/google/android/material/color/utilities/QuantizerWu$Box;[I)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/color/utilities/QuantizerWu;->momentsB:[I

    .line 195
    invoke-static {p1, v2}, Lcom/google/android/material/color/utilities/QuantizerWu;->volume(Lcom/google/android/material/color/utilities/QuantizerWu$Box;[I)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/material/color/utilities/QuantizerWu;->moments:[D

    .line 196
    iget v4, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    iget v5, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    iget v6, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    .line 197
    invoke-static {v4, v5, v6}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    move-result v4

    aget-wide v3, v3, v4

    iget-object v5, p0, Lcom/google/android/material/color/utilities/QuantizerWu;->moments:[D

    iget v6, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    iget v7, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    iget v8, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    .line 198
    invoke-static {v6, v7, v8}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    move-result v6

    aget-wide v5, v5, v6

    sub-double/2addr v3, v5

    iget-object v5, p0, Lcom/google/android/material/color/utilities/QuantizerWu;->moments:[D

    iget v6, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    iget v7, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    iget v8, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    .line 199
    invoke-static {v6, v7, v8}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    move-result v6

    aget-wide v5, v5, v6

    sub-double/2addr v3, v5

    iget-object v5, p0, Lcom/google/android/material/color/utilities/QuantizerWu;->moments:[D

    iget v6, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    iget v7, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    iget v8, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    .line 200
    invoke-static {v6, v7, v8}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    move-result v6

    aget-wide v5, v5, v6

    add-double/2addr v3, v5

    iget-object v5, p0, Lcom/google/android/material/color/utilities/QuantizerWu;->moments:[D

    iget v6, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    iget v7, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    iget v8, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    .line 201
    invoke-static {v6, v7, v8}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    move-result v6

    aget-wide v5, v5, v6

    sub-double/2addr v3, v5

    iget-object v5, p0, Lcom/google/android/material/color/utilities/QuantizerWu;->moments:[D

    iget v6, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    iget v7, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    iget v8, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    .line 202
    invoke-static {v6, v7, v8}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    move-result v6

    aget-wide v5, v5, v6

    add-double/2addr v3, v5

    iget-object v5, p0, Lcom/google/android/material/color/utilities/QuantizerWu;->moments:[D

    iget v6, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    iget v7, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    iget v8, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    .line 203
    invoke-static {v6, v7, v8}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    move-result v6

    aget-wide v5, v5, v6

    add-double/2addr v3, v5

    iget-object v5, p0, Lcom/google/android/material/color/utilities/QuantizerWu;->moments:[D

    iget v6, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    iget v7, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    iget v8, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    .line 204
    invoke-static {v6, v7, v8}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    move-result v6

    aget-wide v5, v5, v6

    sub-double/2addr v3, v5

    mul-int/2addr v0, v0

    mul-int/2addr v1, v1

    add-int/2addr v0, v1

    mul-int/2addr v2, v2

    add-int/2addr v0, v2

    iget-object p0, p0, Lcom/google/android/material/color/utilities/QuantizerWu;->weights:[I

    .line 207
    invoke-static {p1, p0}, Lcom/google/android/material/color/utilities/QuantizerWu;->volume(Lcom/google/android/material/color/utilities/QuantizerWu$Box;[I)I

    move-result p0

    int-to-double v0, v0

    int-to-double p0, p0

    div-double/2addr v0, p0

    sub-double/2addr v3, v0

    return-wide v3
.end method
