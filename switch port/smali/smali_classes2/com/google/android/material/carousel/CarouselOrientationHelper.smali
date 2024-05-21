.class abstract Lcom/google/android/material/carousel/CarouselOrientationHelper;
.super Ljava/lang/Object;
.source "CarouselOrientationHelper.java"


# instance fields
.field final orientation:I


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/material/carousel/CarouselOrientationHelper;->orientation:I

    return-void
.end method

.method synthetic constructor <init>(ILcom/google/android/material/carousel/CarouselOrientationHelper$1;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/google/android/material/carousel/CarouselOrientationHelper;-><init>(I)V

    return-void
.end method

.method private static createHorizontalHelper(Lcom/google/android/material/carousel/CarouselLayoutManager;)Lcom/google/android/material/carousel/CarouselOrientationHelper;
    .locals 2

    .line 248
    new-instance v0, Lcom/google/android/material/carousel/CarouselOrientationHelper$2;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/google/android/material/carousel/CarouselOrientationHelper$2;-><init>(ILcom/google/android/material/carousel/CarouselLayoutManager;)V

    return-object v0
.end method

.method static createOrientationHelper(Lcom/google/android/material/carousel/CarouselLayoutManager;I)Lcom/google/android/material/carousel/CarouselOrientationHelper;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 56
    invoke-static {p0}, Lcom/google/android/material/carousel/CarouselOrientationHelper;->createVerticalHelper(Lcom/google/android/material/carousel/CarouselLayoutManager;)Lcom/google/android/material/carousel/CarouselOrientationHelper;

    move-result-object p0

    return-object p0

    .line 59
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid orientation"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 54
    :cond_1
    invoke-static {p0}, Lcom/google/android/material/carousel/CarouselOrientationHelper;->createHorizontalHelper(Lcom/google/android/material/carousel/CarouselLayoutManager;)Lcom/google/android/material/carousel/CarouselOrientationHelper;

    move-result-object p0

    return-object p0
.end method

.method private static createVerticalHelper(Lcom/google/android/material/carousel/CarouselLayoutManager;)Lcom/google/android/material/carousel/CarouselOrientationHelper;
    .locals 2

    .line 153
    new-instance v0, Lcom/google/android/material/carousel/CarouselOrientationHelper$1;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/google/android/material/carousel/CarouselOrientationHelper$1;-><init>(ILcom/google/android/material/carousel/CarouselLayoutManager;)V

    return-object v0
.end method


# virtual methods
.method abstract containMaskWithinBounds(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
.end method

.method abstract getMaskMargins(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)F
.end method

.method abstract getMaskRect(FFFF)Landroid/graphics/RectF;
.end method

.method abstract getParentBottom()I
.end method

.method abstract getParentEnd()I
.end method

.method abstract getParentLeft()I
.end method

.method abstract getParentRight()I
.end method

.method abstract getParentStart()I
.end method

.method abstract getParentTop()I
.end method

.method abstract layoutDecoratedWithMargins(Landroid/view/View;II)V
.end method

.method abstract moveMaskOnEdgeOutsideBounds(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
.end method

.method abstract offsetChild(Landroid/view/View;Landroid/graphics/Rect;FF)V
.end method
