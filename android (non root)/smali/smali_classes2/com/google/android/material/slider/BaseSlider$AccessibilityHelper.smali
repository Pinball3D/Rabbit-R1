.class Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;
.super Landroidx/customview/widget/ExploreByTouchHelper;
.source "BaseSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/slider/BaseSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccessibilityHelper"
.end annotation


# instance fields
.field private final slider:Lcom/google/android/material/slider/BaseSlider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/slider/BaseSlider<",
            "***>;"
        }
    .end annotation
.end field

.field final virtualViewBounds:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/google/android/material/slider/BaseSlider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/slider/BaseSlider<",
            "***>;)V"
        }
    .end annotation

    .line 2778
    invoke-direct {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    .line 2775
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->virtualViewBounds:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    return-void
.end method

.method private startOrEndDescription(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    .line 2843
    invoke-virtual {v0}, Lcom/google/android/material/slider/BaseSlider;->getValues()Ljava/util/List;

    move-result-object v0

    .line 2844
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    .line 2845
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/google/android/material/R$string;->material_slider_range_end:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    .line 2849
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/google/android/material/R$string;->material_slider_range_start:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method protected getVirtualViewAt(FF)I
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    .line 2784
    invoke-virtual {v1}, Lcom/google/android/material/slider/BaseSlider;->getValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->virtualViewBounds:Landroid/graphics/Rect;

    .line 2785
    invoke-virtual {v1, v0, v2}, Lcom/google/android/material/slider/BaseSlider;->updateBoundsForVirtualViewId(ILandroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->virtualViewBounds:Landroid/graphics/Rect;

    float-to-int v2, p1

    float-to-int v3, p2

    .line 2786
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method protected getVisibleVirtualViews(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    .line 2796
    invoke-virtual {v1}, Lcom/google/android/material/slider/BaseSlider;->getValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2797
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    .line 2858
    invoke-virtual {v0}, Lcom/google/android/material/slider/BaseSlider;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x1000

    const/4 v2, 0x1

    const/16 v3, 0x2000

    if-eq p2, v0, :cond_4

    if-eq p2, v3, :cond_4

    const v0, 0x102003d

    if-eq p2, v0, :cond_1

    return v1

    :cond_1
    if-eqz p3, :cond_3

    const-string p2, "android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE"

    .line 2866
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 2871
    :cond_2
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p2

    iget-object p3, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    .line 2872
    invoke-static {p3, p1, p2}, Lcom/google/android/material/slider/BaseSlider;->access$500(Lcom/google/android/material/slider/BaseSlider;IF)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    .line 2873
    invoke-static {p2}, Lcom/google/android/material/slider/BaseSlider;->access$600(Lcom/google/android/material/slider/BaseSlider;)V

    iget-object p2, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    .line 2874
    invoke-virtual {p2}, Lcom/google/android/material/slider/BaseSlider;->postInvalidate()V

    .line 2875
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->invalidateVirtualView(I)V

    return v2

    :cond_3
    :goto_0
    return v1

    :cond_4
    iget-object p3, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    const/16 v0, 0x14

    .line 2883
    invoke-static {p3, v0}, Lcom/google/android/material/slider/BaseSlider;->access$700(Lcom/google/android/material/slider/BaseSlider;I)F

    move-result p3

    if-ne p2, v3, :cond_5

    neg-float p3, p3

    :cond_5
    iget-object p2, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    .line 2889
    invoke-virtual {p2}, Lcom/google/android/material/slider/BaseSlider;->isRtl()Z

    move-result p2

    if-eqz p2, :cond_6

    neg-float p3, p3

    :cond_6
    iget-object p2, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    .line 2893
    invoke-virtual {p2}, Lcom/google/android/material/slider/BaseSlider;->getValues()Ljava/util/List;

    move-result-object p2

    .line 2896
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    add-float/2addr p2, p3

    iget-object p3, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    .line 2897
    invoke-virtual {p3}, Lcom/google/android/material/slider/BaseSlider;->getValueFrom()F

    move-result p3

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    .line 2898
    invoke-virtual {v0}, Lcom/google/android/material/slider/BaseSlider;->getValueTo()F

    move-result v0

    .line 2895
    invoke-static {p2, p3, v0}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p2

    iget-object p3, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    .line 2899
    invoke-static {p3, p1, p2}, Lcom/google/android/material/slider/BaseSlider;->access$500(Lcom/google/android/material/slider/BaseSlider;IF)Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    .line 2900
    invoke-static {p2}, Lcom/google/android/material/slider/BaseSlider;->access$600(Lcom/google/android/material/slider/BaseSlider;)V

    iget-object p2, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    .line 2901
    invoke-virtual {p2}, Lcom/google/android/material/slider/BaseSlider;->postInvalidate()V

    .line 2902
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->invalidateVirtualView(I)V

    return v2

    :cond_7
    return v1
.end method

.method protected onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 6

    .line 2805
    sget-object v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SET_PROGRESS:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    .line 2807
    invoke-virtual {v0}, Lcom/google/android/material/slider/BaseSlider;->getValues()Ljava/util/List;

    move-result-object v0

    .line 2808
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    .line 2809
    invoke-virtual {v2}, Lcom/google/android/material/slider/BaseSlider;->getValueFrom()F

    move-result v2

    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    .line 2810
    invoke-virtual {v3}, Lcom/google/android/material/slider/BaseSlider;->getValueTo()F

    move-result v3

    iget-object v4, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    .line 2812
    invoke-virtual {v4}, Lcom/google/android/material/slider/BaseSlider;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    cmpl-float v4, v1, v2

    if-lez v4, :cond_0

    const/16 v4, 0x2000

    .line 2814
    invoke-virtual {p2, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    :cond_0
    cmpg-float v4, v1, v3

    if-gez v4, :cond_1

    const/16 v4, 0x1000

    .line 2817
    invoke-virtual {p2, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    :cond_1
    const/4 v4, 0x1

    .line 2821
    invoke-static {v4, v2, v3, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;->obtain(IFFF)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setRangeInfo(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;)V

    .line 2822
    const-class v2, Landroid/widget/SeekBar;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 2823
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    .line 2825
    invoke-virtual {v3}, Lcom/google/android/material/slider/BaseSlider;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    .line 2826
    invoke-virtual {v3}, Lcom/google/android/material/slider/BaseSlider;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    .line 2829
    invoke-static {v3, v1}, Lcom/google/android/material/slider/BaseSlider;->access$400(Lcom/google/android/material/slider/BaseSlider;F)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    .line 2830
    invoke-virtual {v3}, Lcom/google/android/material/slider/BaseSlider;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v5, Lcom/google/android/material/R$string;->material_slider_value:I

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2831
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v4, :cond_3

    .line 2832
    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->startOrEndDescription(I)Ljava/lang/String;

    move-result-object v3

    .line 2834
    :cond_3
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s, %s"

    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v4, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2835
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->virtualViewBounds:Landroid/graphics/Rect;

    .line 2837
    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/slider/BaseSlider;->updateBoundsForVirtualViewId(ILandroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->virtualViewBounds:Landroid/graphics/Rect;

    .line 2838
    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    return-void
.end method
