.class public Lcom/google/android/material/shape/MaterialShapeDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "MaterialShapeDrawable.java"

# interfaces
.implements Landroidx/core/graphics/drawable/TintAwareDrawable;
.implements Lcom/google/android/material/shape/Shapeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;,
        Lcom/google/android/material/shape/MaterialShapeDrawable$CompatibilityShadowMode;
    }
.end annotation


# static fields
.field public static final SHADOW_COMPAT_MODE_ALWAYS:I = 0x2

.field public static final SHADOW_COMPAT_MODE_DEFAULT:I = 0x0

.field public static final SHADOW_COMPAT_MODE_NEVER:I = 0x1

.field private static final SHADOW_OFFSET_MULTIPLIER:F = 0.25f

.field private static final SHADOW_RADIUS_MULTIPLIER:F = 0.75f

.field private static final TAG:Ljava/lang/String; = "MaterialShapeDrawable"

.field private static final clearPaint:Landroid/graphics/Paint;


# instance fields
.field private final containsIncompatibleShadowOp:Ljava/util/BitSet;

.field private final cornerShadowOperation:[Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;

.field private drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

.field private final edgeShadowOperation:[Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;

.field private final fillPaint:Landroid/graphics/Paint;

.field private final insetRectF:Landroid/graphics/RectF;

.field private final matrix:Landroid/graphics/Matrix;

.field private final path:Landroid/graphics/Path;

.field private final pathBounds:Landroid/graphics/RectF;

.field private pathDirty:Z

.field private final pathInsetByStroke:Landroid/graphics/Path;

.field private final pathProvider:Lcom/google/android/material/shape/ShapeAppearancePathProvider;

.field private final pathShadowListener:Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;

.field private final rectF:Landroid/graphics/RectF;

.field private resolvedTintColor:I

.field private final scratchRegion:Landroid/graphics/Region;

.field private shadowBitmapDrawingEnable:Z

.field private final shadowRenderer:Lcom/google/android/material/shadow/ShadowRenderer;

.field private final strokePaint:Landroid/graphics/Paint;

.field private strokeShapeAppearance:Lcom/google/android/material/shape/ShapeAppearanceModel;

.field private strokeTintFilter:Landroid/graphics/PorterDuffColorFilter;

.field private tintFilter:Landroid/graphics/PorterDuffColorFilter;

.field private final transparentRegion:Landroid/graphics/Region;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 110
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/google/android/material/shape/MaterialShapeDrawable;->clearPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    .line 112
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 113
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 205
    new-instance v0, Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-direct {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 213
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    return-void
.end method

.method protected constructor <init>(Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;)V
    .locals 5

    .line 229
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;

    iput-object v1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->cornerShadowOperation:[Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;

    new-array v0, v0, [Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;

    iput-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->edgeShadowOperation:[Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;

    .line 121
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->containsIncompatibleShadowOp:Ljava/util/BitSet;

    .line 125
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->matrix:Landroid/graphics/Matrix;

    .line 126
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->path:Landroid/graphics/Path;

    .line 127
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->pathInsetByStroke:Landroid/graphics/Path;

    .line 128
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->rectF:Landroid/graphics/RectF;

    .line 129
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->insetRectF:Landroid/graphics/RectF;

    .line 130
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->transparentRegion:Landroid/graphics/Region;

    .line 131
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->scratchRegion:Landroid/graphics/Region;

    .line 134
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->fillPaint:Landroid/graphics/Paint;

    .line 135
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->strokePaint:Landroid/graphics/Paint;

    .line 137
    new-instance v3, Lcom/google/android/material/shadow/ShadowRenderer;

    invoke-direct {v3}, Lcom/google/android/material/shadow/ShadowRenderer;-><init>()V

    iput-object v3, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->shadowRenderer:Lcom/google/android/material/shadow/ShadowRenderer;

    .line 143
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 144
    invoke-static {}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->getInstance()Lcom/google/android/material/shape/ShapeAppearancePathProvider;

    move-result-object v3

    goto :goto_0

    .line 145
    :cond_0
    new-instance v3, Lcom/google/android/material/shape/ShapeAppearancePathProvider;

    invoke-direct {v3}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;-><init>()V

    :goto_0
    iput-object v3, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->pathProvider:Lcom/google/android/material/shape/ShapeAppearancePathProvider;

    .line 151
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->pathBounds:Landroid/graphics/RectF;

    iput-boolean v1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->shadowBitmapDrawingEnable:Z

    iput-object p1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 231
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 232
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 233
    invoke-direct {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->updateTintFilter()Z

    .line 234
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getState()[I

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->updateColorsForState([I)Z

    .line 236
    new-instance p1, Lcom/google/android/material/shape/MaterialShapeDrawable$1;

    invoke-direct {p1, p0}, Lcom/google/android/material/shape/MaterialShapeDrawable$1;-><init>(Lcom/google/android/material/shape/MaterialShapeDrawable;)V

    iput-object p1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->pathShadowListener:Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 2

    .line 222
    new-instance v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;Lcom/google/android/material/elevation/ElevationOverlayProvider;)V

    invoke-direct {p0, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/shape/ShapePathModel;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 218
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/shape/MaterialShapeDrawable;)Ljava/util/BitSet;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->containsIncompatibleShadowOp:Ljava/util/BitSet;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/material/shape/MaterialShapeDrawable;)[Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->cornerShadowOperation:[Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/material/shape/MaterialShapeDrawable;)[Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->edgeShadowOperation:[Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;

    return-object p0
.end method

.method static synthetic access$302(Lcom/google/android/material/shape/MaterialShapeDrawable;Z)Z
    .locals 0

    .line 76
    iput-boolean p1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->pathDirty:Z

    return p1
.end method

.method private calculatePaintColorTintFilter(Landroid/graphics/Paint;Z)Landroid/graphics/PorterDuffColorFilter;
    .locals 0

    if-eqz p2, :cond_0

    .line 1289
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result p1

    .line 1290
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->compositeElevationOverlayIfNeeded(I)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->resolvedTintColor:I

    if-eq p2, p1, :cond_0

    .line 1293
    new-instance p0, Landroid/graphics/PorterDuffColorFilter;

    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, p2, p1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private calculatePath(Landroid/graphics/RectF;Landroid/graphics/Path;)V
    .locals 5

    .line 1238
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->calculatePathForSize(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 1240
    iget v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->scale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->matrix:Landroid/graphics/Matrix;

    .line 1241
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 1242
    iget v1, v1, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->scale:F

    iget-object v2, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget v2, v2, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->scale:F

    .line 1243
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    div-float/2addr p1, v4

    .line 1242
    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/graphics/Matrix;->setScale(FFFF)V

    iget-object p1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->matrix:Landroid/graphics/Matrix;

    .line 1244
    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    :cond_0
    iget-object p0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->pathBounds:Landroid/graphics/RectF;

    const/4 p1, 0x1

    .line 1248
    invoke-virtual {p2, p0, p1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    return-void
.end method

.method private calculateStrokePath()V
    .locals 4

    .line 1196
    invoke-direct {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getStrokeInsetLength()F

    move-result v0

    neg-float v0, v0

    .line 1198
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v1

    new-instance v2, Lcom/google/android/material/shape/MaterialShapeDrawable$2;

    invoke-direct {v2, p0, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable$2;-><init>(Lcom/google/android/material/shape/MaterialShapeDrawable;F)V

    .line 1199
    invoke-virtual {v1, v2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->withTransformedCornerSizes(Lcom/google/android/material/shape/ShapeAppearanceModel$CornerSizeUnaryOperator;)Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->strokeShapeAppearance:Lcom/google/android/material/shape/ShapeAppearanceModel;

    iget-object v1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->pathProvider:Lcom/google/android/material/shape/ShapeAppearancePathProvider;

    iget-object v2, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 1212
    iget v2, v2, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->interpolation:F

    .line 1215
    invoke-direct {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getBoundsInsetByStroke()Landroid/graphics/RectF;

    move-result-object v3

    iget-object p0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->pathInsetByStroke:Landroid/graphics/Path;

    .line 1212
    invoke-virtual {v1, v0, v2, v3, p0}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->calculatePath(Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/graphics/RectF;Landroid/graphics/Path;)V

    return-void
.end method

.method private calculateTintColorTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Z)Landroid/graphics/PorterDuffColorFilter;
    .locals 2

    .line 1304
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getState()[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    if-eqz p3, :cond_0

    .line 1306
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->compositeElevationOverlayIfNeeded(I)I

    move-result p1

    :cond_0
    iput p1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->resolvedTintColor:I

    .line 1309
    new-instance p0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {p0, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object p0
.end method

.method private calculateTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/graphics/Paint;Z)Landroid/graphics/PorterDuffColorFilter;
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 1282
    :cond_0
    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/material/shape/MaterialShapeDrawable;->calculateTintColorTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Z)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p0

    goto :goto_1

    .line 1281
    :cond_1
    :goto_0
    invoke-direct {p0, p3, p4}, Lcom/google/android/material/shape/MaterialShapeDrawable;->calculatePaintColorTintFilter(Landroid/graphics/Paint;Z)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static createWithElevationOverlay(Landroid/content/Context;)Lcom/google/android/material/shape/MaterialShapeDrawable;
    .locals 1

    const/4 v0, 0x0

    .line 164
    invoke-static {p0, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->createWithElevationOverlay(Landroid/content/Context;F)Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object p0

    return-object p0
.end method

.method public static createWithElevationOverlay(Landroid/content/Context;F)Lcom/google/android/material/shape/MaterialShapeDrawable;
    .locals 1

    const/4 v0, 0x0

    .line 177
    invoke-static {p0, p1, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->createWithElevationOverlay(Landroid/content/Context;FLandroid/content/res/ColorStateList;)Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object p0

    return-object p0
.end method

.method public static createWithElevationOverlay(Landroid/content/Context;FLandroid/content/res/ColorStateList;)Lcom/google/android/material/shape/MaterialShapeDrawable;
    .locals 1

    if-nez p2, :cond_0

    .line 192
    sget p2, Lcom/google/android/material/R$attr;->colorSurface:I

    const-string v0, "MaterialShapeDrawable"

    .line 193
    invoke-static {p0, p2, v0}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/content/Context;ILjava/lang/String;)I

    move-result p2

    .line 195
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    .line 197
    :cond_0
    new-instance v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    .line 198
    invoke-virtual {v0, p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->initializeElevationOverlay(Landroid/content/Context;)V

    .line 199
    invoke-virtual {v0, p2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 200
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    return-object v0
.end method

.method private drawCompatShadow(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->containsIncompatibleShadowOp:Ljava/util/BitSet;

    .line 1131
    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/google/android/material/shape/MaterialShapeDrawable;->TAG:Ljava/lang/String;

    const-string v1, "Compatibility shadow requested but can\'t be drawn for all operations in this shape."

    .line 1132
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 1137
    iget v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatOffset:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->shadowRenderer:Lcom/google/android/material/shadow/ShadowRenderer;

    .line 1138
    invoke-virtual {v1}, Lcom/google/android/material/shadow/ShadowRenderer;->getShadowPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->cornerShadowOperation:[Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;

    .line 1143
    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->shadowRenderer:Lcom/google/android/material/shadow/ShadowRenderer;

    iget-object v3, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget v3, v3, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatRadius:I

    invoke-virtual {v1, v2, v3, p1}, Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;->draw(Lcom/google/android/material/shadow/ShadowRenderer;ILandroid/graphics/Canvas;)V

    iget-object v1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->edgeShadowOperation:[Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;

    .line 1144
    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->shadowRenderer:Lcom/google/android/material/shadow/ShadowRenderer;

    iget-object v3, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget v3, v3, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatRadius:I

    invoke-virtual {v1, v2, v3, p1}, Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;->draw(Lcom/google/android/material/shadow/ShadowRenderer;ILandroid/graphics/Canvas;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->shadowBitmapDrawingEnable:Z

    if-eqz v0, :cond_3

    .line 1148
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getShadowOffsetX()I

    move-result v0

    .line 1149
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getShadowOffsetY()I

    move-result v1

    neg-int v2, v0

    int-to-float v2, v2

    neg-int v3, v1

    int-to-float v3, v3

    .line 1151
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object p0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->path:Landroid/graphics/Path;

    sget-object v2, Lcom/google/android/material/shape/MaterialShapeDrawable;->clearPaint:Landroid/graphics/Paint;

    .line 1152
    invoke-virtual {p1, p0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    int-to-float p0, v0

    int-to-float v0, v1

    .line 1153
    invoke-virtual {p1, p0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_3
    return-void
.end method

.method private drawFillShape(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v2, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->fillPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->path:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 1084
    iget-object v4, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getBoundsAsRectF()Landroid/graphics/RectF;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawShape(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lcom/google/android/material/shape/ShapeAppearanceModel;Landroid/graphics/RectF;)V

    return-void
.end method

.method private drawShape(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lcom/google/android/material/shape/ShapeAppearanceModel;Landroid/graphics/RectF;)V
    .locals 1

    .line 1073
    invoke-virtual {p4, p5}, Lcom/google/android/material/shape/ShapeAppearanceModel;->isRoundRect(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1075
    invoke-virtual {p4}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopRightCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object p3

    invoke-interface {p3, p5}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    move-result p3

    iget-object p0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget p0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->interpolation:F

    mul-float/2addr p3, p0

    .line 1077
    invoke-virtual {p1, p5, p3, p3, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 1079
    :cond_0
    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method private getBoundsInsetByStroke()Landroid/graphics/RectF;
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->insetRectF:Landroid/graphics/RectF;

    .line 1366
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getBoundsAsRectF()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1367
    invoke-direct {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getStrokeInsetLength()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->insetRectF:Landroid/graphics/RectF;

    .line 1368
    invoke-virtual {v1, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    iget-object p0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->insetRectF:Landroid/graphics/RectF;

    return-object p0
.end method

.method private getStrokeInsetLength()F
    .locals 1

    .line 1358
    invoke-direct {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->hasStroke()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->strokePaint:Landroid/graphics/Paint;

    .line 1359
    invoke-virtual {p0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private hasCompatShadow()Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 951
    iget v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatRadius:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatMode:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 953
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->requiresCompatShadow()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private hasFill()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 958
    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->paintStyle:Landroid/graphics/Paint$Style;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget-object p0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->paintStyle:Landroid/graphics/Paint$Style;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private hasStroke()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 964
    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->paintStyle:Landroid/graphics/Paint$Style;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->paintStyle:Landroid/graphics/Paint$Style;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->strokePaint:Landroid/graphics/Paint;

    .line 966
    invoke-virtual {p0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p0

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private invalidateSelfIgnoreShape()V
    .locals 0

    .line 898
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method private maybeDrawCompatShadow(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1006
    invoke-direct {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->hasCompatShadow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1010
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1011
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->prepareCanvasForShadow(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->shadowBitmapDrawingEnable:Z

    if-nez v0, :cond_1

    .line 1013
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawCompatShadow(Landroid/graphics/Canvas;)V

    .line 1014
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->pathBounds:Landroid/graphics/RectF;

    .line 1020
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->pathBounds:Landroid/graphics/RectF;

    .line 1021
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    if-ltz v0, :cond_2

    if-ltz v1, :cond_2

    iget-object v2, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->pathBounds:Landroid/graphics/RectF;

    .line 1032
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget v3, v3, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatRadius:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->pathBounds:Landroid/graphics/RectF;

    .line 1033
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget v4, v4, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatRadius:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/2addr v3, v1

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1031
    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1035
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1039
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget v5, v5, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatRadius:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v0

    int-to-float v0, v4

    .line 1040
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget v5, v5, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatRadius:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v1

    int-to-float v1, v4

    neg-float v4, v0

    neg-float v5, v1

    .line 1041
    invoke-virtual {v3, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1042
    invoke-direct {p0, v3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawCompatShadow(Landroid/graphics/Canvas;)V

    const/4 p0, 0x0

    .line 1043
    invoke-virtual {p1, v2, v0, v1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1046
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 1049
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    .line 1024
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Invalid shadow bounds. Check that the treatments result in a valid path."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static modulateAlpha(II)I
    .locals 1

    ushr-int/lit8 v0, p1, 0x7

    add-int/2addr p1, v0

    mul-int/2addr p0, p1

    ushr-int/lit8 p0, p0, 0x8

    return p0
.end method

.method private prepareCanvasForShadow(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1103
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getShadowOffsetX()I

    move-result v0

    .line 1104
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getShadowOffsetY()I

    move-result p0

    int-to-float v0, v0

    int-to-float p0, p0

    .line 1120
    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method private updateColorsForState([I)Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 1335
    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->fillColor:Landroid/content/res/ColorStateList;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->fillPaint:Landroid/graphics/Paint;

    .line 1336
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 1337
    iget-object v2, v2, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->fillColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, p1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->fillPaint:Landroid/graphics/Paint;

    .line 1339
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 1344
    iget-object v2, v2, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->strokeColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->strokePaint:Landroid/graphics/Paint;

    .line 1345
    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 1346
    iget-object v3, v3, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->strokeColor:Landroid/content/res/ColorStateList;

    .line 1347
    invoke-virtual {v3, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    if-eq v2, p1, :cond_1

    iget-object p0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->strokePaint:Landroid/graphics/Paint;

    .line 1349
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    return v1
.end method

.method private updateTintFilter()Z
    .locals 7

    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->tintFilter:Landroid/graphics/PorterDuffColorFilter;

    iget-object v1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->strokeTintFilter:Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 1254
    iget-object v2, v2, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->tintList:Landroid/content/res/ColorStateList;

    iget-object v3, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget-object v3, v3, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->tintMode:Landroid/graphics/PorterDuff$Mode;

    iget-object v4, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->fillPaint:Landroid/graphics/Paint;

    const/4 v5, 0x1

    .line 1255
    invoke-direct {p0, v2, v3, v4, v5}, Lcom/google/android/material/shape/MaterialShapeDrawable;->calculateTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/graphics/Paint;Z)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->tintFilter:Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 1260
    iget-object v2, v2, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->strokeTintList:Landroid/content/res/ColorStateList;

    iget-object v3, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget-object v3, v3, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->tintMode:Landroid/graphics/PorterDuff$Mode;

    iget-object v4, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->strokePaint:Landroid/graphics/Paint;

    const/4 v6, 0x0

    .line 1261
    invoke-direct {p0, v2, v3, v4, v6}, Lcom/google/android/material/shape/MaterialShapeDrawable;->calculateTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/graphics/Paint;Z)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->strokeTintFilter:Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 1266
    iget-boolean v2, v2, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->useTintColorForShadow:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->shadowRenderer:Lcom/google/android/material/shadow/ShadowRenderer;

    iget-object v3, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 1267
    iget-object v3, v3, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->tintList:Landroid/content/res/ColorStateList;

    .line 1268
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getState()[I

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    .line 1267
    invoke-virtual {v2, v3}, Lcom/google/android/material/shadow/ShadowRenderer;->setShadowColor(I)V

    :cond_0
    iget-object v2, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->tintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 1270
    invoke-static {v0, v2}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->strokeTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 1271
    invoke-static {v1, p0}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v5, v6

    :cond_2
    :goto_0
    return v5
.end method

.method private updateZ()V
    .locals 4

    .line 747
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getZ()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float/2addr v2, v0

    float-to-double v2, v2

    .line 748
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, v1, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatRadius:I

    iget-object v1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    const/high16 v2, 0x3e800000    # 0.25f

    mul-float/2addr v0, v2

    float-to-double v2, v0

    .line 749
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    iput v0, v1, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatOffset:I

    .line 751
    invoke-direct {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->updateTintFilter()Z

    .line 752
    invoke-direct {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelfIgnoreShape()V

    return-void
.end method


# virtual methods
.method protected final calculatePathForSize(Landroid/graphics/RectF;Landroid/graphics/Path;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->pathProvider:Lcom/google/android/material/shape/ShapeAppearancePathProvider;

    iget-object v1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 1184
    iget-object v1, v1, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    iget-object v2, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget v2, v2, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->interpolation:F

    iget-object v4, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->pathShadowListener:Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->calculatePath(Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;Landroid/graphics/Path;)V

    return-void
.end method

.method protected compositeElevationOverlayIfNeeded(I)I
    .locals 2

    .line 641
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getZ()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getParentAbsoluteElevation()F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 642
    iget-object v1, v1, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->elevationOverlayProvider:Lcom/google/android/material/elevation/ElevationOverlayProvider;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 643
    iget-object p0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->elevationOverlayProvider:Lcom/google/android/material/elevation/ElevationOverlayProvider;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/elevation/ElevationOverlayProvider;->compositeOverlayIfNeeded(IF)I

    move-result p1

    :cond_0
    return p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->fillPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->tintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 977
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->fillPaint:Landroid/graphics/Paint;

    .line 978
    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->fillPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 979
    iget v2, v2, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->alpha:I

    invoke-static {v0, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->modulateAlpha(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->strokePaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->strokeTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 981
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->strokePaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 982
    iget v2, v2, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->strokeWidth:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->strokePaint:Landroid/graphics/Paint;

    .line 984
    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->strokePaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 985
    iget v3, v3, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->alpha:I

    invoke-static {v1, v3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->modulateAlpha(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-boolean v2, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->pathDirty:Z

    if-eqz v2, :cond_0

    .line 988
    invoke-direct {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->calculateStrokePath()V

    .line 989
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getBoundsAsRectF()Landroid/graphics/RectF;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->path:Landroid/graphics/Path;

    invoke-direct {p0, v2, v3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->calculatePath(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->pathDirty:Z

    .line 993
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->maybeDrawCompatShadow(Landroid/graphics/Canvas;)V

    .line 994
    invoke-direct {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->hasFill()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 995
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawFillShape(Landroid/graphics/Canvas;)V

    .line 997
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->hasStroke()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 998
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawStrokeShape(Landroid/graphics/Canvas;)V

    :cond_2
    iget-object p1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->fillPaint:Landroid/graphics/Paint;

    .line 1001
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->strokePaint:Landroid/graphics/Paint;

    .line 1002
    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method protected drawShape(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Landroid/graphics/RectF;)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 1063
    iget-object v5, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawShape(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lcom/google/android/material/shape/ShapeAppearanceModel;Landroid/graphics/RectF;)V

    return-void
.end method

.method protected drawStrokeShape(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v2, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->strokePaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->pathInsetByStroke:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->strokeShapeAppearance:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 1098
    invoke-direct {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getBoundsInsetByStroke()Landroid/graphics/RectF;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    .line 1097
    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawShape(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lcom/google/android/material/shape/ShapeAppearanceModel;Landroid/graphics/RectF;)V

    return-void
.end method

.method public getAlpha()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 479
    iget p0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->alpha:I

    return p0
.end method

.method public getBottomLeftCornerResolvedSize()F
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 1390
    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 1392
    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v0

    .line 1393
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getBoundsAsRectF()Landroid/graphics/RectF;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    move-result p0

    return p0
.end method

.method public getBottomRightCornerResolvedSize()F
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 1398
    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 1400
    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomRightCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v0

    .line 1401
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getBoundsAsRectF()Landroid/graphics/RectF;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    move-result p0

    return p0
.end method

.method protected getBoundsAsRectF()Landroid/graphics/RectF;
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->rectF:Landroid/graphics/RectF;

    .line 508
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->rectF:Landroid/graphics/RectF;

    return-object p0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    return-object p0
.end method

.method public getElevation()F
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 692
    iget p0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->elevation:F

    return p0
.end method

.method public getFillColor()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 339
    iget-object p0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->fillColor:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getInterpolation()F
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 655
    iget p0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->interpolation:F

    return p0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 1222
    iget v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    .line 1227
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->isRoundRect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1228
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getTopLeftCornerResolvedSize()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget v1, v1, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->interpolation:F

    mul-float/2addr v0, v1

    .line 1229
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    return-void

    .line 1233
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getBoundsAsRectF()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->path:Landroid/graphics/Path;

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->calculatePath(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    iget-object p0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->path:Landroid/graphics/Path;

    .line 1234
    invoke-static {p1, p0}, Lcom/google/android/material/drawable/DrawableUtils;->setOutlineToPath(Landroid/graphics/Outline;Landroid/graphics/Path;)V

    return-void
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 542
    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->padding:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 543
    iget-object p0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->padding:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 p0, 0x1

    return p0

    .line 546
    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public getPaintStyle()Landroid/graphics/Paint$Style;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 936
    iget-object p0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->paintStyle:Landroid/graphics/Paint$Style;

    return-object p0
.end method

.method public getParentAbsoluteElevation()F
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 675
    iget p0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->parentAbsoluteElevation:F

    return p0
.end method

.method public getPathForSize(IILandroid/graphics/Path;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1174
    new-instance v0, Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p0, v0, p3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->calculatePathForSize(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    return-void
.end method

.method public getResolvedTintColor()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->resolvedTintColor:I

    return p0
.end method

.method public getScale()F
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 872
    iget p0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->scale:F

    return p0
.end method

.method public getShadowCompatRotation()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 819
    iget p0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatRotation:I

    return p0
.end method

.method public getShadowCompatibilityMode()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 537
    iget p0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatMode:I

    return p0
.end method

.method public getShadowElevation()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 762
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getElevation()F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public getShadowOffsetX()I
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 1159
    iget v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatOffset:I

    int-to-double v0, v0

    iget-object p0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget p0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatRotation:I

    int-to-double v2, p0

    .line 1161
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-int p0, v0

    return p0
.end method

.method public getShadowOffsetY()I
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 1166
    iget v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatOffset:I

    int-to-double v0, v0

    iget-object p0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget p0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatRotation:I

    int-to-double v2, p0

    .line 1168
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-int p0, v0

    return p0
.end method

.method public getShadowRadius()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 843
    iget p0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatRadius:I

    return p0
.end method

.method public getShadowVerticalOffset()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 784
    iget p0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatOffset:I

    return p0
.end method

.method public getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 293
    iget-object p0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    return-object p0
.end method

.method public getShapedViewModel()Lcom/google/android/material/shape/ShapePathModel;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 316
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p0

    .line 317
    instance-of v0, p0, Lcom/google/android/material/shape/ShapePathModel;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/material/shape/ShapePathModel;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getStrokeColor()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 361
    iget-object p0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->strokeColor:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getStrokeTintList()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 393
    iget-object p0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->strokeTintList:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getStrokeWidth()F
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 449
    iget p0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->strokeWidth:F

    return p0
.end method

.method public getTintList()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 383
    iget-object p0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->tintList:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getTopLeftCornerResolvedSize()F
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 1374
    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 1376
    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v0

    .line 1377
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getBoundsAsRectF()Landroid/graphics/RectF;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    move-result p0

    return p0
.end method

.method public getTopRightCornerResolvedSize()F
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 1382
    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 1384
    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopRightCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v0

    .line 1385
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getBoundsAsRectF()Landroid/graphics/RectF;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    move-result p0

    return p0
.end method

.method public getTranslationZ()F
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 713
    iget p0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->translationZ:F

    return p0
.end method

.method public getTransparentRegion()Landroid/graphics/Region;
    .locals 3

    .line 498
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->transparentRegion:Landroid/graphics/Region;

    .line 499
    invoke-virtual {v1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 500
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getBoundsAsRectF()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->path:Landroid/graphics/Path;

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->calculatePath(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->scratchRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->transparentRegion:Landroid/graphics/Region;

    .line 501
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->transparentRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->scratchRegion:Landroid/graphics/Region;

    .line 502
    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    iget-object p0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->transparentRegion:Landroid/graphics/Region;

    return-object p0
.end method

.method public getZ()F
    .locals 1

    .line 734
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getElevation()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getTranslationZ()F

    move-result p0

    add-float/2addr v0, p0

    return v0
.end method

.method public initializeElevationOverlay(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 634
    new-instance v1, Lcom/google/android/material/elevation/ElevationOverlayProvider;

    invoke-direct {v1, p1}, Lcom/google/android/material/elevation/ElevationOverlayProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->elevationOverlayProvider:Lcom/google/android/material/elevation/ElevationOverlayProvider;

    .line 635
    invoke-direct {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->updateZ()V

    return-void
.end method

.method public invalidateSelf()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->pathDirty:Z

    .line 890
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public isElevationOverlayEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 618
    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->elevationOverlayProvider:Lcom/google/android/material/elevation/ElevationOverlayProvider;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget-object p0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->elevationOverlayProvider:Lcom/google/android/material/elevation/ElevationOverlayProvider;

    .line 619
    invoke-virtual {p0}, Lcom/google/android/material/elevation/ElevationOverlayProvider;->isThemeElevationOverlayEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isElevationOverlayInitialized()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 624
    iget-object p0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->elevationOverlayProvider:Lcom/google/android/material/elevation/ElevationOverlayProvider;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPointInTransparentRegion(II)Z
    .locals 0

    .line 532
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Region;->contains(II)Z

    move-result p0

    return p0
.end method

.method public isRoundRect()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 1412
    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getBoundsAsRectF()Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->isRoundRect(Landroid/graphics/RectF;)Z

    move-result p0

    return p0
.end method

.method public isShadowEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 592
    iget v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatMode:I

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget p0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatMode:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isStateful()Z
    .locals 1

    .line 1314
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->tintList:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->tintList:Landroid/content/res/ColorStateList;

    .line 1315
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->strokeTintList:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->strokeTintList:Landroid/content/res/ColorStateList;

    .line 1316
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->strokeColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->strokeColor:Landroid/content/res/ColorStateList;

    .line 1317
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->fillColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget-object p0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->fillColor:Landroid/content/res/ColorStateList;

    .line 1318
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 262
    new-instance v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget-object v1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;-><init>(Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;)V

    iput-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->pathDirty:Z

    .line 972
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    return-void
.end method

.method protected onStateChange([I)Z
    .locals 1

    .line 1323
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->updateColorsForState([I)Z

    move-result p1

    .line 1324
    invoke-direct {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->updateTintFilter()Z

    move-result v0

    if-nez p1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    .line 1327
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    :cond_2
    return p1
.end method

.method public requiresCompatShadow()Z
    .locals 1

    .line 863
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->isRoundRect()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->path:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/graphics/Path;->isConvex()Z

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 484
    iget v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->alpha:I

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 485
    iput p1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->alpha:I

    .line 486
    invoke-direct {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelfIgnoreShape()V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 492
    iput-object p1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->colorFilter:Landroid/graphics/ColorFilter;

    .line 493
    invoke-direct {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelfIgnoreShape()V

    return-void
.end method

.method public setCornerSize(F)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 514
    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->withCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    return-void
.end method

.method public setCornerSize(Lcom/google/android/material/shape/CornerSize;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 519
    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->withCornerSize(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    return-void
.end method

.method public setEdgeIntersectionCheckEnable(Z)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->pathProvider:Lcom/google/android/material/shape/ShapeAppearancePathProvider;

    .line 794
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->setEdgeIntersectionCheckEnable(Z)V

    return-void
.end method

.method public setElevation(F)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 701
    iget v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->elevation:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 702
    iput p1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->elevation:F

    .line 703
    invoke-direct {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->updateZ()V

    :cond_0
    return-void
.end method

.method public setFillColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 326
    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->fillColor:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 327
    iput-object p1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->fillColor:Landroid/content/res/ColorStateList;

    .line 328
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public setInterpolation(F)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 666
    iget v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->interpolation:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 667
    iput p1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->interpolation:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->pathDirty:Z

    .line 669
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setPadding(IIII)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 559
    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->padding:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 560
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->padding:Landroid/graphics/Rect;

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 563
    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->padding:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 564
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    return-void
.end method

.method public setPaintStyle(Landroid/graphics/Paint$Style;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 945
    iput-object p1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->paintStyle:Landroid/graphics/Paint$Style;

    .line 946
    invoke-direct {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelfIgnoreShape()V

    return-void
.end method

.method public setParentAbsoluteElevation(F)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 680
    iget v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->parentAbsoluteElevation:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 681
    iput p1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->parentAbsoluteElevation:F

    .line 682
    invoke-direct {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->updateZ()V

    :cond_0
    return-void
.end method

.method public setScale(F)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 881
    iget v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->scale:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 882
    iput p1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->scale:F

    .line 883
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setShadowBitmapDrawingEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->shadowBitmapDrawingEnable:Z

    return-void
.end method

.method public setShadowColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->shadowRenderer:Lcom/google/android/material/shadow/ShadowRenderer;

    .line 925
    invoke-virtual {v0, p1}, Lcom/google/android/material/shadow/ShadowRenderer;->setShadowColor(I)V

    iget-object p1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    const/4 v0, 0x0

    .line 926
    iput-boolean v0, p1, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->useTintColorForShadow:Z

    .line 927
    invoke-direct {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelfIgnoreShape()V

    return-void
.end method

.method public setShadowCompatRotation(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 831
    iget v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatRotation:I

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 832
    iput p1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatRotation:I

    .line 833
    invoke-direct {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelfIgnoreShape()V

    :cond_0
    return-void
.end method

.method public setShadowCompatibilityMode(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 578
    iget v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatMode:I

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 579
    iput p1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatMode:I

    .line 580
    invoke-direct {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelfIgnoreShape()V

    :cond_0
    return-void
.end method

.method public setShadowElevation(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    int-to-float p1, p1

    .line 773
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    return-void
.end method

.method public setShadowEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    xor-int/lit8 p1, p1, 0x1

    .line 609
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShadowCompatibilityMode(I)V

    return-void
.end method

.method public setShadowRadius(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 854
    iput p1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatRadius:I

    return-void
.end method

.method public setShadowVerticalOffset(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 808
    iget v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatOffset:I

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 809
    iput p1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatOffset:I

    .line 810
    invoke-direct {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelfIgnoreShape()V

    :cond_0
    return-void
.end method

.method public setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 280
    iput-object p1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 281
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    return-void
.end method

.method public setShapedViewModel(Lcom/google/android/material/shape/ShapePathModel;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 304
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    return-void
.end method

.method public setStroke(FI)V
    .locals 0

    .line 428
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setStrokeWidth(F)V

    .line 429
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setStroke(FLandroid/content/res/ColorStateList;)V
    .locals 0

    .line 439
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setStrokeWidth(F)V

    .line 440
    invoke-virtual {p0, p2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setStrokeColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 348
    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->strokeColor:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 349
    iput-object p1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->strokeColor:Landroid/content/res/ColorStateList;

    .line 350
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public setStrokeTint(I)V
    .locals 0

    .line 418
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setStrokeTint(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setStrokeTint(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 407
    iput-object p1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->strokeTintList:Landroid/content/res/ColorStateList;

    .line 408
    invoke-direct {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->updateTintFilter()Z

    .line 409
    invoke-direct {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelfIgnoreShape()V

    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 458
    iput p1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->strokeWidth:F

    .line 459
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    return-void
.end method

.method public setTint(I)V
    .locals 0

    .line 398
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 375
    iput-object p1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->tintList:Landroid/content/res/ColorStateList;

    .line 376
    invoke-direct {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->updateTintFilter()Z

    .line 377
    invoke-direct {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelfIgnoreShape()V

    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 366
    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->tintMode:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 367
    iput-object p1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->tintMode:Landroid/graphics/PorterDuff$Mode;

    .line 368
    invoke-direct {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->updateTintFilter()Z

    .line 369
    invoke-direct {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelfIgnoreShape()V

    :cond_0
    return-void
.end method

.method public setTranslationZ(F)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 722
    iget v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->translationZ:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 723
    iput p1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->translationZ:F

    .line 724
    invoke-direct {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->updateZ()V

    :cond_0
    return-void
.end method

.method public setUseTintColorForShadow(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 909
    iget-boolean v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->useTintColorForShadow:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 910
    iput-boolean p1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->useTintColorForShadow:Z

    .line 911
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setZ(F)V
    .locals 1

    .line 743
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getElevation()F

    move-result v0

    sub-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setTranslationZ(F)V

    return-void
.end method
