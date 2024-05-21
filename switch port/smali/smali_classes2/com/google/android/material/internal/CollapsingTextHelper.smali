.class public final Lcom/google/android/material/internal/CollapsingTextHelper;
.super Ljava/lang/Object;
.source "CollapsingTextHelper.java"


# static fields
.field private static final DEBUG_DRAW:Z = false

.field private static final DEBUG_DRAW_PAINT:Landroid/graphics/Paint;

.field private static final ELLIPSIS_NORMAL:Ljava/lang/String; = "\u2026"

.field private static final FADE_MODE_THRESHOLD_FRACTION_RELATIVE:F = 0.5f

.field private static final TAG:Ljava/lang/String; = "CollapsingTextHelper"

.field private static final USE_SCALING_TEXTURE:Z


# instance fields
.field private boundsChanged:Z

.field private final collapsedBounds:Landroid/graphics/Rect;

.field private collapsedDrawX:F

.field private collapsedDrawY:F

.field private collapsedFontCallback:Lcom/google/android/material/resources/CancelableFontCallback;

.field private collapsedLetterSpacing:F

.field private collapsedShadowColor:Landroid/content/res/ColorStateList;

.field private collapsedShadowDx:F

.field private collapsedShadowDy:F

.field private collapsedShadowRadius:F

.field private collapsedTextBlend:F

.field private collapsedTextColor:Landroid/content/res/ColorStateList;

.field private collapsedTextGravity:I

.field private collapsedTextSize:F

.field private collapsedTextWidth:F

.field private collapsedTypeface:Landroid/graphics/Typeface;

.field private collapsedTypefaceBold:Landroid/graphics/Typeface;

.field private collapsedTypefaceDefault:Landroid/graphics/Typeface;

.field private final currentBounds:Landroid/graphics/RectF;

.field private currentDrawX:F

.field private currentDrawY:F

.field private currentLetterSpacing:F

.field private currentOffsetY:I

.field private currentShadowColor:I

.field private currentShadowDx:F

.field private currentShadowDy:F

.field private currentShadowRadius:F

.field private currentTextSize:F

.field private currentTypeface:Landroid/graphics/Typeface;

.field private final expandedBounds:Landroid/graphics/Rect;

.field private expandedDrawX:F

.field private expandedDrawY:F

.field private expandedFontCallback:Lcom/google/android/material/resources/CancelableFontCallback;

.field private expandedFraction:F

.field private expandedLetterSpacing:F

.field private expandedLineCount:I

.field private expandedShadowColor:Landroid/content/res/ColorStateList;

.field private expandedShadowDx:F

.field private expandedShadowDy:F

.field private expandedShadowRadius:F

.field private expandedTextBlend:F

.field private expandedTextColor:Landroid/content/res/ColorStateList;

.field private expandedTextGravity:I

.field private expandedTextSize:F

.field private expandedTitleTexture:Landroid/graphics/Bitmap;

.field private expandedTypeface:Landroid/graphics/Typeface;

.field private expandedTypefaceBold:Landroid/graphics/Typeface;

.field private expandedTypefaceDefault:Landroid/graphics/Typeface;

.field private fadeModeEnabled:Z

.field private fadeModeStartFraction:F

.field private fadeModeThresholdFraction:F

.field private hyphenationFrequency:I

.field private isRtl:Z

.field private isRtlTextDirectionHeuristicsEnabled:Z

.field private lineSpacingAdd:F

.field private lineSpacingMultiplier:F

.field private maxLines:I

.field private positionInterpolator:Landroid/animation/TimeInterpolator;

.field private scale:F

.field private state:[I

.field private staticLayoutBuilderConfigurer:Lcom/google/android/material/internal/StaticLayoutBuilderConfigurer;

.field private text:Ljava/lang/CharSequence;

.field private textLayout:Landroid/text/StaticLayout;

.field private final textPaint:Landroid/text/TextPaint;

.field private textSizeInterpolator:Landroid/animation/TimeInterpolator;

.field private textToDraw:Ljava/lang/CharSequence;

.field private textToDrawCollapsed:Ljava/lang/CharSequence;

.field private texturePaint:Landroid/graphics/Paint;

.field private titleTextEllipsize:Landroid/text/TextUtils$TruncateAt;

.field private final tmpPaint:Landroid/text/TextPaint;

.field private useTexture:Z

.field private final view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/material/internal/CollapsingTextHelper;->USE_SCALING_TEXTURE:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/material/internal/CollapsingTextHelper;->DEBUG_DRAW_PAINT:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    iput v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextGravity:I

    iput v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextGravity:I

    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextSize:F

    iput v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextSize:F

    .line 128
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    iput-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->titleTextEllipsize:Landroid/text/TextUtils$TruncateAt;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->isRtlTextDirectionHeuristicsEnabled:Z

    iput v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->maxLines:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->lineSpacingAdd:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->lineSpacingMultiplier:F

    .line 178
    sget v0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->DEFAULT_HYPHENATION_FREQUENCY:I

    iput v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->hyphenationFrequency:I

    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->view:Landroid/view/View;

    .line 184
    new-instance v0, Landroid/text/TextPaint;

    const/16 v1, 0x81

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    .line 185
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1, v0}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->tmpPaint:Landroid/text/TextPaint;

    .line 187
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    .line 188
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    .line 189
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentBounds:Landroid/graphics/RectF;

    .line 191
    invoke-direct {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->calculateFadeModeThresholdFraction()F

    move-result v0

    iput v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->fadeModeThresholdFraction:F

    .line 192
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->maybeUpdateFontWeightAdjustment(Landroid/content/res/Configuration;)V

    return-void
.end method

.method private static blendARGB(IIF)I
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    .line 1285
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    .line 1286
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    .line 1287
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    .line 1288
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v0

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p2

    add-float/2addr p0, p1

    .line 1289
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-static {p1, p2, v0, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method private calculateBaseOffsets(Z)V
    .locals 9

    const/high16 v0, 0x3f800000    # 1.0f

    .line 721
    invoke-direct {p0, v0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->calculateUsingTextSize(FZ)V

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    .line 724
    invoke-virtual {v1}, Landroid/text/StaticLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->titleTextEllipsize:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v2, v1, v3}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textToDrawCollapsed:Ljava/lang/CharSequence;

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textToDrawCollapsed:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    .line 727
    invoke-direct {p0, v2, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->measureTextWidth(Landroid/text/TextPaint;Ljava/lang/CharSequence;)F

    move-result v0

    iput v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextWidth:F

    goto :goto_0

    :cond_1
    iput v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextWidth:F

    :goto_0
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextGravity:I

    iget-boolean v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->isRtl:Z

    .line 732
    invoke-static {v0, v2}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    and-int/lit8 v2, v0, 0x70

    const/16 v3, 0x50

    const/16 v4, 0x30

    const/high16 v5, 0x40000000    # 2.0f

    if-eq v2, v4, :cond_3

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    .line 745
    invoke-virtual {v2}, Landroid/text/TextPaint;->descent()F

    move-result v2

    iget-object v6, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->ascent()F

    move-result v6

    sub-float/2addr v2, v6

    div-float/2addr v2, v5

    iget-object v6, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    .line 746
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v2

    iput v6, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedDrawY:F

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    .line 738
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget-object v6, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->ascent()F

    move-result v6

    add-float/2addr v2, v6

    iput v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedDrawY:F

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    .line 741
    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iput v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedDrawY:F

    :goto_1
    const v2, 0x800007

    and-int/2addr v0, v2

    const/4 v6, 0x5

    const/4 v7, 0x1

    if-eq v0, v7, :cond_5

    if-eq v0, v6, :cond_4

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    .line 759
    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedDrawX:F

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    .line 755
    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget v8, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextWidth:F

    sub-float/2addr v0, v8

    iput v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedDrawX:F

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    .line 752
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iget v8, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextWidth:F

    div-float/2addr v8, v5

    sub-float/2addr v0, v8

    iput v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedDrawX:F

    .line 763
    :goto_2
    invoke-direct {p0, v1, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->calculateUsingTextSize(FZ)V

    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textLayout:Landroid/text/StaticLayout;

    if-eqz p1, :cond_6

    .line 764
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getHeight()I

    move-result p1

    int-to-float p1, p1

    goto :goto_3

    :cond_6
    move p1, v1

    :goto_3
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_7

    iget v8, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->maxLines:I

    if-le v8, v7, :cond_7

    .line 767
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    move-result v0

    int-to-float v1, v0

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    .line 769
    invoke-direct {p0, v1, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->measureTextWidth(Landroid/text/TextPaint;Ljava/lang/CharSequence;)F

    move-result v1

    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_9

    .line 771
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    goto :goto_5

    :cond_9
    const/4 v0, 0x0

    :goto_5
    iput v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedLineCount:I

    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextGravity:I

    iget-boolean v8, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->isRtl:Z

    .line 774
    invoke-static {v0, v8}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    and-int/lit8 v8, v0, 0x70

    if-eq v8, v4, :cond_b

    if-eq v8, v3, :cond_a

    div-float/2addr p1, v5

    iget-object v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    .line 787
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, p1

    iput v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedDrawY:F

    goto :goto_6

    :cond_a
    iget-object v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    .line 779
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v3, p1

    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/text/TextPaint;->descent()F

    move-result p1

    add-float/2addr v3, p1

    iput v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedDrawY:F

    goto :goto_6

    :cond_b
    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    .line 782
    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedDrawY:F

    :goto_6
    and-int p1, v0, v2

    if-eq p1, v7, :cond_d

    if-eq p1, v6, :cond_c

    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    .line 800
    iget p1, p1, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedDrawX:F

    goto :goto_7

    :cond_c
    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    .line 796
    iget p1, p1, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    sub-float/2addr p1, v1

    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedDrawX:F

    goto :goto_7

    :cond_d
    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    .line 793
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v1, v5

    sub-float/2addr p1, v1

    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedDrawX:F

    .line 805
    :goto_7
    invoke-direct {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->clearTexture()V

    iget p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedFraction:F

    .line 807
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setInterpolatedTextSize(F)V

    return-void
.end method

.method private calculateCurrentOffsets()V
    .locals 1

    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedFraction:F

    .line 603
    invoke-direct {p0, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->calculateOffsets(F)V

    return-void
.end method

.method private calculateFadeModeTextAlpha(F)F
    .locals 4

    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->fadeModeThresholdFraction:F

    cmpg-float v1, p1, v0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-gtz v1, :cond_0

    iget p0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->fadeModeStartFraction:F

    .line 682
    invoke-static {v3, v2, p0, v0, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFFFF)F

    move-result p0

    return p0

    .line 689
    :cond_0
    invoke-static {v2, v3, v0, v3, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFFFF)F

    move-result p0

    return p0
.end method

.method private calculateFadeModeThresholdFraction()F
    .locals 2

    iget p0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->fadeModeStartFraction:F

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    add-float/2addr p0, v0

    return p0
.end method

.method private calculateIsRtl(Ljava/lang/CharSequence;)Z
    .locals 2

    .line 955
    invoke-direct {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->isDefaultIsRtl()Z

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->isRtlTextDirectionHeuristicsEnabled:Z

    if-eqz v1, :cond_0

    .line 957
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->isTextDirectionHeuristicsIsRtl(Ljava/lang/CharSequence;Z)Z

    move-result v0

    :cond_0
    return v0
.end method

.method private calculateOffsets(F)V
    .locals 5

    .line 607
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->interpolateBounds(F)V

    iget-boolean v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->fadeModeEnabled:Z

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->fadeModeThresholdFraction:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedDrawX:F

    iput v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentDrawX:F

    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedDrawY:F

    iput v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentDrawY:F

    .line 615
    invoke-direct {p0, v1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setInterpolatedTextSize(F)V

    move v0, v1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedDrawX:F

    iput v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentDrawX:F

    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedDrawY:F

    const/4 v3, 0x0

    iget v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentOffsetY:I

    .line 619
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v0, v3

    iput v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentDrawY:F

    .line 621
    invoke-direct {p0, v2}, Lcom/google/android/material/internal/CollapsingTextHelper;->setInterpolatedTextSize(F)V

    move v0, v2

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedDrawX:F

    iget v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedDrawX:F

    iget-object v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->positionInterpolator:Landroid/animation/TimeInterpolator;

    .line 625
    invoke-static {v0, v3, p1, v4}, Lcom/google/android/material/internal/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    iput v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentDrawX:F

    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedDrawY:F

    iget v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedDrawY:F

    iget-object v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->positionInterpolator:Landroid/animation/TimeInterpolator;

    .line 626
    invoke-static {v0, v3, p1, v4}, Lcom/google/android/material/internal/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    iput v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentDrawY:F

    .line 628
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setInterpolatedTextSize(F)V

    move v0, p1

    :goto_0
    sub-float v3, v2, p1

    .line 631
    sget-object v4, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 632
    invoke-static {v1, v2, v3, v4}, Lcom/google/android/material/internal/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v3

    sub-float v3, v2, v3

    .line 631
    invoke-direct {p0, v3}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedTextBlend(F)V

    .line 633
    sget-object v3, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-static {v2, v1, p1, v3}, Lcom/google/android/material/internal/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpandedTextBlend(F)V

    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextColor:Landroid/content/res/ColorStateList;

    iget-object v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextColor:Landroid/content/res/ColorStateList;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    .line 640
    invoke-direct {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCurrentExpandedTextColor()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCurrentCollapsedTextColor()I

    move-result v3

    .line 639
    invoke-static {v2, v3, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->blendARGB(IIF)I

    move-result v0

    .line 638
    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    .line 642
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCurrentCollapsedTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    :goto_1
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedLetterSpacing:F

    iget v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedLetterSpacing:F

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    .line 647
    sget-object v3, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 648
    invoke-static {v1, v0, p1, v3}, Lcom/google/android/material/internal/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    .line 647
    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    .line 654
    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    :goto_2
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedShadowRadius:F

    iget v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedShadowRadius:F

    const/4 v2, 0x0

    .line 659
    invoke-static {v0, v1, p1, v2}, Lcom/google/android/material/internal/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    iput v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentShadowRadius:F

    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedShadowDx:F

    iget v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedShadowDx:F

    .line 660
    invoke-static {v0, v1, p1, v2}, Lcom/google/android/material/internal/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    iput v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentShadowDx:F

    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedShadowDy:F

    iget v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedShadowDy:F

    .line 661
    invoke-static {v0, v1, p1, v2}, Lcom/google/android/material/internal/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    iput v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentShadowDy:F

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedShadowColor:Landroid/content/res/ColorStateList;

    .line 664
    invoke-direct {p0, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCurrentColor(Landroid/content/res/ColorStateList;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedShadowColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCurrentColor(Landroid/content/res/ColorStateList;)I

    move-result v1

    .line 663
    invoke-static {v0, v1, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->blendARGB(IIF)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentShadowColor:I

    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    iget v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentShadowRadius:F

    iget v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentShadowDx:F

    iget v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentShadowDy:F

    .line 665
    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    iget-boolean v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->fadeModeEnabled:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    .line 669
    invoke-virtual {v0}, Landroid/text/TextPaint;->getAlpha()I

    move-result v0

    .line 672
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->calculateFadeModeTextAlpha(F)F

    move-result p1

    int-to-float v0, v0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    .line 674
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setAlpha(I)V

    :cond_4
    iget-object p0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->view:Landroid/view/View;

    .line 677
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method private calculateUsingTextSize(F)V
    .locals 1

    const/4 v0, 0x0

    .line 987
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->calculateUsingTextSize(FZ)V

    return-void
.end method

.method private calculateUsingTextSize(FZ)V
    .locals 10

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->text:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    .line 996
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    .line 997
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1004
    invoke-static {p1, v2}, Lcom/google/android/material/internal/CollapsingTextHelper;->isClose(FF)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    iget p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextSize:F

    iget p2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedLetterSpacing:F

    iput v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->scale:F

    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTypeface:Landroid/graphics/Typeface;

    goto :goto_3

    :cond_1
    iget v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextSize:F

    iget v5, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedLetterSpacing:F

    iget-object v6, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTypeface:Landroid/graphics/Typeface;

    .line 1014
    invoke-static {p1, v4}, Lcom/google/android/material/internal/CollapsingTextHelper;->isClose(FF)Z

    move-result v7

    if-eqz v7, :cond_2

    iput v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->scale:F

    goto :goto_0

    :cond_2
    iget v7, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextSize:F

    iget v8, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextSize:F

    iget-object v9, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textSizeInterpolator:Landroid/animation/TimeInterpolator;

    .line 1020
    invoke-static {v7, v8, p1, v9}, Lcom/google/android/material/internal/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result p1

    iget v7, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextSize:F

    div-float/2addr p1, v7

    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->scale:F

    :goto_0
    iget p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextSize:F

    iget v7, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextSize:F

    div-float/2addr p1, v7

    mul-float v7, v1, p1

    if-nez p2, :cond_4

    iget-boolean p2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->fadeModeEnabled:Z

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    cmpl-float p2, v7, v0

    if-lez p2, :cond_4

    div-float/2addr v0, p1

    .line 1043
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    move v0, p1

    goto :goto_2

    :cond_4
    :goto_1
    move v0, v1

    :goto_2
    move p1, v3

    move p2, v5

    move-object v1, v6

    :goto_3
    cmpl-float v3, v0, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lez v3, :cond_c

    iget v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentTextSize:F

    cmpl-float v3, v3, p1

    if-eqz v3, :cond_5

    move v3, v4

    goto :goto_4

    :cond_5
    move v3, v5

    :goto_4
    iget v6, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentLetterSpacing:F

    cmpl-float v6, v6, p2

    if-eqz v6, :cond_6

    move v6, v4

    goto :goto_5

    :cond_6
    move v6, v5

    :goto_5
    iget-object v7, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentTypeface:Landroid/graphics/Typeface;

    if-eq v7, v1, :cond_7

    move v7, v4

    goto :goto_6

    :cond_7
    move v7, v5

    :goto_6
    iget-object v8, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textLayout:Landroid/text/StaticLayout;

    if-eqz v8, :cond_8

    .line 1053
    invoke-virtual {v8}, Landroid/text/StaticLayout;->getWidth()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v8, v0, v8

    if-eqz v8, :cond_8

    move v8, v4

    goto :goto_7

    :cond_8
    move v8, v5

    :goto_7
    if-nez v3, :cond_a

    if-nez v6, :cond_a

    if-nez v8, :cond_a

    if-nez v7, :cond_a

    iget-boolean v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->boundsChanged:Z

    if-eqz v3, :cond_9

    goto :goto_8

    :cond_9
    move v3, v5

    goto :goto_9

    :cond_a
    :goto_8
    move v3, v4

    :goto_9
    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentTextSize:F

    iput p2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentLetterSpacing:F

    iput-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentTypeface:Landroid/graphics/Typeface;

    iput-boolean v5, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->boundsChanged:Z

    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    iget p2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->scale:F

    cmpl-float p2, p2, v2

    if-eqz p2, :cond_b

    move v5, v4

    .line 1065
    :cond_b
    invoke-virtual {p1, v5}, Landroid/text/TextPaint;->setLinearText(Z)V

    move v5, v3

    :cond_c
    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    if-eqz p1, :cond_d

    if-eqz v5, :cond_f

    :cond_d
    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    iget p2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentTextSize:F

    .line 1071
    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    iget-object p2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentTypeface:Landroid/graphics/Typeface;

    .line 1072
    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    iget p2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentLetterSpacing:F

    .line 1074
    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->text:Ljava/lang/CharSequence;

    .line 1077
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->calculateIsRtl(Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->isRtl:Z

    .line 1078
    invoke-direct {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->shouldDrawMultiline()Z

    move-result p1

    if-eqz p1, :cond_e

    iget v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->maxLines:I

    :cond_e
    iget-boolean p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->isRtl:Z

    invoke-direct {p0, v4, v0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->createStaticLayout(IFZ)Landroid/text/StaticLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textLayout:Landroid/text/StaticLayout;

    .line 1079
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    :cond_f
    return-void
.end method

.method private clearTexture()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTitleTexture:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1178
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTitleTexture:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method private createStaticLayout(IFZ)Landroid/text/StaticLayout;
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1087
    :try_start_0
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getMultilineTextLayoutAlignment()Landroid/text/Layout$Alignment;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->text:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    float-to-int p2, p2

    .line 1089
    invoke-static {v1, v2, p2}, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->obtain(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)Lcom/google/android/material/internal/StaticLayoutBuilderCompat;

    move-result-object p2

    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->titleTextEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 1090
    invoke-virtual {p2, v1}, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Lcom/google/android/material/internal/StaticLayoutBuilderCompat;

    move-result-object p2

    .line 1091
    invoke-virtual {p2, p3}, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->setIsRtl(Z)Lcom/google/android/material/internal/StaticLayoutBuilderCompat;

    move-result-object p2

    .line 1092
    invoke-virtual {p2, v0}, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->setAlignment(Landroid/text/Layout$Alignment;)Lcom/google/android/material/internal/StaticLayoutBuilderCompat;

    move-result-object p2

    const/4 p3, 0x0

    .line 1093
    invoke-virtual {p2, p3}, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->setIncludePad(Z)Lcom/google/android/material/internal/StaticLayoutBuilderCompat;

    move-result-object p2

    .line 1094
    invoke-virtual {p2, p1}, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->setMaxLines(I)Lcom/google/android/material/internal/StaticLayoutBuilderCompat;

    move-result-object p1

    iget p2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->lineSpacingAdd:F

    iget p3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->lineSpacingMultiplier:F

    .line 1095
    invoke-virtual {p1, p2, p3}, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->setLineSpacing(FF)Lcom/google/android/material/internal/StaticLayoutBuilderCompat;

    move-result-object p1

    iget p2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->hyphenationFrequency:I

    .line 1096
    invoke-virtual {p1, p2}, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->setHyphenationFrequency(I)Lcom/google/android/material/internal/StaticLayoutBuilderCompat;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->staticLayoutBuilderConfigurer:Lcom/google/android/material/internal/StaticLayoutBuilderConfigurer;

    .line 1097
    invoke-virtual {p1, p0}, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->setStaticLayoutBuilderConfigurer(Lcom/google/android/material/internal/StaticLayoutBuilderConfigurer;)Lcom/google/android/material/internal/StaticLayoutBuilderCompat;

    move-result-object p0

    .line 1098
    invoke-virtual {p0}, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->build()Landroid/text/StaticLayout;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/android/material/internal/StaticLayoutBuilderCompat$StaticLayoutBuilderCompatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1100
    invoke-virtual {p0}, Lcom/google/android/material/internal/StaticLayoutBuilderCompat$StaticLayoutBuilderCompatException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CollapsingTextHelper"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    .line 1103
    :goto_1
    invoke-static {p0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/text/StaticLayout;

    return-object p0
.end method

.method private drawMultilineTransition(Landroid/graphics/Canvas;FF)V
    .locals 10

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    .line 885
    invoke-virtual {v0}, Landroid/text/TextPaint;->getAlpha()I

    move-result v0

    .line 887
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-boolean v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->fadeModeEnabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    iget v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextBlend:F

    int-to-float v3, v0

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 892
    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setAlpha(I)V

    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    iget v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentShadowRadius:F

    iget v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentShadowDx:F

    iget v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentShadowDy:F

    iget v5, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentShadowColor:I

    .line 902
    invoke-virtual {v1}, Landroid/text/TextPaint;->getAlpha()I

    move-result v6

    invoke-static {v5, v6}, Lcom/google/android/material/color/MaterialColors;->compositeARGBWithAlpha(II)I

    move-result v5

    .line 898
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textLayout:Landroid/text/StaticLayout;

    .line 904
    invoke-virtual {v1, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->fadeModeEnabled:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    iget v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextBlend:F

    int-to-float v3, v0

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 911
    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setAlpha(I)V

    :cond_1
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    iget v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentShadowRadius:F

    iget v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentShadowDx:F

    iget v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentShadowDy:F

    iget v5, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentShadowColor:I

    .line 919
    invoke-virtual {v1}, Landroid/text/TextPaint;->getAlpha()I

    move-result v6

    invoke-static {v5, v6}, Lcom/google/android/material/color/MaterialColors;->compositeARGBWithAlpha(II)I

    move-result v5

    .line 915
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textLayout:Landroid/text/StaticLayout;

    const/4 v9, 0x0

    .line 921
    invoke-virtual {v1, v9}, Landroid/text/StaticLayout;->getLineBaseline(I)I

    move-result v1

    iget-object v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textToDrawCollapsed:Ljava/lang/CharSequence;

    const/4 v4, 0x0

    .line 925
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v6, 0x0

    int-to-float v1, v1

    iget-object v8, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    move-object v2, p1

    move v7, v1

    .line 922
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    iget v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentShadowRadius:F

    iget v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentShadowDx:F

    iget v5, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentShadowDy:F

    iget v6, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentShadowColor:I

    .line 932
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    iget-boolean v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->fadeModeEnabled:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textToDrawCollapsed:Ljava/lang/CharSequence;

    .line 938
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u2026"

    .line 939
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 940
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_2
    move-object v3, v2

    iget-object v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    .line 943
    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setAlpha(I)V

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textLayout:Landroid/text/StaticLayout;

    .line 947
    invoke-virtual {v0, v9}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v6, 0x0

    iget-object v8, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    move-object v2, p1

    move v7, v1

    .line 944
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    :cond_3
    return-void
.end method

.method private ensureExpandedTexture()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTitleTexture:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    .line 1122
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1126
    invoke-direct {p0, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->calculateOffsets(F)V

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textLayout:Landroid/text/StaticLayout;

    .line 1127
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textLayout:Landroid/text/StaticLayout;

    .line 1128
    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    if-lez v0, :cond_2

    if-gtz v1, :cond_1

    goto :goto_0

    .line 1134
    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTitleTexture:Landroid/graphics/Bitmap;

    .line 1135
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTitleTexture:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textLayout:Landroid/text/StaticLayout;

    .line 1136
    invoke-virtual {v1, v0}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->texturePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_2

    .line 1140
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->texturePaint:Landroid/graphics/Paint;

    :cond_2
    :goto_0
    return-void
.end method

.method private getCollapsedTextLeftBound(II)F
    .locals 2

    const/16 v0, 0x11

    if-eq p2, v0, :cond_5

    and-int/lit8 v0, p2, 0x7

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_3

    :cond_0
    const p1, 0x800005

    and-int v0, p2, p1

    if-eq v0, p1, :cond_3

    const/4 p1, 0x5

    and-int/2addr p2, p1

    if-ne p2, p1, :cond_1

    goto :goto_1

    :cond_1
    iget-boolean p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->isRtl:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    .line 292
    iget p1, p1, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    iget p0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextWidth:F

    sub-float/2addr p1, p0

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->left:I

    int-to-float p1, p0

    :goto_0
    return p1

    :cond_3
    :goto_1
    iget-boolean p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->isRtl:Z

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    .line 290
    iget p0, p0, Landroid/graphics/Rect;->left:I

    int-to-float p0, p0

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    iget p0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextWidth:F

    sub-float p0, p1, p0

    :goto_2
    return p0

    :cond_5
    :goto_3
    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    iget p0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextWidth:F

    div-float/2addr p0, p2

    sub-float/2addr p1, p0

    return p1
.end method

.method private getCollapsedTextRightBound(Landroid/graphics/RectF;II)F
    .locals 2

    const/16 v0, 0x11

    if-eq p3, v0, :cond_5

    and-int/lit8 v0, p3, 0x7

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_3

    :cond_0
    const p2, 0x800005

    and-int v0, p3, p2

    if-eq v0, p2, :cond_3

    const/4 p2, 0x5

    and-int/2addr p3, p2

    if-ne p3, p2, :cond_1

    goto :goto_1

    :cond_1
    iget-boolean p2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->isRtl:Z

    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    .line 304
    iget p0, p0, Landroid/graphics/Rect;->right:I

    int-to-float p0, p0

    goto :goto_0

    :cond_2
    iget p1, p1, Landroid/graphics/RectF;->left:F

    iget p0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextWidth:F

    add-float/2addr p0, p1

    :goto_0
    return p0

    :cond_3
    :goto_1
    iget-boolean p2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->isRtl:Z

    if-eqz p2, :cond_4

    .line 302
    iget p1, p1, Landroid/graphics/RectF;->left:F

    iget p0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextWidth:F

    add-float/2addr p1, p0

    goto :goto_2

    :cond_4
    iget-object p0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->right:I

    int-to-float p1, p0

    :goto_2
    return p1

    :cond_5
    :goto_3
    int-to-float p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    iget p0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextWidth:F

    div-float/2addr p0, p2

    add-float/2addr p1, p0

    return p1
.end method

.method private getCurrentColor(Landroid/content/res/ColorStateList;)I
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->state:[I

    if-eqz p0, :cond_1

    .line 714
    invoke-virtual {p1, p0, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    return p0

    .line 716
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    return p0
.end method

.method private getCurrentExpandedTextColor()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextColor:Landroid/content/res/ColorStateList;

    .line 700
    invoke-direct {p0, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCurrentColor(Landroid/content/res/ColorStateList;)I

    move-result p0

    return p0
.end method

.method private getMultilineTextLayoutAlignment()Landroid/text/Layout$Alignment;
    .locals 2

    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextGravity:I

    iget-boolean v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->isRtl:Z

    .line 1108
    invoke-static {v0, v1}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    iget-boolean p0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->isRtl:Z

    if-eqz p0, :cond_0

    .line 1117
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_0
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    :goto_0
    return-object p0

    :cond_1
    iget-boolean p0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->isRtl:Z

    if-eqz p0, :cond_2

    .line 1115
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_1

    :cond_2
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    :goto_1
    return-object p0

    .line 1113
    :cond_3
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method private getTextPaintCollapsed(Landroid/text/TextPaint;)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextSize:F

    .line 353
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTypeface:Landroid/graphics/Typeface;

    .line 354
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget p0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedLetterSpacing:F

    .line 356
    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    return-void
.end method

.method private getTextPaintExpanded(Landroid/text/TextPaint;)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextSize:F

    .line 345
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTypeface:Landroid/graphics/Typeface;

    .line 346
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget p0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedLetterSpacing:F

    .line 348
    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    return-void
.end method

.method private interpolateBounds(F)V
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->fadeModeEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentBounds:Landroid/graphics/RectF;

    iget v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->fadeModeThresholdFraction:F

    cmpg-float p1, p1, v1

    if-gez p1, :cond_0

    iget-object p0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    .line 816
    :goto_0
    invoke-virtual {v0, p0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    .line 818
    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->positionInterpolator:Landroid/animation/TimeInterpolator;

    .line 819
    invoke-static {v1, v2, p1, v3}, Lcom/google/android/material/internal/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentBounds:Landroid/graphics/RectF;

    iget v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedDrawY:F

    iget v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedDrawY:F

    iget-object v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->positionInterpolator:Landroid/animation/TimeInterpolator;

    .line 820
    invoke-static {v1, v2, p1, v3}, Lcom/google/android/material/internal/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    .line 821
    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->positionInterpolator:Landroid/animation/TimeInterpolator;

    .line 822
    invoke-static {v1, v2, p1, v3}, Lcom/google/android/material/internal/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    .line 823
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget-object p0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->positionInterpolator:Landroid/animation/TimeInterpolator;

    .line 824
    invoke-static {v1, v2, p1, p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result p0

    iput p0, v0, Landroid/graphics/RectF;->bottom:F

    :goto_1
    return-void
.end method

.method private static isClose(FF)Z
    .locals 0

    sub-float/2addr p0, p1

    .line 1257
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const p1, 0x3727c5ac    # 1.0E-5f

    cmpg-float p0, p0, p1

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isDefaultIsRtl()Z
    .locals 1

    iget-object p0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->view:Landroid/view/View;

    .line 962
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isTextDirectionHeuristicsIsRtl(Ljava/lang/CharSequence;Z)Z
    .locals 1

    if-eqz p2, :cond_0

    .line 967
    sget-object p0, Landroidx/core/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_RTL:Landroidx/core/text/TextDirectionHeuristicCompat;

    goto :goto_0

    .line 968
    :cond_0
    sget-object p0, Landroidx/core/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_LTR:Landroidx/core/text/TextDirectionHeuristicCompat;

    :goto_0
    const/4 p2, 0x0

    .line 969
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p0, p1, p2, v0}, Landroidx/core/text/TextDirectionHeuristicCompat;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result p0

    return p0
.end method

.method private static lerp(FFFLandroid/animation/TimeInterpolator;)F
    .locals 0

    if-eqz p3, :cond_0

    .line 1295
    invoke-interface {p3, p2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p2

    .line 1297
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result p0

    return p0
.end method

.method private measureTextWidth(Landroid/text/TextPaint;Ljava/lang/CharSequence;)F
    .locals 1

    const/4 p0, 0x0

    .line 811
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p1, p2, p0, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result p0

    return p0
.end method

.method private static rectEquals(Landroid/graphics/Rect;IIII)Z
    .locals 1

    .line 1301
    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-ne v0, p1, :cond_0

    iget p1, p0, Landroid/graphics/Rect;->top:I

    if-ne p1, p2, :cond_0

    iget p1, p0, Landroid/graphics/Rect;->right:I

    if-ne p1, p3, :cond_0

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    if-ne p0, p4, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setCollapsedTextBlend(F)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextBlend:F

    iget-object p0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->view:Landroid/view/View;

    .line 830
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method private setCollapsedTypefaceInternal(Landroid/graphics/Typeface;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedFontCallback:Lcom/google/android/material/resources/CancelableFontCallback;

    if-eqz v0, :cond_0

    .line 486
    invoke-virtual {v0}, Lcom/google/android/material/resources/CancelableFontCallback;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTypefaceDefault:Landroid/graphics/Typeface;

    if-eq v0, p1, :cond_2

    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTypefaceDefault:Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->view:Landroid/view/View;

    .line 492
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 491
    invoke-static {v0, p1}, Lcom/google/android/material/resources/TypefaceUtils;->maybeCopyWithFontWeightAdjustment(Landroid/content/res/Configuration;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTypefaceBold:Landroid/graphics/Typeface;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTypefaceDefault:Landroid/graphics/Typeface;

    :cond_1
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTypeface:Landroid/graphics/Typeface;

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private setExpandedTextBlend(F)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextBlend:F

    iget-object p0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->view:Landroid/view/View;

    .line 835
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method private setExpandedTypefaceInternal(Landroid/graphics/Typeface;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedFontCallback:Lcom/google/android/material/resources/CancelableFontCallback;

    if-eqz v0, :cond_0

    .line 505
    invoke-virtual {v0}, Lcom/google/android/material/resources/CancelableFontCallback;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTypefaceDefault:Landroid/graphics/Typeface;

    if-eq v0, p1, :cond_2

    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTypefaceDefault:Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->view:Landroid/view/View;

    .line 511
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 510
    invoke-static {v0, p1}, Lcom/google/android/material/resources/TypefaceUtils;->maybeCopyWithFontWeightAdjustment(Landroid/content/res/Configuration;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTypefaceBold:Landroid/graphics/Typeface;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTypefaceDefault:Landroid/graphics/Typeface;

    :cond_1
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTypeface:Landroid/graphics/Typeface;

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private setInterpolatedTextSize(F)V
    .locals 1

    .line 973
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->calculateUsingTextSize(F)V

    sget-boolean p1, Lcom/google/android/material/internal/CollapsingTextHelper;->USE_SCALING_TEXTURE:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->scale:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->useTexture:Z

    if-eqz p1, :cond_1

    .line 980
    invoke-direct {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->ensureExpandedTexture()V

    :cond_1
    iget-object p0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->view:Landroid/view/View;

    .line 983
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method private shouldDrawMultiline()Z
    .locals 2

    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->maxLines:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->isRtl:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->fadeModeEnabled:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean p0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->useTexture:Z

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 839
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentBounds:Landroid/graphics/RectF;

    .line 841
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5

    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5

    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    iget v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentTextSize:F

    .line 842
    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    iget v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentDrawX:F

    iget v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentDrawY:F

    iget-boolean v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->useTexture:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTitleTexture:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    iget v5, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->scale:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v5, v6

    if-eqz v6, :cond_1

    iget-boolean v6, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->fadeModeEnabled:Z

    if-nez v6, :cond_1

    .line 858
    invoke-virtual {p1, v5, v5, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_1
    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTitleTexture:Landroid/graphics/Bitmap;

    iget-object p0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->texturePaint:Landroid/graphics/Paint;

    .line 863
    invoke-virtual {p1, v3, v1, v2, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 864
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    .line 868
    :cond_2
    invoke-direct {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->shouldDrawMultiline()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->fadeModeEnabled:Z

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedFraction:F

    iget v5, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->fadeModeThresholdFraction:F

    cmpl-float v3, v3, v5

    if-lez v3, :cond_4

    :cond_3
    iget v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentDrawX:F

    iget-object v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textLayout:Landroid/text/StaticLayout;

    .line 870
    invoke-virtual {v3, v4}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/material/internal/CollapsingTextHelper;->drawMultilineTransition(Landroid/graphics/Canvas;FF)V

    goto :goto_1

    .line 872
    :cond_4
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object p0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textLayout:Landroid/text/StaticLayout;

    .line 873
    invoke-virtual {p0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 876
    :goto_1
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_5
    return-void
.end method

.method public getCollapsedTextActualBounds(Landroid/graphics/RectF;II)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->text:Ljava/lang/CharSequence;

    .line 276
    invoke-direct {p0, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->calculateIsRtl(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->isRtl:Z

    .line 277
    invoke-direct {p0, p2, p3}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCollapsedTextLeftBound(II)F

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p1, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    .line 278
    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 280
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCollapsedTextRightBound(Landroid/graphics/RectF;II)F

    move-result p2

    iget-object p3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->right:I

    int-to-float p3, p3

    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    iput p2, p1, Landroid/graphics/RectF;->right:F

    iget-object p2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    .line 281
    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCollapsedTextHeight()F

    move-result p0

    add-float/2addr p2, p0

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public getCollapsedTextColor()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextColor:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getCollapsedTextGravity()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextGravity:I

    return p0
.end method

.method public getCollapsedTextHeight()F
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->tmpPaint:Landroid/text/TextPaint;

    .line 321
    invoke-direct {p0, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getTextPaintCollapsed(Landroid/text/TextPaint;)V

    iget-object p0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->tmpPaint:Landroid/text/TextPaint;

    .line 323
    invoke-virtual {p0}, Landroid/text/TextPaint;->ascent()F

    move-result p0

    neg-float p0, p0

    return p0
.end method

.method public getCollapsedTextSize()F
    .locals 0

    iget p0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextSize:F

    return p0
.end method

.method public getCollapsedTypeface()Landroid/graphics/Typeface;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTypeface:Landroid/graphics/Typeface;

    if-eqz p0, :cond_0

    goto :goto_0

    .line 520
    :cond_0
    sget-object p0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :goto_0
    return-object p0
.end method

.method public getCurrentCollapsedTextColor()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextColor:Landroid/content/res/ColorStateList;

    .line 705
    invoke-direct {p0, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCurrentColor(Landroid/content/res/ColorStateList;)I

    move-result p0

    return p0
.end method

.method public getExpandedLineCount()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedLineCount:I

    return p0
.end method

.method public getExpandedTextColor()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextColor:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getExpandedTextFullHeight()F
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->tmpPaint:Landroid/text/TextPaint;

    .line 315
    invoke-direct {p0, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getTextPaintExpanded(Landroid/text/TextPaint;)V

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->tmpPaint:Landroid/text/TextPaint;

    .line 317
    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    neg-float v0, v0

    iget-object p0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->tmpPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/text/TextPaint;->descent()F

    move-result p0

    add-float/2addr v0, p0

    return v0
.end method

.method public getExpandedTextGravity()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextGravity:I

    return p0
.end method

.method public getExpandedTextHeight()F
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->tmpPaint:Landroid/text/TextPaint;

    .line 309
    invoke-direct {p0, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getTextPaintExpanded(Landroid/text/TextPaint;)V

    iget-object p0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->tmpPaint:Landroid/text/TextPaint;

    .line 311
    invoke-virtual {p0}, Landroid/text/TextPaint;->ascent()F

    move-result p0

    neg-float p0, p0

    return p0
.end method

.method public getExpandedTextSize()F
    .locals 0

    iget p0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextSize:F

    return p0
.end method

.method public getExpandedTypeface()Landroid/graphics/Typeface;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTypeface:Landroid/graphics/Typeface;

    if-eqz p0, :cond_0

    goto :goto_0

    .line 524
    :cond_0
    sget-object p0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :goto_0
    return-object p0
.end method

.method public getExpansionFraction()F
    .locals 0

    iget p0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedFraction:F

    return p0
.end method

.method public getFadeModeThresholdFraction()F
    .locals 0

    iget p0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->fadeModeThresholdFraction:F

    return p0
.end method

.method public getHyphenationFrequency()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->hyphenationFrequency:I

    return p0
.end method

.method public getLineCount()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textLayout:Landroid/text/StaticLayout;

    if-eqz p0, :cond_0

    .line 1201
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getLineSpacingAdd()F
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textLayout:Landroid/text/StaticLayout;

    .line 1220
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getSpacingAdd()F

    move-result p0

    return p0
.end method

.method public getLineSpacingMultiplier()F
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textLayout:Landroid/text/StaticLayout;

    .line 1230
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getSpacingMultiplier()F

    move-result p0

    return p0
.end method

.method public getMaxLines()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->maxLines:I

    return p0
.end method

.method public getPositionInterpolator()Landroid/animation/TimeInterpolator;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->positionInterpolator:Landroid/animation/TimeInterpolator;

    return-object p0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->text:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getTitleTextEllipsize()Landroid/text/TextUtils$TruncateAt;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->titleTextEllipsize:Landroid/text/TextUtils$TruncateAt;

    return-object p0
.end method

.method public isRtlTextDirectionHeuristicsEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->isRtlTextDirectionHeuristicsEnabled:Z

    return p0
.end method

.method public final isStateful()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 574
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextColor:Landroid/content/res/ColorStateList;

    if-eqz p0, :cond_2

    .line 575
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public maybeUpdateFontWeightAdjustment(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTypefaceDefault:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    .line 531
    invoke-static {p1, v0}, Lcom/google/android/material/resources/TypefaceUtils;->maybeCopyWithFontWeightAdjustment(Landroid/content/res/Configuration;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTypefaceBold:Landroid/graphics/Typeface;

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTypefaceDefault:Landroid/graphics/Typeface;

    if-eqz v0, :cond_1

    .line 536
    invoke-static {p1, v0}, Lcom/google/android/material/resources/TypefaceUtils;->maybeCopyWithFontWeightAdjustment(Landroid/content/res/Configuration;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTypefaceBold:Landroid/graphics/Typeface;

    :cond_1
    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTypefaceBold:Landroid/graphics/Typeface;

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTypefaceDefault:Landroid/graphics/Typeface;

    :goto_0
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTypeface:Landroid/graphics/Typeface;

    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTypefaceBold:Landroid/graphics/Typeface;

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTypefaceDefault:Landroid/graphics/Typeface;

    :goto_1
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTypeface:Landroid/graphics/Typeface;

    const/4 p1, 0x1

    .line 542
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate(Z)V

    return-void
.end method

.method public recalculate()V
    .locals 1

    const/4 v0, 0x0

    .line 1145
    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate(Z)V

    return-void
.end method

.method public recalculate(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->view:Landroid/view/View;

    .line 1149
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    .line 1152
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->calculateBaseOffsets(Z)V

    .line 1153
    invoke-direct {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->calculateCurrentOffsets()V

    :cond_2
    return-void
.end method

.method public setCollapsedAndExpandedTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextColor:Landroid/content/res/ColorStateList;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextColor:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    :cond_0
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextColor:Landroid/content/res/ColorStateList;

    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextColor:Landroid/content/res/ColorStateList;

    .line 242
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    :cond_1
    return-void
.end method

.method public setCollapsedBounds(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    .line 265
    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/android/material/internal/CollapsingTextHelper;->rectEquals(Landroid/graphics/Rect;IIII)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    .line 266
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->boundsChanged:Z

    :cond_0
    return-void
.end method

.method public setCollapsedBounds(Landroid/graphics/Rect;)V
    .locals 3

    .line 272
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedBounds(IIII)V

    return-void
.end method

.method public setCollapsedTextAppearance(I)V
    .locals 3

    .line 383
    new-instance v0, Lcom/google/android/material/resources/TextAppearance;

    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/material/resources/TextAppearance;-><init>(Landroid/content/Context;I)V

    .line 385
    invoke-virtual {v0}, Lcom/google/android/material/resources/TextAppearance;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 386
    invoke-virtual {v0}, Lcom/google/android/material/resources/TextAppearance;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextColor:Landroid/content/res/ColorStateList;

    .line 388
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/material/resources/TextAppearance;->getTextSize()F

    move-result p1

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-eqz p1, :cond_1

    .line 389
    invoke-virtual {v0}, Lcom/google/android/material/resources/TextAppearance;->getTextSize()F

    move-result p1

    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextSize:F

    .line 391
    :cond_1
    iget-object p1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowColor:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_2

    .line 392
    iget-object p1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowColor:Landroid/content/res/ColorStateList;

    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedShadowColor:Landroid/content/res/ColorStateList;

    .line 394
    :cond_2
    iget p1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowDx:F

    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedShadowDx:F

    .line 395
    iget p1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowDy:F

    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedShadowDy:F

    .line 396
    iget p1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowRadius:F

    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedShadowRadius:F

    .line 397
    iget p1, v0, Lcom/google/android/material/resources/TextAppearance;->letterSpacing:F

    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedLetterSpacing:F

    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedFontCallback:Lcom/google/android/material/resources/CancelableFontCallback;

    if-eqz p1, :cond_3

    .line 401
    invoke-virtual {p1}, Lcom/google/android/material/resources/CancelableFontCallback;->cancel()V

    .line 403
    :cond_3
    new-instance p1, Lcom/google/android/material/resources/CancelableFontCallback;

    new-instance v1, Lcom/google/android/material/internal/CollapsingTextHelper$1;

    invoke-direct {v1, p0}, Lcom/google/android/material/internal/CollapsingTextHelper$1;-><init>(Lcom/google/android/material/internal/CollapsingTextHelper;)V

    .line 411
    invoke-virtual {v0}, Lcom/google/android/material/resources/TextAppearance;->getFallbackFont()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Lcom/google/android/material/resources/CancelableFontCallback;-><init>(Lcom/google/android/material/resources/CancelableFontCallback$ApplyFont;Landroid/graphics/Typeface;)V

    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedFontCallback:Lcom/google/android/material/resources/CancelableFontCallback;

    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->view:Landroid/view/View;

    .line 412
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedFontCallback:Lcom/google/android/material/resources/CancelableFontCallback;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/resources/TextAppearance;->getFontAsync(Landroid/content/Context;Lcom/google/android/material/resources/TextAppearanceFontCallback;)V

    .line 414
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    return-void
.end method

.method public setCollapsedTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextColor:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextColor:Landroid/content/res/ColorStateList;

    .line 227
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    :cond_0
    return-void
.end method

.method public setCollapsedTextGravity(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextGravity:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextGravity:I

    .line 374
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    :cond_0
    return-void
.end method

.method public setCollapsedTextSize(F)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextSize:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextSize:F

    .line 220
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    :cond_0
    return-void
.end method

.method public setCollapsedTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    .line 462
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedTypefaceInternal(Landroid/graphics/Typeface;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 463
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    :cond_0
    return-void
.end method

.method public setCurrentOffsetY(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentOffsetY:I

    return-void
.end method

.method public setExpandedBounds(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    .line 254
    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/android/material/internal/CollapsingTextHelper;->rectEquals(Landroid/graphics/Rect;IIII)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    .line 255
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->boundsChanged:Z

    :cond_0
    return-void
.end method

.method public setExpandedBounds(Landroid/graphics/Rect;)V
    .locals 3

    .line 261
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpandedBounds(IIII)V

    return-void
.end method

.method public setExpandedLetterSpacing(F)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedLetterSpacing:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedLetterSpacing:F

    .line 249
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    :cond_0
    return-void
.end method

.method public setExpandedTextAppearance(I)V
    .locals 3

    .line 418
    new-instance v0, Lcom/google/android/material/resources/TextAppearance;

    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/material/resources/TextAppearance;-><init>(Landroid/content/Context;I)V

    .line 419
    invoke-virtual {v0}, Lcom/google/android/material/resources/TextAppearance;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 420
    invoke-virtual {v0}, Lcom/google/android/material/resources/TextAppearance;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextColor:Landroid/content/res/ColorStateList;

    .line 422
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/material/resources/TextAppearance;->getTextSize()F

    move-result p1

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-eqz p1, :cond_1

    .line 423
    invoke-virtual {v0}, Lcom/google/android/material/resources/TextAppearance;->getTextSize()F

    move-result p1

    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextSize:F

    .line 425
    :cond_1
    iget-object p1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowColor:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_2

    .line 426
    iget-object p1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowColor:Landroid/content/res/ColorStateList;

    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedShadowColor:Landroid/content/res/ColorStateList;

    .line 428
    :cond_2
    iget p1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowDx:F

    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedShadowDx:F

    .line 429
    iget p1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowDy:F

    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedShadowDy:F

    .line 430
    iget p1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowRadius:F

    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedShadowRadius:F

    .line 431
    iget p1, v0, Lcom/google/android/material/resources/TextAppearance;->letterSpacing:F

    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedLetterSpacing:F

    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedFontCallback:Lcom/google/android/material/resources/CancelableFontCallback;

    if-eqz p1, :cond_3

    .line 435
    invoke-virtual {p1}, Lcom/google/android/material/resources/CancelableFontCallback;->cancel()V

    .line 437
    :cond_3
    new-instance p1, Lcom/google/android/material/resources/CancelableFontCallback;

    new-instance v1, Lcom/google/android/material/internal/CollapsingTextHelper$2;

    invoke-direct {v1, p0}, Lcom/google/android/material/internal/CollapsingTextHelper$2;-><init>(Lcom/google/android/material/internal/CollapsingTextHelper;)V

    .line 445
    invoke-virtual {v0}, Lcom/google/android/material/resources/TextAppearance;->getFallbackFont()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Lcom/google/android/material/resources/CancelableFontCallback;-><init>(Lcom/google/android/material/resources/CancelableFontCallback$ApplyFont;Landroid/graphics/Typeface;)V

    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedFontCallback:Lcom/google/android/material/resources/CancelableFontCallback;

    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->view:Landroid/view/View;

    .line 446
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedFontCallback:Lcom/google/android/material/resources/CancelableFontCallback;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/resources/TextAppearance;->getFontAsync(Landroid/content/Context;Lcom/google/android/material/resources/TextAppearanceFontCallback;)V

    .line 448
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    return-void
.end method

.method public setExpandedTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextColor:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextColor:Landroid/content/res/ColorStateList;

    .line 234
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    :cond_0
    return-void
.end method

.method public setExpandedTextGravity(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextGravity:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextGravity:I

    .line 363
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    :cond_0
    return-void
.end method

.method public setExpandedTextSize(F)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextSize:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextSize:F

    .line 213
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    :cond_0
    return-void
.end method

.method public setExpandedTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    .line 468
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpandedTypefaceInternal(Landroid/graphics/Typeface;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 469
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    :cond_0
    return-void
.end method

.method public setExpansionFraction(F)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 554
    invoke-static {p1, v0, v1}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p1

    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedFraction:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedFraction:F

    .line 558
    invoke-direct {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->calculateCurrentOffsets()V

    :cond_0
    return-void
.end method

.method public setFadeModeEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->fadeModeEnabled:Z

    return-void
.end method

.method public setFadeModeStartFraction(F)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->fadeModeStartFraction:F

    .line 332
    invoke-direct {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->calculateFadeModeThresholdFraction()F

    move-result p1

    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->fadeModeThresholdFraction:F

    return-void
.end method

.method public setHyphenationFrequency(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->hyphenationFrequency:I

    return-void
.end method

.method public setLineSpacingAdd(F)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->lineSpacingAdd:F

    return-void
.end method

.method public setLineSpacingMultiplier(F)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->lineSpacingMultiplier:F

    return-void
.end method

.method public setMaxLines(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->maxLines:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->maxLines:I

    .line 1186
    invoke-direct {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->clearTexture()V

    .line 1187
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    :cond_0
    return-void
.end method

.method public setPositionInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->positionInterpolator:Landroid/animation/TimeInterpolator;

    .line 202
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    return-void
.end method

.method public setRtlTextDirectionHeuristicsEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->isRtlTextDirectionHeuristicsEnabled:Z

    return-void
.end method

.method public final setState([I)Z
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->state:[I

    .line 565
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->isStateful()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 566
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setStaticLayoutBuilderConfigurer(Lcom/google/android/material/internal/StaticLayoutBuilderConfigurer;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->staticLayoutBuilderConfigurer:Lcom/google/android/material/internal/StaticLayoutBuilderConfigurer;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->staticLayoutBuilderConfigurer:Lcom/google/android/material/internal/StaticLayoutBuilderConfigurer;

    const/4 p1, 0x1

    .line 1248
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate(Z)V

    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->text:Ljava/lang/CharSequence;

    .line 1163
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->text:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    .line 1166
    invoke-direct {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->clearTexture()V

    .line 1167
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    :cond_1
    return-void
.end method

.method public setTextSizeInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textSizeInterpolator:Landroid/animation/TimeInterpolator;

    .line 197
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    return-void
.end method

.method public setTitleTextEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->titleTextEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 453
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    return-void
.end method

.method public setTypefaces(Landroid/graphics/Typeface;)V
    .locals 1

    .line 474
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedTypefaceInternal(Landroid/graphics/Typeface;)Z

    move-result v0

    .line 475
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpandedTypefaceInternal(Landroid/graphics/Typeface;)Z

    move-result p1

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    .line 477
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    :cond_1
    return-void
.end method
