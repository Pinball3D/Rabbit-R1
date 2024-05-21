.class public final Ltech/rabbit/r1launcher/ota/RoundRectProgressBar;
.super Landroid/view/View;
.source "RoundRectProgressBar.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u00002\u00020\u0001B\u0019\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0014\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u0013H\u0002J\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0014J(\u0010\u001a\u001a\u00020\u00172\u0006\u0010\u001b\u001a\u00020\u00102\u0006\u0010\u001c\u001a\u00020\u00102\u0006\u0010\u001d\u001a\u00020\u00102\u0006\u0010\u001e\u001a\u00020\u0010H\u0014J\u000e\u0010\u001f\u001a\u00020\u00172\u0006\u0010\u000f\u001a\u00020\u0010R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Ltech/rabbit/r1launcher/ota/RoundRectProgressBar;",
        "Landroid/view/View;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "cornerRadius",
        "",
        "drawPath",
        "Landroid/graphics/Path;",
        "paint",
        "Landroid/graphics/Paint;",
        "pathMeasure",
        "Landroid/graphics/PathMeasure;",
        "progress",
        "",
        "progressPath",
        "rectF",
        "Landroid/graphics/RectF;",
        "getClockRoundRectPath",
        "rect",
        "onDraw",
        "",
        "canvas",
        "Landroid/graphics/Canvas;",
        "onSizeChanged",
        "w",
        "h",
        "oldw",
        "oldh",
        "setProgress",
        "app_productionEnvRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final cornerRadius:F

.field private drawPath:Landroid/graphics/Path;

.field private final paint:Landroid/graphics/Paint;

.field private pathMeasure:Landroid/graphics/PathMeasure;

.field private progress:I

.field private progressPath:Landroid/graphics/Path;

.field private rectF:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 15
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Ltech/rabbit/r1launcher/ota/RoundRectProgressBar;->paint:Landroid/graphics/Paint;

    .line 19
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Ltech/rabbit/r1launcher/ota/RoundRectProgressBar;->rectF:Landroid/graphics/RectF;

    .line 22
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Ltech/rabbit/r1launcher/ota/RoundRectProgressBar;->drawPath:Landroid/graphics/Path;

    const/high16 v1, 0x41c00000    # 24.0f

    iput v1, p0, Ltech/rabbit/r1launcher/ota/RoundRectProgressBar;->cornerRadius:F

    .line 26
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v1, Ltech/rabbit/r1launcher/R$styleable;->RoundRectProgressBar:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "obtainStyledAttributes(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    sget p2, Ltech/rabbit/r1launcher/R$styleable;->RoundRectProgressBar_progress:I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Ltech/rabbit/r1launcher/ota/RoundRectProgressBar;->progress:I

    .line 28
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const/high16 p0, 0x41800000    # 16.0f

    .line 30
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 31
    sget-object p0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 p0, 0x1

    .line 32
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private final getClockRoundRectPath(Landroid/graphics/RectF;)Landroid/graphics/Path;
    .locals 9

    .line 59
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 71
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 72
    iget v1, p1, Landroid/graphics/RectF;->right:F

    iget v2, p0, Ltech/rabbit/r1launcher/ota/RoundRectProgressBar;->cornerRadius:F

    sub-float/2addr v1, v2

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 73
    new-instance v1, Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/RectF;->right:F

    const/4 v3, 0x2

    int-to-float v3, v3

    iget v4, p0, Ltech/rabbit/r1launcher/ota/RoundRectProgressBar;->cornerRadius:F

    mul-float/2addr v4, v3

    sub-float/2addr v2, v4

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    iget v5, p0, Ltech/rabbit/r1launcher/ota/RoundRectProgressBar;->cornerRadius:F

    mul-float/2addr v5, v3

    sub-float/2addr v4, v5

    iget v5, p1, Landroid/graphics/RectF;->right:F

    iget v6, p1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v1, v2, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v2, 0x42b40000    # 90.0f

    const/high16 v4, -0x3d4c0000    # -90.0f

    invoke-virtual {v0, v1, v2, v4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 74
    iget v1, p1, Landroid/graphics/RectF;->right:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v5, p0, Ltech/rabbit/r1launcher/ota/RoundRectProgressBar;->cornerRadius:F

    add-float/2addr v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 75
    new-instance v1, Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v5, p0, Ltech/rabbit/r1launcher/ota/RoundRectProgressBar;->cornerRadius:F

    mul-float/2addr v5, v3

    sub-float/2addr v2, v5

    iget v5, p1, Landroid/graphics/RectF;->top:F

    iget v6, p1, Landroid/graphics/RectF;->right:F

    iget v7, p1, Landroid/graphics/RectF;->top:F

    iget v8, p0, Ltech/rabbit/r1launcher/ota/RoundRectProgressBar;->cornerRadius:F

    mul-float/2addr v8, v3

    add-float/2addr v7, v8

    invoke-direct {v1, v2, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 76
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Ltech/rabbit/r1launcher/ota/RoundRectProgressBar;->cornerRadius:F

    add-float/2addr v1, v2

    iget v2, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 77
    new-instance v1, Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v5, p1, Landroid/graphics/RectF;->top:F

    iget v6, p1, Landroid/graphics/RectF;->left:F

    iget v7, p0, Ltech/rabbit/r1launcher/ota/RoundRectProgressBar;->cornerRadius:F

    mul-float/2addr v7, v3

    add-float/2addr v6, v7

    iget v7, p1, Landroid/graphics/RectF;->top:F

    iget v8, p0, Ltech/rabbit/r1launcher/ota/RoundRectProgressBar;->cornerRadius:F

    mul-float/2addr v8, v3

    add-float/2addr v7, v8

    invoke-direct {v1, v2, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v1, v4, v4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 78
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    iget v5, p0, Ltech/rabbit/r1launcher/ota/RoundRectProgressBar;->cornerRadius:F

    sub-float/2addr v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 79
    new-instance v1, Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    iget v6, p0, Ltech/rabbit/r1launcher/ota/RoundRectProgressBar;->cornerRadius:F

    mul-float/2addr v6, v3

    sub-float/2addr v5, v6

    iget v6, p1, Landroid/graphics/RectF;->left:F

    iget p0, p0, Ltech/rabbit/r1launcher/ota/RoundRectProgressBar;->cornerRadius:F

    mul-float/2addr v3, p0

    add-float/2addr v6, v3

    iget p0, p1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v1, v2, v5, v6, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 p0, 0x43340000    # 180.0f

    invoke-virtual {v0, v1, p0, v4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 80
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result p0

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, p0, p1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 81
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    return-object v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Ltech/rabbit/r1launcher/ota/RoundRectProgressBar;->paint:Landroid/graphics/Paint;

    const-string v1, "#414141"

    .line 44
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Ltech/rabbit/r1launcher/ota/RoundRectProgressBar;->rectF:Landroid/graphics/RectF;

    iget v1, p0, Ltech/rabbit/r1launcher/ota/RoundRectProgressBar;->cornerRadius:F

    iget-object v2, p0, Ltech/rabbit/r1launcher/ota/RoundRectProgressBar;->paint:Landroid/graphics/Paint;

    .line 45
    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Ltech/rabbit/r1launcher/ota/RoundRectProgressBar;->pathMeasure:Landroid/graphics/PathMeasure;

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v1

    iget v2, p0, Ltech/rabbit/r1launcher/ota/RoundRectProgressBar;->progress:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/16 v2, 0x64

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Ltech/rabbit/r1launcher/ota/RoundRectProgressBar;->drawPath:Landroid/graphics/Path;

    .line 49
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    iget-object v2, p0, Ltech/rabbit/r1launcher/ota/RoundRectProgressBar;->drawPath:Landroid/graphics/Path;

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 50
    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    iget-object v0, p0, Ltech/rabbit/r1launcher/ota/RoundRectProgressBar;->paint:Landroid/graphics/Paint;

    const-string v1, "#FF4D06"

    .line 53
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Ltech/rabbit/r1launcher/ota/RoundRectProgressBar;->drawPath:Landroid/graphics/Path;

    iget-object p0, p0, Ltech/rabbit/r1launcher/ota/RoundRectProgressBar;->paint:Landroid/graphics/Paint;

    .line 54
    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 4

    .line 35
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget-object p3, p0, Ltech/rabbit/r1launcher/ota/RoundRectProgressBar;->rectF:Landroid/graphics/RectF;

    const/4 p4, 0x0

    int-to-float v0, p4

    iget-object v1, p0, Ltech/rabbit/r1launcher/ota/RoundRectProgressBar;->paint:Landroid/graphics/Paint;

    .line 36
    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    const/4 v2, 0x2

    int-to-float v2, v2

    div-float/2addr v1, v2

    add-float/2addr v1, v0

    iget-object v3, p0, Ltech/rabbit/r1launcher/ota/RoundRectProgressBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    div-float/2addr v3, v2

    add-float/2addr v0, v3

    int-to-float p1, p1

    iget-object v3, p0, Ltech/rabbit/r1launcher/ota/RoundRectProgressBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    div-float/2addr v3, v2

    sub-float/2addr p1, v3

    int-to-float p2, p2

    iget-object v3, p0, Ltech/rabbit/r1launcher/ota/RoundRectProgressBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    div-float/2addr v3, v2

    sub-float/2addr p2, v3

    invoke-virtual {p3, v1, v0, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p1, p0, Ltech/rabbit/r1launcher/ota/RoundRectProgressBar;->rectF:Landroid/graphics/RectF;

    .line 37
    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/ota/RoundRectProgressBar;->getClockRoundRectPath(Landroid/graphics/RectF;)Landroid/graphics/Path;

    move-result-object p1

    iput-object p1, p0, Ltech/rabbit/r1launcher/ota/RoundRectProgressBar;->progressPath:Landroid/graphics/Path;

    .line 38
    new-instance p1, Landroid/graphics/PathMeasure;

    iget-object p2, p0, Ltech/rabbit/r1launcher/ota/RoundRectProgressBar;->progressPath:Landroid/graphics/Path;

    invoke-direct {p1, p2, p4}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    iput-object p1, p0, Ltech/rabbit/r1launcher/ota/RoundRectProgressBar;->pathMeasure:Landroid/graphics/PathMeasure;

    return-void
.end method

.method public final setProgress(I)V
    .locals 0

    iput p1, p0, Ltech/rabbit/r1launcher/ota/RoundRectProgressBar;->progress:I

    .line 87
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/ota/RoundRectProgressBar;->invalidate()V

    return-void
.end method
