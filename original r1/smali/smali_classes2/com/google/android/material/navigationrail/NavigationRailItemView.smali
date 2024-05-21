.class final Lcom/google/android/material/navigationrail/NavigationRailItemView;
.super Lcom/google/android/material/navigation/NavigationBarItemView;
.source "NavigationRailItemView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected getItemDefaultMarginResId()I
    .locals 0

    .line 61
    sget p0, Lcom/google/android/material/R$dimen;->mtrl_navigation_rail_icon_margin:I

    return p0
.end method

.method protected getItemLayoutResId()I
    .locals 0

    .line 55
    sget p0, Lcom/google/android/material/R$layout;->mtrl_navigation_rail_item:I

    return p0
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 40
    invoke-super {p0, p1, p2}, Lcom/google/android/material/navigation/NavigationBarItemView;->onMeasure(II)V

    .line 42
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    if-nez p1, :cond_0

    .line 43
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 44
    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailItemView;->getMeasuredHeight()I

    move-result p2

    .line 45
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 48
    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailItemView;->getMeasuredWidthAndState()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/google/android/material/navigationrail/NavigationRailItemView;->setMeasuredDimension(II)V

    :cond_0
    return-void
.end method
