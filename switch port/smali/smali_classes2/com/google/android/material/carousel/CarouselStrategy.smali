.class public abstract Lcom/google/android/material/carousel/CarouselStrategy;
.super Ljava/lang/Object;
.source "CarouselStrategy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static doubleCounts([I)[I
    .locals 4

    .line 113
    array-length v0, p0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 115
    aget v3, p0, v2

    mul-int/lit8 v3, v3, 0x2

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method static getChildMaskPercentage(FFF)F
    .locals 0

    sub-float/2addr p0, p2

    sub-float/2addr p1, p2

    div-float/2addr p0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p1, p0

    return p1
.end method


# virtual methods
.method isContained()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method abstract onFirstChildMeasuredWithMargins(Lcom/google/android/material/carousel/Carousel;Landroid/view/View;)Lcom/google/android/material/carousel/KeylineState;
.end method

.method shouldRefreshKeylineState(Lcom/google/android/material/carousel/Carousel;I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
