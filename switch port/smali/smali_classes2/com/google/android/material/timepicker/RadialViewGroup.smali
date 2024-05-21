.class Lcom/google/android/material/timepicker/RadialViewGroup;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "RadialViewGroup.java"


# static fields
.field static final LEVEL_1:I = 0x1

.field static final LEVEL_2:I = 0x2

.field static final LEVEL_RADIUS_RATIO:F = 0.66f

.field private static final SKIP_TAG:Ljava/lang/String; = "skip"


# instance fields
.field private background:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field private radius:I

.field private final updateLayoutParametersRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/timepicker/RadialViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/timepicker/RadialViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 81
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$layout;->material_radial_view_group:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 83
    invoke-direct {p0}, Lcom/google/android/material/timepicker/RadialViewGroup;->createBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 85
    sget-object v0, Lcom/google/android/material/R$styleable;->RadialViewGroup:[I

    const/4 v1, 0x0

    .line 86
    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 87
    sget p2, Lcom/google/android/material/R$styleable;->RadialViewGroup_materialCircleRadius:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/timepicker/RadialViewGroup;->radius:I

    .line 88
    new-instance p2, Lcom/google/android/material/timepicker/RadialViewGroup$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/google/android/material/timepicker/RadialViewGroup$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/timepicker/RadialViewGroup;)V

    iput-object p2, p0, Lcom/google/android/material/timepicker/RadialViewGroup;->updateLayoutParametersRunnable:Ljava/lang/Runnable;

    .line 89
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private addConstraints(Ljava/util/List;Landroidx/constraintlayout/widget/ConstraintSet;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroidx/constraintlayout/widget/ConstraintSet;",
            "I)V"
        }
    .end annotation

    .line 166
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 167
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lcom/google/android/material/R$id;->circle_center:I

    invoke-virtual {p2, v1, v2, p3, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainCircle(IIIF)V

    .line 168
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x43b40000    # 360.0f

    div-float/2addr v2, v1

    add-float/2addr v0, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method private createBackground()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 93
    new-instance v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/timepicker/RadialViewGroup;->background:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 94
    new-instance v1, Lcom/google/android/material/shape/RelativeCornerSize;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {v1, v2}, Lcom/google/android/material/shape/RelativeCornerSize;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setCornerSize(Lcom/google/android/material/shape/CornerSize;)V

    iget-object v0, p0, Lcom/google/android/material/timepicker/RadialViewGroup;->background:Lcom/google/android/material/shape/MaterialShapeDrawable;

    const/4 v1, -0x1

    .line 95
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    iget-object p0, p0, Lcom/google/android/material/timepicker/RadialViewGroup;->background:Lcom/google/android/material/shape/MaterialShapeDrawable;

    return-object p0
.end method

.method private static shouldSkipView(Landroid/view/View;)Z
    .locals 1

    const-string v0, "skip"

    .line 188
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private updateLayoutParamsAsync()V
    .locals 2

    .line 123
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/RadialViewGroup;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/material/timepicker/RadialViewGroup;->updateLayoutParametersRunnable:Ljava/lang/Runnable;

    .line 125
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/google/android/material/timepicker/RadialViewGroup;->updateLayoutParametersRunnable:Ljava/lang/Runnable;

    .line 126
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 107
    invoke-super {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 108
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_0

    .line 109
    invoke-static {}, Landroidx/core/view/ViewCompat;->generateViewId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setId(I)V

    .line 111
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/timepicker/RadialViewGroup;->updateLayoutParamsAsync()V

    return-void
.end method

.method getLeveledRadius(I)I
    .locals 1

    const/4 v0, 0x2

    iget p0, p0, Lcom/google/android/material/timepicker/RadialViewGroup;->radius:I

    if-ne p1, v0, :cond_0

    int-to-float p0, p0

    const p1, 0x3f28f5c3    # 0.66f

    mul-float/2addr p0, p1

    .line 184
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    :cond_0
    return p0
.end method

.method public getRadius()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/timepicker/RadialViewGroup;->radius:I

    return p0
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 132
    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->onFinishInflate()V

    .line 133
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/RadialViewGroup;->updateLayoutParams()V

    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 0

    .line 116
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewRemoved(Landroid/view/View;)V

    .line 118
    invoke-direct {p0}, Lcom/google/android/material/timepicker/RadialViewGroup;->updateLayoutParamsAsync()V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/timepicker/RadialViewGroup;->background:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 102
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setRadius(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/timepicker/RadialViewGroup;->radius:I

    .line 174
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/RadialViewGroup;->updateLayoutParams()V

    return-void
.end method

.method protected updateLayoutParams()V
    .locals 6

    .line 137
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 138
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 139
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    .line 140
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/RadialViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 141
    invoke-virtual {p0, v2}, Lcom/google/android/material/timepicker/RadialViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 142
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v4

    sget v5, Lcom/google/android/material/R$id;->circle_center:I

    if-eq v4, v5, :cond_3

    invoke-static {v3}, Lcom/google/android/material/timepicker/RadialViewGroup;->shouldSkipView(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 146
    :cond_0
    sget v4, Lcom/google/android/material/R$id;->material_clock_level:I

    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-nez v4, :cond_1

    const/4 v4, 0x1

    .line 148
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 150
    :cond_1
    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 151
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_2
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 156
    :cond_4
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 157
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/material/timepicker/RadialViewGroup;->getLeveledRadius(I)I

    move-result v2

    invoke-direct {p0, v3, v0, v2}, Lcom/google/android/material/timepicker/RadialViewGroup;->addConstraints(Ljava/util/List;Landroidx/constraintlayout/widget/ConstraintSet;I)V

    goto :goto_2

    .line 160
    :cond_5
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method
