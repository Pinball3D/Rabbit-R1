.class public Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;
.super Landroid/view/View;
.source "SubsamplingScaleImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$DefaultOnStateChangedListener;,
        Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$OnStateChangedListener;,
        Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$DefaultOnImageEventListener;,
        Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$OnImageEventListener;,
        Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$DefaultOnAnimationEventListener;,
        Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$OnAnimationEventListener;,
        Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$AnimationBuilder;,
        Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$ScaleAndTranslate;,
        Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;,
        Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;,
        Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$BitmapLoadTask;,
        Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$TileLoadTask;,
        Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$TilesInitTask;
    }
.end annotation


# static fields
.field public static final EASE_IN_OUT_QUAD:I = 0x2

.field public static final EASE_OUT_QUAD:I = 0x1

.field private static final MESSAGE_LONG_CLICK:I = 0x1

.field public static final ORIENTATION_0:I = 0x0

.field public static final ORIENTATION_180:I = 0xb4

.field public static final ORIENTATION_270:I = 0x10e

.field public static final ORIENTATION_90:I = 0x5a

.field public static final ORIENTATION_USE_EXIF:I = -0x1

.field public static final ORIGIN_ANIM:I = 0x1

.field public static final ORIGIN_DOUBLE_TAP_ZOOM:I = 0x4

.field public static final ORIGIN_FLING:I = 0x3

.field public static final ORIGIN_TOUCH:I = 0x2

.field public static final PAN_LIMIT_CENTER:I = 0x3

.field public static final PAN_LIMIT_INSIDE:I = 0x1

.field public static final PAN_LIMIT_OUTSIDE:I = 0x2

.field public static final SCALE_TYPE_CENTER_CROP:I = 0x2

.field public static final SCALE_TYPE_CENTER_INSIDE:I = 0x1

.field public static final SCALE_TYPE_CUSTOM:I = 0x3

.field public static final SCALE_TYPE_START:I = 0x4

.field private static final TAG:Ljava/lang/String; = "SubsamplingScaleImageView"

.field public static final TILE_SIZE_AUTO:I = 0x7fffffff

.field private static final VALID_EASING_STYLES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final VALID_ORIENTATIONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final VALID_PAN_LIMITS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final VALID_SCALE_TYPES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final VALID_ZOOM_STYLES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final ZOOM_FOCUS_CENTER:I = 0x2

.field public static final ZOOM_FOCUS_CENTER_IMMEDIATE:I = 0x3

.field public static final ZOOM_FOCUS_FIXED:I = 0x1

.field private static preferredBitmapConfig:Landroid/graphics/Bitmap$Config;


# instance fields
.field private anim:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;

.field private bitmap:Landroid/graphics/Bitmap;

.field private bitmapDecoderFactory:Lcom/davemorrissey/labs/subscaleview/decoder/DecoderFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/davemorrissey/labs/subscaleview/decoder/DecoderFactory<",
            "+",
            "Lcom/davemorrissey/labs/subscaleview/decoder/ImageDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private bitmapIsCached:Z

.field private bitmapIsPreview:Z

.field private bitmapPaint:Landroid/graphics/Paint;

.field private debug:Z

.field private debugLinePaint:Landroid/graphics/Paint;

.field private debugTextPaint:Landroid/graphics/Paint;

.field private decoder:Lcom/davemorrissey/labs/subscaleview/decoder/ImageRegionDecoder;

.field private final decoderLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field private final density:F

.field private detector:Landroid/view/GestureDetector;

.field private doubleTapZoomDuration:I

.field private doubleTapZoomScale:F

.field private doubleTapZoomStyle:I

.field private final dstArray:[F

.field private eagerLoadingEnabled:Z

.field private executor:Ljava/util/concurrent/Executor;

.field private fullImageSampleSize:I

.field private final handler:Landroid/os/Handler;

.field private imageLoadedSent:Z

.field private isPanning:Z

.field private isQuickScaling:Z

.field private isZooming:Z

.field private matrix:Landroid/graphics/Matrix;

.field private maxScale:F

.field private maxTileHeight:I

.field private maxTileWidth:I

.field private maxTouchCount:I

.field private minScale:F

.field private minimumScaleType:I

.field private minimumTileDpi:I

.field private onImageEventListener:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$OnImageEventListener;

.field private onLongClickListener:Landroid/view/View$OnLongClickListener;

.field private onStateChangedListener:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$OnStateChangedListener;

.field private orientation:I

.field private pRegion:Landroid/graphics/Rect;

.field private panEnabled:Z

.field private panLimit:I

.field private pendingScale:Ljava/lang/Float;

.field private quickScaleEnabled:Z

.field private quickScaleLastDistance:F

.field private quickScaleMoved:Z

.field private quickScaleSCenter:Landroid/graphics/PointF;

.field private final quickScaleThreshold:F

.field private quickScaleVLastPoint:Landroid/graphics/PointF;

.field private quickScaleVStart:Landroid/graphics/PointF;

.field private readySent:Z

.field private regionDecoderFactory:Lcom/davemorrissey/labs/subscaleview/decoder/DecoderFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/davemorrissey/labs/subscaleview/decoder/DecoderFactory<",
            "+",
            "Lcom/davemorrissey/labs/subscaleview/decoder/ImageRegionDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private sHeight:I

.field private sOrientation:I

.field private sPendingCenter:Landroid/graphics/PointF;

.field private sRect:Landroid/graphics/RectF;

.field private sRegion:Landroid/graphics/Rect;

.field private sRequestedCenter:Landroid/graphics/PointF;

.field private sWidth:I

.field private satTemp:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$ScaleAndTranslate;

.field private scale:F

.field private scaleStart:F

.field private singleDetector:Landroid/view/GestureDetector;

.field private final srcArray:[F

.field private tileBgPaint:Landroid/graphics/Paint;

.field private tileMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;",
            ">;>;"
        }
    .end annotation
.end field

.field private uri:Landroid/net/Uri;

.field private vCenterStart:Landroid/graphics/PointF;

.field private vDistStart:F

.field private vTranslate:Landroid/graphics/PointF;

.field private vTranslateBefore:Landroid/graphics/PointF;

.field private vTranslateStart:Landroid/graphics/PointF;

.field private zoomEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 87
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v2, 0x5a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    .line 96
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v2, v0, v3

    const/16 v2, 0xb4

    .line 87
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x2

    .line 96
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v2, v0, v5

    const/16 v2, 0x10e

    .line 87
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v7, 0x3

    .line 96
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v2, v0, v7

    const/4 v2, -0x1

    .line 87
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v9, 0x4

    aput-object v2, v0, v9

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->VALID_ORIENTATIONS:Ljava/util/List;

    new-array v0, v7, [Ljava/lang/Integer;

    aput-object v4, v0, v1

    aput-object v6, v0, v3

    aput-object v8, v0, v5

    .line 96
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->VALID_ZOOM_STYLES:Ljava/util/List;

    new-array v0, v5, [Ljava/lang/Integer;

    aput-object v6, v0, v1

    aput-object v4, v0, v3

    .line 103
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->VALID_EASING_STYLES:Ljava/util/List;

    new-array v0, v7, [Ljava/lang/Integer;

    aput-object v4, v0, v1

    aput-object v6, v0, v3

    aput-object v8, v0, v5

    .line 112
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->VALID_PAN_LIMITS:Ljava/util/List;

    new-array v0, v9, [Ljava/lang/Integer;

    aput-object v6, v0, v1

    aput-object v4, v0, v3

    aput-object v8, v0, v5

    .line 123
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->VALID_SCALE_TYPES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 338
    invoke-direct {p0, p1, v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 287
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->orientation:I

    const/high16 v1, 0x40000000    # 2.0f

    iput v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->maxScale:F

    .line 162
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->minScale()F

    move-result v1

    iput v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->minScale:F

    const/4 v1, -0x1

    iput v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->minimumTileDpi:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->panLimit:I

    iput v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->minimumScaleType:I

    const v2, 0x7fffffff

    iput v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->maxTileWidth:I

    iput v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->maxTileHeight:I

    .line 179
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    iput-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->executor:Ljava/util/concurrent/Executor;

    iput-boolean v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->eagerLoadingEnabled:Z

    iput-boolean v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->panEnabled:Z

    iput-boolean v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->zoomEnabled:Z

    iput-boolean v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->quickScaleEnabled:Z

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->doubleTapZoomScale:F

    iput v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->doubleTapZoomStyle:I

    const/16 v2, 0x1f4

    iput v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->doubleTapZoomDuration:I

    .line 230
    new-instance v2, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v2, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    iput-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->decoderLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 231
    new-instance v2, Lcom/davemorrissey/labs/subscaleview/decoder/CompatDecoderFactory;

    const-class v3, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaImageDecoder;

    invoke-direct {v2, v3}, Lcom/davemorrissey/labs/subscaleview/decoder/CompatDecoderFactory;-><init>(Ljava/lang/Class;)V

    iput-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->bitmapDecoderFactory:Lcom/davemorrissey/labs/subscaleview/decoder/DecoderFactory;

    .line 232
    new-instance v2, Lcom/davemorrissey/labs/subscaleview/decoder/CompatDecoderFactory;

    const-class v3, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaImageRegionDecoder;

    invoke-direct {v2, v3}, Lcom/davemorrissey/labs/subscaleview/decoder/CompatDecoderFactory;-><init>(Ljava/lang/Class;)V

    iput-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->regionDecoderFactory:Lcom/davemorrissey/labs/subscaleview/decoder/DecoderFactory;

    const/16 v2, 0x8

    new-array v3, v2, [F

    iput-object v3, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->srcArray:[F

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->dstArray:[F

    .line 288
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->density:F

    const/16 v2, 0xa0

    .line 289
    invoke-virtual {p0, v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setMinimumDpi(I)V

    .line 290
    invoke-virtual {p0, v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setDoubleTapZoomDpi(I)V

    const/16 v2, 0x140

    .line 291
    invoke-virtual {p0, v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setMinimumTileDpi(I)V

    .line 292
    invoke-direct {p0, p1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setGestureDetector(Landroid/content/Context;)V

    .line 293
    new-instance v2, Landroid/os/Handler;

    new-instance v3, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$1;

    invoke-direct {v3, p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$1;-><init>(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)V

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->handler:Landroid/os/Handler;

    if-eqz p2, :cond_6

    .line 306
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/davemorrissey/labs/subscaleview/R$styleable;->SubsamplingScaleImageView:[I

    invoke-virtual {v2, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 307
    sget v2, Lcom/davemorrissey/labs/subscaleview/R$styleable;->SubsamplingScaleImageView_assetName:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 308
    sget v2, Lcom/davemorrissey/labs/subscaleview/R$styleable;->SubsamplingScaleImageView_assetName:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 309
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 310
    invoke-static {v2}, Lcom/davemorrissey/labs/subscaleview/ImageSource;->asset(Ljava/lang/String;)Lcom/davemorrissey/labs/subscaleview/ImageSource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/davemorrissey/labs/subscaleview/ImageSource;->tilingEnabled()Lcom/davemorrissey/labs/subscaleview/ImageSource;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setImage(Lcom/davemorrissey/labs/subscaleview/ImageSource;)V

    .line 313
    :cond_0
    sget v2, Lcom/davemorrissey/labs/subscaleview/R$styleable;->SubsamplingScaleImageView_src:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 314
    sget v2, Lcom/davemorrissey/labs/subscaleview/R$styleable;->SubsamplingScaleImageView_src:I

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-lez v2, :cond_1

    .line 316
    invoke-static {v2}, Lcom/davemorrissey/labs/subscaleview/ImageSource;->resource(I)Lcom/davemorrissey/labs/subscaleview/ImageSource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/davemorrissey/labs/subscaleview/ImageSource;->tilingEnabled()Lcom/davemorrissey/labs/subscaleview/ImageSource;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setImage(Lcom/davemorrissey/labs/subscaleview/ImageSource;)V

    .line 319
    :cond_1
    sget v2, Lcom/davemorrissey/labs/subscaleview/R$styleable;->SubsamplingScaleImageView_panEnabled:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 320
    sget v2, Lcom/davemorrissey/labs/subscaleview/R$styleable;->SubsamplingScaleImageView_panEnabled:I

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setPanEnabled(Z)V

    .line 322
    :cond_2
    sget v2, Lcom/davemorrissey/labs/subscaleview/R$styleable;->SubsamplingScaleImageView_zoomEnabled:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 323
    sget v2, Lcom/davemorrissey/labs/subscaleview/R$styleable;->SubsamplingScaleImageView_zoomEnabled:I

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setZoomEnabled(Z)V

    .line 325
    :cond_3
    sget v2, Lcom/davemorrissey/labs/subscaleview/R$styleable;->SubsamplingScaleImageView_quickScaleEnabled:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 326
    sget v2, Lcom/davemorrissey/labs/subscaleview/R$styleable;->SubsamplingScaleImageView_quickScaleEnabled:I

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setQuickScaleEnabled(Z)V

    .line 328
    :cond_4
    sget v2, Lcom/davemorrissey/labs/subscaleview/R$styleable;->SubsamplingScaleImageView_tileBackgroundColor:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 329
    sget v2, Lcom/davemorrissey/labs/subscaleview/R$styleable;->SubsamplingScaleImageView_tileBackgroundColor:I

    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setTileBackgroundColor(I)V

    .line 331
    :cond_5
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 334
    :cond_6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/high16 p2, 0x41a00000    # 20.0f

    invoke-static {v1, p2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->quickScaleThreshold:F

    return-void
.end method

.method static synthetic access$000(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)Landroid/view/View$OnLongClickListener;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->onLongClickListener:Landroid/view/View$OnLongClickListener;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)F
    .locals 0

    .line 72
    iget p0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->scale:F

    return p0
.end method

.method static synthetic access$102(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;I)I
    .locals 0

    .line 72
    iput p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->maxTouchCount:I

    return p1
.end method

.method static synthetic access$1400(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)Z
    .locals 0

    .line 72
    iget-boolean p0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->zoomEnabled:Z

    return p0
.end method

.method static synthetic access$1500(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;Landroid/content/Context;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setGestureDetector(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)Z
    .locals 0

    .line 72
    iget-boolean p0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->quickScaleEnabled:Z

    return p0
.end method

.method static synthetic access$1700(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)Landroid/graphics/PointF;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vCenterStart:Landroid/graphics/PointF;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vCenterStart:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic access$1802(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslateStart:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic access$1902(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;F)F
    .locals 0

    .line 72
    iput p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->scaleStart:F

    return p1
.end method

.method static synthetic access$2002(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;Z)Z
    .locals 0

    .line 72
    iput-boolean p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->isQuickScaling:Z

    return p1
.end method

.method static synthetic access$201(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .line 72
    invoke-super {p0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method static synthetic access$2102(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;F)F
    .locals 0

    .line 72
    iput p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->quickScaleLastDistance:F

    return p1
.end method

.method static synthetic access$2200(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)Landroid/graphics/PointF;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->quickScaleSCenter:Landroid/graphics/PointF;

    return-object p0
.end method

.method static synthetic access$2202(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->quickScaleSCenter:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic access$2302(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->quickScaleVStart:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic access$2402(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->quickScaleVLastPoint:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic access$2502(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;Z)Z
    .locals 0

    .line 72
    iput-boolean p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->quickScaleMoved:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->doubleTapZoom(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    return-void
.end method

.method static synthetic access$301(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .line 72
    invoke-super {p0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method static synthetic access$5100(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$5200(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;Landroid/content/Context;Ljava/lang/String;)I
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getExifOrientation(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$5300(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)Landroid/graphics/Rect;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sRegion:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$5400()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;Lcom/davemorrissey/labs/subscaleview/decoder/ImageRegionDecoder;III)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->onTilesInited(Lcom/davemorrissey/labs/subscaleview/decoder/ImageRegionDecoder;III)V

    return-void
.end method

.method static synthetic access$5600(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$OnImageEventListener;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->onImageEventListener:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$OnImageEventListener;

    return-object p0
.end method

.method static synthetic access$5700(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)Ljava/util/concurrent/locks/ReadWriteLock;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->decoderLock:Ljava/util/concurrent/locks/ReadWriteLock;

    return-object p0
.end method

.method static synthetic access$5800(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->fileSRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$5900(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->onTileLoaded()V

    return-void
.end method

.method static synthetic access$600(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)Z
    .locals 0

    .line 72
    iget-boolean p0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->panEnabled:Z

    return p0
.end method

.method static synthetic access$6000(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->onPreviewLoaded(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$6100(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;Landroid/graphics/Bitmap;IZ)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->onImageLoaded(Landroid/graphics/Bitmap;IZ)V

    return-void
.end method

.method static synthetic access$6300()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->VALID_EASING_STYLES:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->anim:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;

    return-object p0
.end method

.method static synthetic access$6402(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;)Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->anim:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;

    return-object p1
.end method

.method static synthetic access$6500(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;F)F
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->limitedScale(F)F

    move-result p0

    return p0
.end method

.method static synthetic access$6600(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;FFFLandroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->limitedSCenter(FFFLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$6800(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;ZLcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$ScaleAndTranslate;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->fitToBounds(ZLcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$ScaleAndTranslate;)V

    return-void
.end method

.method static synthetic access$700(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)Z
    .locals 0

    .line 72
    iget-boolean p0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->readySent:Z

    return p0
.end method

.method static synthetic access$800(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)Landroid/graphics/PointF;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    return-object p0
.end method

.method static synthetic access$900(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)Z
    .locals 0

    .line 72
    iget-boolean p0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->isZooming:Z

    return p0
.end method

.method static synthetic access$902(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;Z)Z
    .locals 0

    .line 72
    iput-boolean p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->isZooming:Z

    return p1
.end method

.method private calculateInSampleSize(F)I
    .locals 3

    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->minimumTileDpi:I

    if-lez v0, :cond_0

    .line 1371
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1372
    iget v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    add-float/2addr v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v1, v0

    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->minimumTileDpi:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    mul-float/2addr p1, v0

    .line 1376
    :cond_0
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 1377
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int p1, v1

    if-eqz v0, :cond_6

    if-nez p1, :cond_1

    goto :goto_2

    .line 1385
    :cond_1
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sHeight()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, p1, :cond_3

    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sWidth()I

    move-result v1

    if-le v1, v0, :cond_2

    goto :goto_0

    :cond_2
    move p1, v2

    goto :goto_1

    .line 1388
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sHeight()I

    move-result v1

    int-to-float v1, v1

    int-to-float p1, p1

    div-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 1389
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sWidth()I

    move-result p0

    int-to-float p0, p0

    int-to-float v0, v0

    div-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    if-ge p1, p0, :cond_4

    goto :goto_1

    :cond_4
    move p1, p0

    :goto_1
    mul-int/lit8 p0, v2, 0x2

    if-ge p0, p1, :cond_5

    move v2, p0

    goto :goto_1

    :cond_5
    return v2

    :cond_6
    :goto_2
    const/16 p0, 0x20

    return p0
.end method

.method private checkImageLoaded()Z
    .locals 2

    .line 1211
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->isBaseLayerReady()Z

    move-result v0

    iget-boolean v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->imageLoadedSent:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 1213
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->preDraw()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->imageLoadedSent:Z

    .line 1215
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->onImageLoaded()V

    iget-object p0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->onImageEventListener:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$OnImageEventListener;

    if-eqz p0, :cond_0

    .line 1217
    invoke-interface {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$OnImageEventListener;->onImageLoaded()V

    :cond_0
    return v0
.end method

.method private checkReady()Z
    .locals 3

    .line 1194
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getWidth()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getHeight()I

    move-result v0

    if-lez v0, :cond_1

    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sWidth:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sHeight:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->isBaseLayerReady()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-boolean v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->readySent:Z

    if-nez v2, :cond_2

    if-eqz v0, :cond_2

    .line 1196
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->preDraw()V

    iput-boolean v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->readySent:Z

    .line 1198
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->onReady()V

    iget-object p0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->onImageEventListener:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$OnImageEventListener;

    if-eqz p0, :cond_2

    .line 1200
    invoke-interface {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$OnImageEventListener;->onReady()V

    :cond_2
    return v0
.end method

.method private createPaints()V
    .locals 4

    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->bitmapPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1228
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->bitmapPaint:Landroid/graphics/Paint;

    .line 1229
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->bitmapPaint:Landroid/graphics/Paint;

    .line 1230
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->bitmapPaint:Landroid/graphics/Paint;

    .line 1231
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    :cond_0
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->debugTextPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->debugLinePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->debug:Z

    if-eqz v0, :cond_2

    .line 1234
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->debugTextPaint:Landroid/graphics/Paint;

    const/16 v2, 0xc

    .line 1235
    invoke-direct {p0, v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->px(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->debugTextPaint:Landroid/graphics/Paint;

    const v2, -0xff01

    .line 1236
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->debugTextPaint:Landroid/graphics/Paint;

    .line 1237
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1238
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->debugLinePaint:Landroid/graphics/Paint;

    .line 1239
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->debugLinePaint:Landroid/graphics/Paint;

    .line 1240
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->debugLinePaint:Landroid/graphics/Paint;

    .line 1241
    invoke-direct {p0, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->px(I)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_2
    return-void
.end method

.method private varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    iget-boolean p0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->debug:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->TAG:Ljava/lang/String;

    .line 2346
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private distance(FFFF)F
    .locals 0

    sub-float/2addr p1, p2

    sub-float/2addr p3, p4

    mul-float/2addr p1, p1

    mul-float/2addr p3, p3

    add-float/2addr p1, p3

    float-to-double p0, p1

    .line 2028
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method private doubleTapZoom(Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 12

    iget-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->panEnabled:Z

    const/4 v1, 0x2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sRequestedCenter:Landroid/graphics/PointF;

    if-eqz v0, :cond_0

    .line 944
    iget v0, v0, Landroid/graphics/PointF;->x:F

    iput v0, p1, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sRequestedCenter:Landroid/graphics/PointF;

    .line 945
    iget v0, v0, Landroid/graphics/PointF;->y:F

    iput v0, p1, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 948
    :cond_0
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sWidth()I

    move-result v0

    div-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p1, Landroid/graphics/PointF;->x:F

    .line 949
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sHeight()I

    move-result v0

    div-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p1, Landroid/graphics/PointF;->y:F

    :cond_1
    :goto_0
    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->maxScale:F

    iget v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->doubleTapZoomScale:F

    .line 952
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->scale:F

    float-to-double v3, v2

    float-to-double v5, v0

    const-wide v7, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v5, v7

    cmpg-double v3, v3, v5

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lez v3, :cond_3

    iget v3, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->minScale:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    move v2, v5

    goto :goto_2

    :cond_3
    :goto_1
    move v2, v4

    :goto_2
    if-eqz v2, :cond_4

    goto :goto_3

    .line 954
    :cond_4
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->minScale()F

    move-result v0

    :goto_3
    move v8, v0

    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->doubleTapZoomStyle:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_5

    .line 956
    invoke-virtual {p0, v8, p1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setScaleAndCenter(FLandroid/graphics/PointF;)V

    goto :goto_5

    :cond_5
    const/4 v3, 0x4

    if-eq v0, v1, :cond_7

    if-eqz v2, :cond_7

    iget-boolean v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->panEnabled:Z

    if-nez v1, :cond_6

    goto :goto_4

    :cond_6
    if-ne v0, v4, :cond_8

    .line 960
    new-instance v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$AnimationBuilder;

    const/4 v11, 0x0

    move-object v6, v0

    move-object v7, p0

    move-object v9, p1

    move-object v10, p2

    invoke-direct/range {v6 .. v11}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$AnimationBuilder;-><init>(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;FLandroid/graphics/PointF;Landroid/graphics/PointF;Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$1;)V

    invoke-virtual {v0, v5}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$AnimationBuilder;->withInterruptible(Z)Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$AnimationBuilder;

    move-result-object p1

    iget p2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->doubleTapZoomDuration:I

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$AnimationBuilder;->withDuration(J)Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$AnimationBuilder;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$AnimationBuilder;->access$1300(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$AnimationBuilder;I)Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$AnimationBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$AnimationBuilder;->start()V

    goto :goto_5

    .line 958
    :cond_7
    :goto_4
    new-instance p2, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$AnimationBuilder;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v8, p1, v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$AnimationBuilder;-><init>(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;FLandroid/graphics/PointF;Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$1;)V

    invoke-virtual {p2, v5}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$AnimationBuilder;->withInterruptible(Z)Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$AnimationBuilder;

    move-result-object p1

    iget p2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->doubleTapZoomDuration:I

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$AnimationBuilder;->withDuration(J)Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$AnimationBuilder;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$AnimationBuilder;->access$1300(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$AnimationBuilder;I)Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$AnimationBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$AnimationBuilder;->start()V

    .line 962
    :cond_8
    :goto_5
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->invalidate()V

    return-void
.end method

.method private ease(IJFFJ)F
    .locals 7

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    move-object v0, p0

    move-wide v1, p2

    move v3, p4

    move v4, p5

    move-wide v5, p6

    .line 2301
    invoke-direct/range {v0 .. v6}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->easeInOutQuad(JFFJ)F

    move-result p0

    return p0

    .line 2305
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unexpected easing type: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    move-object v0, p0

    move-wide v1, p2

    move v3, p4

    move v4, p5

    move-wide v5, p6

    .line 2303
    invoke-direct/range {v0 .. v6}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->easeOutQuad(JFFJ)F

    move-result p0

    return p0
.end method

.method private easeInOutQuad(JFFJ)F
    .locals 0

    long-to-float p0, p1

    long-to-float p1, p5

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    div-float/2addr p0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    cmpg-float p5, p0, p1

    if-gez p5, :cond_0

    div-float/2addr p4, p2

    mul-float/2addr p4, p0

    :goto_0
    mul-float/2addr p4, p0

    add-float/2addr p4, p3

    return p4

    :cond_0
    sub-float/2addr p0, p1

    neg-float p4, p4

    div-float/2addr p4, p2

    sub-float p2, p0, p2

    mul-float/2addr p0, p2

    sub-float/2addr p0, p1

    goto :goto_0
.end method

.method private easeOutQuad(JFFJ)F
    .locals 0

    long-to-float p0, p1

    long-to-float p1, p5

    div-float/2addr p0, p1

    neg-float p1, p4

    mul-float/2addr p1, p0

    const/high16 p2, 0x40000000    # 2.0f

    sub-float/2addr p0, p2

    mul-float/2addr p1, p0

    add-float/2addr p1, p3

    return p1
.end method

.method private execute(Landroid/os/AsyncTask;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "*>;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->executor:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    .line 1881
    invoke-virtual {p1, p0, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private fileSRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 4

    .line 1999
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getRequiredRotation()I

    move-result v0

    if-nez v0, :cond_0

    .line 2000
    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 2001
    :cond_0
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getRequiredRotation()I

    move-result v0

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_1

    .line 2002
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sHeight:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget p0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sHeight:I

    iget p1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p0, p1

    invoke-virtual {p2, v0, v1, v2, p0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 2003
    :cond_1
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getRequiredRotation()I

    move-result v0

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sWidth:I

    .line 2004
    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sHeight:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sWidth:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget p0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sHeight:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p0, p1

    invoke-virtual {p2, v0, v1, v2, p0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sWidth:I

    .line 2006
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget p0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sWidth:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p0, v2

    iget p1, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2, v0, v1, p0, p1}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-void
.end method

.method private fitToBounds(Z)V
    .locals 5

    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1466
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->satTemp:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$ScaleAndTranslate;

    if-nez v2, :cond_1

    .line 1469
    new-instance v2, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$ScaleAndTranslate;

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v4}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$ScaleAndTranslate;-><init>(FLandroid/graphics/PointF;Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$1;)V

    iput-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->satTemp:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$ScaleAndTranslate;

    :cond_1
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->satTemp:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$ScaleAndTranslate;

    iget v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->scale:F

    .line 1471
    invoke-static {v1, v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$ScaleAndTranslate;->access$4702(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$ScaleAndTranslate;F)F

    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->satTemp:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$ScaleAndTranslate;

    .line 1472
    invoke-static {v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$ScaleAndTranslate;->access$4800(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$ScaleAndTranslate;)Landroid/graphics/PointF;

    move-result-object v1

    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    invoke-virtual {v1, v2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->satTemp:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$ScaleAndTranslate;

    .line 1473
    invoke-direct {p0, p1, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->fitToBounds(ZLcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$ScaleAndTranslate;)V

    iget-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->satTemp:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$ScaleAndTranslate;

    .line 1474
    invoke-static {p1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$ScaleAndTranslate;->access$4700(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$ScaleAndTranslate;)F

    move-result p1

    iput p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->scale:F

    iget-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->satTemp:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$ScaleAndTranslate;

    .line 1475
    invoke-static {v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$ScaleAndTranslate;->access$4800(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$ScaleAndTranslate;)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    if-eqz v0, :cond_2

    iget p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->minimumScaleType:I

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    iget-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    .line 1477
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->scale:F

    invoke-direct {p0, v0, v1, v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslateForSCenter(FFF)Landroid/graphics/PointF;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    :cond_2
    return-void
.end method

.method private fitToBounds(ZLcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$ScaleAndTranslate;)V
    .locals 11

    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->panLimit:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 1414
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    move p1, v1

    .line 1418
    :cond_0
    invoke-static {p2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$ScaleAndTranslate;->access$4800(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$ScaleAndTranslate;)Landroid/graphics/PointF;

    move-result-object v0

    .line 1419
    invoke-static {p2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$ScaleAndTranslate;->access$4700(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$ScaleAndTranslate;)F

    move-result v3

    invoke-direct {p0, v3}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->limitedScale(F)F

    move-result v3

    .line 1420
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    .line 1421
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    iget v6, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->panLimit:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    .line 1423
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->isReady()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1424
    iget v6, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getWidth()I

    move-result v8

    div-int/2addr v8, v2

    int-to-float v8, v8

    sub-float/2addr v8, v4

    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v0, Landroid/graphics/PointF;->x:F

    .line 1425
    iget v6, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getHeight()I

    move-result v8

    div-int/2addr v8, v2

    int-to-float v8, v8

    sub-float/2addr v8, v5

    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 1427
    iget v6, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v4

    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v0, Landroid/graphics/PointF;->x:F

    .line 1428
    iget v6, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v5

    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 1430
    :cond_2
    iget v6, v0, Landroid/graphics/PointF;->x:F

    neg-float v8, v4

    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v0, Landroid/graphics/PointF;->x:F

    .line 1431
    iget v6, v0, Landroid/graphics/PointF;->y:F

    neg-float v8, v5

    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v0, Landroid/graphics/PointF;->y:F

    .line 1435
    :goto_0
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getPaddingLeft()I

    move-result v6

    const/high16 v8, 0x3f000000    # 0.5f

    if-gtz v6, :cond_4

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getPaddingRight()I

    move-result v6

    if-lez v6, :cond_3

    goto :goto_1

    :cond_3
    move v6, v8

    goto :goto_2

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getPaddingLeft()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getPaddingLeft()I

    move-result v9

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getPaddingRight()I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    div-float/2addr v6, v9

    .line 1436
    :goto_2
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getPaddingTop()I

    move-result v9

    if-gtz v9, :cond_5

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getPaddingBottom()I

    move-result v9

    if-lez v9, :cond_6

    :cond_5
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getPaddingTop()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getPaddingTop()I

    move-result v9

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getPaddingBottom()I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    div-float/2addr v8, v9

    :cond_6
    iget v9, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->panLimit:I

    if-ne v9, v7, :cond_7

    .line 1440
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->isReady()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1441
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getWidth()I

    move-result p1

    div-int/2addr p1, v2

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    .line 1442
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getHeight()I

    move-result p0

    div-int/2addr p0, v2

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    goto :goto_3

    :cond_7
    if-eqz p1, :cond_8

    .line 1444
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getWidth()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p1, v4

    mul-float/2addr p1, v6

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 1445
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getHeight()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr p0, v5

    mul-float/2addr p0, v8

    invoke-static {v1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    goto :goto_4

    .line 1447
    :cond_8
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getWidth()I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    .line 1448
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getHeight()I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    :goto_3
    int-to-float p0, p0

    .line 1451
    :goto_4
    iget v1, v0, Landroid/graphics/PointF;->x:F

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, v0, Landroid/graphics/PointF;->x:F

    .line 1452
    iget p1, v0, Landroid/graphics/PointF;->y:F

    invoke-static {p1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    iput p0, v0, Landroid/graphics/PointF;->y:F

    .line 1454
    invoke-static {p2, v3}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$ScaleAndTranslate;->access$4702(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$ScaleAndTranslate;F)F

    return-void
.end method

.method private getExifOrientation(Landroid/content/Context;Ljava/lang/String;)I
    .locals 10

    const-string p0, "Unsupported orientation: "

    const-string v0, "Unsupported EXIF orientation: "

    const-string v1, "content"

    .line 1836
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    :try_start_0
    new-array v6, v2, [Ljava/lang/String;

    const-string v1, "orientation"

    aput-object v1, v6, v3

    .line 1840
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1842
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1843
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    sget-object p2, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->VALID_ORIENTATIONS:Ljava/util/List;

    .line 1844
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    move v3, p1

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->TAG:Ljava/lang/String;

    .line 1847
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    if-eqz v0, :cond_8

    .line 1855
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    :try_start_1
    sget-object p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->TAG:Ljava/lang/String;

    const-string p1, "Could not get orientation of image from media store"

    .line 1852
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_8

    goto :goto_1

    :goto_2
    if-eqz v0, :cond_2

    .line 1855
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw p0

    :cond_3
    const-string p0, "file:///"

    .line 1858
    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8

    const-string p0, "file:///android_asset/"

    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_8

    .line 1860
    :try_start_2
    new-instance p0, Landroidx/exifinterface/media/ExifInterface;

    const/4 p1, 0x7

    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string p1, "Orientation"

    .line 1861
    invoke-virtual {p0, p1, v2}, Landroidx/exifinterface/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p0

    if-eq p0, v2, :cond_8

    if-nez p0, :cond_4

    goto :goto_4

    :cond_4
    const/4 p1, 0x6

    if-ne p0, p1, :cond_5

    const/16 p0, 0x5a

    :goto_3
    move v3, p0

    goto :goto_4

    :cond_5
    const/4 p1, 0x3

    if-ne p0, p1, :cond_6

    const/16 p0, 0xb4

    goto :goto_3

    :cond_6
    const/16 p1, 0x8

    if-ne p0, p1, :cond_7

    const/16 p0, 0x10e

    goto :goto_3

    :cond_7
    sget-object p1, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->TAG:Ljava/lang/String;

    .line 1871
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    sget-object p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->TAG:Ljava/lang/String;

    const-string p1, "Could not get EXIF orientation of image"

    .line 1874
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_4
    return v3
.end method

.method private getMaxBitmapDimensions(Landroid/graphics/Canvas;)Landroid/graphics/Point;
    .locals 3

    .line 1963
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getMaximumBitmapWidth()I

    move-result v1

    iget v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->maxTileWidth:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getMaximumBitmapHeight()I

    move-result p1

    iget p0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->maxTileHeight:I

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public static getPreferredBitmapConfig()Landroid/graphics/Bitmap$Config;
    .locals 1

    sget-object v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->preferredBitmapConfig:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method private getRequiredRotation()I
    .locals 2

    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->orientation:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget p0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sOrientation:I

    return p0

    :cond_0
    return v0
.end method

.method private declared-synchronized initialiseBaseLayer(Landroid/graphics/Point;)V
    .locals 12

    monitor-enter p0

    :try_start_0
    const-string v0, "initialiseBaseLayer maxTileDimensions=%dx%d"

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    .line 1250
    iget v3, p1, Landroid/graphics/Point;->x:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, p1, Landroid/graphics/Point;->y:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-direct {p0, v0, v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1252
    new-instance v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$ScaleAndTranslate;

    new-instance v2, Landroid/graphics/PointF;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v5, 0x0

    invoke-direct {v0, v3, v2, v5}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$ScaleAndTranslate;-><init>(FLandroid/graphics/PointF;Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$1;)V

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->satTemp:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$ScaleAndTranslate;

    .line 1253
    invoke-direct {p0, v4, v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->fitToBounds(ZLcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$ScaleAndTranslate;)V

    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->satTemp:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$ScaleAndTranslate;

    .line 1257
    invoke-static {v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$ScaleAndTranslate;->access$4700(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$ScaleAndTranslate;)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->calculateInSampleSize(F)I

    move-result v0

    iput v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->fullImageSampleSize:I

    if-le v0, v4, :cond_0

    .line 1259
    div-int/2addr v0, v1

    iput v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->fullImageSampleSize:I

    :cond_0
    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->fullImageSampleSize:I

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sRegion:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    .line 1262
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sWidth()I

    move-result v0

    iget v1, p1, Landroid/graphics/Point;->x:I

    if-ge v0, v1, :cond_1

    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sHeight()I

    move-result v0

    iget v1, p1, Landroid/graphics/Point;->y:I

    if-ge v0, v1, :cond_1

    iget-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->decoder:Lcom/davemorrissey/labs/subscaleview/decoder/ImageRegionDecoder;

    .line 1266
    invoke-interface {p1}, Lcom/davemorrissey/labs/subscaleview/decoder/ImageRegionDecoder;->recycle()V

    iput-object v5, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->decoder:Lcom/davemorrissey/labs/subscaleview/decoder/ImageRegionDecoder;

    .line 1268
    new-instance p1, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$BitmapLoadTask;

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->bitmapDecoderFactory:Lcom/davemorrissey/labs/subscaleview/decoder/DecoderFactory;

    iget-object v10, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->uri:Landroid/net/Uri;

    const/4 v11, 0x0

    move-object v6, p1

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$BitmapLoadTask;-><init>(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;Landroid/content/Context;Lcom/davemorrissey/labs/subscaleview/decoder/DecoderFactory;Landroid/net/Uri;Z)V

    .line 1269
    invoke-direct {p0, p1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->execute(Landroid/os/AsyncTask;)V

    goto :goto_1

    .line 1273
    :cond_1
    invoke-direct {p0, p1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->initialiseTileMap(Landroid/graphics/Point;)V

    iget-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->tileMap:Ljava/util/Map;

    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->fullImageSampleSize:I

    .line 1275
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 1276
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;

    .line 1277
    new-instance v1, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$TileLoadTask;

    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->decoder:Lcom/davemorrissey/labs/subscaleview/decoder/ImageRegionDecoder;

    invoke-direct {v1, p0, v2, v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$TileLoadTask;-><init>(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;Lcom/davemorrissey/labs/subscaleview/decoder/ImageRegionDecoder;Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)V

    .line 1278
    invoke-direct {p0, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->execute(Landroid/os/AsyncTask;)V

    goto :goto_0

    .line 1280
    :cond_2
    invoke-direct {p0, v4}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->refreshRequiredTiles(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1284
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private initialiseTileMap(Landroid/graphics/Point;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1485
    iget v2, v1, Landroid/graphics/Point;->x:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v1, Landroid/graphics/Point;->y:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "initialiseTileMap maxTileDimensions=%dx%d"

    invoke-direct {v0, v3, v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1486
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->tileMap:Ljava/util/Map;

    iget v2, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->fullImageSampleSize:I

    const/4 v3, 0x1

    move v4, v3

    move v5, v4

    .line 1491
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sWidth()I

    move-result v6

    div-int/2addr v6, v4

    .line 1492
    invoke-direct/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sHeight()I

    move-result v7

    div-int/2addr v7, v5

    .line 1493
    div-int v8, v6, v2

    .line 1494
    div-int v9, v7, v2

    :goto_1
    add-int v10, v8, v4

    add-int/2addr v10, v3

    .line 1495
    iget v11, v1, Landroid/graphics/Point;->x:I

    if-gt v10, v11, :cond_9

    int-to-double v10, v8

    invoke-virtual/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getWidth()I

    move-result v8

    int-to-double v12, v8

    const-wide/high16 v14, 0x3ff4000000000000L    # 1.25

    mul-double/2addr v12, v14

    cmpl-double v8, v10, v12

    if-lez v8, :cond_0

    iget v8, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->fullImageSampleSize:I

    if-ge v2, v8, :cond_0

    goto/16 :goto_9

    :cond_0
    :goto_2
    add-int v8, v9, v5

    add-int/2addr v8, v3

    .line 1500
    iget v10, v1, Landroid/graphics/Point;->y:I

    if-gt v8, v10, :cond_8

    int-to-double v8, v9

    invoke-virtual/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getHeight()I

    move-result v10

    int-to-double v10, v10

    mul-double/2addr v10, v14

    cmpl-double v8, v8, v10

    if-lez v8, :cond_1

    iget v8, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->fullImageSampleSize:I

    if-ge v2, v8, :cond_1

    goto/16 :goto_8

    .line 1505
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    mul-int v9, v4, v5

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v4, :cond_6

    const/4 v11, 0x0

    :goto_4
    if-ge v11, v5, :cond_5

    .line 1508
    new-instance v12, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;-><init>(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$1;)V

    .line 1509
    invoke-static {v12, v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$4302(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;I)I

    iget v13, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->fullImageSampleSize:I

    if-ne v2, v13, :cond_2

    move v13, v3

    goto :goto_5

    :cond_2
    const/4 v13, 0x0

    .line 1510
    :goto_5
    invoke-static {v12, v13}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$402(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;Z)Z

    .line 1511
    new-instance v13, Landroid/graphics/Rect;

    mul-int v14, v10, v6

    mul-int v15, v11, v7

    add-int/lit8 v3, v4, -0x1

    if-ne v10, v3, :cond_3

    .line 1514
    invoke-direct/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sWidth()I

    move-result v3

    goto :goto_6

    :cond_3
    add-int/lit8 v3, v10, 0x1

    mul-int/2addr v3, v6

    :goto_6
    add-int/lit8 v9, v5, -0x1

    if-ne v11, v9, :cond_4

    .line 1515
    invoke-direct/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sHeight()I

    move-result v9

    goto :goto_7

    :cond_4
    add-int/lit8 v9, v11, 0x1

    mul-int/2addr v9, v7

    :goto_7
    invoke-direct {v13, v14, v15, v3, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1511
    invoke-static {v12, v13}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$4102(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 1517
    new-instance v3, Landroid/graphics/Rect;

    const/4 v9, 0x0

    invoke-direct {v3, v9, v9, v9, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v12, v3}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$4202(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 1518
    new-instance v3, Landroid/graphics/Rect;

    invoke-static {v12}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$4100(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v13

    invoke-direct {v3, v13}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-static {v12, v3}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$5002(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 1519
    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    const/4 v3, 0x1

    goto :goto_4

    :cond_5
    const/4 v9, 0x0

    add-int/lit8 v10, v10, 0x1

    const/4 v3, 0x1

    goto :goto_3

    :cond_6
    iget-object v3, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->tileMap:Ljava/util/Map;

    .line 1522
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    return-void

    .line 1526
    :cond_7
    div-int/lit8 v2, v2, 0x2

    goto/16 :goto_0

    :cond_8
    :goto_8
    add-int/lit8 v5, v5, 0x1

    .line 1502
    invoke-direct/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sHeight()I

    move-result v7

    div-int/2addr v7, v5

    .line 1503
    div-int v9, v7, v2

    goto/16 :goto_2

    :cond_9
    :goto_9
    add-int/lit8 v4, v4, 0x1

    .line 1497
    invoke-direct/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sWidth()I

    move-result v6

    div-int/2addr v6, v4

    .line 1498
    div-int v8, v6, v2

    goto/16 :goto_1
.end method

.method private isBaseLayerReady()Z
    .locals 6

    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->bitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->bitmapIsPreview:Z

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->tileMap:Ljava/util/Map;

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 1174
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1175
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->fullImageSampleSize:I

    if-ne v4, v5, :cond_1

    .line 1176
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;

    .line 1177
    invoke-static {v4}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$4000(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v4}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$500(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_2

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    return v1

    :cond_5
    return v2
.end method

.method private limitedSCenter(FFFLandroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 3

    .line 2256
    invoke-direct {p0, p1, p2, p3}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslateForSCenter(FFF)Landroid/graphics/PointF;

    move-result-object p1

    .line 2257
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getPaddingLeft()I

    move-result p2

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    .line 2258
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getPaddingTop()I

    move-result p0

    sub-int/2addr v1, p0

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float p0, p2

    .line 2259
    iget p2, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr p0, p2

    div-float/2addr p0, p3

    int-to-float p2, v0

    .line 2260
    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, p1

    div-float/2addr p2, p3

    .line 2261
    invoke-virtual {p4, p0, p2}, Landroid/graphics/PointF;->set(FF)V

    return-object p4
.end method

.method private limitedScale(F)F
    .locals 1

    .line 2284
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->minScale()F

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget p0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->maxScale:F

    .line 2285
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method private minScale()F
    .locals 4

    .line 2269
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getPaddingBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    .line 2270
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->minimumScaleType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->minScale:F

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    return v2

    .line 2276
    :cond_1
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getWidth()I

    move-result v2

    sub-int/2addr v2, v1

    int-to-float v1, v2

    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getHeight()I

    move-result v2

    sub-int/2addr v2, v0

    int-to-float v0, v2

    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0

    .line 2272
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getWidth()I

    move-result v2

    sub-int/2addr v2, v1

    int-to-float v1, v2

    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getHeight()I

    move-result v2

    sub-int/2addr v2, v0

    int-to-float v0, v2

    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method private declared-synchronized onImageLoaded(Landroid/graphics/Bitmap;IZ)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "onImageLoaded"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    .line 1802
    invoke-direct {p0, v0, v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sWidth:I

    if-lez v0, :cond_1

    iget v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sHeight:I

    if-lez v2, :cond_1

    .line 1804
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sHeight:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 1805
    :cond_0
    invoke-direct {p0, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->reset(Z)V

    :cond_1
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-boolean v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->bitmapIsCached:Z

    if-nez v2, :cond_2

    .line 1808
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->bitmapIsCached:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->onImageEventListener:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$OnImageEventListener;

    if-eqz v0, :cond_3

    .line 1812
    invoke-interface {v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$OnImageEventListener;->onPreviewReleased()V

    :cond_3
    iput-boolean v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->bitmapIsPreview:Z

    iput-boolean p3, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->bitmapIsCached:Z

    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->bitmap:Landroid/graphics/Bitmap;

    .line 1818
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    iput p3, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sWidth:I

    .line 1819
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sHeight:I

    iput p2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sOrientation:I

    .line 1821
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->checkReady()Z

    move-result p1

    .line 1822
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->checkImageLoaded()Z

    move-result p2

    if-nez p1, :cond_4

    if-eqz p2, :cond_5

    .line 1824
    :cond_4
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->invalidate()V

    .line 1825
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1827
    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized onPreviewLoaded(Landroid/graphics/Bitmap;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "onPreviewLoaded"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 1781
    invoke-direct {p0, v0, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->imageLoadedSent:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->pRegion:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    .line 1787
    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->pRegion:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->pRegion:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->pRegion:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {p1, v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->bitmap:Landroid/graphics/Bitmap;

    :goto_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->bitmapIsPreview:Z

    .line 1792
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->checkReady()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1793
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->invalidate()V

    .line 1794
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1796
    :cond_2
    monitor-exit p0

    return-void

    .line 1783
    :cond_3
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1784
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized onTileLoaded()V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "onTileLoaded"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    .line 1697
    invoke-direct {p0, v0, v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1698
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->checkReady()Z

    .line 1699
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->checkImageLoaded()Z

    .line 1700
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->isBaseLayerReady()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-boolean v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->bitmapIsCached:Z

    if-nez v2, :cond_0

    .line 1702
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->bitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->onImageEventListener:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$OnImageEventListener;

    if-eqz v0, :cond_1

    iget-boolean v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->bitmapIsCached:Z

    if-eqz v2, :cond_1

    .line 1706
    invoke-interface {v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$OnImageEventListener;->onPreviewReleased()V

    :cond_1
    iput-boolean v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->bitmapIsPreview:Z

    iput-boolean v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->bitmapIsCached:Z

    .line 1711
    :cond_2
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1712
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized onTilesInited(Lcom/davemorrissey/labs/subscaleview/decoder/ImageRegionDecoder;III)V
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v0, "onTilesInited sWidth=%d, sHeight=%d, sOrientation=%d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 1597
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->orientation:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    invoke-direct {p0, v0, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sWidth:I

    if-lez v0, :cond_3

    iget v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sHeight:I

    if-lez v1, :cond_3

    if-ne v0, p2, :cond_0

    if-eq v1, p3, :cond_3

    .line 1600
    :cond_0
    invoke-direct {p0, v3}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->reset(Z)V

    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->bitmapIsCached:Z

    if-nez v1, :cond_1

    .line 1603
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->bitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->onImageEventListener:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$OnImageEventListener;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->bitmapIsCached:Z

    if-eqz v1, :cond_2

    .line 1607
    invoke-interface {v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$OnImageEventListener;->onPreviewReleased()V

    :cond_2
    iput-boolean v3, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->bitmapIsPreview:Z

    iput-boolean v3, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->bitmapIsCached:Z

    :cond_3
    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->decoder:Lcom/davemorrissey/labs/subscaleview/decoder/ImageRegionDecoder;

    iput p2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sWidth:I

    iput p3, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sHeight:I

    iput p4, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sOrientation:I

    .line 1617
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->checkReady()Z

    .line 1618
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->checkImageLoaded()Z

    move-result p1

    if-nez p1, :cond_4

    iget p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->maxTileWidth:I

    if-lez p1, :cond_4

    const p2, 0x7fffffff

    if-eq p1, p2, :cond_4

    iget p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->maxTileHeight:I

    if-lez p1, :cond_4

    if-eq p1, p2, :cond_4

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getWidth()I

    move-result p1

    if-lez p1, :cond_4

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getHeight()I

    move-result p1

    if-lez p1, :cond_4

    .line 1619
    new-instance p1, Landroid/graphics/Point;

    iget p2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->maxTileWidth:I

    iget p3, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->maxTileHeight:I

    invoke-direct {p1, p2, p3}, Landroid/graphics/Point;-><init>(II)V

    invoke-direct {p0, p1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->initialiseBaseLayer(Landroid/graphics/Point;)V

    .line 1621
    :cond_4
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->invalidate()V

    .line 1622
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1623
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private onTouchEventInternal(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 702
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 703
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_29

    if-eq v1, v5, :cond_20

    if-eq v1, v3, :cond_0

    const/4 v6, 0x5

    if-eq v1, v6, :cond_29

    const/4 v6, 0x6

    if-eq v1, v6, :cond_20

    const/16 v6, 0x105

    if-eq v1, v6, :cond_29

    const/16 v2, 0x106

    if-eq v1, v2, :cond_20

    goto/16 :goto_a

    :cond_0
    iget v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->maxTouchCount:I

    if-lez v1, :cond_1f

    const/high16 v1, 0x40a00000    # 5.0f

    if-lt v0, v3, :cond_8

    .line 738
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    invoke-direct {p0, v0, v6, v7, v8}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->distance(FFFF)F

    move-result v0

    .line 739
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    add-float/2addr v6, v7

    div-float/2addr v6, v2

    .line 740
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr v7, p1

    div-float/2addr v7, v2

    iget-boolean p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->zoomEnabled:Z

    if-eqz p1, :cond_1f

    iget-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vCenterStart:Landroid/graphics/PointF;

    .line 742
    iget p1, p1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vCenterStart:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, p1, v6, v2, v7}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->distance(FFFF)F

    move-result p1

    cmpl-float p1, p1, v1

    if-gtz p1, :cond_1

    iget p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vDistStart:F

    sub-float p1, v0, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v1

    if-gtz p1, :cond_1

    iget-boolean p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->isPanning:Z

    if-eqz p1, :cond_1f

    :cond_1
    iput-boolean v5, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->isZooming:Z

    iput-boolean v5, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->isPanning:Z

    iget p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->scale:F

    float-to-double v1, p1

    iget p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->maxScale:F

    iget v4, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vDistStart:F

    div-float v4, v0, v4

    iget v8, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->scaleStart:F

    mul-float/2addr v4, v8

    .line 748
    invoke-static {p1, v4}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->scale:F

    .line 750
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->minScale()F

    move-result v4

    cmpg-float p1, p1, v4

    if-gtz p1, :cond_2

    iput v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vDistStart:F

    .line 753
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->minScale()F

    move-result p1

    iput p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->scaleStart:F

    iget-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vCenterStart:Landroid/graphics/PointF;

    .line 754
    invoke-virtual {p1, v6, v7}, Landroid/graphics/PointF;->set(FF)V

    iget-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslateStart:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    .line 755
    invoke-virtual {p1, v0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    goto/16 :goto_0

    :cond_2
    iget-boolean p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->panEnabled:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vCenterStart:Landroid/graphics/PointF;

    .line 759
    iget p1, p1, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslateStart:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, v3

    iget-object v3, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vCenterStart:Landroid/graphics/PointF;

    .line 760
    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslateStart:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->scale:F

    iget v8, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->scaleStart:F

    div-float v9, v4, v8

    mul-float/2addr p1, v9

    div-float/2addr v4, v8

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    sub-float p1, v6, p1

    .line 763
    iput p1, v4, Landroid/graphics/PointF;->x:F

    iget-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    sub-float v3, v7, v3

    .line 764
    iput v3, p1, Landroid/graphics/PointF;->y:F

    .line 765
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sHeight()I

    move-result p1

    int-to-double v3, p1

    mul-double/2addr v3, v1

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getHeight()I

    move-result p1

    int-to-double v8, p1

    cmpg-double p1, v3, v8

    if-gez p1, :cond_3

    iget p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->scale:F

    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr p1, v3

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpl-float p1, p1, v3

    if-gez p1, :cond_4

    :cond_3
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sWidth()I

    move-result p1

    int-to-double v3, p1

    mul-double/2addr v1, v3

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getWidth()I

    move-result p1

    int-to-double v3, p1

    cmpg-double p1, v1, v3

    if-gez p1, :cond_7

    iget p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->scale:F

    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr p1, v1

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_7

    .line 766
    :cond_4
    invoke-direct {p0, v5}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->fitToBounds(Z)V

    iget-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vCenterStart:Landroid/graphics/PointF;

    .line 767
    invoke-virtual {p1, v6, v7}, Landroid/graphics/PointF;->set(FF)V

    iget-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslateStart:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    .line 768
    invoke-virtual {p1, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    iget p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->scale:F

    iput p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->scaleStart:F

    iput v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vDistStart:F

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sRequestedCenter:Landroid/graphics/PointF;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    .line 774
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getWidth()I

    move-result v0

    div-int/2addr v0, v3

    int-to-float v0, v0

    iget v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->scale:F

    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sRequestedCenter:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/PointF;->x:F

    iget-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    .line 775
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getHeight()I

    move-result v0

    div-int/2addr v0, v3

    int-to-float v0, v0

    iget v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->scale:F

    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sRequestedCenter:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/PointF;->y:F

    goto :goto_0

    :cond_6
    iget-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    .line 778
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getWidth()I

    move-result v0

    div-int/2addr v0, v3

    int-to-float v0, v0

    iget v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->scale:F

    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sWidth()I

    move-result v2

    div-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/PointF;->x:F

    iget-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    .line 779
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getHeight()I

    move-result v0

    div-int/2addr v0, v3

    int-to-float v0, v0

    iget v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->scale:F

    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sHeight()I

    move-result v2

    div-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/PointF;->y:F

    .line 782
    :cond_7
    :goto_0
    invoke-direct {p0, v5}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->fitToBounds(Z)V

    iget-boolean p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->eagerLoadingEnabled:Z

    .line 783
    invoke-direct {p0, p1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->refreshRequiredTiles(Z)V

    goto/16 :goto_9

    :cond_8
    iget-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->isQuickScaling:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->quickScaleVStart:Landroid/graphics/PointF;

    .line 788
    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float/2addr v0, v2

    iget v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->quickScaleThreshold:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->quickScaleLastDistance:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_9

    iput v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->quickScaleLastDistance:F

    .line 793
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->quickScaleVLastPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_a

    move v4, v5

    :cond_a
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->quickScaleVLastPoint:Landroid/graphics/PointF;

    .line 794
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Landroid/graphics/PointF;->set(FF)V

    iget p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->quickScaleLastDistance:F

    div-float p1, v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float p1, v1, p1

    .line 796
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr p1, v6

    const v6, 0x3cf5c28f    # 0.03f

    cmpl-float v6, p1, v6

    if-gtz v6, :cond_b

    iget-boolean v6, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->quickScaleMoved:Z

    if-eqz v6, :cond_12

    :cond_b
    iput-boolean v5, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->quickScaleMoved:Z

    iget v6, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->quickScaleLastDistance:F

    cmpl-float v6, v6, v2

    if-lez v6, :cond_d

    if-eqz v4, :cond_c

    add-float/2addr p1, v1

    move v1, p1

    goto :goto_1

    :cond_c
    sub-float/2addr v1, p1

    :cond_d
    :goto_1
    iget p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->scale:F

    float-to-double v6, p1

    .line 807
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->minScale()F

    move-result p1

    iget v4, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->maxScale:F

    iget v8, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->scale:F

    mul-float/2addr v8, v1

    invoke-static {v4, v8}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->scale:F

    iget-boolean p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->panEnabled:Z

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vCenterStart:Landroid/graphics/PointF;

    .line 810
    iget p1, p1, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslateStart:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, v1

    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vCenterStart:Landroid/graphics/PointF;

    .line 811
    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslateStart:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v3

    iget v3, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->scale:F

    iget v4, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->scaleStart:F

    div-float v8, v3, v4

    mul-float/2addr p1, v8

    div-float/2addr v3, v4

    mul-float/2addr v1, v3

    iget-object v3, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vCenterStart:Landroid/graphics/PointF;

    .line 814
    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, p1

    iput v4, v3, Landroid/graphics/PointF;->x:F

    iget-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vCenterStart:Landroid/graphics/PointF;

    .line 815
    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v1

    iput v3, p1, Landroid/graphics/PointF;->y:F

    .line 816
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sHeight()I

    move-result p1

    int-to-double v3, p1

    mul-double/2addr v3, v6

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getHeight()I

    move-result p1

    int-to-double v8, p1

    cmpg-double p1, v3, v8

    if-gez p1, :cond_e

    iget p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->scale:F

    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr p1, v1

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-gez p1, :cond_f

    :cond_e
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sWidth()I

    move-result p1

    int-to-double v3, p1

    mul-double/2addr v6, v3

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getWidth()I

    move-result p1

    int-to-double v3, p1

    cmpg-double p1, v6, v3

    if-gez p1, :cond_12

    iget p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->scale:F

    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr p1, v1

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_12

    .line 817
    :cond_f
    invoke-direct {p0, v5}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->fitToBounds(Z)V

    iget-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vCenterStart:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->quickScaleSCenter:Landroid/graphics/PointF;

    .line 818
    invoke-virtual {p0, v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sourceToViewCoord(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    iget-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslateStart:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    .line 819
    invoke-virtual {p1, v0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    iget p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->scale:F

    iput p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->scaleStart:F

    move v0, v2

    goto :goto_2

    :cond_10
    iget-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sRequestedCenter:Landroid/graphics/PointF;

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    .line 825
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getWidth()I

    move-result v1

    div-int/2addr v1, v3

    int-to-float v1, v1

    iget v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->scale:F

    iget-object v4, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sRequestedCenter:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    mul-float/2addr v2, v4

    sub-float/2addr v1, v2

    iput v1, p1, Landroid/graphics/PointF;->x:F

    iget-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    .line 826
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getHeight()I

    move-result v1

    div-int/2addr v1, v3

    int-to-float v1, v1

    iget v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->scale:F

    iget-object v3, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sRequestedCenter:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, p1, Landroid/graphics/PointF;->y:F

    goto :goto_2

    :cond_11
    iget-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    .line 829
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getWidth()I

    move-result v1

    div-int/2addr v1, v3

    int-to-float v1, v1

    iget v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->scale:F

    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sWidth()I

    move-result v4

    div-int/2addr v4, v3

    int-to-float v4, v4

    mul-float/2addr v2, v4

    sub-float/2addr v1, v2

    iput v1, p1, Landroid/graphics/PointF;->x:F

    iget-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    .line 830
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getHeight()I

    move-result v1

    div-int/2addr v1, v3

    int-to-float v1, v1

    iget v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->scale:F

    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sHeight()I

    move-result v4

    div-int/2addr v4, v3

    int-to-float v3, v4

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, p1, Landroid/graphics/PointF;->y:F

    :cond_12
    :goto_2
    iput v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->quickScaleLastDistance:F

    .line 836
    invoke-direct {p0, v5}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->fitToBounds(Z)V

    iget-boolean p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->eagerLoadingEnabled:Z

    .line 837
    invoke-direct {p0, p1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->refreshRequiredTiles(Z)V

    goto/16 :goto_9

    :cond_13
    iget-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->isZooming:Z

    if-nez v0, :cond_1f

    .line 843
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vCenterStart:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 844
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vCenterStart:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->density:F

    mul-float/2addr v3, v1

    cmpl-float v1, v0, v3

    if-gtz v1, :cond_14

    cmpl-float v6, v2, v3

    if-gtz v6, :cond_14

    iget-boolean v6, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->isPanning:Z

    if-eqz v6, :cond_1f

    :cond_14
    iget-object v6, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    iget-object v7, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslateStart:Landroid/graphics/PointF;

    .line 850
    iget v7, v7, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iget-object v9, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vCenterStart:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->x:F

    sub-float/2addr v8, v9

    add-float/2addr v7, v8

    iput v7, v6, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    iget-object v7, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslateStart:Landroid/graphics/PointF;

    .line 851
    iget v7, v7, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v8, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vCenterStart:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v8

    add-float/2addr v7, p1

    iput v7, v6, Landroid/graphics/PointF;->y:F

    iget-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    .line 853
    iget p1, p1, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    .line 854
    iget v6, v6, Landroid/graphics/PointF;->y:F

    .line 855
    invoke-direct {p0, v5}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->fitToBounds(Z)V

    iget-object v7, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    .line 856
    iget v7, v7, Landroid/graphics/PointF;->x:F

    cmpl-float p1, p1, v7

    if-eqz p1, :cond_15

    move p1, v5

    goto :goto_3

    :cond_15
    move p1, v4

    :goto_3
    iget-object v7, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    .line 857
    iget v7, v7, Landroid/graphics/PointF;->y:F

    cmpl-float v7, v6, v7

    if-eqz v7, :cond_16

    move v7, v5

    goto :goto_4

    :cond_16
    move v7, v4

    :goto_4
    if-eqz p1, :cond_17

    cmpl-float v8, v0, v2

    if-lez v8, :cond_17

    iget-boolean v8, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->isPanning:Z

    if-nez v8, :cond_17

    move v8, v5

    goto :goto_5

    :cond_17
    move v8, v4

    :goto_5
    if-eqz v7, :cond_18

    cmpl-float v0, v2, v0

    if-lez v0, :cond_18

    iget-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->isPanning:Z

    if-nez v0, :cond_18

    move v0, v5

    goto :goto_6

    :cond_18
    move v0, v4

    :goto_6
    iget-object v9, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    .line 860
    iget v9, v9, Landroid/graphics/PointF;->y:F

    cmpl-float v6, v6, v9

    if-nez v6, :cond_19

    const/high16 v6, 0x40400000    # 3.0f

    mul-float/2addr v6, v3

    cmpl-float v6, v2, v6

    if-lez v6, :cond_19

    move v6, v5

    goto :goto_7

    :cond_19
    move v6, v4

    :goto_7
    if-nez v8, :cond_1b

    if-nez v0, :cond_1b

    if-eqz p1, :cond_1a

    if-eqz v7, :cond_1a

    if-nez v6, :cond_1a

    iget-boolean p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->isPanning:Z

    if-eqz p1, :cond_1b

    :cond_1a
    iput-boolean v5, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->isPanning:Z

    goto :goto_8

    :cond_1b
    if-gtz v1, :cond_1c

    cmpl-float p1, v2, v3

    if-lez p1, :cond_1d

    :cond_1c
    iput v4, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->maxTouchCount:I

    iget-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->handler:Landroid/os/Handler;

    .line 866
    invoke-virtual {p1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 867
    invoke-direct {p0, v4}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->requestDisallowInterceptTouchEvent(Z)V

    :cond_1d
    :goto_8
    iget-boolean p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->panEnabled:Z

    if-nez p1, :cond_1e

    iget-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslateStart:Landroid/graphics/PointF;

    .line 870
    iget v0, v0, Landroid/graphics/PointF;->x:F

    iput v0, p1, Landroid/graphics/PointF;->x:F

    iget-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslateStart:Landroid/graphics/PointF;

    .line 871
    iget v0, v0, Landroid/graphics/PointF;->y:F

    iput v0, p1, Landroid/graphics/PointF;->y:F

    .line 872
    invoke-direct {p0, v4}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->requestDisallowInterceptTouchEvent(Z)V

    :cond_1e
    iget-boolean p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->eagerLoadingEnabled:Z

    .line 875
    invoke-direct {p0, p1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->refreshRequiredTiles(Z)V

    :goto_9
    iget-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->handler:Landroid/os/Handler;

    .line 880
    invoke-virtual {p1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 881
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->invalidate()V

    return v5

    :cond_1f
    :goto_a
    return v4

    :cond_20
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->handler:Landroid/os/Handler;

    .line 888
    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->isQuickScaling:Z

    if-eqz v1, :cond_21

    iput-boolean v4, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->isQuickScaling:Z

    iget-boolean v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->quickScaleMoved:Z

    if-nez v1, :cond_21

    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->quickScaleSCenter:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vCenterStart:Landroid/graphics/PointF;

    .line 892
    invoke-direct {p0, v1, v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->doubleTapZoom(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    :cond_21
    iget v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->maxTouchCount:I

    if-lez v1, :cond_27

    iget-boolean v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->isZooming:Z

    if-nez v1, :cond_22

    iget-boolean v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->isPanning:Z

    if-eqz v2, :cond_27

    :cond_22
    if-eqz v1, :cond_24

    if-ne v0, v3, :cond_24

    iput-boolean v5, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->isPanning:Z

    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslateStart:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    .line 899
    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v6}, Landroid/graphics/PointF;->set(FF)V

    .line 900
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    if-ne v1, v5, :cond_23

    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vCenterStart:Landroid/graphics/PointF;

    .line 901
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-virtual {v1, v2, p1}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_b

    :cond_23
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vCenterStart:Landroid/graphics/PointF;

    .line 903
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-virtual {v1, v2, p1}, Landroid/graphics/PointF;->set(FF)V

    :cond_24
    :goto_b
    const/4 p1, 0x3

    if-ge v0, p1, :cond_25

    iput-boolean v4, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->isZooming:Z

    :cond_25
    if-ge v0, v3, :cond_26

    iput-boolean v4, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->isPanning:Z

    iput v4, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->maxTouchCount:I

    .line 916
    :cond_26
    invoke-direct {p0, v5}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->refreshRequiredTiles(Z)V

    return v5

    :cond_27
    if-ne v0, v5, :cond_28

    iput-boolean v4, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->isZooming:Z

    iput-boolean v4, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->isPanning:Z

    iput v4, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->maxTouchCount:I

    :cond_28
    return v5

    :cond_29
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->anim:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;

    .line 708
    invoke-direct {p0, v5}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->requestDisallowInterceptTouchEvent(Z)V

    iget v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->maxTouchCount:I

    .line 709
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->maxTouchCount:I

    if-lt v0, v3, :cond_2b

    iget-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->zoomEnabled:Z

    if-eqz v0, :cond_2a

    .line 713
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    invoke-direct {p0, v0, v1, v3, v6}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->distance(FFFF)F

    move-result v0

    iget v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->scale:F

    iput v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->scaleStart:F

    iput v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vDistStart:F

    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslateStart:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    .line 716
    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v3}, Landroid/graphics/PointF;->set(FF)V

    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vCenterStart:Landroid/graphics/PointF;

    .line 717
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    add-float/2addr v1, v3

    div-float/2addr v1, v2

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr v3, p1

    div-float/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_c

    :cond_2a
    iput v4, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->maxTouchCount:I

    :goto_c
    iget-object p0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->handler:Landroid/os/Handler;

    .line 723
    invoke-virtual {p0, v5}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_d

    :cond_2b
    iget-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->isQuickScaling:Z

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslateStart:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    .line 726
    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vCenterStart:Landroid/graphics/PointF;

    .line 727
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/PointF;->set(FF)V

    iget-object p0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->handler:Landroid/os/Handler;

    const-wide/16 v0, 0x258

    .line 730
    invoke-virtual {p0, v5, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2c
    :goto_d
    return v5
.end method

.method private preDraw()V
    .locals 4

    .line 1344
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getHeight()I

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sWidth:I

    if-lez v0, :cond_3

    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sHeight:I

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sPendingCenter:Landroid/graphics/PointF;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->pendingScale:Ljava/lang/Float;

    if-eqz v0, :cond_2

    .line 1350
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->scale:F

    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    if-nez v0, :cond_1

    .line 1352
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    :cond_1
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    .line 1354
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->scale:F

    iget-object v3, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sPendingCenter:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    .line 1355
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->scale:F

    iget-object v3, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sPendingCenter:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sPendingCenter:Landroid/graphics/PointF;

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->pendingScale:Ljava/lang/Float;

    const/4 v0, 0x1

    .line 1358
    invoke-direct {p0, v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->fitToBounds(Z)V

    .line 1359
    invoke-direct {p0, v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->refreshRequiredTiles(Z)V

    :cond_2
    const/4 v0, 0x0

    .line 1363
    invoke-direct {p0, v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->fitToBounds(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method private px(I)I
    .locals 0

    iget p0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->density:F

    int-to-float p1, p1

    mul-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method private refreshRequiredTiles(Z)V
    .locals 8

    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->decoder:Lcom/davemorrissey/labs/subscaleview/decoder/ImageRegionDecoder;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->tileMap:Ljava/util/Map;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->fullImageSampleSize:I

    iget v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->scale:F

    .line 1294
    invoke-direct {p0, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->calculateInSampleSize(F)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->tileMap:Ljava/util/Map;

    .line 1298
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1299
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;

    .line 1300
    invoke-static {v3}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$4300(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-lt v4, v0, :cond_3

    invoke-static {v3}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$4300(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)I

    move-result v4

    if-le v4, v0, :cond_4

    invoke-static {v3}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$4300(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)I

    move-result v4

    iget v7, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->fullImageSampleSize:I

    if-eq v4, v7, :cond_4

    .line 1301
    :cond_3
    invoke-static {v3, v6}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$402(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;Z)Z

    .line 1302
    invoke-static {v3}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$500(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1303
    invoke-static {v3}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$500(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 1304
    invoke-static {v3, v5}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$502(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1307
    :cond_4
    invoke-static {v3}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$4300(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)I

    move-result v4

    const/4 v7, 0x1

    if-ne v4, v0, :cond_6

    .line 1308
    invoke-direct {p0, v3}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->tileVisible(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1309
    invoke-static {v3, v7}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$402(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;Z)Z

    .line 1310
    invoke-static {v3}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$4000(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v3}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$500(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_2

    if-eqz p1, :cond_2

    .line 1311
    new-instance v4, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$TileLoadTask;

    iget-object v5, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->decoder:Lcom/davemorrissey/labs/subscaleview/decoder/ImageRegionDecoder;

    invoke-direct {v4, p0, v5, v3}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$TileLoadTask;-><init>(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;Lcom/davemorrissey/labs/subscaleview/decoder/ImageRegionDecoder;Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)V

    .line 1312
    invoke-direct {p0, v4}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->execute(Landroid/os/AsyncTask;)V

    goto :goto_0

    .line 1314
    :cond_5
    invoke-static {v3}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$4300(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)I

    move-result v4

    iget v7, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->fullImageSampleSize:I

    if-eq v4, v7, :cond_2

    .line 1315
    invoke-static {v3, v6}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$402(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;Z)Z

    .line 1316
    invoke-static {v3}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$500(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1317
    invoke-static {v3}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$500(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 1318
    invoke-static {v3, v5}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$502(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto :goto_0

    .line 1321
    :cond_6
    invoke-static {v3}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$4300(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)I

    move-result v4

    iget v5, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->fullImageSampleSize:I

    if-ne v4, v5, :cond_2

    .line 1322
    invoke-static {v3, v7}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$402(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;Z)Z

    goto/16 :goto_0

    :cond_7
    :goto_1
    return-void
.end method

.method private requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    .line 930
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 932
    invoke-interface {p0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method private reset(Z)V
    .locals 5

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "reset newImage="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->scale:F

    iput v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->scaleStart:F

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    iput-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslateStart:Landroid/graphics/PointF;

    iput-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslateBefore:Landroid/graphics/PointF;

    .line 486
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->pendingScale:Ljava/lang/Float;

    iput-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sPendingCenter:Landroid/graphics/PointF;

    iput-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sRequestedCenter:Landroid/graphics/PointF;

    iput-boolean v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->isZooming:Z

    iput-boolean v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->isPanning:Z

    iput-boolean v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->isQuickScaling:Z

    iput v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->maxTouchCount:I

    iput v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->fullImageSampleSize:I

    iput-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vCenterStart:Landroid/graphics/PointF;

    iput v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vDistStart:F

    iput v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->quickScaleLastDistance:F

    iput-boolean v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->quickScaleMoved:Z

    iput-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->quickScaleSCenter:Landroid/graphics/PointF;

    iput-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->quickScaleVLastPoint:Landroid/graphics/PointF;

    iput-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->quickScaleVStart:Landroid/graphics/PointF;

    iput-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->anim:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;

    iput-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->satTemp:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$ScaleAndTranslate;

    iput-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->matrix:Landroid/graphics/Matrix;

    iput-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sRect:Landroid/graphics/RectF;

    if-eqz p1, :cond_3

    iput-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->uri:Landroid/net/Uri;

    iget-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->decoderLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 507
    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->decoder:Lcom/davemorrissey/labs/subscaleview/decoder/ImageRegionDecoder;

    if-eqz p1, :cond_0

    .line 510
    invoke-interface {p1}, Lcom/davemorrissey/labs/subscaleview/decoder/ImageRegionDecoder;->recycle()V

    iput-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->decoder:Lcom/davemorrissey/labs/subscaleview/decoder/ImageRegionDecoder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->decoderLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 514
    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->bitmapIsCached:Z

    if-nez v0, :cond_1

    .line 517
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    iget-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->bitmapIsCached:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->onImageEventListener:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$OnImageEventListener;

    if-eqz p1, :cond_2

    .line 520
    invoke-interface {p1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$OnImageEventListener;->onPreviewReleased()V

    :cond_2
    iput v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sWidth:I

    iput v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sHeight:I

    iput v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sOrientation:I

    iput-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sRegion:Landroid/graphics/Rect;

    iput-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->pRegion:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->readySent:Z

    iput-boolean v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->imageLoadedSent:Z

    iput-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->bitmap:Landroid/graphics/Bitmap;

    iput-boolean v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->bitmapIsPreview:Z

    iput-boolean v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->bitmapIsCached:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->decoderLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 514
    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->tileMap:Ljava/util/Map;

    if-eqz p1, :cond_7

    .line 534
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 535
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;

    .line 536
    invoke-static {v3, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$402(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;Z)Z

    .line 537
    invoke-static {v3}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$500(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 538
    invoke-static {v3}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$500(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 539
    invoke-static {v3, v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$502(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_6
    iput-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->tileMap:Ljava/util/Map;

    .line 545
    :cond_7
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setGestureDetector(Landroid/content/Context;)V

    return-void
.end method

.method private restoreState(Lcom/davemorrissey/labs/subscaleview/ImageViewState;)V
    .locals 2

    if-eqz p1, :cond_0

    sget-object v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->VALID_ORIENTATIONS:Ljava/util/List;

    .line 1929
    invoke-virtual {p1}, Lcom/davemorrissey/labs/subscaleview/ImageViewState;->getOrientation()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1930
    invoke-virtual {p1}, Lcom/davemorrissey/labs/subscaleview/ImageViewState;->getOrientation()I

    move-result v0

    iput v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->orientation:I

    .line 1931
    invoke-virtual {p1}, Lcom/davemorrissey/labs/subscaleview/ImageViewState;->getScale()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->pendingScale:Ljava/lang/Float;

    .line 1932
    invoke-virtual {p1}, Lcom/davemorrissey/labs/subscaleview/ImageViewState;->getCenter()Landroid/graphics/PointF;

    move-result-object p1

    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sPendingCenter:Landroid/graphics/PointF;

    .line 1933
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method private sHeight()I
    .locals 2

    .line 1984
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getRequiredRotation()I

    move-result v0

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sHeight:I

    return p0

    :cond_1
    :goto_0
    iget p0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sWidth:I

    return p0
.end method

.method private sWidth()I
    .locals 2

    .line 1971
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getRequiredRotation()I

    move-result v0

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sWidth:I

    return p0

    :cond_1
    :goto_0
    iget p0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sHeight:I

    return p0
.end method

.method private sendStateChanged(FLandroid/graphics/PointF;I)V
    .locals 2

    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->onStateChangedListener:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$OnStateChangedListener;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->scale:F

    cmpl-float p1, v1, p1

    if-eqz p1, :cond_0

    .line 2882
    invoke-interface {v0, v1, p3}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$OnStateChangedListener;->onScaleChanged(FI)V

    :cond_0
    iget-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->onStateChangedListener:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$OnStateChangedListener;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    .line 2884
    invoke-virtual {p1, p2}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->onStateChangedListener:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$OnStateChangedListener;

    .line 2885
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getCenter()Landroid/graphics/PointF;

    move-result-object p0

    invoke-interface {p1, p0, p3}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$OnStateChangedListener;->onCenterChanged(Landroid/graphics/PointF;I)V

    :cond_1
    return-void
.end method

.method private setGestureDetector(Landroid/content/Context;)V
    .locals 2

    .line 549
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$2;

    invoke-direct {v1, p0, p1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$2;-><init>(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->detector:Landroid/view/GestureDetector;

    .line 600
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$3;

    invoke-direct {v1, p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$3;-><init>(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->singleDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method private setMatrixArray([FFFFFFFFF)V
    .locals 0

    const/4 p0, 0x0

    .line 1156
    aput p2, p1, p0

    const/4 p0, 0x1

    .line 1157
    aput p3, p1, p0

    const/4 p0, 0x2

    .line 1158
    aput p4, p1, p0

    const/4 p0, 0x3

    .line 1159
    aput p5, p1, p0

    const/4 p0, 0x4

    .line 1160
    aput p6, p1, p0

    const/4 p0, 0x5

    .line 1161
    aput p7, p1, p0

    const/4 p0, 0x6

    .line 1162
    aput p8, p1, p0

    const/4 p0, 0x7

    .line 1163
    aput p9, p1, p0

    return-void
.end method

.method public static setPreferredBitmapConfig(Landroid/graphics/Bitmap$Config;)V
    .locals 0

    sput-object p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->preferredBitmapConfig:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method private sourceToViewRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 3

    .line 2224
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    .line 2225
    invoke-direct {p0, v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sourceToViewX(F)F

    move-result v0

    float-to-int v0, v0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    .line 2226
    invoke-direct {p0, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sourceToViewY(F)F

    move-result v1

    float-to-int v1, v1

    iget v2, p1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    .line 2227
    invoke-direct {p0, v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sourceToViewX(F)F

    move-result v2

    float-to-int v2, v2

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    .line 2228
    invoke-direct {p0, p1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sourceToViewY(F)F

    move-result p0

    float-to-int p0, p0

    .line 2224
    invoke-virtual {p2, v0, v1, v2, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private sourceToViewX(F)F
    .locals 1

    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    const/high16 p0, 0x7fc00000    # Float.NaN

    return p0

    :cond_0
    iget p0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->scale:F

    mul-float/2addr p1, p0

    .line 2160
    iget p0, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr p1, p0

    return p1
.end method

.method private sourceToViewY(F)F
    .locals 1

    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    const/high16 p0, 0x7fc00000    # Float.NaN

    return p0

    :cond_0
    iget p0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->scale:F

    mul-float/2addr p1, p0

    .line 2168
    iget p0, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr p1, p0

    return p1
.end method

.method private tileVisible(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)Z
    .locals 4

    const/4 v0, 0x0

    .line 1333
    invoke-direct {p0, v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->viewToSourceX(F)F

    move-result v1

    .line 1334
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {p0, v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->viewToSourceX(F)F

    move-result v2

    .line 1335
    invoke-direct {p0, v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->viewToSourceY(F)F

    move-result v0

    .line 1336
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {p0, v3}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->viewToSourceY(F)F

    move-result p0

    .line 1337
    invoke-static {p1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$4100(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-gtz v1, :cond_0

    invoke-static {p1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$4100(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    invoke-static {p1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$4100(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-static {p1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$4100(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    cmpl-float p0, p1, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private vTranslateForSCenter(FFF)Landroid/graphics/PointF;
    .locals 6

    .line 2239
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 2240
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->satTemp:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$ScaleAndTranslate;

    if-nez v2, :cond_0

    .line 2242
    new-instance v2, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$ScaleAndTranslate;

    new-instance v3, Landroid/graphics/PointF;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v5, 0x0

    invoke-direct {v2, v4, v3, v5}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$ScaleAndTranslate;-><init>(FLandroid/graphics/PointF;Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$1;)V

    iput-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->satTemp:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$ScaleAndTranslate;

    :cond_0
    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->satTemp:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$ScaleAndTranslate;

    .line 2244
    invoke-static {v2, p3}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$ScaleAndTranslate;->access$4702(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$ScaleAndTranslate;F)F

    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->satTemp:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$ScaleAndTranslate;

    .line 2245
    invoke-static {v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$ScaleAndTranslate;->access$4800(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$ScaleAndTranslate;)Landroid/graphics/PointF;

    move-result-object v2

    int-to-float v0, v0

    mul-float/2addr p1, p3

    sub-float/2addr v0, p1

    int-to-float p1, v1

    mul-float/2addr p2, p3

    sub-float/2addr p1, p2

    invoke-virtual {v2, v0, p1}, Landroid/graphics/PointF;->set(FF)V

    const/4 p1, 0x1

    iget-object p2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->satTemp:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$ScaleAndTranslate;

    .line 2246
    invoke-direct {p0, p1, p2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->fitToBounds(ZLcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$ScaleAndTranslate;)V

    iget-object p0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->satTemp:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$ScaleAndTranslate;

    .line 2247
    invoke-static {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$ScaleAndTranslate;->access$4800(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$ScaleAndTranslate;)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method private viewToSourceX(F)F
    .locals 1

    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    const/high16 p0, 0x7fc00000    # Float.NaN

    return p0

    .line 2049
    :cond_0
    iget v0, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, v0

    iget p0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->scale:F

    div-float/2addr p1, p0

    return p1
.end method

.method private viewToSourceY(F)F
    .locals 1

    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    const/high16 p0, 0x7fc00000    # Float.NaN

    return p0

    .line 2057
    :cond_0
    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v0

    iget p0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->scale:F

    div-float/2addr p1, p0

    return p1
.end method


# virtual methods
.method public animateCenter(Landroid/graphics/PointF;)Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$AnimationBuilder;
    .locals 2

    .line 2899
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->isReady()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2902
    :cond_0
    new-instance v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$AnimationBuilder;

    invoke-direct {v0, p0, p1, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$AnimationBuilder;-><init>(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;Landroid/graphics/PointF;Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$1;)V

    return-object v0
.end method

.method public animateScale(F)Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$AnimationBuilder;
    .locals 2

    .line 2913
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->isReady()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2916
    :cond_0
    new-instance v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$AnimationBuilder;

    invoke-direct {v0, p0, p1, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$AnimationBuilder;-><init>(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;FLcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$1;)V

    return-object v0
.end method

.method public animateScaleAndCenter(FLandroid/graphics/PointF;)Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$AnimationBuilder;
    .locals 2

    .line 2928
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->isReady()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2931
    :cond_0
    new-instance v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$AnimationBuilder;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$AnimationBuilder;-><init>(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;FLandroid/graphics/PointF;Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$1;)V

    return-object v0
.end method

.method public final getAppliedOrientation()I
    .locals 0

    .line 2670
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getRequiredRotation()I

    move-result p0

    return p0
.end method

.method public final getCenter()Landroid/graphics/PointF;
    .locals 2

    .line 2557
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 2558
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v0, v0

    int-to-float v1, v1

    .line 2559
    invoke-virtual {p0, v0, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->viewToSourceCoord(FF)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public getMaxScale()F
    .locals 0

    iget p0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->maxScale:F

    return p0
.end method

.method public final getMinScale()F
    .locals 0

    .line 2530
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->minScale()F

    move-result p0

    return p0
.end method

.method public final getOrientation()I
    .locals 0

    iget p0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->orientation:I

    return p0
.end method

.method public final getPanRemaining(Landroid/graphics/RectF;)V
    .locals 6

    .line 2420
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->scale:F

    .line 2424
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->scale:F

    .line 2425
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->panLimit:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    .line 2428
    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getHeight()I

    move-result v3

    div-int/2addr v3, v4

    int-to-float v3, v3

    sub-float/2addr v2, v3

    neg-float v2, v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    .line 2429
    iget v2, v2, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getWidth()I

    move-result v3

    div-int/2addr v3, v4

    int-to-float v3, v3

    sub-float/2addr v2, v3

    neg-float v2, v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    .line 2430
    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getHeight()I

    move-result v3

    div-int/2addr v3, v4

    int-to-float v3, v3

    sub-float/2addr v3, v1

    sub-float/2addr v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    .line 2431
    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getWidth()I

    move-result p0

    div-int/2addr p0, v4

    int-to-float p0, p0

    sub-float/2addr p0, v0

    sub-float/2addr v1, p0

    invoke-static {v5, v1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    iput p0, p1, Landroid/graphics/RectF;->right:F

    goto :goto_0

    :cond_1
    if-ne v2, v4, :cond_2

    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    .line 2433
    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    neg-float v2, v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    .line 2434
    iget v2, v2, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    neg-float v2, v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    .line 2435
    iget v2, v2, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v1

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p1, Landroid/graphics/RectF;->bottom:F

    iget-object p0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    .line 2436
    iget p0, p0, Landroid/graphics/PointF;->x:F

    add-float/2addr p0, v0

    invoke-static {v5, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    iput p0, p1, Landroid/graphics/RectF;->right:F

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    .line 2438
    iget v2, v2, Landroid/graphics/PointF;->y:F

    neg-float v2, v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    .line 2439
    iget v2, v2, Landroid/graphics/PointF;->x:F

    neg-float v2, v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    .line 2440
    iget v2, v2, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-static {v5, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    .line 2441
    iget v1, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getWidth()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr v0, p0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    iput p0, p1, Landroid/graphics/RectF;->right:F

    :goto_0
    return-void
.end method

.method public final getSHeight()I
    .locals 0

    iget p0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sHeight:I

    return p0
.end method

.method public final getSWidth()I
    .locals 0

    iget p0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sWidth:I

    return p0
.end method

.method public final getScale()F
    .locals 0

    iget p0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->scale:F

    return p0
.end method

.method public final getState()Lcom/davemorrissey/labs/subscaleview/ImageViewState;
    .locals 3

    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sHeight:I

    if-lez v0, :cond_0

    .line 2682
    new-instance v0, Lcom/davemorrissey/labs/subscaleview/ImageViewState;

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getScale()F

    move-result v1

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getCenter()Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getOrientation()I

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Lcom/davemorrissey/labs/subscaleview/ImageViewState;-><init>(FLandroid/graphics/PointF;I)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public hasImage()Z
    .locals 1

    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->uri:Landroid/net/Uri;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->bitmap:Landroid/graphics/Bitmap;

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

.method public final isImageLoaded()Z
    .locals 0

    iget-boolean p0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->imageLoadedSent:Z

    return p0
.end method

.method public final isPanEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->panEnabled:Z

    return p0
.end method

.method public final isQuickScaleEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->quickScaleEnabled:Z

    return p0
.end method

.method public final isReady()Z
    .locals 0

    iget-boolean p0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->readySent:Z

    return p0
.end method

.method public final isZoomEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->zoomEnabled:Z

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 30

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    .line 971
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 972
    invoke-direct/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->createPaints()V

    iget v0, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sWidth:I

    if-eqz v0, :cond_29

    iget v0, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sHeight:I

    if-eqz v0, :cond_29

    .line 975
    invoke-virtual/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_11

    :cond_0
    iget-object v0, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->tileMap:Ljava/util/Map;

    if-nez v0, :cond_1

    iget-object v0, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->decoder:Lcom/davemorrissey/labs/subscaleview/decoder/ImageRegionDecoder;

    if-eqz v0, :cond_1

    .line 981
    invoke-direct/range {p0 .. p1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getMaxBitmapDimensions(Landroid/graphics/Canvas;)Landroid/graphics/Point;

    move-result-object v0

    invoke-direct {v11, v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->initialiseBaseLayer(Landroid/graphics/Point;)V

    .line 987
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->checkReady()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 992
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->preDraw()V

    iget-object v0, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->anim:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v13, 0x0

    if-eqz v0, :cond_9

    .line 995
    invoke-static {v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;->access$3100(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;)Landroid/graphics/PointF;

    move-result-object v0

    if-eqz v0, :cond_9

    iget v0, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->scale:F

    iget-object v1, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslateBefore:Landroid/graphics/PointF;

    if-nez v1, :cond_3

    .line 998
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v13, v13}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslateBefore:Landroid/graphics/PointF;

    :cond_3
    iget-object v1, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslateBefore:Landroid/graphics/PointF;

    iget-object v2, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    .line 999
    invoke-virtual {v1, v2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 1001
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->anim:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;

    invoke-static {v3}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;->access$3200(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    iget-object v3, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->anim:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;

    .line 1002
    invoke-static {v3}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;->access$3300(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;)J

    move-result-wide v3

    cmp-long v3, v1, v3

    if-lez v3, :cond_4

    move v14, v9

    goto :goto_0

    :cond_4
    move v14, v10

    :goto_0
    iget-object v3, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->anim:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;

    .line 1003
    invoke-static {v3}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;->access$3300(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;)J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v15

    iget-object v1, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->anim:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;

    .line 1004
    invoke-static {v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;->access$3400(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;)I

    move-result v2

    iget-object v1, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->anim:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;

    invoke-static {v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;->access$3500(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;)F

    move-result v5

    iget-object v1, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->anim:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;

    invoke-static {v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;->access$3600(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;)F

    move-result v1

    iget-object v3, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->anim:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;

    invoke-static {v3}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;->access$3500(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;)F

    move-result v3

    sub-float v6, v1, v3

    iget-object v1, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->anim:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;

    invoke-static {v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;->access$3300(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;)J

    move-result-wide v7

    move-object/from16 v1, p0

    move-wide v3, v15

    invoke-direct/range {v1 .. v8}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ease(IJFFJ)F

    move-result v1

    iput v1, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->scale:F

    iget-object v1, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->anim:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;

    .line 1007
    invoke-static {v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;->access$3400(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;)I

    move-result v2

    iget-object v1, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->anim:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;

    invoke-static {v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;->access$3100(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;)Landroid/graphics/PointF;

    move-result-object v1

    iget v5, v1, Landroid/graphics/PointF;->x:F

    iget-object v1, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->anim:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;

    invoke-static {v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;->access$3700(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;)Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v3, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->anim:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;

    invoke-static {v3}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;->access$3100(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float v6, v1, v3

    iget-object v1, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->anim:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;

    invoke-static {v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;->access$3300(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;)J

    move-result-wide v7

    move-object/from16 v1, p0

    move-wide v3, v15

    invoke-direct/range {v1 .. v8}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ease(IJFFJ)F

    move-result v17

    iget-object v1, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->anim:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;

    .line 1008
    invoke-static {v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;->access$3400(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;)I

    move-result v2

    iget-object v1, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->anim:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;

    invoke-static {v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;->access$3100(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;)Landroid/graphics/PointF;

    move-result-object v1

    iget v5, v1, Landroid/graphics/PointF;->y:F

    iget-object v1, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->anim:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;

    invoke-static {v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;->access$3700(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;)Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v3, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->anim:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;

    invoke-static {v3}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;->access$3100(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float v6, v1, v3

    iget-object v1, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->anim:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;

    invoke-static {v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;->access$3300(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;)J

    move-result-wide v7

    move-object/from16 v1, p0

    move-wide v3, v15

    invoke-direct/range {v1 .. v8}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ease(IJFFJ)F

    move-result v1

    iget-object v2, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    .line 1010
    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget-object v4, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->anim:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;

    invoke-static {v4}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;->access$3800(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;)Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->x:F

    invoke-direct {v11, v4}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sourceToViewX(F)F

    move-result v4

    sub-float v4, v4, v17

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    iget-object v2, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    .line 1011
    iget v3, v2, Landroid/graphics/PointF;->y:F

    iget-object v4, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->anim:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;

    invoke-static {v4}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;->access$3800(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;)Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-direct {v11, v4}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sourceToViewY(F)F

    move-result v4

    sub-float/2addr v4, v1

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->y:F

    if-nez v14, :cond_6

    iget-object v1, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->anim:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;

    .line 1014
    invoke-static {v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;->access$3500(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;)F

    move-result v1

    iget-object v2, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->anim:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;

    invoke-static {v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;->access$3600(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;)F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    move v1, v10

    goto :goto_2

    :cond_6
    :goto_1
    move v1, v9

    :goto_2
    invoke-direct {v11, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->fitToBounds(Z)V

    iget-object v1, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslateBefore:Landroid/graphics/PointF;

    iget-object v2, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->anim:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;

    .line 1015
    invoke-static {v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;->access$3900(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;)I

    move-result v2

    invoke-direct {v11, v0, v1, v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sendStateChanged(FLandroid/graphics/PointF;I)V

    .line 1016
    invoke-direct {v11, v14}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->refreshRequiredTiles(Z)V

    if-eqz v14, :cond_8

    iget-object v0, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->anim:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;

    .line 1018
    invoke-static {v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;->access$2800(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;)Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$OnAnimationEventListener;

    move-result-object v0

    if-eqz v0, :cond_7

    :try_start_0
    iget-object v0, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->anim:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;

    .line 1020
    invoke-static {v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;->access$2800(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;)Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$OnAnimationEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$OnAnimationEventListener;->onComplete()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    sget-object v1, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->TAG:Ljava/lang/String;

    const-string v2, "Error thrown by animation listener"

    .line 1022
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    :goto_3
    const/4 v0, 0x0

    iput-object v0, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->anim:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;

    .line 1027
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->invalidate()V

    :cond_9
    iget-object v0, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->tileMap:Ljava/util/Map;

    const/16 v14, 0x10e

    const/16 v8, 0x5a

    const/16 v7, 0xb4

    if-eqz v0, :cond_1a

    .line 1030
    invoke-direct/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->isBaseLayerReady()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget v0, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->fullImageSampleSize:I

    iget v1, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->scale:F

    .line 1033
    invoke-direct {v11, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->calculateInSampleSize(F)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->tileMap:Ljava/util/Map;

    .line 1037
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v13, v10

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1038
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v0, :cond_a

    .line 1039
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;

    .line 1040
    invoke-static {v3}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$400(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-static {v3}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$4000(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)Z

    move-result v4

    if-nez v4, :cond_c

    invoke-static {v3}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$500(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_b

    :cond_c
    move v13, v9

    goto :goto_4

    :cond_d
    iget-object v1, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->tileMap:Ljava/util/Map;

    .line 1048
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_5
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1049
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v0, :cond_f

    if-eqz v13, :cond_e

    goto :goto_6

    :cond_e
    move v15, v8

    move/from16 v23, v13

    const/16 v4, 0xf

    move v13, v7

    goto/16 :goto_b

    .line 1050
    :cond_f
    :goto_6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_7
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;

    .line 1051
    invoke-static/range {v18 .. v18}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$4100(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-static/range {v18 .. v18}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$4200(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v11, v1, v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sourceToViewRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1052
    invoke-static/range {v18 .. v18}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$4000(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)Z

    move-result v1

    if-nez v1, :cond_16

    invoke-static/range {v18 .. v18}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$500(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_16

    iget-object v1, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->tileBgPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_10

    .line 1054
    invoke-static/range {v18 .. v18}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$4200(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->tileBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_10
    iget-object v1, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->matrix:Landroid/graphics/Matrix;

    if-nez v1, :cond_11

    .line 1056
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->matrix:Landroid/graphics/Matrix;

    :cond_11
    iget-object v1, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->matrix:Landroid/graphics/Matrix;

    .line 1057
    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    iget-object v2, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->srcArray:[F

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1058
    invoke-static/range {v18 .. v18}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$500(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v9, v1

    const/4 v10, 0x0

    invoke-static/range {v18 .. v18}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$500(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static/range {v18 .. v18}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$500(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)Landroid/graphics/Bitmap;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/16 v19, 0x0

    invoke-static/range {v18 .. v18}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$500(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)Landroid/graphics/Bitmap;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    move/from16 v21, v1

    move-object/from16 v1, p0

    move/from16 v20, v5

    move/from16 v23, v13

    const/4 v13, 0x5

    move v5, v9

    move/from16 v22, v6

    const/16 v9, 0xf

    move v6, v10

    move v10, v7

    move/from16 v7, v21

    move v15, v8

    move/from16 v8, v20

    move/from16 v9, v19

    move v13, v10

    move/from16 v10, v22

    invoke-direct/range {v1 .. v10}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setMatrixArray([FFFFFFFFF)V

    .line 1059
    invoke-direct/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getRequiredRotation()I

    move-result v1

    if-nez v1, :cond_12

    iget-object v2, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->dstArray:[F

    .line 1060
    invoke-static/range {v18 .. v18}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$4200(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v1

    invoke-static/range {v18 .. v18}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$4200(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v1

    invoke-static/range {v18 .. v18}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$4200(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v5, v1

    invoke-static/range {v18 .. v18}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$4200(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v6, v1

    invoke-static/range {v18 .. v18}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$4200(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v7, v1

    invoke-static/range {v18 .. v18}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$4200(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v1

    invoke-static/range {v18 .. v18}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$4200(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v9, v1

    invoke-static/range {v18 .. v18}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$4200(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v10}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setMatrixArray([FFFFFFFFF)V

    goto/16 :goto_8

    .line 1061
    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getRequiredRotation()I

    move-result v1

    if-ne v1, v15, :cond_13

    iget-object v2, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->dstArray:[F

    .line 1062
    invoke-static/range {v18 .. v18}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$4200(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v1

    invoke-static/range {v18 .. v18}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$4200(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v1

    invoke-static/range {v18 .. v18}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$4200(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v5, v1

    invoke-static/range {v18 .. v18}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$4200(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v1

    invoke-static/range {v18 .. v18}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$4200(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v7, v1

    invoke-static/range {v18 .. v18}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$4200(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v1

    invoke-static/range {v18 .. v18}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$4200(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v9, v1

    invoke-static/range {v18 .. v18}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$4200(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v10, v1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v10}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setMatrixArray([FFFFFFFFF)V

    goto/16 :goto_8

    .line 1063
    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getRequiredRotation()I

    move-result v1

    if-ne v1, v13, :cond_14

    iget-object v2, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->dstArray:[F

    .line 1064
    invoke-static/range {v18 .. v18}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$4200(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v1

    invoke-static/range {v18 .. v18}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$4200(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v1

    invoke-static/range {v18 .. v18}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$4200(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v5, v1

    invoke-static/range {v18 .. v18}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$4200(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v1

    invoke-static/range {v18 .. v18}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$4200(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v7, v1

    invoke-static/range {v18 .. v18}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$4200(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v8, v1

    invoke-static/range {v18 .. v18}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$4200(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v9, v1

    invoke-static/range {v18 .. v18}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$4200(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v10, v1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v10}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setMatrixArray([FFFFFFFFF)V

    goto :goto_8

    .line 1065
    :cond_14
    invoke-direct/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getRequiredRotation()I

    move-result v1

    if-ne v1, v14, :cond_15

    iget-object v2, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->dstArray:[F

    .line 1066
    invoke-static/range {v18 .. v18}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$4200(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v1

    invoke-static/range {v18 .. v18}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$4200(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v1

    invoke-static/range {v18 .. v18}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$4200(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v5, v1

    invoke-static/range {v18 .. v18}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$4200(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v6, v1

    invoke-static/range {v18 .. v18}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$4200(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v7, v1

    invoke-static/range {v18 .. v18}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$4200(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v8, v1

    invoke-static/range {v18 .. v18}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$4200(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v9, v1

    invoke-static/range {v18 .. v18}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$4200(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v10}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setMatrixArray([FFFFFFFFF)V

    :cond_15
    :goto_8
    iget-object v1, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v2, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->srcArray:[F

    const/16 v26, 0x0

    iget-object v3, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->dstArray:[F

    const/16 v28, 0x0

    const/16 v29, 0x4

    move-object/from16 v24, v1

    move-object/from16 v25, v2

    move-object/from16 v27, v3

    .line 1068
    invoke-virtual/range {v24 .. v29}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    .line 1069
    invoke-static/range {v18 .. v18}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$500(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v3, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    iget-boolean v1, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->debug:Z

    if-eqz v1, :cond_17

    .line 1071
    invoke-static/range {v18 .. v18}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$4200(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->debugLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_9

    :cond_16
    move v15, v8

    move/from16 v23, v13

    move v13, v7

    .line 1073
    invoke-static/range {v18 .. v18}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$4000(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-boolean v1, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->debug:Z

    if-eqz v1, :cond_17

    .line 1074
    invoke-static/range {v18 .. v18}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$4200(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    const/4 v2, 0x5

    invoke-direct {v11, v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->px(I)I

    move-result v3

    add-int/2addr v1, v3

    int-to-float v1, v1

    invoke-static/range {v18 .. v18}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$4200(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    const/16 v3, 0x23

    invoke-direct {v11, v3}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->px(I)I

    move-result v4

    add-int/2addr v2, v4

    int-to-float v2, v2

    iget-object v3, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->debugTextPaint:Landroid/graphics/Paint;

    const-string v4, "LOADING"

    invoke-virtual {v12, v4, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1076
    :cond_17
    :goto_9
    invoke-static/range {v18 .. v18}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$400(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)Z

    move-result v1

    if-eqz v1, :cond_18

    iget-boolean v1, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->debug:Z

    if-eqz v1, :cond_18

    .line 1077
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ISS "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v18 .. v18}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$4300(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " RECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static/range {v18 .. v18}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$4100(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static/range {v18 .. v18}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$4100(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static/range {v18 .. v18}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$4100(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static/range {v18 .. v18}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$4100(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static/range {v18 .. v18}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$4200(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    const/4 v3, 0x5

    invoke-direct {v11, v3}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->px(I)I

    move-result v4

    add-int/2addr v2, v4

    int-to-float v2, v2

    invoke-static/range {v18 .. v18}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->access$4200(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    const/16 v4, 0xf

    invoke-direct {v11, v4}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->px(I)I

    move-result v5

    add-int/2addr v3, v5

    int-to-float v3, v3

    iget-object v5, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->debugTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v1, v2, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_a

    :cond_18
    const/16 v4, 0xf

    :goto_a
    move v7, v13

    move v8, v15

    move/from16 v13, v23

    goto/16 :goto_7

    :goto_b
    move v7, v13

    move v8, v15

    move/from16 v13, v23

    goto/16 :goto_5

    :cond_19
    const/16 v4, 0xf

    goto/16 :goto_10

    :cond_1a
    move v15, v8

    move v1, v13

    const/16 v4, 0xf

    move v13, v7

    iget-object v0, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_24

    iget v2, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->scale:F

    iget-boolean v3, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->bitmapIsPreview:Z

    if-eqz v3, :cond_1b

    iget v3, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sWidth:I

    int-to-float v3, v3

    .line 1087
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v3, v0

    mul-float/2addr v2, v3

    iget v0, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->scale:F

    iget v3, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sHeight:I

    int-to-float v3, v3

    iget-object v5, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->bitmap:Landroid/graphics/Bitmap;

    .line 1088
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    mul-float/2addr v0, v3

    goto :goto_c

    :cond_1b
    move v0, v2

    :goto_c
    iget-object v3, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->matrix:Landroid/graphics/Matrix;

    if-nez v3, :cond_1c

    .line 1091
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->matrix:Landroid/graphics/Matrix;

    :cond_1c
    iget-object v3, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->matrix:Landroid/graphics/Matrix;

    .line 1092
    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    iget-object v3, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->matrix:Landroid/graphics/Matrix;

    .line 1093
    invoke-virtual {v3, v2, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v0, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->matrix:Landroid/graphics/Matrix;

    .line 1094
    invoke-direct/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getRequiredRotation()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    iget-object v0, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v2, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    .line 1095
    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1097
    invoke-direct/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getRequiredRotation()I

    move-result v0

    if-ne v0, v13, :cond_1d

    iget-object v0, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->matrix:Landroid/graphics/Matrix;

    iget v2, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->scale:F

    iget v3, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sWidth:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    iget v5, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sHeight:I

    int-to-float v5, v5

    mul-float/2addr v2, v5

    .line 1098
    invoke-virtual {v0, v3, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_d

    .line 1099
    :cond_1d
    invoke-direct/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getRequiredRotation()I

    move-result v0

    if-ne v0, v15, :cond_1e

    iget-object v0, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->matrix:Landroid/graphics/Matrix;

    iget v2, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->scale:F

    iget v3, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sHeight:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    .line 1100
    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_d

    .line 1101
    :cond_1e
    invoke-direct/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getRequiredRotation()I

    move-result v0

    if-ne v0, v14, :cond_1f

    iget-object v0, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->matrix:Landroid/graphics/Matrix;

    iget v2, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->scale:F

    iget v3, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sWidth:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    .line 1102
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_1f
    :goto_d
    iget-object v0, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->tileBgPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_23

    iget-object v0, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sRect:Landroid/graphics/RectF;

    if-nez v0, :cond_20

    .line 1106
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sRect:Landroid/graphics/RectF;

    :cond_20
    iget-object v0, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sRect:Landroid/graphics/RectF;

    iget-boolean v2, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->bitmapIsPreview:Z

    if-eqz v2, :cond_21

    iget-object v2, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->bitmap:Landroid/graphics/Bitmap;

    .line 1107
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    goto :goto_e

    :cond_21
    iget v2, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sWidth:I

    :goto_e
    int-to-float v2, v2

    iget-boolean v3, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->bitmapIsPreview:Z

    if-eqz v3, :cond_22

    iget-object v3, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    goto :goto_f

    :cond_22
    iget v3, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sHeight:I

    :goto_f
    int-to-float v3, v3

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v1, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sRect:Landroid/graphics/RectF;

    .line 1108
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v0, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sRect:Landroid/graphics/RectF;

    iget-object v1, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->tileBgPaint:Landroid/graphics/Paint;

    .line 1109
    invoke-virtual {v12, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_23
    iget-object v0, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->bitmap:Landroid/graphics/Bitmap;

    iget-object v1, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v2, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->bitmapPaint:Landroid/graphics/Paint;

    .line 1111
    invoke-virtual {v12, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_24
    :goto_10
    iget-boolean v0, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->debug:Z

    if-eqz v0, :cond_29

    .line 1116
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Scale: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget v2, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->scale:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%.2f"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->minScale()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget v2, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->maxScale:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-direct {v11, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->px(I)I

    move-result v2

    int-to-float v1, v2

    invoke-direct {v11, v4}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->px(I)I

    move-result v2

    int-to-float v2, v2

    iget-object v4, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->debugTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1117
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Translate: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v2, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v4, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x5

    invoke-direct {v11, v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->px(I)I

    move-result v4

    int-to-float v2, v4

    const/16 v4, 0x1e

    invoke-direct {v11, v4}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->px(I)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->debugTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v0, v2, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1118
    invoke-virtual/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getCenter()Landroid/graphics/PointF;

    move-result-object v0

    .line 1120
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Source center: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget v6, v0, Landroid/graphics/PointF;->x:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v3, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v3, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-direct {v11, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->px(I)I

    move-result v1

    int-to-float v1, v1

    const/16 v2, 0x2d

    invoke-direct {v11, v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->px(I)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->debugTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v0, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->anim:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;

    const v1, -0xff0001

    const v2, -0xffff01

    const/16 v3, 0x14

    const/high16 v5, -0x10000

    if-eqz v0, :cond_25

    .line 1122
    invoke-static {v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;->access$4400(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sourceToViewCoord(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    iget-object v6, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->anim:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;

    .line 1123
    invoke-static {v6}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;->access$4500(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;)Landroid/graphics/PointF;

    move-result-object v6

    invoke-virtual {v11, v6}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sourceToViewCoord(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v6

    iget-object v7, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->anim:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;

    .line 1124
    invoke-static {v7}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;->access$3800(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;)Landroid/graphics/PointF;

    move-result-object v7

    invoke-virtual {v11, v7}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sourceToViewCoord(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v7

    .line 1126
    iget v8, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    const/16 v9, 0xa

    invoke-direct {v11, v9}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->px(I)I

    move-result v9

    int-to-float v9, v9

    iget-object v10, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->debugLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v8, v0, v9, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->debugLinePaint:Landroid/graphics/Paint;

    .line 1127
    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1129
    iget v0, v6, Landroid/graphics/PointF;->x:F

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-direct {v11, v3}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->px(I)I

    move-result v8

    int-to-float v8, v8

    iget-object v9, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->debugLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v0, v6, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->debugLinePaint:Landroid/graphics/Paint;

    .line 1130
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1132
    iget v0, v7, Landroid/graphics/PointF;->x:F

    iget v6, v7, Landroid/graphics/PointF;->y:F

    const/16 v7, 0x19

    invoke-direct {v11, v7}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->px(I)I

    move-result v7

    int-to-float v7, v7

    iget-object v8, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->debugLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v0, v6, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->debugLinePaint:Landroid/graphics/Paint;

    .line 1133
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1134
    invoke-virtual/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-direct {v11, v4}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->px(I)I

    move-result v7

    int-to-float v7, v7

    iget-object v8, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->debugLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v0, v6, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_25
    iget-object v0, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vCenterStart:Landroid/graphics/PointF;

    if-eqz v0, :cond_26

    iget-object v0, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->debugLinePaint:Landroid/graphics/Paint;

    .line 1137
    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vCenterStart:Landroid/graphics/PointF;

    .line 1138
    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v5, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vCenterStart:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-direct {v11, v3}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->px(I)I

    move-result v3

    int-to-float v3, v3

    iget-object v6, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->debugLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v0, v5, v3, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_26
    iget-object v0, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->quickScaleSCenter:Landroid/graphics/PointF;

    if-eqz v0, :cond_27

    iget-object v0, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->debugLinePaint:Landroid/graphics/Paint;

    .line 1141
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->quickScaleSCenter:Landroid/graphics/PointF;

    .line 1142
    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-direct {v11, v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sourceToViewX(F)F

    move-result v0

    iget-object v2, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->quickScaleSCenter:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-direct {v11, v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sourceToViewY(F)F

    move-result v2

    const/16 v3, 0x23

    invoke-direct {v11, v3}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->px(I)I

    move-result v3

    int-to-float v3, v3

    iget-object v5, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->debugLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v0, v2, v3, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_27
    iget-object v0, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->quickScaleVStart:Landroid/graphics/PointF;

    if-eqz v0, :cond_28

    iget-boolean v0, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->isQuickScaling:Z

    if-eqz v0, :cond_28

    iget-object v0, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->debugLinePaint:Landroid/graphics/Paint;

    .line 1145
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->quickScaleVStart:Landroid/graphics/PointF;

    .line 1146
    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->quickScaleVStart:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-direct {v11, v4}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->px(I)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->debugLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_28
    iget-object v0, v11, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->debugLinePaint:Landroid/graphics/Paint;

    const v1, -0xff01

    .line 1148
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_29
    :goto_11
    return-void
.end method

.method protected onImageLoaded()V
    .locals 0

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 629
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 630
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 631
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 632
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    if-eq v0, v4, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eq v1, v4, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    iget v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sWidth:I

    if-lez v1, :cond_4

    iget v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sHeight:I

    if-lez v1, :cond_4

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    .line 639
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sWidth()I

    move-result p1

    .line 640
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sHeight()I

    move-result p2

    goto :goto_2

    :cond_2
    if-eqz v2, :cond_3

    .line 642
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sHeight()I

    move-result p2

    int-to-double v0, p2

    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sWidth()I

    move-result p2

    int-to-double v2, p2

    div-double/2addr v0, v2

    int-to-double v2, p1

    mul-double/2addr v0, v2

    double-to-int p2, v0

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_4

    .line 644
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sWidth()I

    move-result p1

    int-to-double v0, p1

    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sHeight()I

    move-result p1

    int-to-double v2, p1

    div-double/2addr v0, v2

    int-to-double v2, p2

    mul-double/2addr v0, v2

    double-to-int p1, v0

    .line 647
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 648
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 649
    invoke-virtual {p0, p1, p2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onReady()V
    .locals 0

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 614
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p3, p4, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "onSizeChanged %dx%d -> %dx%d"

    invoke-direct {p0, p2, p1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 615
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getCenter()Landroid/graphics/PointF;

    move-result-object p1

    iget-boolean p2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->readySent:Z

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->anim:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;

    iget p2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->scale:F

    .line 618
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    iput-object p2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->pendingScale:Ljava/lang/Float;

    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sPendingCenter:Landroid/graphics/PointF;

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->anim:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 658
    invoke-static {v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;->access$2700(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 659
    invoke-direct {p0, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->requestDisallowInterceptTouchEvent(Z)V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->anim:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;

    if-eqz v0, :cond_1

    .line 662
    invoke-static {v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;->access$2800(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;)Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$OnAnimationEventListener;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->anim:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;

    .line 664
    invoke-static {v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;->access$2800(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;)Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$OnAnimationEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$OnAnimationEventListener;->onInterruptedByUser()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->TAG:Ljava/lang/String;

    const-string v3, "Error thrown by animation listener"

    .line 666
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->anim:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;

    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->singleDetector:Landroid/view/GestureDetector;

    if-eqz p0, :cond_2

    .line 675
    invoke-virtual {p0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_2
    return v1

    :cond_3
    iget-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->isQuickScaling:Z

    const/4 v2, 0x0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->detector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_4

    .line 680
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    iput-boolean v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->isZooming:Z

    iput-boolean v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->isPanning:Z

    iput v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->maxTouchCount:I

    return v1

    :cond_5
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslateStart:Landroid/graphics/PointF;

    const/4 v3, 0x0

    if-nez v0, :cond_6

    .line 687
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslateStart:Landroid/graphics/PointF;

    :cond_6
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslateBefore:Landroid/graphics/PointF;

    if-nez v0, :cond_7

    .line 688
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslateBefore:Landroid/graphics/PointF;

    :cond_7
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vCenterStart:Landroid/graphics/PointF;

    if-nez v0, :cond_8

    .line 689
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vCenterStart:Landroid/graphics/PointF;

    :cond_8
    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->scale:F

    iget-object v3, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslateBefore:Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    .line 693
    invoke-virtual {v3, v4}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 695
    invoke-direct {p0, p1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->onTouchEventInternal(Landroid/view/MotionEvent;)Z

    move-result v3

    iget-object v4, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslateBefore:Landroid/graphics/PointF;

    const/4 v5, 0x2

    .line 696
    invoke-direct {p0, v0, v4, v5}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sendStateChanged(FLandroid/graphics/PointF;I)V

    if-nez v3, :cond_a

    .line 697
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_1

    :cond_9
    move v1, v2

    :cond_a
    :goto_1
    return v1
.end method

.method public recycle()V
    .locals 1

    const/4 v0, 0x1

    .line 2037
    invoke-direct {p0, v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->reset(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->bitmapPaint:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->debugTextPaint:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->debugLinePaint:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->tileBgPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public final resetScaleAndCenter()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->anim:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;

    const/4 v0, 0x0

    .line 2590
    invoke-direct {p0, v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->limitedScale(F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->pendingScale:Ljava/lang/Float;

    .line 2591
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2592
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sPendingCenter:Landroid/graphics/PointF;

    goto :goto_0

    .line 2594
    :cond_0
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sPendingCenter:Landroid/graphics/PointF;

    .line 2596
    :goto_0
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->invalidate()V

    return-void
.end method

.method public final setBitmapDecoderClass(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/davemorrissey/labs/subscaleview/decoder/ImageDecoder;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 2397
    new-instance v0, Lcom/davemorrissey/labs/subscaleview/decoder/CompatDecoderFactory;

    invoke-direct {v0, p1}, Lcom/davemorrissey/labs/subscaleview/decoder/CompatDecoderFactory;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->bitmapDecoderFactory:Lcom/davemorrissey/labs/subscaleview/decoder/DecoderFactory;

    return-void

    .line 2395
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Decoder class cannot be set to null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setBitmapDecoderFactory(Lcom/davemorrissey/labs/subscaleview/decoder/DecoderFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/davemorrissey/labs/subscaleview/decoder/DecoderFactory<",
            "+",
            "Lcom/davemorrissey/labs/subscaleview/decoder/ImageDecoder;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->bitmapDecoderFactory:Lcom/davemorrissey/labs/subscaleview/decoder/DecoderFactory;

    return-void

    .line 2408
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Decoder factory cannot be set to null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setDebug(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->debug:Z

    return-void
.end method

.method public final setDoubleTapZoomDpi(I)V
    .locals 2

    .line 2776
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2777
    iget v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    add-float/2addr v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v1, v0

    int-to-float p1, p1

    div-float/2addr v1, p1

    .line 2778
    invoke-virtual {p0, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setDoubleTapZoomScale(F)V

    return-void
.end method

.method public final setDoubleTapZoomDuration(I)V
    .locals 1

    const/4 v0, 0x0

    .line 2797
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->doubleTapZoomDuration:I

    return-void
.end method

.method public final setDoubleTapZoomScale(F)V
    .locals 0

    iput p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->doubleTapZoomScale:F

    return-void
.end method

.method public final setDoubleTapZoomStyle(I)V
    .locals 2

    sget-object v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->VALID_ZOOM_STYLES:Ljava/util/List;

    .line 2786
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->doubleTapZoomStyle:I

    return-void

    .line 2787
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid zoom style: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setEagerLoadingEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->eagerLoadingEnabled:Z

    return-void
.end method

.method public setExecutor(Ljava/util/concurrent/Executor;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->executor:Ljava/util/concurrent/Executor;

    return-void

    .line 2820
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Executor must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setImage(Lcom/davemorrissey/labs/subscaleview/ImageSource;)V
    .locals 1

    const/4 v0, 0x0

    .line 381
    invoke-virtual {p0, p1, v0, v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setImage(Lcom/davemorrissey/labs/subscaleview/ImageSource;Lcom/davemorrissey/labs/subscaleview/ImageSource;Lcom/davemorrissey/labs/subscaleview/ImageViewState;)V

    return-void
.end method

.method public final setImage(Lcom/davemorrissey/labs/subscaleview/ImageSource;Lcom/davemorrissey/labs/subscaleview/ImageSource;)V
    .locals 1

    const/4 v0, 0x0

    .line 406
    invoke-virtual {p0, p1, p2, v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setImage(Lcom/davemorrissey/labs/subscaleview/ImageSource;Lcom/davemorrissey/labs/subscaleview/ImageSource;Lcom/davemorrissey/labs/subscaleview/ImageViewState;)V

    return-void
.end method

.method public final setImage(Lcom/davemorrissey/labs/subscaleview/ImageSource;Lcom/davemorrissey/labs/subscaleview/ImageSource;Lcom/davemorrissey/labs/subscaleview/ImageViewState;)V
    .locals 8

    if-eqz p1, :cond_b

    const/4 v0, 0x1

    .line 428
    invoke-direct {p0, v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->reset(Z)V

    if-eqz p3, :cond_0

    .line 429
    invoke-direct {p0, p3}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->restoreState(Lcom/davemorrissey/labs/subscaleview/ImageViewState;)V

    :cond_0
    const-string p3, "/"

    const-string v0, "android.resource://"

    if-eqz p2, :cond_5

    .line 432
    invoke-virtual {p1}, Lcom/davemorrissey/labs/subscaleview/ImageSource;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_4

    .line 435
    invoke-virtual {p1}, Lcom/davemorrissey/labs/subscaleview/ImageSource;->getSWidth()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p1}, Lcom/davemorrissey/labs/subscaleview/ImageSource;->getSHeight()I

    move-result v1

    if-lez v1, :cond_3

    .line 438
    invoke-virtual {p1}, Lcom/davemorrissey/labs/subscaleview/ImageSource;->getSWidth()I

    move-result v1

    iput v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sWidth:I

    .line 439
    invoke-virtual {p1}, Lcom/davemorrissey/labs/subscaleview/ImageSource;->getSHeight()I

    move-result v1

    iput v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sHeight:I

    .line 440
    invoke-virtual {p2}, Lcom/davemorrissey/labs/subscaleview/ImageSource;->getSRegion()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->pRegion:Landroid/graphics/Rect;

    .line 441
    invoke-virtual {p2}, Lcom/davemorrissey/labs/subscaleview/ImageSource;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 442
    invoke-virtual {p2}, Lcom/davemorrissey/labs/subscaleview/ImageSource;->isCached()Z

    move-result v1

    iput-boolean v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->bitmapIsCached:Z

    .line 443
    invoke-virtual {p2}, Lcom/davemorrissey/labs/subscaleview/ImageSource;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->onPreviewLoaded(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 445
    :cond_1
    invoke-virtual {p2}, Lcom/davemorrissey/labs/subscaleview/ImageSource;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_2

    .line 446
    invoke-virtual {p2}, Lcom/davemorrissey/labs/subscaleview/ImageSource;->getResource()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 447
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/davemorrissey/labs/subscaleview/ImageSource;->getResource()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :cond_2
    move-object v6, v1

    .line 449
    new-instance p2, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$BitmapLoadTask;

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->bitmapDecoderFactory:Lcom/davemorrissey/labs/subscaleview/decoder/DecoderFactory;

    const/4 v7, 0x1

    move-object v2, p2

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$BitmapLoadTask;-><init>(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;Landroid/content/Context;Lcom/davemorrissey/labs/subscaleview/decoder/DecoderFactory;Landroid/net/Uri;Z)V

    .line 450
    invoke-direct {p0, p2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->execute(Landroid/os/AsyncTask;)V

    goto :goto_0

    .line 436
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Preview image cannot be used unless dimensions are provided for the main image"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 433
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Preview image cannot be used when a bitmap is provided for the main image"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 454
    :cond_5
    :goto_0
    invoke-virtual {p1}, Lcom/davemorrissey/labs/subscaleview/ImageSource;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    const/4 v1, 0x0

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Lcom/davemorrissey/labs/subscaleview/ImageSource;->getSRegion()Landroid/graphics/Rect;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 455
    invoke-virtual {p1}, Lcom/davemorrissey/labs/subscaleview/ImageSource;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1}, Lcom/davemorrissey/labs/subscaleview/ImageSource;->getSRegion()Landroid/graphics/Rect;

    move-result-object p3

    iget p3, p3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Lcom/davemorrissey/labs/subscaleview/ImageSource;->getSRegion()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Lcom/davemorrissey/labs/subscaleview/ImageSource;->getSRegion()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Lcom/davemorrissey/labs/subscaleview/ImageSource;->getSRegion()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-static {p2, p3, v0, v2, p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p0, p1, v1, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->onImageLoaded(Landroid/graphics/Bitmap;IZ)V

    goto/16 :goto_2

    .line 456
    :cond_6
    invoke-virtual {p1}, Lcom/davemorrissey/labs/subscaleview/ImageSource;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 457
    invoke-virtual {p1}, Lcom/davemorrissey/labs/subscaleview/ImageSource;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1}, Lcom/davemorrissey/labs/subscaleview/ImageSource;->isCached()Z

    move-result p1

    invoke-direct {p0, p2, v1, p1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->onImageLoaded(Landroid/graphics/Bitmap;IZ)V

    goto :goto_2

    .line 459
    :cond_7
    invoke-virtual {p1}, Lcom/davemorrissey/labs/subscaleview/ImageSource;->getSRegion()Landroid/graphics/Rect;

    move-result-object p2

    iput-object p2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sRegion:Landroid/graphics/Rect;

    .line 460
    invoke-virtual {p1}, Lcom/davemorrissey/labs/subscaleview/ImageSource;->getUri()Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->uri:Landroid/net/Uri;

    if-nez p2, :cond_8

    .line 461
    invoke-virtual {p1}, Lcom/davemorrissey/labs/subscaleview/ImageSource;->getResource()Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 462
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/davemorrissey/labs/subscaleview/ImageSource;->getResource()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->uri:Landroid/net/Uri;

    .line 464
    :cond_8
    invoke-virtual {p1}, Lcom/davemorrissey/labs/subscaleview/ImageSource;->getTile()Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sRegion:Landroid/graphics/Rect;

    if-eqz p1, :cond_9

    goto :goto_1

    .line 470
    :cond_9
    new-instance p1, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$BitmapLoadTask;

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->bitmapDecoderFactory:Lcom/davemorrissey/labs/subscaleview/decoder/DecoderFactory;

    iget-object v4, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->uri:Landroid/net/Uri;

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$BitmapLoadTask;-><init>(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;Landroid/content/Context;Lcom/davemorrissey/labs/subscaleview/decoder/DecoderFactory;Landroid/net/Uri;Z)V

    .line 471
    invoke-direct {p0, p1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->execute(Landroid/os/AsyncTask;)V

    goto :goto_2

    .line 466
    :cond_a
    :goto_1
    new-instance p1, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$TilesInitTask;

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object p3, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->regionDecoderFactory:Lcom/davemorrissey/labs/subscaleview/decoder/DecoderFactory;

    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->uri:Landroid/net/Uri;

    invoke-direct {p1, p0, p2, p3, v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$TilesInitTask;-><init>(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;Landroid/content/Context;Lcom/davemorrissey/labs/subscaleview/decoder/DecoderFactory;Landroid/net/Uri;)V

    .line 467
    invoke-direct {p0, p1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->execute(Landroid/os/AsyncTask;)V

    :goto_2
    return-void

    .line 425
    :cond_b
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "imageSource must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setImage(Lcom/davemorrissey/labs/subscaleview/ImageSource;Lcom/davemorrissey/labs/subscaleview/ImageViewState;)V
    .locals 1

    const/4 v0, 0x0

    .line 392
    invoke-virtual {p0, p1, v0, p2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setImage(Lcom/davemorrissey/labs/subscaleview/ImageSource;Lcom/davemorrissey/labs/subscaleview/ImageSource;Lcom/davemorrissey/labs/subscaleview/ImageViewState;)V

    return-void
.end method

.method public final setMaxScale(F)V
    .locals 0

    iput p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->maxScale:F

    return-void
.end method

.method public setMaxTileSize(I)V
    .locals 0

    iput p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->maxTileWidth:I

    iput p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->maxTileHeight:I

    return-void
.end method

.method public setMaxTileSize(II)V
    .locals 0

    iput p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->maxTileWidth:I

    iput p2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->maxTileHeight:I

    return-void
.end method

.method public final setMaximumDpi(I)V
    .locals 2

    .line 2512
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2513
    iget v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    add-float/2addr v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v1, v0

    int-to-float p1, p1

    div-float/2addr v1, p1

    .line 2514
    invoke-virtual {p0, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setMinScale(F)V

    return-void
.end method

.method public final setMinScale(F)V
    .locals 0

    iput p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->minScale:F

    return-void
.end method

.method public final setMinimumDpi(I)V
    .locals 2

    .line 2501
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2502
    iget v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    add-float/2addr v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v1, v0

    int-to-float p1, p1

    div-float/2addr v1, p1

    .line 2503
    invoke-virtual {p0, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setMaxScale(F)V

    return-void
.end method

.method public final setMinimumScaleType(I)V
    .locals 2

    sget-object v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->VALID_SCALE_TYPES:Ljava/util/List;

    .line 2465
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->minimumScaleType:I

    .line 2469
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->isReady()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 2470
    invoke-direct {p0, p1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->fitToBounds(Z)V

    .line 2471
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->invalidate()V

    :cond_0
    return-void

    .line 2466
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid scale type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMinimumTileDpi(I)V
    .locals 2

    .line 2542
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2543
    iget v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    add-float/2addr v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v1, v0

    int-to-float p1, p1

    .line 2544
    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->minimumTileDpi:I

    .line 2545
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->isReady()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2546
    invoke-direct {p0, p1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->reset(Z)V

    .line 2547
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setOnImageEventListener(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$OnImageEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->onImageEventListener:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$OnImageEventListener;

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->onLongClickListener:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public setOnStateChangedListener(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$OnStateChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->onStateChangedListener:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$OnStateChangedListener;

    return-void
.end method

.method public final setOrientation(I)V
    .locals 2

    sget-object v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->VALID_ORIENTATIONS:Ljava/util/List;

    .line 367
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->orientation:I

    const/4 p1, 0x0

    .line 371
    invoke-direct {p0, p1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->reset(Z)V

    .line 372
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->invalidate()V

    .line 373
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->requestLayout()V

    return-void

    .line 368
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid orientation: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setPanEnabled(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->panEnabled:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    if-eqz p1, :cond_0

    .line 2735
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->scale:F

    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/PointF;->x:F

    iget-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    .line 2736
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->scale:F

    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/PointF;->y:F

    .line 2737
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->isReady()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 2738
    invoke-direct {p0, p1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->refreshRequiredTiles(Z)V

    .line 2739
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method public final setPanLimit(I)V
    .locals 2

    sget-object v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->VALID_PAN_LIMITS:Ljava/util/List;

    .line 2450
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->panLimit:I

    .line 2454
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->isReady()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 2455
    invoke-direct {p0, p1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->fitToBounds(Z)V

    .line 2456
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->invalidate()V

    :cond_0
    return-void

    .line 2451
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid pan limit: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setQuickScaleEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->quickScaleEnabled:Z

    return-void
.end method

.method public final setRegionDecoderClass(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/davemorrissey/labs/subscaleview/decoder/ImageRegionDecoder;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 2369
    new-instance v0, Lcom/davemorrissey/labs/subscaleview/decoder/CompatDecoderFactory;

    invoke-direct {v0, p1}, Lcom/davemorrissey/labs/subscaleview/decoder/CompatDecoderFactory;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->regionDecoderFactory:Lcom/davemorrissey/labs/subscaleview/decoder/DecoderFactory;

    return-void

    .line 2367
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Decoder class cannot be set to null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setRegionDecoderFactory(Lcom/davemorrissey/labs/subscaleview/decoder/DecoderFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/davemorrissey/labs/subscaleview/decoder/DecoderFactory<",
            "+",
            "Lcom/davemorrissey/labs/subscaleview/decoder/ImageRegionDecoder;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->regionDecoderFactory:Lcom/davemorrissey/labs/subscaleview/decoder/DecoderFactory;

    return-void

    .line 2381
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Decoder factory cannot be set to null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setScaleAndCenter(FLandroid/graphics/PointF;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->anim:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Anim;

    .line 2578
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->pendingScale:Ljava/lang/Float;

    iput-object p2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sPendingCenter:Landroid/graphics/PointF;

    iput-object p2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sRequestedCenter:Landroid/graphics/PointF;

    .line 2581
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->invalidate()V

    return-void
.end method

.method public final setTileBackgroundColor(I)V
    .locals 2

    .line 2749
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->tileBgPaint:Landroid/graphics/Paint;

    goto :goto_0

    .line 2752
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->tileBgPaint:Landroid/graphics/Paint;

    .line 2753
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->tileBgPaint:Landroid/graphics/Paint;

    .line 2754
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2756
    :goto_0
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->invalidate()V

    return-void
.end method

.method public final setZoomEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->zoomEnabled:Z

    return-void
.end method

.method public final sourceToViewCoord(FF)Landroid/graphics/PointF;
    .locals 1

    .line 2189
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sourceToViewCoord(FFLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public final sourceToViewCoord(FFLandroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2216
    :cond_0
    invoke-direct {p0, p1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sourceToViewX(F)F

    move-result p1

    invoke-direct {p0, p2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sourceToViewY(F)F

    move-result p0

    invoke-virtual {p3, p1, p0}, Landroid/graphics/PointF;->set(FF)V

    return-object p3
.end method

.method public final sourceToViewCoord(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 2

    .line 2178
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual {p0, v0, p1, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sourceToViewCoord(FFLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public final sourceToViewCoord(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 1

    .line 2201
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v0, p1, p2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sourceToViewCoord(FFLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public viewToFileRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 4

    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->readySent:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2076
    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    .line 2077
    invoke-direct {p0, v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->viewToSourceX(F)F

    move-result v0

    float-to-int v0, v0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    .line 2078
    invoke-direct {p0, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->viewToSourceY(F)F

    move-result v1

    float-to-int v1, v1

    iget v2, p1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    .line 2079
    invoke-direct {p0, v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->viewToSourceX(F)F

    move-result v2

    float-to-int v2, v2

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    .line 2080
    invoke-direct {p0, p1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->viewToSourceY(F)F

    move-result p1

    float-to-int p1, p1

    .line 2076
    invoke-virtual {p2, v0, v1, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 2081
    invoke-direct {p0, p2, p2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->fileSRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2082
    iget p1, p2, Landroid/graphics/Rect;->left:I

    const/4 v0, 0x0

    .line 2083
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v1, p2, Landroid/graphics/Rect;->top:I

    .line 2084
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sWidth:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    .line 2085
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sHeight:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    .line 2086
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2082
    invoke-virtual {p2, p1, v0, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sRegion:Landroid/graphics/Rect;

    if-eqz p1, :cond_1

    .line 2089
    iget p1, p1, Landroid/graphics/Rect;->left:I

    iget-object p0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->sRegion:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2, p1, p0}, Landroid/graphics/Rect;->offset(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final viewToSourceCoord(FF)Landroid/graphics/PointF;
    .locals 1

    .line 2125
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->viewToSourceCoord(FFLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public final viewToSourceCoord(FFLandroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2151
    :cond_0
    invoke-direct {p0, p1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->viewToSourceX(F)F

    move-result p1

    invoke-direct {p0, p2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->viewToSourceY(F)F

    move-result p0

    invoke-virtual {p3, p1, p0}, Landroid/graphics/PointF;->set(FF)V

    return-object p3
.end method

.method public final viewToSourceCoord(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 2

    .line 2114
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual {p0, v0, p1, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->viewToSourceCoord(FFLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public final viewToSourceCoord(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 1

    .line 2136
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v0, p1, p2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->viewToSourceCoord(FFLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public visibleFileRect(Landroid/graphics/Rect;)V
    .locals 3

    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->readySent:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2103
    :cond_0
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 2104
    invoke-virtual {p0, p1, p1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->viewToFileRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_1
    :goto_0
    return-void
.end method
