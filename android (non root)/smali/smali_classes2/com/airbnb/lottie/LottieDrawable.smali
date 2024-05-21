.class public Lcom/airbnb/lottie/LottieDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "LottieDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;,
        Lcom/airbnb/lottie/LottieDrawable$LazyCompositionTask;,
        Lcom/airbnb/lottie/LottieDrawable$RepeatMode;
    }
.end annotation


# static fields
.field public static final INFINITE:I = -0x1

.field private static final MAX_DELTA_MS_ASYNC_SET_PROGRESS:F = 50.0f

.field public static final RESTART:I = 0x1

.field public static final REVERSE:I = 0x2

.field private static final invalidateSelfOnMainThread:Z

.field private static final setProgressExecutor:Ljava/util/concurrent/Executor;


# instance fields
.field private alpha:I

.field private final animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

.field private asyncUpdates:Lcom/airbnb/lottie/AsyncUpdates;

.field private canvasClipBounds:Landroid/graphics/Rect;

.field private canvasClipBoundsRectF:Landroid/graphics/RectF;

.field private clipTextToBoundingBox:Z

.field private clipToCompositionBounds:Z

.field private composition:Lcom/airbnb/lottie/LottieComposition;

.field private compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

.field defaultFontFileExtension:Ljava/lang/String;

.field private enableMergePaths:Z

.field fontAssetDelegate:Lcom/airbnb/lottie/FontAssetDelegate;

.field private fontAssetManager:Lcom/airbnb/lottie/manager/FontAssetManager;

.field private fontMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private ignoreSystemAnimationsDisabled:Z

.field private imageAssetDelegate:Lcom/airbnb/lottie/ImageAssetDelegate;

.field private imageAssetManager:Lcom/airbnb/lottie/manager/ImageAssetManager;

.field private imageAssetsFolder:Ljava/lang/String;

.field private invalidateSelfRunnable:Ljava/lang/Runnable;

.field private isApplyingOpacityToLayersEnabled:Z

.field private isDirty:Z

.field private lastDrawnProgress:F

.field private final lazyCompositionTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/airbnb/lottie/LottieDrawable$LazyCompositionTask;",
            ">;"
        }
    .end annotation
.end field

.field private mainThreadHandler:Landroid/os/Handler;

.field private maintainOriginalImageBounds:Z

.field private onVisibleAction:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

.field private outlineMasksAndMattes:Z

.field private performanceTrackingEnabled:Z

.field private final progressUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private renderMode:Lcom/airbnb/lottie/RenderMode;

.field private final renderingMatrix:Landroid/graphics/Matrix;

.field private safeMode:Z

.field private final setProgressDrawLock:Ljava/util/concurrent/Semaphore;

.field private softwareRenderingBitmap:Landroid/graphics/Bitmap;

.field private softwareRenderingCanvas:Landroid/graphics/Canvas;

.field private softwareRenderingDstBoundsRect:Landroid/graphics/Rect;

.field private softwareRenderingDstBoundsRectF:Landroid/graphics/RectF;

.field private softwareRenderingOriginalCanvasMatrix:Landroid/graphics/Matrix;

.field private softwareRenderingOriginalCanvasMatrixInverse:Landroid/graphics/Matrix;

.field private softwareRenderingPaint:Landroid/graphics/Paint;

.field private softwareRenderingSrcBoundsRect:Landroid/graphics/Rect;

.field private softwareRenderingTransformedBounds:Landroid/graphics/RectF;

.field private systemAnimationsEnabled:Z

.field textDelegate:Lcom/airbnb/lottie/TextDelegate;

.field private final updateProgressRunnable:Ljava/lang/Runnable;

.field private useSoftwareRendering:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x0

    sput-boolean v0, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelfOnMainThread:Z

    .line 198
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-wide/16 v4, 0x23

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v8, Lcom/airbnb/lottie/utils/LottieThreadFactory;

    invoke-direct {v8}, Lcom/airbnb/lottie/utils/LottieThreadFactory;-><init>()V

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/airbnb/lottie/LottieDrawable;->setProgressExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 254
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 95
    new-instance v0, Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-direct {v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/airbnb/lottie/LottieDrawable;->systemAnimationsEnabled:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/airbnb/lottie/LottieDrawable;->ignoreSystemAnimationsDisabled:Z

    iput-boolean v2, p0, Lcom/airbnb/lottie/LottieDrawable;->safeMode:Z

    .line 102
    sget-object v3, Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;->NONE:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    iput-object v3, p0, Lcom/airbnb/lottie/LottieDrawable;->onVisibleAction:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    .line 104
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    iput-boolean v2, p0, Lcom/airbnb/lottie/LottieDrawable;->maintainOriginalImageBounds:Z

    iput-boolean v1, p0, Lcom/airbnb/lottie/LottieDrawable;->clipToCompositionBounds:Z

    const/16 v3, 0xff

    iput v3, p0, Lcom/airbnb/lottie/LottieDrawable;->alpha:I

    iput-boolean v2, p0, Lcom/airbnb/lottie/LottieDrawable;->clipTextToBoundingBox:Z

    .line 140
    sget-object v3, Lcom/airbnb/lottie/RenderMode;->AUTOMATIC:Lcom/airbnb/lottie/RenderMode;

    iput-object v3, p0, Lcom/airbnb/lottie/LottieDrawable;->renderMode:Lcom/airbnb/lottie/RenderMode;

    iput-boolean v2, p0, Lcom/airbnb/lottie/LottieDrawable;->useSoftwareRendering:Z

    .line 145
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lcom/airbnb/lottie/LottieDrawable;->renderingMatrix:Landroid/graphics/Matrix;

    iput-boolean v2, p0, Lcom/airbnb/lottie/LottieDrawable;->isDirty:Z

    .line 167
    new-instance v2, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda0;-><init>(Lcom/airbnb/lottie/LottieDrawable;)V

    iput-object v2, p0, Lcom/airbnb/lottie/LottieDrawable;->progressUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 184
    new-instance v3, Ljava/util/concurrent/Semaphore;

    invoke-direct {v3, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v3, p0, Lcom/airbnb/lottie/LottieDrawable;->setProgressDrawLock:Ljava/util/concurrent/Semaphore;

    .line 203
    new-instance v1, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda9;-><init>(Lcom/airbnb/lottie/LottieDrawable;)V

    iput-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->updateProgressRunnable:Ljava/lang/Runnable;

    const v1, -0x800001

    iput v1, p0, Lcom/airbnb/lottie/LottieDrawable;->lastDrawnProgress:F

    .line 255
    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method private animationsEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieDrawable;->systemAnimationsEnabled:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/airbnb/lottie/LottieDrawable;->ignoreSystemAnimationsDisabled:Z

    if-eqz p0, :cond_0

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

.method private buildCompositionLayer()V
    .locals 4

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v0, :cond_0

    return-void

    .line 566
    :cond_0
    new-instance v1, Lcom/airbnb/lottie/model/layer/CompositionLayer;

    .line 567
    invoke-static {v0}, Lcom/airbnb/lottie/parser/LayerParser;->parse(Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/layer/Layer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getLayers()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/airbnb/lottie/model/layer/CompositionLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;Ljava/util/List;Lcom/airbnb/lottie/LottieComposition;)V

    iput-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieDrawable;->outlineMasksAndMattes:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 569
    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/model/layer/CompositionLayer;->setOutlineMasksAndMattes(Z)V

    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    iget-boolean p0, p0, Lcom/airbnb/lottie/LottieDrawable;->clipToCompositionBounds:Z

    .line 571
    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/model/layer/CompositionLayer;->setClipToCompositionBounds(Z)V

    return-void
.end method

.method private computeRenderMode()V
    .locals 4

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->renderMode:Lcom/airbnb/lottie/RenderMode;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 481
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->hasDashPattern()Z

    move-result v3

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getMaskAndMatteCount()I

    move-result v0

    .line 480
    invoke-virtual {v1, v2, v3, v0}, Lcom/airbnb/lottie/RenderMode;->useSoftwareRendering(IZI)Z

    move-result v0

    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieDrawable;->useSoftwareRendering:Z

    return-void
.end method

.method private convertRect(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 2

    .line 1757
    iget p0, p1, Landroid/graphics/Rect;->left:I

    int-to-float p0, p0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    invoke-virtual {p2, p0, v0, v1, p1}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private convertRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V
    .locals 4

    .line 1745
    iget p0, p1, Landroid/graphics/RectF;->left:F

    float-to-double v0, p0

    .line 1746
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p0, v0

    iget v0, p1, Landroid/graphics/RectF;->top:F

    float-to-double v0, v0

    .line 1747
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p1, Landroid/graphics/RectF;->right:F

    float-to-double v1, v1

    .line 1748
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    float-to-double v2, p1

    .line 1749
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p1, v2

    .line 1745
    invoke-virtual {p2, p0, v0, v1, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private drawDirectlyToCanvas(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-eqz v0, :cond_2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/airbnb/lottie/LottieDrawable;->renderingMatrix:Landroid/graphics/Matrix;

    .line 1619
    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 1620
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 1621
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1623
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 1624
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v4, v1

    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->renderingMatrix:Landroid/graphics/Matrix;

    .line 1626
    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->renderingMatrix:Landroid/graphics/Matrix;

    .line 1627
    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    :cond_1
    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->renderingMatrix:Landroid/graphics/Matrix;

    iget p0, p0, Lcom/airbnb/lottie/LottieDrawable;->alpha:I

    .line 1629
    invoke-virtual {v0, p1, v1, p0}, Lcom/airbnb/lottie/model/layer/CompositionLayer;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private ensureSoftwareRenderingBitmap(II)V
    .locals 3

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 1727
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lt v0, p1, :cond_2

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingBitmap:Landroid/graphics/Bitmap;

    .line 1728
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ge v0, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingBitmap:Landroid/graphics/Bitmap;

    .line 1733
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-gt v0, p1, :cond_1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-le v0, p2, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    .line 1735
    invoke-static {v0, v2, v2, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingBitmap:Landroid/graphics/Bitmap;

    iget-object p2, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingCanvas:Landroid/graphics/Canvas;

    .line 1736
    invoke-virtual {p2, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iput-boolean v1, p0, Lcom/airbnb/lottie/LottieDrawable;->isDirty:Z

    goto :goto_1

    .line 1730
    :cond_2
    :goto_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingBitmap:Landroid/graphics/Bitmap;

    iget-object p2, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingCanvas:Landroid/graphics/Canvas;

    .line 1731
    invoke-virtual {p2, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iput-boolean v1, p0, Lcom/airbnb/lottie/LottieDrawable;->isDirty:Z

    :cond_3
    :goto_1
    return-void
.end method

.method private ensureSoftwareRenderingObjectsInitialized()V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_0

    return-void

    .line 1713
    :cond_0
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingCanvas:Landroid/graphics/Canvas;

    .line 1714
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingTransformedBounds:Landroid/graphics/RectF;

    .line 1715
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingOriginalCanvasMatrix:Landroid/graphics/Matrix;

    .line 1716
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingOriginalCanvasMatrixInverse:Landroid/graphics/Matrix;

    .line 1717
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->canvasClipBounds:Landroid/graphics/Rect;

    .line 1718
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->canvasClipBoundsRectF:Landroid/graphics/RectF;

    .line 1719
    new-instance v0, Lcom/airbnb/lottie/animation/LPaint;

    invoke-direct {v0}, Lcom/airbnb/lottie/animation/LPaint;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingPaint:Landroid/graphics/Paint;

    .line 1720
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingSrcBoundsRect:Landroid/graphics/Rect;

    .line 1721
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingDstBoundsRect:Landroid/graphics/Rect;

    .line 1722
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingDstBoundsRectF:Landroid/graphics/RectF;

    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 2

    .line 1544
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1549
    :cond_0
    instance-of v1, p0, Landroid/view/View;

    if-eqz v1, :cond_1

    .line 1550
    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method private getFontAssetManager()Lcom/airbnb/lottie/manager/FontAssetManager;
    .locals 3

    .line 1507
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->fontAssetManager:Lcom/airbnb/lottie/manager/FontAssetManager;

    if-nez v0, :cond_1

    .line 1513
    new-instance v0, Lcom/airbnb/lottie/manager/FontAssetManager;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/lottie/LottieDrawable;->fontAssetDelegate:Lcom/airbnb/lottie/FontAssetDelegate;

    invoke-direct {v0, v1, v2}, Lcom/airbnb/lottie/manager/FontAssetManager;-><init>(Landroid/graphics/drawable/Drawable$Callback;Lcom/airbnb/lottie/FontAssetDelegate;)V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->fontAssetManager:Lcom/airbnb/lottie/manager/FontAssetManager;

    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->defaultFontFileExtension:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1516
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/manager/FontAssetManager;->setDefaultFontFileExtension(Ljava/lang/String;)V

    :cond_1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->fontAssetManager:Lcom/airbnb/lottie/manager/FontAssetManager;

    return-object p0
.end method

.method private getImageAssetManager()Lcom/airbnb/lottie/manager/ImageAssetManager;
    .locals 5

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->imageAssetManager:Lcom/airbnb/lottie/manager/ImageAssetManager;

    if-eqz v0, :cond_0

    .line 1468
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/manager/ImageAssetManager;->hasSameContext(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->imageAssetManager:Lcom/airbnb/lottie/manager/ImageAssetManager;

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->imageAssetManager:Lcom/airbnb/lottie/manager/ImageAssetManager;

    if-nez v0, :cond_1

    .line 1473
    new-instance v0, Lcom/airbnb/lottie/manager/ImageAssetManager;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/lottie/LottieDrawable;->imageAssetsFolder:Ljava/lang/String;

    iget-object v3, p0, Lcom/airbnb/lottie/LottieDrawable;->imageAssetDelegate:Lcom/airbnb/lottie/ImageAssetDelegate;

    iget-object v4, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 1474
    invoke-virtual {v4}, Lcom/airbnb/lottie/LottieComposition;->getImages()Ljava/util/Map;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/airbnb/lottie/manager/ImageAssetManager;-><init>(Landroid/graphics/drawable/Drawable$Callback;Ljava/lang/String;Lcom/airbnb/lottie/ImageAssetDelegate;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->imageAssetManager:Lcom/airbnb/lottie/manager/ImageAssetManager;

    :cond_1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->imageAssetManager:Lcom/airbnb/lottie/manager/ImageAssetManager;

    return-object p0
.end method

.method private ignoreCanvasClipBounds()Z
    .locals 2

    .line 1779
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p0

    .line 1780
    instance-of v0, p0, Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1784
    :cond_0
    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 1785
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 1786
    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getClipChildren()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method private renderAndDrawAsBitmap(Landroid/graphics/Canvas;Lcom/airbnb/lottie/model/layer/CompositionLayer;)V
    .locals 8

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-eqz v0, :cond_5

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 1643
    :cond_0
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;->ensureSoftwareRenderingObjectsInitialized()V

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingOriginalCanvasMatrix:Landroid/graphics/Matrix;

    .line 1646
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->canvasClipBounds:Landroid/graphics/Rect;

    .line 1649
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->canvasClipBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->canvasClipBoundsRectF:Landroid/graphics/RectF;

    .line 1650
    invoke-direct {p0, v0, v1}, Lcom/airbnb/lottie/LottieDrawable;->convertRect(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingOriginalCanvasMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->canvasClipBoundsRectF:Landroid/graphics/RectF;

    .line 1651
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->canvasClipBoundsRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->canvasClipBounds:Landroid/graphics/Rect;

    .line 1652
    invoke-direct {p0, v0, v1}, Lcom/airbnb/lottie/LottieDrawable;->convertRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieDrawable;->clipToCompositionBounds:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingTransformedBounds:Landroid/graphics/RectF;

    .line 1657
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingTransformedBounds:Landroid/graphics/RectF;

    const/4 v2, 0x0

    .line 1660
    invoke-virtual {p2, v0, v2, v1}, Lcom/airbnb/lottie/model/layer/CompositionLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    :goto_0
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingOriginalCanvasMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingTransformedBounds:Landroid/graphics/RectF;

    .line 1663
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1667
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1668
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 1669
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    iget-object v3, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingTransformedBounds:Landroid/graphics/RectF;

    .line 1670
    invoke-direct {p0, v3, v2, v0}, Lcom/airbnb/lottie/LottieDrawable;->scaleRect(Landroid/graphics/RectF;FF)V

    .line 1672
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;->ignoreCanvasClipBounds()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingTransformedBounds:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/airbnb/lottie/LottieDrawable;->canvasClipBounds:Landroid/graphics/Rect;

    .line 1673
    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/airbnb/lottie/LottieDrawable;->canvasClipBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/airbnb/lottie/LottieDrawable;->canvasClipBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/airbnb/lottie/LottieDrawable;->canvasClipBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->intersect(FFFF)Z

    :cond_2
    iget-object v3, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingTransformedBounds:Landroid/graphics/RectF;

    .line 1676
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    iget-object v4, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingTransformedBounds:Landroid/graphics/RectF;

    .line 1677
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    if-lez v3, :cond_5

    if-gtz v4, :cond_3

    goto :goto_1

    .line 1683
    :cond_3
    invoke-direct {p0, v3, v4}, Lcom/airbnb/lottie/LottieDrawable;->ensureSoftwareRenderingBitmap(II)V

    iget-boolean v5, p0, Lcom/airbnb/lottie/LottieDrawable;->isDirty:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/airbnb/lottie/LottieDrawable;->renderingMatrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingOriginalCanvasMatrix:Landroid/graphics/Matrix;

    .line 1686
    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v5, p0, Lcom/airbnb/lottie/LottieDrawable;->renderingMatrix:Landroid/graphics/Matrix;

    .line 1687
    invoke-virtual {v5, v2, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->renderingMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingTransformedBounds:Landroid/graphics/RectF;

    .line 1690
    iget v2, v2, Landroid/graphics/RectF;->left:F

    neg-float v2, v2

    iget-object v5, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingTransformedBounds:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    neg-float v5, v5

    invoke-virtual {v0, v2, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingBitmap:Landroid/graphics/Bitmap;

    .line 1692
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/airbnb/lottie/LottieDrawable;->renderingMatrix:Landroid/graphics/Matrix;

    iget v5, p0, Lcom/airbnb/lottie/LottieDrawable;->alpha:I

    .line 1693
    invoke-virtual {p2, v0, v2, v5}, Lcom/airbnb/lottie/model/layer/CompositionLayer;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    iget-object p2, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingOriginalCanvasMatrix:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingOriginalCanvasMatrixInverse:Landroid/graphics/Matrix;

    .line 1700
    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    iget-object p2, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingOriginalCanvasMatrixInverse:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingDstBoundsRectF:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingTransformedBounds:Landroid/graphics/RectF;

    .line 1701
    invoke-virtual {p2, v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    iget-object p2, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingDstBoundsRectF:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingDstBoundsRect:Landroid/graphics/Rect;

    .line 1702
    invoke-direct {p0, p2, v0}, Lcom/airbnb/lottie/LottieDrawable;->convertRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    :cond_4
    iget-object p2, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingSrcBoundsRect:Landroid/graphics/Rect;

    .line 1705
    invoke-virtual {p2, v1, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p2, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingSrcBoundsRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingDstBoundsRect:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingPaint:Landroid/graphics/Paint;

    .line 1706
    invoke-virtual {p1, p2, v0, v1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private scaleRect(Landroid/graphics/RectF;FF)V
    .locals 2

    .line 1765
    iget p0, p1, Landroid/graphics/RectF;->left:F

    mul-float/2addr p0, p2

    iget v0, p1, Landroid/graphics/RectF;->top:F

    mul-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->right:F

    mul-float/2addr v1, p2

    iget p2, p1, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr p2, p3

    invoke-virtual {p1, p0, v0, v1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private shouldSetProgressBeforeDrawing()Z
    .locals 4

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v2, p0, Lcom/airbnb/lottie/LottieDrawable;->lastDrawnProgress:F

    iget-object v3, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 653
    invoke-virtual {v3}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getAnimatedValueAbsolute()F

    move-result v3

    iput v3, p0, Lcom/airbnb/lottie/LottieDrawable;->lastDrawnProgress:F

    .line 656
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getDuration()F

    move-result p0

    sub-float/2addr v3, v2

    .line 658
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float/2addr v0, p0

    const/high16 p0, 0x42480000    # 50.0f

    cmpl-float p0, v0, p0

    if-ltz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method public addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 1053
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public addAnimatorPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 1066
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    return-void
.end method

.method public addAnimatorUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 1040
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/airbnb/lottie/model/KeyPath;",
            "TT;",
            "Lcom/airbnb/lottie/value/LottieValueCallback<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    .line 1345
    new-instance v1, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda2;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 1349
    :cond_0
    sget-object v0, Lcom/airbnb/lottie/model/KeyPath;->COMPOSITION:Lcom/airbnb/lottie/model/KeyPath;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    .line 1350
    invoke-virtual {p1, p2, p3}, Lcom/airbnb/lottie/model/layer/CompositionLayer;->addValueCallback(Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto :goto_1

    .line 1352
    :cond_1
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/KeyPath;->getResolvedElement()Lcom/airbnb/lottie/model/KeyPathElement;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1353
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/KeyPath;->getResolvedElement()Lcom/airbnb/lottie/model/KeyPathElement;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lcom/airbnb/lottie/model/KeyPathElement;->addValueCallback(Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto :goto_1

    .line 1356
    :cond_2
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 1358
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1360
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/model/KeyPath;

    invoke-virtual {v1}, Lcom/airbnb/lottie/model/KeyPath;->getResolvedElement()Lcom/airbnb/lottie/model/KeyPathElement;

    move-result-object v1

    invoke-interface {v1, p2, p3}, Lcom/airbnb/lottie/model/KeyPathElement;->addValueCallback(Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1362
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_4

    .line 1365
    :goto_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    .line 1366
    sget-object p1, Lcom/airbnb/lottie/LottieProperty;->TIME_REMAP:Ljava/lang/Float;

    if-ne p2, p1, :cond_4

    .line 1370
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getProgress()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setProgress(F)V

    :cond_4
    return-void
.end method

.method public addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/SimpleLottieValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/airbnb/lottie/model/KeyPath;",
            "TT;",
            "Lcom/airbnb/lottie/value/SimpleLottieValueCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 1382
    new-instance v0, Lcom/airbnb/lottie/LottieDrawable$1;

    invoke-direct {v0, p0, p3}, Lcom/airbnb/lottie/LottieDrawable$1;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/value/SimpleLottieValueCallback;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/airbnb/lottie/LottieDrawable;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    return-void
.end method

.method public cancelAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    .line 1285
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 1286
    invoke-virtual {v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->cancel()V

    .line 1287
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1288
    sget-object v0, Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;->NONE:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->onVisibleAction:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    :cond_0
    return-void
.end method

.method public clearComposition()V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 575
    invoke-virtual {v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 576
    invoke-virtual {v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->cancel()V

    .line 577
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 578
    sget-object v0, Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;->NONE:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->onVisibleAction:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->imageAssetManager:Lcom/airbnb/lottie/manager/ImageAssetManager;

    const v0, -0x800001

    iput v0, p0, Lcom/airbnb/lottie/LottieDrawable;->lastDrawnProgress:F

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 585
    invoke-virtual {v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->clearComposition()V

    .line 586
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    return-void
.end method

.method public disableExtraScaleModeInFitXY()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    if-nez v0, :cond_0

    return-void

    .line 669
    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getAsyncUpdatesEnabled()Z

    move-result v1

    const-string v2, "Drawable#draw"

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v3, p0, Lcom/airbnb/lottie/LottieDrawable;->setProgressDrawLock:Ljava/util/concurrent/Semaphore;

    .line 672
    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->acquire()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 674
    :cond_1
    :goto_0
    invoke-static {v2}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    if-eqz v1, :cond_2

    .line 676
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;->shouldSetProgressBeforeDrawing()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 677
    invoke-virtual {v3}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getAnimatedValueAbsolute()F

    move-result v3

    invoke-virtual {p0, v3}, Lcom/airbnb/lottie/LottieDrawable;->setProgress(F)V

    :cond_2
    iget-boolean v3, p0, Lcom/airbnb/lottie/LottieDrawable;->safeMode:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_4

    :try_start_1
    iget-boolean v3, p0, Lcom/airbnb/lottie/LottieDrawable;->useSoftwareRendering:Z

    if-eqz v3, :cond_3

    .line 683
    invoke-direct {p0, p1, v0}, Lcom/airbnb/lottie/LottieDrawable;->renderAndDrawAsBitmap(Landroid/graphics/Canvas;Lcom/airbnb/lottie/model/layer/CompositionLayer;)V

    goto :goto_1

    .line 685
    :cond_3
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->drawDirectlyToCanvas(Landroid/graphics/Canvas;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_2
    const-string v3, "Lottie crashed in draw!"

    .line 688
    invoke-static {v3, p1}, Lcom/airbnb/lottie/utils/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    iget-boolean v3, p0, Lcom/airbnb/lottie/LottieDrawable;->useSoftwareRendering:Z

    if-eqz v3, :cond_5

    .line 692
    invoke-direct {p0, p1, v0}, Lcom/airbnb/lottie/LottieDrawable;->renderAndDrawAsBitmap(Landroid/graphics/Canvas;Lcom/airbnb/lottie/model/layer/CompositionLayer;)V

    goto :goto_1

    .line 694
    :cond_5
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->drawDirectlyToCanvas(Landroid/graphics/Canvas;)V

    :goto_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieDrawable;->isDirty:Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 702
    invoke-static {v2}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    if-eqz v1, :cond_7

    iget-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->setProgressDrawLock:Ljava/util/concurrent/Semaphore;

    .line 704
    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 705
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/CompositionLayer;->getProgress()F

    move-result p1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getAnimatedValueAbsolute()F

    move-result v0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_7

    goto :goto_3

    .line 702
    :goto_2
    invoke-static {v2}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->setProgressDrawLock:Ljava/util/concurrent/Semaphore;

    .line 704
    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 705
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/CompositionLayer;->getProgress()F

    move-result v0

    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getAnimatedValueAbsolute()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_6

    sget-object v0, Lcom/airbnb/lottie/LottieDrawable;->setProgressExecutor:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->updateProgressRunnable:Ljava/lang/Runnable;

    .line 706
    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 709
    :cond_6
    throw p1

    .line 702
    :catch_0
    invoke-static {v2}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    if-eqz v1, :cond_7

    iget-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->setProgressDrawLock:Ljava/util/concurrent/Semaphore;

    .line 704
    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 705
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/CompositionLayer;->getProgress()F

    move-result p1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getAnimatedValueAbsolute()F

    move-result v0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_7

    :goto_3
    sget-object p1, Lcom/airbnb/lottie/LottieDrawable;->setProgressExecutor:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->updateProgressRunnable:Ljava/lang/Runnable;

    .line 706
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_7
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .locals 3

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-eqz v0, :cond_4

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 722
    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getAsyncUpdatesEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/airbnb/lottie/LottieDrawable;->setProgressDrawLock:Ljava/util/concurrent/Semaphore;

    .line 725
    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 726
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;->shouldSetProgressBeforeDrawing()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 727
    invoke-virtual {v2}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getAnimatedValueAbsolute()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/airbnb/lottie/LottieDrawable;->setProgress(F)V

    :cond_1
    iget-boolean v2, p0, Lcom/airbnb/lottie/LottieDrawable;->useSoftwareRendering:Z

    if-eqz v2, :cond_2

    .line 732
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 733
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 734
    invoke-direct {p0, p1, v0}, Lcom/airbnb/lottie/LottieDrawable;->renderAndDrawAsBitmap(Landroid/graphics/Canvas;Lcom/airbnb/lottie/model/layer/CompositionLayer;)V

    .line 735
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/airbnb/lottie/LottieDrawable;->alpha:I

    .line 737
    invoke-virtual {v0, p1, p2, v2}, Lcom/airbnb/lottie/model/layer/CompositionLayer;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    :goto_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieDrawable;->isDirty:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_4

    iget-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->setProgressDrawLock:Ljava/util/concurrent/Semaphore;

    .line 744
    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 745
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/CompositionLayer;->getProgress()F

    move-result p1

    iget-object p2, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {p2}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getAnimatedValueAbsolute()F

    move-result p2

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_4

    goto :goto_1

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_3

    iget-object p2, p0, Lcom/airbnb/lottie/LottieDrawable;->setProgressDrawLock:Ljava/util/concurrent/Semaphore;

    .line 744
    invoke-virtual {p2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 745
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/CompositionLayer;->getProgress()F

    move-result p2

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getAnimatedValueAbsolute()F

    move-result v0

    cmpl-float p2, p2, v0

    if-eqz p2, :cond_3

    sget-object p2, Lcom/airbnb/lottie/LottieDrawable;->setProgressExecutor:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->updateProgressRunnable:Ljava/lang/Runnable;

    .line 746
    invoke-interface {p2, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 749
    :cond_3
    throw p1

    :catch_0
    if-eqz v1, :cond_4

    iget-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->setProgressDrawLock:Ljava/util/concurrent/Semaphore;

    .line 744
    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 745
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/CompositionLayer;->getProgress()F

    move-result p1

    iget-object p2, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {p2}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getAnimatedValueAbsolute()F

    move-result p2

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_4

    :goto_1
    sget-object p1, Lcom/airbnb/lottie/LottieDrawable;->setProgressExecutor:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->updateProgressRunnable:Ljava/lang/Runnable;

    .line 746
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public enableMergePathsForKitKatAndAbove(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieDrawable;->enableMergePaths:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieDrawable;->enableMergePaths:Z

    iget-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-eqz p1, :cond_1

    .line 294
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;->buildCompositionLayer()V

    :cond_1
    return-void
.end method

.method public enableMergePathsForKitKatAndAbove()Z
    .locals 0

    iget-boolean p0, p0, Lcom/airbnb/lottie/LottieDrawable;->enableMergePaths:Z

    return p0
.end method

.method public endAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    .line 807
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 808
    invoke-virtual {v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->endAnimation()V

    .line 809
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 810
    sget-object v0, Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;->NONE:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->onVisibleAction:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    :cond_0
    return-void
.end method

.method public getAlpha()I
    .locals 0

    iget p0, p0, Lcom/airbnb/lottie/LottieDrawable;->alpha:I

    return p0
.end method

.method public getAsyncUpdates()Lcom/airbnb/lottie/AsyncUpdates;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->asyncUpdates:Lcom/airbnb/lottie/AsyncUpdates;

    if-eqz p0, :cond_0

    return-object p0

    .line 445
    :cond_0
    invoke-static {}, Lcom/airbnb/lottie/L;->getDefaultAsyncUpdates()Lcom/airbnb/lottie/AsyncUpdates;

    move-result-object p0

    return-object p0
.end method

.method public getAsyncUpdatesEnabled()Z
    .locals 1

    .line 455
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getAsyncUpdates()Lcom/airbnb/lottie/AsyncUpdates;

    move-result-object p0

    sget-object v0, Lcom/airbnb/lottie/AsyncUpdates;->ENABLED:Lcom/airbnb/lottie/AsyncUpdates;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getBitmapForId(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1440
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;->getImageAssetManager()Lcom/airbnb/lottie/manager/ImageAssetManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1442
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/manager/ImageAssetManager;->bitmapForId(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getClipTextToBoundingBox()Z
    .locals 0

    iget-boolean p0, p0, Lcom/airbnb/lottie/LottieDrawable;->clipTextToBoundingBox:Z

    return p0
.end method

.method public getClipToCompositionBounds()Z
    .locals 0

    iget-boolean p0, p0, Lcom/airbnb/lottie/LottieDrawable;->clipToCompositionBounds:Z

    return p0
.end method

.method public getComposition()Lcom/airbnb/lottie/LottieComposition;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    return-object p0
.end method

.method public getFrame()I
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 1092
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getFrame()F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public getImageAsset(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1416
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;->getImageAssetManager()Lcom/airbnb/lottie/manager/ImageAssetManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1418
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/manager/ImageAssetManager;->bitmapForId(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    const/4 v0, 0x0

    if-nez p0, :cond_1

    move-object p0, v0

    goto :goto_0

    .line 1420
    :cond_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieComposition;->getImages()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/LottieImageAsset;

    :goto_0
    if-eqz p0, :cond_2

    .line 1422
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieImageAsset;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v0
.end method

.method public getImageAssetsFolder()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->imageAssetsFolder:Ljava/lang/String;

    return-object p0
.end method

.method public getIntrinsicHeight()I
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    .line 1312
    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getIntrinsicWidth()I
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    .line 1307
    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getLottieImageAssetForId(Ljava/lang/String;)Lcom/airbnb/lottie/LottieImageAsset;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1464
    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieComposition;->getImages()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/LottieImageAsset;

    return-object p0
.end method

.method public getMaintainOriginalImageBounds()Z
    .locals 0

    iget-boolean p0, p0, Lcom/airbnb/lottie/LottieDrawable;->maintainOriginalImageBounds:Z

    return p0
.end method

.method public getMaxFrame()F
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 890
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    move-result p0

    return p0
.end method

.method public getMinFrame()F
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 858
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    move-result p0

    return p0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public getPerformanceTracker()Lcom/airbnb/lottie/PerformanceTracker;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-eqz p0, :cond_0

    .line 510
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieComposition;->getPerformanceTracker()Lcom/airbnb/lottie/PerformanceTracker;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getProgress()F
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 1302
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getAnimatedValueAbsolute()F

    move-result p0

    return p0
.end method

.method public getRenderMode()Lcom/airbnb/lottie/RenderMode;
    .locals 0

    iget-boolean p0, p0, Lcom/airbnb/lottie/LottieDrawable;->useSoftwareRendering:Z

    if-eqz p0, :cond_0

    .line 472
    sget-object p0, Lcom/airbnb/lottie/RenderMode;->SOFTWARE:Lcom/airbnb/lottie/RenderMode;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/airbnb/lottie/RenderMode;->HARDWARE:Lcom/airbnb/lottie/RenderMode;

    :goto_0
    return-object p0
.end method

.method public getRepeatCount()I
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 1154
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getRepeatCount()I

    move-result p0

    return p0
.end method

.method public getRepeatMode()I
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 1132
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getRepeatMode()I

    move-result p0

    return p0
.end method

.method public getSpeed()F
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 1036
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getSpeed()F

    move-result p0

    return p0
.end method

.method public getTextDelegate()Lcom/airbnb/lottie/TextDelegate;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->textDelegate:Lcom/airbnb/lottie/TextDelegate;

    return-object p0
.end method

.method public getTypeface(Lcom/airbnb/lottie/model/Font;)Landroid/graphics/Typeface;
    .locals 3

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->fontMap:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 1485
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/Font;->getFamily()Ljava/lang/String;

    move-result-object v1

    .line 1486
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1487
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Typeface;

    return-object p0

    .line 1489
    :cond_0
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/Font;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1490
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1491
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Typeface;

    return-object p0

    .line 1493
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/airbnb/lottie/model/Font;->getFamily()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/airbnb/lottie/model/Font;->getStyle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1494
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1495
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Typeface;

    return-object p0

    .line 1499
    :cond_2
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;->getFontAssetManager()Lcom/airbnb/lottie/manager/FontAssetManager;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 1501
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/manager/FontAssetManager;->getTypeface(Lcom/airbnb/lottie/model/Font;)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public hasMasks()Z
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    if-eqz p0, :cond_0

    .line 262
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/CompositionLayer;->hasMasks()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasMatte()Z
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    if-eqz p0, :cond_0

    .line 269
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/CompositionLayer;->hasMatte()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1584
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 1588
    :cond_0
    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public invalidateSelf()V
    .locals 2

    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieDrawable;->isDirty:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieDrawable;->isDirty:Z

    sget-boolean v0, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelfOnMainThread:Z

    if-eqz v0, :cond_1

    .line 609
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    return-void

    .line 612
    :cond_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 614
    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method public isAnimating()Z
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1170
    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isRunning()Z

    move-result p0

    return p0
.end method

.method isAnimatingOrWillAnimateOnVisible()Z
    .locals 2

    .line 1174
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 1175
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isRunning()Z

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->onVisibleAction:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    .line 1177
    sget-object v1, Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;->PLAY:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    if-eq v0, v1, :cond_2

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->onVisibleAction:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    sget-object v0, Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;->RESUME:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isApplyingOpacityToLayersEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/airbnb/lottie/LottieDrawable;->isApplyingOpacityToLayersEnabled:Z

    return p0
.end method

.method public isLooping()Z
    .locals 1

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 1160
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getRepeatCount()I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMergePathsEnabledForKitKatAndAbove()Z
    .locals 0

    iget-boolean p0, p0, Lcom/airbnb/lottie/LottieDrawable;->enableMergePaths:Z

    return p0
.end method

.method public isRunning()Z
    .locals 0

    .line 773
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->isAnimating()Z

    move-result p0

    return p0
.end method

.method synthetic lambda$addValueCallback$17$com-airbnb-lottie-LottieDrawable(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;Lcom/airbnb/lottie/LottieComposition;)V
    .locals 0

    .line 1345
    invoke-virtual {p0, p1, p2, p3}, Lcom/airbnb/lottie/LottieDrawable;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    return-void
.end method

.method synthetic lambda$new$0$com-airbnb-lottie-LottieDrawable(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 168
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getAsyncUpdatesEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 175
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getAnimatedValueAbsolute()F

    move-result p0

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/model/layer/CompositionLayer;->setProgress(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method synthetic lambda$new$1$com-airbnb-lottie-LottieDrawable()V
    .locals 1

    .line 216
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 218
    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$new$2$com-airbnb-lottie-LottieDrawable()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->setProgressDrawLock:Ljava/util/concurrent/Semaphore;

    .line 209
    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V

    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 210
    invoke-virtual {v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getAnimatedValueAbsolute()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/model/layer/CompositionLayer;->setProgress(F)V

    sget-boolean v0, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelfOnMainThread:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieDrawable;->isDirty:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->mainThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 214
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->mainThreadHandler:Landroid/os/Handler;

    .line 215
    new-instance v0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda3;-><init>(Lcom/airbnb/lottie/LottieDrawable;)V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelfRunnable:Ljava/lang/Runnable;

    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->mainThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelfRunnable:Ljava/lang/Runnable;

    .line 222
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->setProgressDrawLock:Ljava/util/concurrent/Semaphore;

    .line 227
    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 228
    throw v0

    :catch_0
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->setProgressDrawLock:Ljava/util/concurrent/Semaphore;

    .line 227
    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

.method synthetic lambda$playAnimation$3$com-airbnb-lottie-LottieDrawable(Lcom/airbnb/lottie/LottieComposition;)V
    .locals 0

    .line 783
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->playAnimation()V

    return-void
.end method

.method synthetic lambda$resumeAnimation$4$com-airbnb-lottie-LottieDrawable(Lcom/airbnb/lottie/LottieComposition;)V
    .locals 0

    .line 821
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->resumeAnimation()V

    return-void
.end method

.method synthetic lambda$setFrame$15$com-airbnb-lottie-LottieDrawable(ILcom/airbnb/lottie/LottieComposition;)V
    .locals 0

    .line 1081
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setFrame(I)V

    return-void
.end method

.method synthetic lambda$setMaxFrame$10$com-airbnb-lottie-LottieDrawable(Ljava/lang/String;Lcom/airbnb/lottie/LottieComposition;)V
    .locals 0

    .line 928
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setMaxFrame(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$setMaxFrame$7$com-airbnb-lottie-LottieDrawable(ILcom/airbnb/lottie/LottieComposition;)V
    .locals 0

    .line 880
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setMaxFrame(I)V

    return-void
.end method

.method synthetic lambda$setMaxProgress$8$com-airbnb-lottie-LottieDrawable(FLcom/airbnb/lottie/LottieComposition;)V
    .locals 0

    .line 898
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setMaxProgress(F)V

    return-void
.end method

.method synthetic lambda$setMinAndMaxFrame$11$com-airbnb-lottie-LottieDrawable(Ljava/lang/String;Lcom/airbnb/lottie/LottieComposition;)V
    .locals 0

    .line 946
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setMinAndMaxFrame(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$setMinAndMaxFrame$12$com-airbnb-lottie-LottieDrawable(Ljava/lang/String;Ljava/lang/String;ZLcom/airbnb/lottie/LottieComposition;)V
    .locals 0

    .line 967
    invoke-virtual {p0, p1, p2, p3}, Lcom/airbnb/lottie/LottieDrawable;->setMinAndMaxFrame(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method synthetic lambda$setMinAndMaxFrame$13$com-airbnb-lottie-LottieDrawable(IILcom/airbnb/lottie/LottieComposition;)V
    .locals 0

    .line 991
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/LottieDrawable;->setMinAndMaxFrame(II)V

    return-void
.end method

.method synthetic lambda$setMinAndMaxProgress$14$com-airbnb-lottie-LottieDrawable(FFLcom/airbnb/lottie/LottieComposition;)V
    .locals 0

    .line 1006
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/LottieDrawable;->setMinAndMaxProgress(FF)V

    return-void
.end method

.method synthetic lambda$setMinFrame$5$com-airbnb-lottie-LottieDrawable(ILcom/airbnb/lottie/LottieComposition;)V
    .locals 0

    .line 848
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setMinFrame(I)V

    return-void
.end method

.method synthetic lambda$setMinFrame$9$com-airbnb-lottie-LottieDrawable(Ljava/lang/String;Lcom/airbnb/lottie/LottieComposition;)V
    .locals 0

    .line 911
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setMinFrame(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$setMinProgress$6$com-airbnb-lottie-LottieDrawable(FLcom/airbnb/lottie/LottieComposition;)V
    .locals 0

    .line 866
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setMinProgress(F)V

    return-void
.end method

.method synthetic lambda$setProgress$16$com-airbnb-lottie-LottieDrawable(FLcom/airbnb/lottie/LottieComposition;)V
    .locals 0

    .line 1097
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setProgress(F)V

    return-void
.end method

.method public loop(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1110
    :goto_0
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setRepeatCount(I)V

    return-void
.end method

.method public pauseAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    .line 1293
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 1294
    invoke-virtual {v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->pauseAnimation()V

    .line 1295
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1296
    sget-object v0, Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;->NONE:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->onVisibleAction:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    :cond_0
    return-void
.end method

.method public playAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    .line 783
    new-instance v1, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda5;-><init>(Lcom/airbnb/lottie/LottieDrawable;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 787
    :cond_0
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;->computeRenderMode()V

    .line 788
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;->animationsEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 789
    :cond_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 790
    invoke-virtual {v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->playAnimation()V

    .line 791
    sget-object v0, Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;->NONE:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->onVisibleAction:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    goto :goto_0

    .line 793
    :cond_2
    sget-object v0, Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;->PLAY:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->onVisibleAction:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    .line 796
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;->animationsEnabled()Z

    move-result v0

    if-nez v0, :cond_5

    .line 797
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getSpeed()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getMinFrame()F

    move-result v0

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getMaxFrame()F

    move-result v0

    :goto_1
    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieDrawable;->setFrame(I)V

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 798
    invoke-virtual {v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->endAnimation()V

    .line 799
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_5

    .line 800
    sget-object v0, Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;->NONE:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->onVisibleAction:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    :cond_5
    return-void
.end method

.method public removeAllAnimatorListeners()V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 1061
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->removeAllListeners()V

    return-void
.end method

.method public removeAllUpdateListeners()V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 1048
    invoke-virtual {v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->removeAllUpdateListeners()V

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->progressUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 1049
    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public removeAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 1057
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public removeAnimatorPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 1071
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->removePauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    return-void
.end method

.method public removeAnimatorUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 1044
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/model/KeyPath;",
            ")",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/KeyPath;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    if-nez v0, :cond_0

    const-string p0, "Cannot resolve KeyPath. Composition is not set yet."

    .line 1325
    invoke-static {p0}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    .line 1326
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 1328
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    .line 1329
    new-instance v1, Lcom/airbnb/lottie/model/KeyPath;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    invoke-direct {v1, v3}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/airbnb/lottie/model/layer/CompositionLayer;->resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/List;Lcom/airbnb/lottie/model/KeyPath;)V

    return-object v0
.end method

.method public resumeAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    .line 821
    new-instance v1, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda15;-><init>(Lcom/airbnb/lottie/LottieDrawable;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 825
    :cond_0
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;->computeRenderMode()V

    .line 826
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;->animationsEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 827
    :cond_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 828
    invoke-virtual {v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->resumeAnimation()V

    .line 829
    sget-object v0, Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;->NONE:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->onVisibleAction:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    goto :goto_0

    .line 831
    :cond_2
    sget-object v0, Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;->RESUME:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->onVisibleAction:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    .line 834
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;->animationsEnabled()Z

    move-result v0

    if-nez v0, :cond_5

    .line 835
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getSpeed()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getMinFrame()F

    move-result v0

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getMaxFrame()F

    move-result v0

    :goto_1
    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieDrawable;->setFrame(I)V

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 836
    invoke-virtual {v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->endAnimation()V

    .line 837
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_5

    .line 838
    sget-object v0, Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;->NONE:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->onVisibleAction:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    :cond_5
    return-void
.end method

.method public reverseAnimationSpeed()V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 1022
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->reverseAnimationSpeed()V

    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    .line 1593
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 1597
    :cond_0
    invoke-interface {p1, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    iput p1, p0, Lcom/airbnb/lottie/LottieDrawable;->alpha:I

    .line 621
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    return-void
.end method

.method public setApplyingOpacityToLayersEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieDrawable;->isApplyingOpacityToLayersEnabled:Z

    return-void
.end method

.method public setAsyncUpdates(Lcom/airbnb/lottie/AsyncUpdates;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->asyncUpdates:Lcom/airbnb/lottie/AsyncUpdates;

    return-void
.end method

.method public setClipTextToBoundingBox(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieDrawable;->clipTextToBoundingBox:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieDrawable;->clipTextToBoundingBox:Z

    .line 557
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setClipToCompositionBounds(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieDrawable;->clipToCompositionBounds:Z

    if-eq p1, v0, :cond_1

    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieDrawable;->clipToCompositionBounds:Z

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/model/layer/CompositionLayer;->setClipToCompositionBounds(Z)V

    .line 314
    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    const-string p0, "Use addColorFilter instead."

    .line 631
    invoke-static {p0}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    return-void
.end method

.method public setComposition(Lcom/airbnb/lottie/LottieComposition;)Z
    .locals 3

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-ne v0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieDrawable;->isDirty:Z

    .line 382
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->clearComposition()V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 384
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;->buildCompositionLayer()V

    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 385
    invoke-virtual {v1, p1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setComposition(Lcom/airbnb/lottie/LottieComposition;)V

    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 386
    invoke-virtual {v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getAnimatedFraction()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/LottieDrawable;->setProgress(F)V

    .line 390
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 391
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 392
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieDrawable$LazyCompositionTask;

    if-eqz v2, :cond_1

    .line 396
    invoke-interface {v2, p1}, Lcom/airbnb/lottie/LottieDrawable$LazyCompositionTask;->run(Lcom/airbnb/lottie/LottieComposition;)V

    .line 398
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    .line 400
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-boolean v1, p0, Lcom/airbnb/lottie/LottieDrawable;->performanceTrackingEnabled:Z

    .line 402
    invoke-virtual {p1, v1}, Lcom/airbnb/lottie/LottieComposition;->setPerformanceTrackingEnabled(Z)V

    .line 403
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;->computeRenderMode()V

    .line 407
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    .line 408
    instance-of v1, p1, Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    .line 409
    check-cast p1, Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 410
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return v0
.end method

.method public setDefaultFontFileExtension(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->defaultFontFileExtension:Ljava/lang/String;

    .line 1536
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;->getFontAssetManager()Lcom/airbnb/lottie/manager/FontAssetManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1538
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/manager/FontAssetManager;->setDefaultFontFileExtension(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setFontAssetDelegate(Lcom/airbnb/lottie/FontAssetDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->fontAssetDelegate:Lcom/airbnb/lottie/FontAssetDelegate;

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->fontAssetManager:Lcom/airbnb/lottie/manager/FontAssetManager;

    if-eqz p0, :cond_0

    .line 1244
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/manager/FontAssetManager;->setDelegate(Lcom/airbnb/lottie/FontAssetDelegate;)V

    :cond_0
    return-void
.end method

.method public setFontMap(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->fontMap:Ljava/util/Map;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->fontMap:Ljava/util/Map;

    .line 1264
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    return-void
.end method

.method public setFrame(I)V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    .line 1081
    new-instance v1, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda6;-><init>(Lcom/airbnb/lottie/LottieDrawable;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    int-to-float p1, p1

    .line 1085
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setFrame(F)V

    return-void
.end method

.method public setIgnoreDisabledSystemAnimations(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieDrawable;->ignoreSystemAnimationsDisabled:Z

    return-void
.end method

.method public setImageAssetDelegate(Lcom/airbnb/lottie/ImageAssetDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->imageAssetDelegate:Lcom/airbnb/lottie/ImageAssetDelegate;

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->imageAssetManager:Lcom/airbnb/lottie/manager/ImageAssetManager;

    if-eqz p0, :cond_0

    .line 1234
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/manager/ImageAssetManager;->setDelegate(Lcom/airbnb/lottie/ImageAssetDelegate;)V

    :cond_0
    return-void
.end method

.method public setImagesAssetsFolder(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->imageAssetsFolder:Ljava/lang/String;

    return-void
.end method

.method public setMaintainOriginalImageBounds(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieDrawable;->maintainOriginalImageBounds:Z

    return-void
.end method

.method public setMaxFrame(I)V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    .line 880
    new-instance v1, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda14;-><init>(Lcom/airbnb/lottie/LottieDrawable;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    int-to-float p1, p1

    const v0, 0x3f7d70a4    # 0.99f

    add-float/2addr p1, v0

    .line 883
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setMaxFrame(F)V

    return-void
.end method

.method public setMaxFrame(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    .line 928
    new-instance v1, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda16;-><init>(Lcom/airbnb/lottie/LottieDrawable;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 931
    :cond_0
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieComposition;->getMarker(Ljava/lang/String;)Lcom/airbnb/lottie/model/Marker;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 935
    iget p1, v0, Lcom/airbnb/lottie/model/Marker;->startFrame:F

    iget v0, v0, Lcom/airbnb/lottie/model/Marker;->durationFrames:F

    add-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setMaxFrame(I)V

    return-void

    .line 933
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot find marker with name "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMaxProgress(F)V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    .line 898
    new-instance v1, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda4;-><init>(Lcom/airbnb/lottie/LottieDrawable;F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 901
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getStartFrame()F

    move-result v0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieComposition;->getEndFrame()F

    move-result p0

    invoke-static {v0, p0, p1}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result p0

    invoke-virtual {v1, p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setMaxFrame(F)V

    return-void
.end method

.method public setMinAndMaxFrame(II)V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    .line 991
    new-instance v1, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1, p2}, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda7;-><init>(Lcom/airbnb/lottie/LottieDrawable;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    int-to-float p1, p1

    int-to-float p2, p2

    const v0, 0x3f7d70a4    # 0.99f

    add-float/2addr p2, v0

    .line 995
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setMinAndMaxFrames(FF)V

    return-void
.end method

.method public setMinAndMaxFrame(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    .line 946
    new-instance v1, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda8;-><init>(Lcom/airbnb/lottie/LottieDrawable;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 949
    :cond_0
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieComposition;->getMarker(Ljava/lang/String;)Lcom/airbnb/lottie/model/Marker;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 953
    iget p1, v0, Lcom/airbnb/lottie/model/Marker;->startFrame:F

    float-to-int p1, p1

    .line 954
    iget v0, v0, Lcom/airbnb/lottie/model/Marker;->durationFrames:F

    float-to-int v0, v0

    add-int/2addr v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/airbnb/lottie/LottieDrawable;->setMinAndMaxFrame(II)V

    return-void

    .line 951
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot find marker with name "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMinAndMaxFrame(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    .line 967
    new-instance v1, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda17;-><init>(Lcom/airbnb/lottie/LottieDrawable;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 970
    :cond_0
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieComposition;->getMarker(Ljava/lang/String;)Lcom/airbnb/lottie/model/Marker;

    move-result-object v0

    const-string v1, "."

    const-string v2, "Cannot find marker with name "

    if-eqz v0, :cond_3

    .line 974
    iget p1, v0, Lcom/airbnb/lottie/model/Marker;->startFrame:F

    float-to-int p1, p1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 976
    invoke-virtual {v0, p2}, Lcom/airbnb/lottie/LottieComposition;->getMarker(Ljava/lang/String;)Lcom/airbnb/lottie/model/Marker;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 980
    iget p2, v0, Lcom/airbnb/lottie/model/Marker;->startFrame:F

    if-eqz p3, :cond_1

    const/high16 p3, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    add-float/2addr p2, p3

    float-to-int p2, p2

    .line 982
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/LottieDrawable;->setMinAndMaxFrame(II)V

    return-void

    .line 978
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 972
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMinAndMaxProgress(FF)V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    .line 1006
    new-instance v1, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1, p2}, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda11;-><init>(Lcom/airbnb/lottie/LottieDrawable;FF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 1010
    :cond_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getStartFrame()F

    move-result v0

    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieComposition;->getEndFrame()F

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result p1

    float-to-int p1, p1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 1011
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getStartFrame()F

    move-result v0

    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieComposition;->getEndFrame()F

    move-result v1

    invoke-static {v0, v1, p2}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result p2

    float-to-int p2, p2

    .line 1010
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/LottieDrawable;->setMinAndMaxFrame(II)V

    return-void
.end method

.method public setMinFrame(I)V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    .line 848
    new-instance v1, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda12;-><init>(Lcom/airbnb/lottie/LottieDrawable;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 851
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setMinFrame(I)V

    return-void
.end method

.method public setMinFrame(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    .line 911
    new-instance v1, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda1;-><init>(Lcom/airbnb/lottie/LottieDrawable;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 914
    :cond_0
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieComposition;->getMarker(Ljava/lang/String;)Lcom/airbnb/lottie/model/Marker;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 918
    iget p1, v0, Lcom/airbnb/lottie/model/Marker;->startFrame:F

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setMinFrame(I)V

    return-void

    .line 916
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot find marker with name "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMinProgress(F)V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    .line 866
    new-instance v1, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda13;-><init>(Lcom/airbnb/lottie/LottieDrawable;F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 869
    :cond_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getStartFrame()F

    move-result v0

    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieComposition;->getEndFrame()F

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setMinFrame(I)V

    return-void
.end method

.method public setOutlineMasksAndMattes(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieDrawable;->outlineMasksAndMattes:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieDrawable;->outlineMasksAndMattes:Z

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    if-eqz p0, :cond_1

    .line 503
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/CompositionLayer;->setOutlineMasksAndMattes(Z)V

    :cond_1
    return-void
.end method

.method public setPerformanceTrackingEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieDrawable;->performanceTrackingEnabled:Z

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-eqz p0, :cond_0

    .line 487
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieComposition;->setPerformanceTrackingEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    .line 1097
    new-instance v1, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda10;-><init>(Lcom/airbnb/lottie/LottieDrawable;F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    const-string v0, "Drawable#setProgress"

    .line 1100
    invoke-static {v0}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 1101
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieComposition;->getFrameForProgress(F)F

    move-result p0

    invoke-virtual {v1, p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setFrame(F)V

    .line 1102
    invoke-static {v0}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    return-void
.end method

.method public setRenderMode(Lcom/airbnb/lottie/RenderMode;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->renderMode:Lcom/airbnb/lottie/RenderMode;

    .line 434
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;->computeRenderMode()V

    return-void
.end method

.method public setRepeatCount(I)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 1144
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setRepeatCount(I)V

    return-void
.end method

.method public setRepeatMode(I)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 1121
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setRepeatMode(I)V

    return-void
.end method

.method public setSafeMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieDrawable;->safeMode:Z

    return-void
.end method

.method public setSpeed(F)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 1029
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setSpeed(F)V

    return-void
.end method

.method public setSystemAnimationsAreEnabled(Ljava/lang/Boolean;)V
    .locals 0

    .line 1191
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieDrawable;->systemAnimationsEnabled:Z

    return-void
.end method

.method public setTextDelegate(Lcom/airbnb/lottie/TextDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->textDelegate:Lcom/airbnb/lottie/TextDelegate;

    return-void
.end method

.method public setUseCompositionFrameRate(Z)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 1217
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setUseCompositionFrameRate(Z)V

    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1

    .line 1558
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->isVisible()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 1559
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p2

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->onVisibleAction:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    .line 1562
    sget-object v0, Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;->PLAY:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    if-ne p1, v0, :cond_0

    .line 1563
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->playAnimation()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->onVisibleAction:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    .line 1564
    sget-object v0, Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;->RESUME:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    if-ne p1, v0, :cond_3

    .line 1565
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->resumeAnimation()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 1568
    invoke-virtual {p1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1569
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->pauseAnimation()V

    .line 1570
    sget-object p1, Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;->RESUME:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->onVisibleAction:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    .line 1572
    sget-object p1, Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;->NONE:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->onVisibleAction:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    :cond_3
    :goto_0
    return p2
.end method

.method public start()V
    .locals 2

    .line 757
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 758
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 762
    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->playAnimation()V

    return-void
.end method

.method public stop()V
    .locals 0

    .line 768
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->endAnimation()V

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    .line 1602
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 1606
    :cond_0
    invoke-interface {p1, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    .line 1399
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;->getImageAssetManager()Lcom/airbnb/lottie/manager/ImageAssetManager;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "Cannot update bitmap. Most likely the drawable is not added to a View which prevents Lottie from getting a Context."

    .line 1401
    invoke-static {p0}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 1405
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/airbnb/lottie/manager/ImageAssetManager;->updateBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1406
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    return-object p1
.end method

.method public useTextGlyphs()Z
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->fontMap:Ljava/util/Map;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->textDelegate:Lcom/airbnb/lottie/TextDelegate;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 1277
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieComposition;->getCharacters()Landroidx/collection/SparseArrayCompat;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
