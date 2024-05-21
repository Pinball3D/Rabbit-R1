.class final Lcom/google/android/material/sidesheet/RightSheetDelegate;
.super Lcom/google/android/material/sidesheet/SheetDelegate;
.source "RightSheetDelegate.java"


# instance fields
.field final sheetBehavior:Lcom/google/android/material/sidesheet/SideSheetBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/sidesheet/SideSheetBehavior<",
            "+",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/material/sidesheet/SideSheetBehavior;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/sidesheet/SideSheetBehavior<",
            "+",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Lcom/google/android/material/sidesheet/SheetDelegate;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/sidesheet/RightSheetDelegate;->sheetBehavior:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    return-void
.end method


# virtual methods
.method calculateInnerMargin(Landroid/view/ViewGroup$MarginLayoutParams;)I
    .locals 0

    .line 124
    iget p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    return p0
.end method

.method calculateSlideOffset(I)F
    .locals 1

    .line 88
    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/RightSheetDelegate;->getHiddenOffset()I

    move-result v0

    int-to-float v0, v0

    .line 89
    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/RightSheetDelegate;->getExpandedOffset()I

    move-result p0

    int-to-float p0, p0

    sub-float p0, v0, p0

    int-to-float p1, p1

    sub-float/2addr v0, p1

    div-float/2addr v0, p0

    return v0
.end method

.method getCoplanarSiblingAdjacentMargin(Landroid/view/ViewGroup$MarginLayoutParams;)I
    .locals 0

    .line 114
    iget p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    return p0
.end method

.method getExpandedOffset()I
    .locals 2

    .line 58
    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/RightSheetDelegate;->getHiddenOffset()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/sidesheet/RightSheetDelegate;->sheetBehavior:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    invoke-virtual {v1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->getChildWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object p0, p0, Lcom/google/android/material/sidesheet/RightSheetDelegate;->sheetBehavior:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->getInnerMargin()I

    move-result p0

    sub-int/2addr v0, p0

    const/4 p0, 0x0

    .line 57
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method getHiddenOffset()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/sidesheet/RightSheetDelegate;->sheetBehavior:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    .line 50
    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->getParentWidth()I

    move-result p0

    return p0
.end method

.method getMaxViewPositionHorizontal()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/sidesheet/RightSheetDelegate;->sheetBehavior:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    .line 134
    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->getParentWidth()I

    move-result p0

    return p0
.end method

.method getMinViewPositionHorizontal()I
    .locals 0

    .line 129
    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/RightSheetDelegate;->getExpandedOffset()I

    move-result p0

    return p0
.end method

.method getOuterEdge(Landroid/view/View;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ">(TV;)I"
        }
    .end annotation

    .line 83
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    iget-object p0, p0, Lcom/google/android/material/sidesheet/RightSheetDelegate;->sheetBehavior:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->getInnerMargin()I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method

.method public getParentInnerEdge(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)I
    .locals 0

    .line 119
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getRight()I

    move-result p0

    return p0
.end method

.method getSheetEdge()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method isExpandingOutwards(F)Z
    .locals 0

    const/4 p0, 0x0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isReleasedCloseToInnerEdge(Landroid/view/View;)Z
    .locals 1

    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/RightSheetDelegate;->getHiddenOffset()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/RightSheetDelegate;->getExpandedOffset()I

    move-result p0

    add-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x2

    if-le p1, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isSwipeSignificant(FF)Z
    .locals 0

    .line 71
    invoke-static {p1, p2}, Lcom/google/android/material/sidesheet/SheetUtils;->isSwipeMostlyHorizontal(FF)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 72
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object p0, p0, Lcom/google/android/material/sidesheet/RightSheetDelegate;->sheetBehavior:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->getSignificantVelocityThreshold()I

    move-result p0

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method shouldHide(Landroid/view/View;F)Z
    .locals 1

    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p1

    int-to-float p1, p1

    iget-object v0, p0, Lcom/google/android/material/sidesheet/RightSheetDelegate;->sheetBehavior:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    invoke-virtual {v0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->getHideFriction()F

    move-result v0

    mul-float/2addr p2, v0

    add-float/2addr p1, p2

    .line 78
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object p0, p0, Lcom/google/android/material/sidesheet/RightSheetDelegate;->sheetBehavior:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->getHideThreshold()F

    move-result p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method updateCoplanarSiblingAdjacentMargin(Landroid/view/ViewGroup$MarginLayoutParams;I)V
    .locals 0

    .line 109
    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    return-void
.end method

.method updateCoplanarSiblingLayoutParams(Landroid/view/ViewGroup$MarginLayoutParams;II)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/sidesheet/RightSheetDelegate;->sheetBehavior:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    .line 97
    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->getParentWidth()I

    move-result p0

    if-gt p2, p0, :cond_0

    sub-int/2addr p0, p2

    .line 102
    iput p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :cond_0
    return-void
.end method
