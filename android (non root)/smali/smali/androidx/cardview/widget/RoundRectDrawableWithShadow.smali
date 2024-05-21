.class Landroidx/cardview/widget/RoundRectDrawableWithShadow;
.super Landroid/graphics/drawable/Drawable;
.source "RoundRectDrawableWithShadow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/cardview/widget/RoundRectDrawableWithShadow$RoundRectHelper;
    }
.end annotation


# static fields
.field private static final COS_45:D

.field private static final SHADOW_MULTIPLIER:F = 1.5f

.field static sRoundRectHelper:Landroidx/cardview/widget/RoundRectDrawableWithShadow$RoundRectHelper;


# instance fields
.field private mAddPaddingForCorners:Z

.field private mBackground:Landroid/content/res/ColorStateList;

.field private final mCardBounds:Landroid/graphics/RectF;

.field private mCornerRadius:F

.field private mCornerShadowPaint:Landroid/graphics/Paint;

.field private mCornerShadowPath:Landroid/graphics/Path;

.field private mDirty:Z

.field private mEdgeShadowPaint:Landroid/graphics/Paint;

.field private final mInsetShadow:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPrintedShadowClipWarning:Z

.field private mRawMaxShadowSize:F

.field private mRawShadowSize:F

.field private final mShadowEndColor:I

.field private mShadowSize:F

.field private final mShadowStartColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide v0, 0x4046800000000000L    # 45.0

    .line 41
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    sput-wide v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->COS_45:D

    return-void
.end method

.method constructor <init>(Landroid/content/res/Resources;Landroid/content/res/ColorStateList;FFF)V
    .locals 2

    .line 92
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mDirty:Z

    iput-boolean v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mAddPaddingForCorners:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mPrintedShadowClipWarning:Z

    .line 93
    sget v1, Landroidx/cardview/R$color;->cardview_shadow_start_color:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowStartColor:I

    .line 94
    sget v1, Landroidx/cardview/R$color;->cardview_shadow_end_color:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowEndColor:I

    .line 95
    sget v1, Landroidx/cardview/R$dimen;->cardview_compat_inset_shadow:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mInsetShadow:I

    .line 96
    new-instance p1, Landroid/graphics/Paint;

    const/4 v1, 0x5

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mPaint:Landroid/graphics/Paint;

    .line 97
    invoke-direct {p0, p2}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->setBackground(Landroid/content/res/ColorStateList;)V

    .line 98
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPaint:Landroid/graphics/Paint;

    .line 99
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p3, p1

    float-to-int p1, p3

    int-to-float p1, p1

    iput p1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    .line 101
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    .line 102
    new-instance p1, Landroid/graphics/Paint;

    iget-object p2, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPaint:Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object p1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Landroid/graphics/Paint;

    .line 103
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 104
    invoke-direct {p0, p4, p5}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->setShadowSize(FF)V

    return-void
.end method

.method private buildComponents(Landroid/graphics/Rect;)V
    .locals 6

    iget v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    iget-object v1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    .line 335
    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    add-float/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    add-float/2addr v3, v0

    iget v4, p1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v5, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    sub-float/2addr v4, v5

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    sub-float/2addr p1, v0

    invoke-virtual {v1, v2, v3, v4, p1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 337
    invoke-direct {p0}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->buildShadowCorners()V

    return-void
.end method

.method private buildShadowCorners()V
    .locals 15

    .line 297
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    neg-float v2, v1

    neg-float v3, v1

    invoke-direct {v0, v2, v3, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 298
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iget v2, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowSize:F

    neg-float v3, v2

    neg-float v2, v2

    .line 299
    invoke-virtual {v1, v3, v2}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v2, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    if-nez v2, :cond_0

    .line 302
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    goto :goto_0

    .line 304
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    :goto_0
    iget-object v2, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    .line 306
    sget-object v3, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v2, v3}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    iget-object v2, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    iget v3, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    neg-float v3, v3

    const/4 v4, 0x0

    .line 307
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v2, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    iget v3, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowSize:F

    neg-float v3, v3

    .line 308
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    iget-object v2, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    const/high16 v3, 0x43340000    # 180.0f

    const/high16 v5, 0x42b40000    # 90.0f

    const/4 v6, 0x0

    .line 310
    invoke-virtual {v2, v1, v3, v5, v6}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    iget-object v1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    const/high16 v2, 0x43870000    # 270.0f

    const/high16 v3, -0x3d4c0000    # -90.0f

    .line 312
    invoke-virtual {v1, v0, v2, v3, v6}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    iget-object v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    .line 313
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    iget v1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowSize:F

    add-float/2addr v1, v0

    div-float/2addr v0, v1

    iget-object v1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPaint:Landroid/graphics/Paint;

    .line 315
    new-instance v2, Landroid/graphics/RadialGradient;

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget v3, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    iget v5, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowSize:F

    add-float v10, v3, v5

    iget v3, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowStartColor:I

    iget v5, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowEndColor:I

    filled-new-array {v3, v3, v5}, [I

    move-result-object v11

    const/4 v3, 0x3

    new-array v12, v3, [F

    aput v4, v12, v6

    const/4 v4, 0x1

    aput v0, v12, v4

    const/4 v0, 0x2

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v12, v0

    sget-object v13, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Landroid/graphics/Paint;

    .line 323
    new-instance v1, Landroid/graphics/LinearGradient;

    iget v2, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    neg-float v4, v2

    iget v5, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowSize:F

    add-float v9, v4, v5

    const/4 v10, 0x0

    neg-float v2, v2

    sub-float v11, v2, v5

    iget v2, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowStartColor:I

    iget v4, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowEndColor:I

    filled-new-array {v2, v2, v4}, [I

    move-result-object v12

    new-array v13, v3, [F

    fill-array-data v13, :array_0

    sget-object v14, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v7, v1

    invoke-direct/range {v7 .. v14}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object p0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Landroid/graphics/Paint;

    .line 327
    invoke-virtual {p0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static calculateHorizontalPadding(FFZ)F
    .locals 6

    if-eqz p2, :cond_0

    float-to-double v0, p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sget-wide v4, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->COS_45:D

    sub-double/2addr v2, v4

    float-to-double p0, p1

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    double-to-float p0, v0

    :cond_0
    return p0
.end method

.method static calculateVerticalPadding(FFZ)F
    .locals 6

    const/high16 v0, 0x3fc00000    # 1.5f

    if-eqz p2, :cond_0

    mul-float/2addr p0, v0

    float-to-double v0, p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sget-wide v4, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->COS_45:D

    sub-double/2addr v2, v4

    float-to-double p0, p1

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    double-to-float p0, v0

    return p0

    :cond_0
    mul-float/2addr p0, v0

    return p0
.end method

.method private drawShadow(Landroid/graphics/Canvas;)V
    .locals 12

    iget v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    neg-float v1, v0

    iget v2, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowSize:F

    sub-float/2addr v1, v2

    iget v2, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mInsetShadow:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget v2, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawShadowSize:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    iget-object v2, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    .line 251
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float v9, v0, v3

    sub-float/2addr v2, v9

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lez v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v5

    :goto_0
    iget-object v6, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    .line 252
    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    sub-float/2addr v6, v9

    cmpl-float v3, v6, v3

    if-lez v3, :cond_1

    move v10, v4

    goto :goto_1

    :cond_1
    move v10, v5

    .line 254
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v11

    iget-object v3, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    .line 255
    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v0

    iget-object v4, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v0

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    iget-object v4, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPaint:Landroid/graphics/Paint;

    .line 256
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz v2, :cond_2

    const/4 v4, 0x0

    iget-object v3, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    .line 259
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    sub-float v6, v3, v9

    iget v3, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    neg-float v7, v3

    iget-object v8, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Landroid/graphics/Paint;

    move-object v3, p1

    move v5, v1

    .line 258
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 262
    :cond_2
    invoke-virtual {p1, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 264
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v11

    iget-object v3, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    .line 265
    iget v3, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v0

    iget-object v4, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v0

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v3, 0x43340000    # 180.0f

    .line 266
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v3, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    iget-object v4, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPaint:Landroid/graphics/Paint;

    .line 267
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz v2, :cond_3

    const/4 v4, 0x0

    iget-object v2, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    .line 270
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    sub-float v6, v2, v9

    iget v2, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    neg-float v2, v2

    iget v3, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowSize:F

    add-float v7, v2, v3

    iget-object v8, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Landroid/graphics/Paint;

    move-object v3, p1

    move v5, v1

    .line 269
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 273
    :cond_3
    invoke-virtual {p1, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 275
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    iget-object v3, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    .line 276
    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v0

    iget-object v4, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v0

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v3, 0x43870000    # 270.0f

    .line 277
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v3, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    iget-object v4, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPaint:Landroid/graphics/Paint;

    .line 278
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz v10, :cond_4

    const/4 v4, 0x0

    iget-object v3, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    .line 281
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    sub-float v6, v3, v9

    iget v3, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    neg-float v7, v3

    iget-object v8, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Landroid/graphics/Paint;

    move-object v3, p1

    move v5, v1

    .line 280
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 283
    :cond_4
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 285
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    iget-object v3, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    .line 286
    iget v3, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v0

    iget-object v4, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v0

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v0, 0x42b40000    # 90.0f

    .line 287
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    iget-object v3, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPaint:Landroid/graphics/Paint;

    .line 288
    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz v10, :cond_5

    const/4 v4, 0x0

    iget-object v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    .line 291
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    sub-float v6, v0, v9

    iget v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    neg-float v7, v0

    iget-object v8, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Landroid/graphics/Paint;

    move-object v3, p1

    move v5, v1

    .line 290
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 293
    :cond_5
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method private setBackground(Landroid/content/res/ColorStateList;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 108
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mBackground:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mPaint:Landroid/graphics/Paint;

    .line 109
    invoke-virtual {p0}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->getState()[I

    move-result-object v1

    iget-object p0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mBackground:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    invoke-virtual {p1, v1, p0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private setShadowSize(FF)V
    .locals 3

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    const-string v2, ". Must be >= 0"

    if-ltz v1, :cond_4

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_3

    .line 150
    invoke-direct {p0, p1}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->toEven(F)I

    move-result p1

    int-to-float p1, p1

    .line 151
    invoke-direct {p0, p2}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->toEven(F)I

    move-result p2

    int-to-float p2, p2

    cmpl-float v0, p1, p2

    const/4 v1, 0x1

    if-lez v0, :cond_1

    iget-boolean p1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mPrintedShadowClipWarning:Z

    if-nez p1, :cond_0

    iput-boolean v1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mPrintedShadowClipWarning:Z

    :cond_0
    move p1, p2

    :cond_1
    iget v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawShadowSize:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_2

    iget v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_2

    return-void

    :cond_2
    iput p1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawShadowSize:F

    iput p2, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    const/high16 p2, 0x3fc00000    # 1.5f

    mul-float/2addr p1, p2

    iget p2, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mInsetShadow:I

    int-to-float p2, p2

    add-float/2addr p1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p1, p2

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowSize:F

    iput-boolean v1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mDirty:Z

    .line 165
    invoke-virtual {p0}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->invalidateSelf()V

    return-void

    .line 147
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Invalid max shadow size "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 143
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Invalid shadow size "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private toEven(F)I
    .locals 1

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    .line 117
    rem-int/lit8 p1, p0, 0x2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    sub-int/2addr p0, v0

    :cond_0
    return p0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    iget-boolean v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mDirty:Z

    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {p0}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->buildComponents(Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mDirty:Z

    :cond_0
    iget v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawShadowSize:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/4 v2, 0x0

    .line 242
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 243
    invoke-direct {p0, p1}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->drawShadow(Landroid/graphics/Canvas;)V

    iget v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawShadowSize:F

    neg-float v0, v0

    div-float/2addr v0, v1

    .line 244
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    sget-object v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->sRoundRectHelper:Landroidx/cardview/widget/RoundRectDrawableWithShadow$RoundRectHelper;

    iget-object v1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    iget v2, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    iget-object p0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mPaint:Landroid/graphics/Paint;

    .line 245
    invoke-interface {v0, p1, v1, v2, p0}, Landroidx/cardview/widget/RoundRectDrawableWithShadow$RoundRectHelper;->drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/graphics/Paint;)V

    return-void
.end method

.method getColor()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mBackground:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method getCornerRadius()F
    .locals 0

    iget p0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    return p0
.end method

.method getMaxShadowAndCornerPadding(Landroid/graphics/Rect;)V
    .locals 0

    .line 345
    invoke-virtual {p0, p1}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->getPadding(Landroid/graphics/Rect;)Z

    return-void
.end method

.method getMaxShadowSize()F
    .locals 0

    iget p0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    return p0
.end method

.method getMinHeight()F
    .locals 5

    iget v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    iget v1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    iget v2, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mInsetShadow:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float v3, v0, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v1, v3

    .line 371
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v0, v4

    iget v1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    mul-float/2addr v1, v2

    iget p0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mInsetShadow:I

    int-to-float p0, p0

    add-float/2addr v1, p0

    mul-float/2addr v1, v4

    add-float/2addr v0, v1

    return v0
.end method

.method getMinWidth()F
    .locals 4

    iget v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    iget v1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    iget v2, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mInsetShadow:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v0, v2

    add-float/2addr v1, v3

    .line 366
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v0, v2

    iget v1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    iget p0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mInsetShadow:I

    int-to-float p0, p0

    add-float/2addr v1, p0

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 3

    iget v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    iget v1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    iget-boolean v2, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mAddPaddingForCorners:Z

    .line 170
    invoke-static {v0, v1, v2}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->calculateVerticalPadding(FFZ)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    iget v2, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    iget-boolean p0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mAddPaddingForCorners:Z

    .line 172
    invoke-static {v1, v2, p0}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->calculateHorizontalPadding(FFZ)F

    move-result p0

    float-to-double v1, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int p0, v1

    .line 174
    invoke-virtual {p1, p0, v0, p0, v0}, Landroid/graphics/Rect;->set(IIII)V

    const/4 p0, 0x1

    return p0
.end method

.method getShadowSize()F
    .locals 0

    iget p0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawShadowSize:F

    return p0
.end method

.method public isStateful()Z
    .locals 1

    iget-object v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mBackground:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

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

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 137
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mDirty:Z

    return-void
.end method

.method protected onStateChange([I)Z
    .locals 2

    iget-object v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mBackground:Landroid/content/res/ColorStateList;

    .line 198
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    iget-object v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mPaint:Landroid/graphics/Paint;

    .line 199
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mPaint:Landroid/graphics/Paint;

    .line 202
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mDirty:Z

    .line 204
    invoke-virtual {p0}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->invalidateSelf()V

    return p1
.end method

.method setAddPaddingForCorners(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mAddPaddingForCorners:Z

    .line 125
    invoke-virtual {p0}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->invalidateSelf()V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mPaint:Landroid/graphics/Paint;

    .line 130
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPaint:Landroid/graphics/Paint;

    .line 131
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Landroid/graphics/Paint;

    .line 132
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method setColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 377
    invoke-direct {p0, p1}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->setBackground(Landroid/content/res/ColorStateList;)V

    .line 378
    invoke-virtual {p0}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    iget-object p0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mPaint:Landroid/graphics/Paint;

    .line 215
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method setCornerRadius(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    int-to-float p1, p1

    iget v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mDirty:Z

    .line 233
    invoke-virtual {p0}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->invalidateSelf()V

    return-void

    .line 225
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid radius "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ". Must be >= 0"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method setMaxShadowSize(F)V
    .locals 1

    iget v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawShadowSize:F

    .line 353
    invoke-direct {p0, v0, p1}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->setShadowSize(FF)V

    return-void
.end method

.method setShadowSize(F)V
    .locals 1

    iget v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    .line 349
    invoke-direct {p0, p1, v0}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->setShadowSize(FF)V

    return-void
.end method
