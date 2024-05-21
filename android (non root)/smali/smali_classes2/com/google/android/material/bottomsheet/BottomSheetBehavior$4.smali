.class Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;
.super Ljava/lang/Object;
.source "BottomSheetBehavior.java"

# interfaces
.implements Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setWindowInsetsListener(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

.field final synthetic val$shouldHandleGestureInsets:Z


# direct methods
.method constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iput-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->val$shouldHandleGestureInsets:Z

    .line 1738
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;Lcom/google/android/material/internal/ViewUtils$RelativePadding;)Landroidx/core/view/WindowInsetsCompat;
    .locals 10

    .line 1743
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    .line 1745
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->mandatorySystemGestures()I

    move-result v1

    invoke-virtual {p2, v1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 1747
    iget v3, v0, Landroidx/core/graphics/Insets;->top:I

    invoke-static {v2, v3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$302(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;I)I

    .line 1749
    invoke-static {p1}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    .line 1751
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    .line 1752
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    .line 1753
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    iget-object v6, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 1755
    invoke-static {v6}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$400(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 1758
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v6

    invoke-static {v3, v6}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$502(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;I)I

    .line 1759
    iget v3, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->bottom:I

    iget-object v6, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-static {v6}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$500(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)I

    move-result v6

    add-int/2addr v3, v6

    :cond_0
    iget-object v6, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 1762
    invoke-static {v6}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$600(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz v2, :cond_1

    .line 1763
    iget v4, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->end:I

    goto :goto_0

    :cond_1
    iget v4, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->start:I

    .line 1764
    :goto_0
    iget v6, v0, Landroidx/core/graphics/Insets;->left:I

    add-int/2addr v4, v6

    :cond_2
    iget-object v6, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 1767
    invoke-static {v6}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$700(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z

    move-result v6

    if-eqz v6, :cond_4

    if-eqz v2, :cond_3

    .line 1768
    iget p3, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->start:I

    goto :goto_1

    :cond_3
    iget p3, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->end:I

    .line 1769
    :goto_1
    iget v2, v0, Landroidx/core/graphics/Insets;->right:I

    add-int v5, p3, v2

    .line 1772
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 1775
    invoke-static {v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$800(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z

    move-result v2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_5

    iget v2, p3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v8, v0, Landroidx/core/graphics/Insets;->left:I

    if-eq v2, v8, :cond_5

    .line 1776
    iget v2, v0, Landroidx/core/graphics/Insets;->left:I

    iput v2, p3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move v2, v6

    goto :goto_2

    :cond_5
    move v2, v7

    :goto_2
    iget-object v8, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 1780
    invoke-static {v8}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$900(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget v8, p3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v9, v0, Landroidx/core/graphics/Insets;->right:I

    if-eq v8, v9, :cond_6

    .line 1781
    iget v2, v0, Landroidx/core/graphics/Insets;->right:I

    iput v2, p3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_3

    :cond_6
    move v6, v2

    :goto_3
    iget-object v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 1785
    invoke-static {v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$1000(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget v2, p3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v8, v0, Landroidx/core/graphics/Insets;->top:I

    if-eq v2, v8, :cond_7

    .line 1786
    iget v0, v0, Landroidx/core/graphics/Insets;->top:I

    iput v0, p3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_4

    :cond_7
    if-eqz v6, :cond_8

    .line 1791
    :goto_4
    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1793
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    invoke-virtual {p1, v4, p3, v5, v3}, Landroid/view/View;->setPadding(IIII)V

    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->val$shouldHandleGestureInsets:Z

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 1796
    iget p3, v1, Landroidx/core/graphics/Insets;->bottom:I

    invoke-static {p1, p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$1102(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;I)I

    :cond_9
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 1801
    invoke-static {p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$400(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z

    move-result p1

    if-nez p1, :cond_a

    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->val$shouldHandleGestureInsets:Z

    if-eqz p1, :cond_b

    :cond_a
    iget-object p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 1802
    invoke-static {p0, v7}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$1200(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Z)V

    :cond_b
    return-object p2
.end method
