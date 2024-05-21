.class abstract Lcom/google/android/material/sidesheet/SheetDelegate;
.super Ljava/lang/Object;
.source "SheetDelegate.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract calculateInnerMargin(Landroid/view/ViewGroup$MarginLayoutParams;)I
.end method

.method abstract calculateSlideOffset(I)F
.end method

.method abstract getCoplanarSiblingAdjacentMargin(Landroid/view/ViewGroup$MarginLayoutParams;)I
.end method

.method abstract getExpandedOffset()I
.end method

.method abstract getHiddenOffset()I
.end method

.method abstract getMaxViewPositionHorizontal()I
.end method

.method abstract getMinViewPositionHorizontal()I
.end method

.method abstract getOuterEdge(Landroid/view/View;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ">(TV;)I"
        }
    .end annotation
.end method

.method abstract getParentInnerEdge(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)I
.end method

.method abstract getSheetEdge()I
.end method

.method abstract isExpandingOutwards(F)Z
.end method

.method abstract isReleasedCloseToInnerEdge(Landroid/view/View;)Z
.end method

.method abstract isSwipeSignificant(FF)Z
.end method

.method abstract shouldHide(Landroid/view/View;F)Z
.end method

.method abstract updateCoplanarSiblingAdjacentMargin(Landroid/view/ViewGroup$MarginLayoutParams;I)V
.end method

.method abstract updateCoplanarSiblingLayoutParams(Landroid/view/ViewGroup$MarginLayoutParams;II)V
.end method
