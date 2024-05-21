.class public Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;
.super Lcom/google/android/material/navigation/NavigationBarMenuView;
.source "BottomNavigationMenuView.java"


# instance fields
.field private final activeItemMaxWidth:I

.field private final activeItemMinWidth:I

.field private final inactiveItemMaxWidth:I

.field private final inactiveItemMinWidth:I

.field private itemHorizontalTranslationEnabled:Z

.field private final tempChildWidths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 50
    invoke-direct {p0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;-><init>(Landroid/content/Context;)V

    .line 47
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->tempChildWidths:Ljava/util/List;

    .line 52
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x11

    .line 55
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 56
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 59
    sget v0, Lcom/google/android/material/R$dimen;->design_bottom_navigation_item_max_width:I

    .line 60
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->inactiveItemMaxWidth:I

    .line 61
    sget v0, Lcom/google/android/material/R$dimen;->design_bottom_navigation_item_min_width:I

    .line 62
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->inactiveItemMinWidth:I

    .line 63
    sget v0, Lcom/google/android/material/R$dimen;->design_bottom_navigation_active_item_max_width:I

    .line 64
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->activeItemMaxWidth:I

    .line 65
    sget v0, Lcom/google/android/material/R$dimen;->design_bottom_navigation_active_item_min_width:I

    .line 66
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->activeItemMinWidth:I

    return-void
.end method


# virtual methods
.method protected createNavigationBarItemView(Landroid/content/Context;)Lcom/google/android/material/navigation/NavigationBarItemView;
    .locals 0

    .line 196
    new-instance p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    invoke-direct {p0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public isItemHorizontalTranslationEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemHorizontalTranslationEnabled:Z

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .line 152
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getChildCount()I

    move-result p1

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    const/4 p2, 0x0

    move p3, p2

    move v0, p3

    :goto_0
    if-ge p3, p1, :cond_2

    .line 157
    invoke-virtual {p0, p3}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 158
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    goto :goto_2

    .line 161
    :cond_0
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    sub-int v2, p4, v0

    .line 162
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int v3, v2, v3

    invoke-virtual {v1, v3, p2, v2, p5}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 164
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v0, p2, v2, p5}, Landroid/view/View;->layout(IIII)V

    .line 166
    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v0, v1

    :goto_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11

    .line 72
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v0

    .line 73
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 75
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 77
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getChildCount()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->tempChildWidths:Ljava/util/List;

    .line 78
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 80
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v2, 0x40000000    # 2.0f

    .line 81
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 83
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getLabelVisibilityMode()I

    move-result v4

    invoke-virtual {p0, v4, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->isShifting(II)Z

    move-result v4

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v4, :cond_6

    .line 84
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->isItemHorizontalTranslationEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 85
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getSelectedItemPosition()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget v8, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->activeItemMinWidth:I

    .line 87
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-eq v9, v5, :cond_0

    iget v9, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->activeItemMaxWidth:I

    const/high16 v10, -0x80000000

    .line 91
    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 90
    invoke-virtual {v4, v9, v3}, Landroid/view/View;->measure(II)V

    .line 92
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 94
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v5, :cond_1

    move v4, v7

    goto :goto_0

    :cond_1
    move v4, v6

    :goto_0
    sub-int/2addr v0, v4

    iget v4, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->inactiveItemMinWidth:I

    mul-int/2addr v4, v0

    sub-int v4, p1, v4

    iget v9, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->activeItemMaxWidth:I

    .line 97
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int/2addr p1, v4

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move v7, v0

    .line 99
    :goto_1
    div-int v7, p1, v7

    iget v8, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->inactiveItemMaxWidth:I

    .line 100
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    mul-int/2addr v0, v7

    sub-int/2addr p1, v0

    move v0, v6

    :goto_2
    if-ge v0, v1, :cond_a

    .line 105
    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v5, :cond_4

    .line 106
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getSelectedItemPosition()I

    move-result v8

    if-ne v0, v8, :cond_3

    move v8, v4

    goto :goto_3

    :cond_3
    move v8, v7

    :goto_3
    if-lez p1, :cond_5

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 p1, p1, -0x1

    goto :goto_4

    :cond_4
    move v8, v6

    :cond_5
    :goto_4
    iget-object v9, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->tempChildWidths:Ljava/util/List;

    .line 115
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    if-nez v0, :cond_7

    goto :goto_5

    :cond_7
    move v7, v0

    .line 118
    :goto_5
    div-int v4, p1, v7

    iget v7, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->activeItemMaxWidth:I

    .line 119
    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    mul-int/2addr v0, v4

    sub-int/2addr p1, v0

    move v0, v6

    :goto_6
    if-ge v0, v1, :cond_a

    .line 123
    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v5, :cond_9

    if-lez p1, :cond_8

    add-int/lit8 v7, v4, 0x1

    add-int/lit8 p1, p1, -0x1

    goto :goto_7

    :cond_8
    move v7, v4

    goto :goto_7

    :cond_9
    move v7, v6

    :goto_7
    iget-object v8, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->tempChildWidths:Ljava/util/List;

    .line 130
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_a
    move p1, v6

    :goto_8
    if-ge v6, v1, :cond_c

    .line 136
    invoke-virtual {p0, v6}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 137
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-ne v4, v5, :cond_b

    goto :goto_9

    :cond_b
    iget-object v4, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->tempChildWidths:Ljava/util/List;

    .line 141
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 140
    invoke-virtual {v0, v4, v3}, Landroid/view/View;->measure(II)V

    .line 142
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 143
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    iput v7, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 144
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr p1, v0

    :goto_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 147
    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setItemHorizontalTranslationEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemHorizontalTranslationEnabled:Z

    return-void
.end method
