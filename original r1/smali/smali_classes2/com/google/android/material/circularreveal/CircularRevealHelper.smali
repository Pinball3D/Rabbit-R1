.class public Lcom/google/android/material/circularreveal/CircularRevealHelper;
.super Ljava/lang/Object;
.source "CircularRevealHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/circularreveal/CircularRevealHelper$Strategy;,
        Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;
    }
.end annotation


# static fields
.field public static final BITMAP_SHADER:I = 0x0

.field public static final CLIP_PATH:I = 0x1

.field private static final DEBUG:Z = false

.field public static final REVEAL_ANIMATOR:I = 0x2

.field public static final STRATEGY:I


# instance fields
.field private buildingCircularRevealCache:Z

.field private debugPaint:Landroid/graphics/Paint;

.field private final delegate:Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;

.field private hasCircularRevealCache:Z

.field private overlayDrawable:Landroid/graphics/drawable/Drawable;

.field private revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

.field private final revealPaint:Landroid/graphics/Paint;

.field private final revealPath:Landroid/graphics/Path;

.field private final scrimPaint:Landroid/graphics/Paint;

.field private final view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    sput v0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->STRATEGY:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;)V
    .locals 2

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->delegate:Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;

    .line 138
    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    const/4 v0, 0x0

    .line 139
    invoke-virtual {p1, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 141
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealPath:Landroid/graphics/Path;

    .line 142
    new-instance p1, Landroid/graphics/Paint;

    const/4 v1, 0x7

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealPaint:Landroid/graphics/Paint;

    .line 143
    new-instance p1, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->scrimPaint:Landroid/graphics/Paint;

    .line 144
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private drawDebugCircle(Landroid/graphics/Canvas;IF)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->debugPaint:Landroid/graphics/Paint;

    .line 352
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->debugPaint:Landroid/graphics/Paint;

    .line 353
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p2, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    .line 354
    iget p2, p2, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerX:F

    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    iget v0, v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerY:F

    iget-object v1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    iget v1, v1, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p3, v2

    sub-float/2addr v1, p3

    iget-object p0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawDebugMode(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->delegate:Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;

    .line 337
    invoke-interface {v0, p1}, Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;->actualDraw(Landroid/graphics/Canvas;)V

    .line 338
    invoke-direct {p0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->shouldDrawScrim()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    .line 339
    iget v0, v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerX:F

    iget-object v1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    iget v1, v1, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerY:F

    iget-object v2, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    iget v2, v2, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    iget-object v3, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->scrimPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 343
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->shouldDrawCircularReveal()Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, -0x1000000

    const/high16 v1, 0x41200000    # 10.0f

    .line 344
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->drawDebugCircle(Landroid/graphics/Canvas;IF)V

    const/high16 v0, -0x10000

    const/high16 v1, 0x40a00000    # 5.0f

    .line 345
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->drawDebugCircle(Landroid/graphics/Canvas;IF)V

    .line 348
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->drawOverlayDrawable(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawOverlayDrawable(Landroid/graphics/Canvas;)V
    .locals 4

    .line 304
    invoke-direct {p0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->shouldDrawOverlayDrawable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 305
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    .line 306
    iget v1, v1, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerX:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    .line 307
    iget v2, v2, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerY:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    sub-float/2addr v2, v0

    .line 309
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object p0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 310
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-float p0, v1

    neg-float v0, v2

    .line 311
    invoke-virtual {p1, p0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_0
    return-void
.end method

.method private getDistanceToFurthestCorner(Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)F
    .locals 6

    .line 254
    iget v0, p1, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerX:F

    iget v1, p1, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerY:F

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object p1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    .line 255
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float v4, p1

    iget-object p0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float v5, p0

    .line 254
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/math/MathUtils;->distanceToFurthestCorner(FFFFFF)F

    move-result p0

    return p0
.end method

.method private invalidateRevealInfo()V
    .locals 5

    sget v0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->STRATEGY:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealPath:Landroid/graphics/Path;

    .line 243
    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealPath:Landroid/graphics/Path;

    .line 245
    iget v0, v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerX:F

    iget-object v2, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    iget v2, v2, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerY:F

    iget-object v3, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    iget v3, v3, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    :cond_0
    iget-object p0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    .line 250
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private shouldDrawCircularReveal()Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 320
    invoke-virtual {v0}, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    sget v3, Lcom/google/android/material/circularreveal/CircularRevealHelper;->STRATEGY:I

    if-nez v3, :cond_3

    if-nez v0, :cond_2

    iget-boolean p0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->hasCircularRevealCache:Z

    if-eqz p0, :cond_2

    move v1, v2

    :cond_2
    return v1

    :cond_3
    xor-int/lit8 p0, v0, 0x1

    return p0
.end method

.method private shouldDrawOverlayDrawable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->buildingCircularRevealCache:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private shouldDrawScrim()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->buildingCircularRevealCache:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->scrimPaint:Landroid/graphics/Paint;

    .line 329
    invoke-virtual {p0}, Landroid/graphics/Paint;->getColor()I

    move-result p0

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public buildCircularRevealCache()V
    .locals 7

    sget v0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->STRATEGY:I

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->buildingCircularRevealCache:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->hasCircularRevealCache:Z

    iget-object v2, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    .line 157
    invoke-virtual {v2}, Landroid/view/View;->buildDrawingCache()V

    iget-object v2, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    .line 158
    invoke-virtual {v2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v3, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    .line 160
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    .line 161
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 162
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v4, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    .line 163
    invoke-virtual {v4, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealPaint:Landroid/graphics/Paint;

    .line 167
    new-instance v4, Landroid/graphics/BitmapShader;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v4, v2, v5, v6}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_1
    iput-boolean v1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->buildingCircularRevealCache:Z

    iput-boolean v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->hasCircularRevealCache:Z

    :cond_2
    return-void
.end method

.method public destroyCircularRevealCache()V
    .locals 2

    sget v0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->STRATEGY:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->hasCircularRevealCache:Z

    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    .line 178
    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    .line 179
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object p0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    .line 180
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 264
    invoke-direct {p0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->shouldDrawCircularReveal()Z

    move-result v0

    if-eqz v0, :cond_4

    sget v0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->STRATEGY:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->delegate:Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;

    .line 267
    invoke-interface {v0, p1}, Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;->actualDraw(Landroid/graphics/Canvas;)V

    .line 268
    invoke-direct {p0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->shouldDrawScrim()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    .line 269
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->scrimPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 291
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported strategy "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 273
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealPath:Landroid/graphics/Path;

    .line 274
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->delegate:Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;

    .line 276
    invoke-interface {v1, p1}, Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;->actualDraw(Landroid/graphics/Canvas;)V

    .line 277
    invoke-direct {p0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->shouldDrawScrim()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    .line 278
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v5, v1

    iget-object v1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v6, v1

    iget-object v7, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->scrimPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 281
    :cond_2
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    .line 284
    iget v0, v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerX:F

    iget-object v1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    iget v1, v1, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerY:F

    iget-object v2, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    iget v2, v2, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    iget-object v3, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 285
    invoke-direct {p0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->shouldDrawScrim()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    .line 286
    iget v0, v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerX:F

    iget-object v1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    iget v1, v1, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerY:F

    iget-object v2, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    iget v2, v2, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    iget-object v3, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->scrimPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->delegate:Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;

    .line 294
    invoke-interface {v0, p1}, Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;->actualDraw(Landroid/graphics/Canvas;)V

    .line 295
    invoke-direct {p0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->shouldDrawScrim()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    .line 296
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->scrimPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 300
    :cond_5
    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->drawOverlayDrawable(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getCircularRevealOverlayDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getCircularRevealScrimColor()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->scrimPaint:Landroid/graphics/Paint;

    .line 228
    invoke-virtual {p0}, Landroid/graphics/Paint;->getColor()I

    move-result p0

    return p0
.end method

.method public getRevealInfo()Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 214
    :cond_0
    new-instance v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    iget-object v1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    invoke-direct {v0, v1}, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;-><init>(Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)V

    .line 215
    invoke-virtual {v0}, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 216
    invoke-direct {p0, v0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->getDistanceToFurthestCorner(Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)F

    move-result p0

    iput p0, v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    :cond_1
    return-object v0
.end method

.method public isOpaque()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->delegate:Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;

    .line 316
    invoke-interface {v0}, Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;->actualIsOpaque()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->shouldDrawCircularReveal()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    .line 238
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCircularRevealScrimColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->scrimPaint:Landroid/graphics/Paint;

    .line 222
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    .line 223
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setRevealInfo(Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    if-nez v0, :cond_1

    .line 193
    new-instance v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    invoke-direct {v0, p1}, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;-><init>(Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)V

    iput-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    goto :goto_0

    .line 195
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->set(Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)V

    .line 199
    :goto_0
    iget v0, p1, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    .line 200
    invoke-direct {p0, p1}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->getDistanceToFurthestCorner(Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)F

    move-result p1

    const v1, 0x38d1b717    # 1.0E-4f

    .line 199
    invoke-static {v0, p1, v1}, Lcom/google/android/material/math/MathUtils;->geq(FFF)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 201
    iput v0, p1, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    .line 205
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->invalidateRevealInfo()V

    return-void
.end method
