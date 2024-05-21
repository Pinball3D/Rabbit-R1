.class public Lcom/google/android/material/tooltip/TooltipDrawable;
.super Lcom/google/android/material/shape/MaterialShapeDrawable;
.source "TooltipDrawable.java"

# interfaces
.implements Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;


# static fields
.field private static final DEFAULT_STYLE:I

.field private static final DEFAULT_THEME_ATTR:I


# instance fields
.field private arrowSize:I

.field private final attachedViewLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private final context:Landroid/content/Context;

.field private final displayFrame:Landroid/graphics/Rect;

.field private final fontMetrics:Landroid/graphics/Paint$FontMetrics;

.field private labelOpacity:F

.field private layoutMargin:I

.field private locationOnScreenX:I

.field private minHeight:I

.field private minWidth:I

.field private padding:I

.field private text:Ljava/lang/CharSequence;

.field private final textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

.field private final tooltipPivotX:F

.field private tooltipPivotY:F

.field private tooltipScaleX:F

.field private tooltipScaleY:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_Tooltip:I

    sput v0, Lcom/google/android/material/tooltip/TooltipDrawable;->DEFAULT_STYLE:I

    .line 70
    sget v0, Lcom/google/android/material/R$attr;->tooltipStyle:I

    sput v0, Lcom/google/android/material/tooltip/TooltipDrawable;->DEFAULT_THEME_ATTR:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 143
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 74
    new-instance p2, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {p2}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    iput-object p2, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->fontMetrics:Landroid/graphics/Paint$FontMetrics;

    .line 76
    new-instance p2, Lcom/google/android/material/internal/TextDrawableHelper;

    invoke-direct {p2, p0}, Lcom/google/android/material/internal/TextDrawableHelper;-><init>(Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;)V

    iput-object p2, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 80
    new-instance p3, Lcom/google/android/material/tooltip/TooltipDrawable$1;

    invoke-direct {p3, p0}, Lcom/google/android/material/tooltip/TooltipDrawable$1;-><init>(Lcom/google/android/material/tooltip/TooltipDrawable;)V

    iput-object p3, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->attachedViewLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 98
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->displayFrame:Landroid/graphics/Rect;

    const/high16 p3, 0x3f800000    # 1.0f

    iput p3, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->tooltipScaleX:F

    iput p3, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->tooltipScaleY:F

    const/high16 p4, 0x3f000000    # 0.5f

    iput p4, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->tooltipPivotX:F

    iput p4, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->tooltipPivotY:F

    iput p3, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->labelOpacity:F

    iput-object p1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->context:Landroid/content/Context;

    .line 145
    invoke-virtual {p2}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Landroid/text/TextPaint;->density:F

    .line 146
    invoke-virtual {p2}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    move-result-object p0

    sget-object p1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p0, p1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/tooltip/TooltipDrawable;Landroid/view/View;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/google/android/material/tooltip/TooltipDrawable;->updateLocationOnScreen(Landroid/view/View;)V

    return-void
.end method

.method private calculatePointerOffset()F
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->displayFrame:Landroid/graphics/Rect;

    .line 470
    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/google/android/material/tooltip/TooltipDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->locationOnScreenX:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->layoutMargin:I

    sub-int/2addr v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->displayFrame:Landroid/graphics/Rect;

    .line 471
    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/google/android/material/tooltip/TooltipDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->locationOnScreenX:I

    sub-int/2addr v0, v1

    iget p0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->layoutMargin:I

    sub-int/2addr v0, p0

    :goto_0
    int-to-float p0, v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->displayFrame:Landroid/graphics/Rect;

    .line 472
    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/google/android/material/tooltip/TooltipDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->locationOnScreenX:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->layoutMargin:I

    add-int/2addr v0, v1

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->displayFrame:Landroid/graphics/Rect;

    .line 473
    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/google/android/material/tooltip/TooltipDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->locationOnScreenX:I

    sub-int/2addr v0, v1

    iget p0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->layoutMargin:I

    add-int/2addr v0, p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private calculateTextCenterFromBaseline()F
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 530
    invoke-virtual {v0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->fontMetrics:Landroid/graphics/Paint$FontMetrics;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    iget-object v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->fontMetrics:Landroid/graphics/Paint$FontMetrics;

    .line 531
    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget-object p0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->fontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget p0, p0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    add-float/2addr v0, p0

    const/high16 p0, 0x40000000    # 2.0f

    div-float/2addr v0, p0

    return v0
.end method

.method private calculateTextOriginAndAlignment(Landroid/graphics/Rect;)F
    .locals 0

    .line 514
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    int-to-float p1, p1

    invoke-direct {p0}, Lcom/google/android/material/tooltip/TooltipDrawable;->calculateTextCenterFromBaseline()F

    move-result p0

    sub-float/2addr p1, p0

    return p1
.end method

.method public static create(Landroid/content/Context;)Lcom/google/android/material/tooltip/TooltipDrawable;
    .locals 3

    sget v0, Lcom/google/android/material/tooltip/TooltipDrawable;->DEFAULT_THEME_ATTR:I

    sget v1, Lcom/google/android/material/tooltip/TooltipDrawable;->DEFAULT_STYLE:I

    const/4 v2, 0x0

    .line 135
    invoke-static {p0, v2, v0, v1}, Lcom/google/android/material/tooltip/TooltipDrawable;->createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/tooltip/TooltipDrawable;

    move-result-object p0

    return-object p0
.end method

.method public static createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/google/android/material/tooltip/TooltipDrawable;
    .locals 2

    sget v0, Lcom/google/android/material/tooltip/TooltipDrawable;->DEFAULT_THEME_ATTR:I

    sget v1, Lcom/google/android/material/tooltip/TooltipDrawable;->DEFAULT_STYLE:I

    .line 130
    invoke-static {p0, p1, v0, v1}, Lcom/google/android/material/tooltip/TooltipDrawable;->createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/tooltip/TooltipDrawable;

    move-result-object p0

    return-object p0
.end method

.method public static createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/tooltip/TooltipDrawable;
    .locals 1

    .line 120
    new-instance v0, Lcom/google/android/material/tooltip/TooltipDrawable;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/material/tooltip/TooltipDrawable;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 121
    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/material/tooltip/TooltipDrawable;->loadFromAttributes(Landroid/util/AttributeSet;II)V

    return-object v0
.end method

.method private createMarkerEdge()Lcom/google/android/material/shape/EdgeTreatment;
    .locals 7

    .line 479
    invoke-direct {p0}, Lcom/google/android/material/tooltip/TooltipDrawable;->calculatePointerOffset()F

    move-result v0

    neg-float v0, v0

    .line 481
    invoke-virtual {p0}, Lcom/google/android/material/tooltip/TooltipDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-double v1, v1

    iget v3, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->arrowSize:I

    int-to-double v3, v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    sub-double/2addr v1, v3

    double-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    neg-float v2, v1

    .line 482
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 483
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 484
    new-instance v1, Lcom/google/android/material/shape/OffsetEdgeTreatment;

    new-instance v2, Lcom/google/android/material/shape/MarkerEdgeTreatment;

    iget p0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->arrowSize:I

    int-to-float p0, p0

    invoke-direct {v2, p0}, Lcom/google/android/material/shape/MarkerEdgeTreatment;-><init>(F)V

    invoke-direct {v1, v2, v0}, Lcom/google/android/material/shape/OffsetEdgeTreatment;-><init>(Lcom/google/android/material/shape/EdgeTreatment;F)V

    return-object v1
.end method

.method private drawText(Landroid/graphics/Canvas;)V
    .locals 11

    iget-object v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->text:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    return-void

    .line 493
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/tooltip/TooltipDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 494
    invoke-direct {p0, v0}, Lcom/google/android/material/tooltip/TooltipDrawable;->calculateTextOriginAndAlignment(Landroid/graphics/Rect;)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 496
    invoke-virtual {v2}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextAppearance()Lcom/google/android/material/resources/TextAppearance;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 497
    invoke-virtual {v2}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/material/tooltip/TooltipDrawable;->getState()[I

    move-result-object v3

    iput-object v3, v2, Landroid/text/TextPaint;->drawableState:[I

    iget-object v2, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    iget-object v3, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->context:Landroid/content/Context;

    .line 498
    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/TextDrawableHelper;->updateTextPaintDrawState(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 499
    invoke-virtual {v2}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v2

    iget v3, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->labelOpacity:F

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setAlpha(I)V

    :cond_1
    iget-object v5, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->text:Ljava/lang/CharSequence;

    const/4 v6, 0x0

    .line 502
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v8, v0

    int-to-float v9, v1

    iget-object p0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    invoke-virtual {p0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v10

    move-object v4, p1

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private getTextWidth()F
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->text:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 509
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextWidth(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method private loadFromAttributes(Landroid/util/AttributeSet;II)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->context:Landroid/content/Context;

    .line 151
    sget-object v2, Lcom/google/android/material/R$styleable;->Tooltip:[I

    const/4 v6, 0x0

    new-array v5, v6, [I

    move-object v1, p1

    move v3, p2

    move v4, p3

    .line 152
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->context:Landroid/content/Context;

    .line 155
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/google/android/material/R$dimen;->mtrl_tooltip_arrowSize:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->arrowSize:I

    .line 157
    invoke-virtual {p0}, Lcom/google/android/material/tooltip/TooltipDrawable;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->toBuilder()Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object p2

    invoke-direct {p0}, Lcom/google/android/material/tooltip/TooltipDrawable;->createMarkerEdge()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomEdge(Lcom/google/android/material/shape/EdgeTreatment;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p2

    .line 156
    invoke-virtual {p0, p2}, Lcom/google/android/material/tooltip/TooltipDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 159
    sget p2, Lcom/google/android/material/R$styleable;->Tooltip_android_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/tooltip/TooltipDrawable;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->context:Landroid/content/Context;

    .line 160
    sget p3, Lcom/google/android/material/R$styleable;->Tooltip_android_textAppearance:I

    invoke-static {p2, p1, p3}, Lcom/google/android/material/resources/MaterialResources;->getTextAppearance(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lcom/google/android/material/resources/TextAppearance;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 162
    sget p3, Lcom/google/android/material/R$styleable;->Tooltip_android_textColor:I

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->context:Landroid/content/Context;

    .line 163
    sget v0, Lcom/google/android/material/R$styleable;->Tooltip_android_textColor:I

    .line 164
    invoke-static {p3, p1, v0}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    .line 163
    invoke-virtual {p2, p3}, Lcom/google/android/material/resources/TextAppearance;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 166
    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/android/material/tooltip/TooltipDrawable;->setTextAppearance(Lcom/google/android/material/resources/TextAppearance;)V

    iget-object p2, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->context:Landroid/content/Context;

    .line 168
    sget p3, Lcom/google/android/material/R$attr;->colorOnBackground:I

    const-class v0, Lcom/google/android/material/tooltip/TooltipDrawable;

    .line 170
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 169
    invoke-static {p2, p3, v1}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/content/Context;ILjava/lang/String;)I

    move-result p2

    iget-object p3, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->context:Landroid/content/Context;

    const v1, 0x1010031

    .line 173
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    .line 172
    invoke-static {p3, v1, v2}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/content/Context;ILjava/lang/String;)I

    move-result p3

    const/16 v1, 0xe5

    .line 177
    invoke-static {p3, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p3

    const/16 v1, 0x99

    .line 178
    invoke-static {p2, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p2

    .line 176
    invoke-static {p3, p2}, Lcom/google/android/material/color/MaterialColors;->layer(II)I

    move-result p2

    .line 179
    sget p3, Lcom/google/android/material/R$styleable;->Tooltip_backgroundTint:I

    .line 181
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    .line 180
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    .line 179
    invoke-virtual {p0, p2}, Lcom/google/android/material/tooltip/TooltipDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    iget-object p2, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->context:Landroid/content/Context;

    .line 183
    sget p3, Lcom/google/android/material/R$attr;->colorSurface:I

    .line 186
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-static {p2, p3, v0}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/content/Context;ILjava/lang/String;)I

    move-result p2

    .line 184
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    .line 183
    invoke-virtual {p0, p2}, Lcom/google/android/material/tooltip/TooltipDrawable;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    .line 188
    sget p2, Lcom/google/android/material/R$styleable;->Tooltip_android_padding:I

    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->padding:I

    .line 189
    sget p2, Lcom/google/android/material/R$styleable;->Tooltip_android_minWidth:I

    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->minWidth:I

    .line 190
    sget p2, Lcom/google/android/material/R$styleable;->Tooltip_android_minHeight:I

    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->minHeight:I

    .line 191
    sget p2, Lcom/google/android/material/R$styleable;->Tooltip_android_layout_margin:I

    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->layoutMargin:I

    .line 193
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private updateLocationOnScreen(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 463
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->locationOnScreenX:I

    iget-object p0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->displayFrame:Landroid/graphics/Rect;

    .line 465
    invoke-virtual {p1, p0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method public detachView(Landroid/view/View;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->attachedViewLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 396
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 411
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 415
    invoke-direct {p0}, Lcom/google/android/material/tooltip/TooltipDrawable;->calculatePointerOffset()F

    move-result v0

    iget v1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->arrowSize:I

    int-to-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    .line 419
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    mul-double/2addr v1, v3

    iget v3, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->arrowSize:I

    int-to-double v3, v3

    sub-double/2addr v1, v3

    neg-double v1, v1

    double-to-float v1, v1

    iget v2, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->tooltipScaleX:F

    iget v3, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->tooltipScaleY:F

    .line 426
    invoke-virtual {p0}, Lcom/google/android/material/tooltip/TooltipDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/google/android/material/tooltip/TooltipDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    .line 427
    invoke-virtual {p0}, Lcom/google/android/material/tooltip/TooltipDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/google/android/material/tooltip/TooltipDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->tooltipPivotY:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    .line 423
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 429
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 432
    invoke-super {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 435
    invoke-direct {p0, p1}, Lcom/google/android/material/tooltip/TooltipDrawable;->drawText(Landroid/graphics/Canvas;)V

    .line 437
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 406
    invoke-virtual {v0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    iget p0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->minHeight:I

    int-to-float p0, p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    iget v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->padding:I

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 401
    invoke-direct {p0}, Lcom/google/android/material/tooltip/TooltipDrawable;->getTextWidth()F

    move-result v1

    add-float/2addr v0, v1

    iget p0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->minWidth:I

    int-to-float p0, p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public getLayoutMargin()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->layoutMargin:I

    return p0
.end method

.method public getMinHeight()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->minHeight:I

    return p0
.end method

.method public getMinWidth()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->minWidth:I

    return p0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->text:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getTextAppearance()Lcom/google/android/material/resources/TextAppearance;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 239
    invoke-virtual {p0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextAppearance()Lcom/google/android/material/resources/TextAppearance;

    move-result-object p0

    return-object p0
.end method

.method public getTextPadding()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->padding:I

    return p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 442
    invoke-super {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 447
    invoke-virtual {p0}, Lcom/google/android/material/tooltip/TooltipDrawable;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->toBuilder()Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object p1

    invoke-direct {p0}, Lcom/google/android/material/tooltip/TooltipDrawable;->createMarkerEdge()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomEdge(Lcom/google/android/material/shape/EdgeTreatment;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p1

    .line 446
    invoke-virtual {p0, p1}, Lcom/google/android/material/tooltip/TooltipDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    return-void
.end method

.method public onStateChange([I)Z
    .locals 0

    .line 453
    invoke-super {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->onStateChange([I)Z

    move-result p0

    return p0
.end method

.method public onTextSizeChange()V
    .locals 0

    .line 458
    invoke-virtual {p0}, Lcom/google/android/material/tooltip/TooltipDrawable;->invalidateSelf()V

    return-void
.end method

.method public setLayoutMargin(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->layoutMargin:I

    .line 347
    invoke-virtual {p0}, Lcom/google/android/material/tooltip/TooltipDrawable;->invalidateSelf()V

    return-void
.end method

.method public setMinHeight(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->minHeight:I

    .line 303
    invoke-virtual {p0}, Lcom/google/android/material/tooltip/TooltipDrawable;->invalidateSelf()V

    return-void
.end method

.method public setMinWidth(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->minWidth:I

    .line 281
    invoke-virtual {p0}, Lcom/google/android/material/tooltip/TooltipDrawable;->invalidateSelf()V

    return-void
.end method

.method public setRelativeToView(Landroid/view/View;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 382
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/material/tooltip/TooltipDrawable;->updateLocationOnScreen(Landroid/view/View;)V

    iget-object p0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->attachedViewLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 384
    invoke-virtual {p1, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public setRevealFraction(F)V
    .locals 3

    const v0, 0x3f99999a    # 1.2f

    iput v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->tooltipPivotY:F

    iput p1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->tooltipScaleX:F

    iput p1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->tooltipScaleY:F

    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3e428f5c    # 0.19f

    const/4 v2, 0x0

    .line 368
    invoke-static {v2, v0, v1, v0, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFFFF)F

    move-result p1

    iput p1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->labelOpacity:F

    .line 369
    invoke-virtual {p0}, Lcom/google/android/material/tooltip/TooltipDrawable;->invalidateSelf()V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->text:Ljava/lang/CharSequence;

    .line 225
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->text:Ljava/lang/CharSequence;

    iget-object p1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    const/4 v0, 0x1

    .line 227
    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/TextDrawableHelper;->setTextWidthDirty(Z)V

    .line 228
    invoke-virtual {p0}, Lcom/google/android/material/tooltip/TooltipDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setTextAppearance(Lcom/google/android/material/resources/TextAppearance;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    iget-object p0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->context:Landroid/content/Context;

    .line 259
    invoke-virtual {v0, p1, p0}, Lcom/google/android/material/internal/TextDrawableHelper;->setTextAppearance(Lcom/google/android/material/resources/TextAppearance;Landroid/content/Context;)V

    return-void
.end method

.method public setTextAppearanceResource(I)V
    .locals 2

    .line 249
    new-instance v0, Lcom/google/android/material/resources/TextAppearance;

    iget-object v1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/google/android/material/resources/TextAppearance;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/material/tooltip/TooltipDrawable;->setTextAppearance(Lcom/google/android/material/resources/TextAppearance;)V

    return-void
.end method

.method public setTextPadding(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->padding:I

    .line 325
    invoke-virtual {p0}, Lcom/google/android/material/tooltip/TooltipDrawable;->invalidateSelf()V

    return-void
.end method

.method public setTextResource(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->context:Landroid/content/Context;

    .line 214
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/tooltip/TooltipDrawable;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
