.class final Lcom/google/android/material/carousel/KeylineState;
.super Ljava/lang/Object;
.source "KeylineState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/carousel/KeylineState$Keyline;,
        Lcom/google/android/material/carousel/KeylineState$Builder;
    }
.end annotation


# instance fields
.field private final firstFocalKeylineIndex:I

.field private final itemSize:F

.field private final keylines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/carousel/KeylineState$Keyline;",
            ">;"
        }
    .end annotation
.end field

.field private final lastFocalKeylineIndex:I


# direct methods
.method private constructor <init>(FLjava/util/List;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/util/List<",
            "Lcom/google/android/material/carousel/KeylineState$Keyline;",
            ">;II)V"
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/material/carousel/KeylineState;->itemSize:F

    .line 65
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/carousel/KeylineState;->keylines:Ljava/util/List;

    iput p3, p0, Lcom/google/android/material/carousel/KeylineState;->firstFocalKeylineIndex:I

    iput p4, p0, Lcom/google/android/material/carousel/KeylineState;->lastFocalKeylineIndex:I

    return-void
.end method

.method synthetic constructor <init>(FLjava/util/List;IILcom/google/android/material/carousel/KeylineState$1;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/material/carousel/KeylineState;-><init>(FLjava/util/List;II)V

    return-void
.end method

.method static lerp(Lcom/google/android/material/carousel/KeylineState;Lcom/google/android/material/carousel/KeylineState;F)Lcom/google/android/material/carousel/KeylineState;
    .locals 6

    .line 152
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 156
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v0

    .line 157
    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v1

    .line 158
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 163
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 164
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 165
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/carousel/KeylineState$Keyline;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/carousel/KeylineState$Keyline;

    invoke-static {v4, v5, p2}, Lcom/google/android/material/carousel/KeylineState$Keyline;->lerp(Lcom/google/android/material/carousel/KeylineState$Keyline;Lcom/google/android/material/carousel/KeylineState$Keyline;F)Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 170
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeylineIndex()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeylineIndex()I

    move-result v1

    .line 169
    invoke-static {v0, v1, p2}, Lcom/google/android/material/animation/AnimationUtils;->lerp(IIF)I

    move-result v0

    .line 173
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getLastFocalKeylineIndex()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getLastFocalKeylineIndex()I

    move-result p1

    .line 172
    invoke-static {v1, p1, p2}, Lcom/google/android/material/animation/AnimationUtils;->lerp(IIF)I

    move-result p1

    .line 175
    new-instance p2, Lcom/google/android/material/carousel/KeylineState;

    .line 176
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    move-result p0

    invoke-direct {p2, p0, v2, v0, p1}, Lcom/google/android/material/carousel/KeylineState;-><init>(FLjava/util/List;II)V

    return-object p2

    .line 159
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Keylines being linearly interpolated must have the same number of keylines."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 153
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Keylines being linearly interpolated must have the same item size."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static reverse(Lcom/google/android/material/carousel/KeylineState;F)Lcom/google/android/material/carousel/KeylineState;
    .locals 11

    .line 191
    new-instance v6, Lcom/google/android/material/carousel/KeylineState$Builder;

    .line 192
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    move-result v0

    invoke-direct {v6, v0, p1}, Lcom/google/android/material/carousel/KeylineState$Builder;-><init>(FF)V

    .line 198
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getLastKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v0

    iget v0, v0, Lcom/google/android/material/carousel/KeylineState$Keyline;->locOffset:F

    sub-float/2addr p1, v0

    .line 199
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getLastKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v0

    iget v0, v0, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v0, v7

    sub-float/2addr p1, v0

    .line 200
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v8, 0x1

    sub-int/2addr v0, v8

    move v9, v0

    :goto_0
    if-ltz v9, :cond_1

    .line 201
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 202
    iget v0, v10, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    div-float/2addr v0, v7

    add-float v1, p1, v0

    .line 204
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeylineIndex()I

    move-result v0

    if-lt v9, v0, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getLastFocalKeylineIndex()I

    move-result v0

    if-gt v9, v0, :cond_0

    move v4, v8

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    move v4, v0

    .line 206
    :goto_1
    iget v2, v10, Lcom/google/android/material/carousel/KeylineState$Keyline;->mask:F

    iget v3, v10, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    iget-boolean v5, v10, Lcom/google/android/material/carousel/KeylineState$Keyline;->isAnchor:Z

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/material/carousel/KeylineState$Builder;->addKeyline(FFFZZ)Lcom/google/android/material/carousel/KeylineState$Builder;

    .line 207
    iget v0, v10, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    add-float/2addr p1, v0

    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    .line 210
    :cond_1
    invoke-virtual {v6}, Lcom/google/android/material/carousel/KeylineState$Builder;->build()Lcom/google/android/material/carousel/KeylineState;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method getFirstFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/carousel/KeylineState;->keylines:Ljava/util/List;

    iget p0, p0, Lcom/google/android/material/carousel/KeylineState;->firstFocalKeylineIndex:I

    .line 86
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/carousel/KeylineState$Keyline;

    return-object p0
.end method

.method getFirstFocalKeylineIndex()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/carousel/KeylineState;->firstFocalKeylineIndex:I

    return p0
.end method

.method getFirstKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;
    .locals 1

    iget-object p0, p0, Lcom/google/android/material/carousel/KeylineState;->keylines:Ljava/util/List;

    const/4 v0, 0x0

    .line 111
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/carousel/KeylineState$Keyline;

    return-object p0
.end method

.method getFirstNonAnchorKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/material/carousel/KeylineState;->keylines:Ljava/util/List;

    .line 122
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/material/carousel/KeylineState;->keylines:Ljava/util/List;

    .line 123
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 124
    iget-boolean v2, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->isAnchor:Z

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method getFocalKeylines()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/material/carousel/KeylineState$Keyline;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/carousel/KeylineState;->keylines:Ljava/util/List;

    iget v1, p0, Lcom/google/android/material/carousel/KeylineState;->firstFocalKeylineIndex:I

    iget p0, p0, Lcom/google/android/material/carousel/KeylineState;->lastFocalKeylineIndex:I

    add-int/lit8 p0, p0, 0x1

    .line 106
    invoke-interface {v0, v1, p0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method getItemSize()F
    .locals 0

    iget p0, p0, Lcom/google/android/material/carousel/KeylineState;->itemSize:F

    return p0
.end method

.method getKeylines()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/material/carousel/KeylineState$Keyline;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/carousel/KeylineState;->keylines:Ljava/util/List;

    return-object p0
.end method

.method getLastFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/carousel/KeylineState;->keylines:Ljava/util/List;

    iget p0, p0, Lcom/google/android/material/carousel/KeylineState;->lastFocalKeylineIndex:I

    .line 96
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/carousel/KeylineState$Keyline;

    return-object p0
.end method

.method getLastFocalKeylineIndex()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/carousel/KeylineState;->lastFocalKeylineIndex:I

    return p0
.end method

.method getLastKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;
    .locals 1

    iget-object p0, p0, Lcom/google/android/material/carousel/KeylineState;->keylines:Ljava/util/List;

    .line 116
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/carousel/KeylineState$Keyline;

    return-object p0
.end method

.method getLastNonAnchorKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/carousel/KeylineState;->keylines:Ljava/util/List;

    .line 134
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/material/carousel/KeylineState;->keylines:Ljava/util/List;

    .line 135
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 136
    iget-boolean v2, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->isAnchor:Z

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
