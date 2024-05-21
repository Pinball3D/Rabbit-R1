.class public final Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtView;
.super Landroid/view/View;
.source "ScrollBarExtView.kt"

# interfaces
.implements Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtViewUpdater;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtView$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 \"2\u00020\u00012\u00020\u0002:\u0001\"B\u001b\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007J\u000e\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0011\u001a\u00020\u0012J\u0006\u0010\u0018\u001a\u00020\u0017J\u0010\u0010\u0019\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u001bH\u0014J\u0018\u0010\u001c\u001a\u00020\u00172\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u001eH\u0014J\u0012\u0010 \u001a\u00020\u00172\u0008\u0008\u0001\u0010!\u001a\u00020\tH\u0016R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\n\u001a\u00020\u000b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u000c\u0010\rR\u000e\u0010\u0010\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006#"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtView;",
        "Landroid/view/View;",
        "Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtViewUpdater;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "marginTop",
        "",
        "paint",
        "Landroid/graphics/Paint;",
        "getPaint",
        "()Landroid/graphics/Paint;",
        "paint$delegate",
        "Lkotlin/Lazy;",
        "percentage",
        "scrollBarExtViewSupporter",
        "Ltech/rabbit/r1launcher/widget/scrollbar/supporter/ScrollBarExtViewSupporter;",
        "thumbHeight",
        "trackHeight",
        "trackWidth",
        "attachSupporter",
        "",
        "detachSupporter",
        "onDraw",
        "canvas",
        "Landroid/graphics/Canvas;",
        "onMeasure",
        "widthMeasureSpec",
        "",
        "heightMeasureSpec",
        "updateScrollPercentage",
        "scrollPercentage",
        "Companion",
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
.field public static final $stable:I

.field public static final Companion:Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtView$Companion;

.field private static final SCROLL_BAR_CORNER_SIZE:F

.field private static final SCROLL_BAR_THUMB_COLOR:I

.field private static final SCROLL_BAR_THUMB_HEIGHT_PERCENTAGE:F = 0.125f

.field private static final SCROLL_BAR_TOP_MARGIN_PERCENTAGE:F = 0.2578125f

.field private static final SCROLL_BAR_TRACK_COLOR:I

.field private static final SCROLL_BAR_TRACK_HEIGHT_PERCENTAGE:F = 0.2625f

.field private static final SCROLL_BAR_WIDTH_PERCENTAGE:F = 0.02083333f


# instance fields
.field private marginTop:F

.field private final paint$delegate:Lkotlin/Lazy;

.field private percentage:F

.field private scrollBarExtViewSupporter:Ltech/rabbit/r1launcher/widget/scrollbar/supporter/ScrollBarExtViewSupporter;

.field private thumbHeight:F

.field private trackHeight:F

.field private trackWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtView;->Companion:Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtView$Companion;

    const/16 v0, 0x8

    sput v0, Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtView;->$stable:I

    const/high16 v0, 0x42480000    # 50.0f

    .line 26
    invoke-static {v0}, Ltech/rabbit/r1launcher/initstep/utils/UiExtensionsKt;->getDp(F)F

    move-result v0

    sput v0, Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtView;->SCROLL_BAR_CORNER_SIZE:F

    const-string v0, "#323232"

    .line 28
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtView;->SCROLL_BAR_TRACK_COLOR:I

    const-string v0, "#FF4D00"

    .line 29
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtView;->SCROLL_BAR_THUMB_COLOR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    sget-object p1, Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtView$paint$2;->INSTANCE:Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtView$paint$2;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtView;->paint$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 17
    :cond_0
    invoke-direct {p0, p1, p2}, Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private final getPaint()Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtView;->paint$delegate:Lkotlin/Lazy;

    .line 32
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Paint;

    return-object p0
.end method


# virtual methods
.method public final attachSupporter(Ltech/rabbit/r1launcher/widget/scrollbar/supporter/ScrollBarExtViewSupporter;)V
    .locals 1

    const-string v0, "scrollBarExtViewSupporter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtView;->scrollBarExtViewSupporter:Ltech/rabbit/r1launcher/widget/scrollbar/supporter/ScrollBarExtViewSupporter;

    .line 84
    invoke-interface {p1, p0}, Ltech/rabbit/r1launcher/widget/scrollbar/supporter/ScrollBarExtViewSupporter;->attach(Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtView;)V

    return-void
.end method

.method public final detachSupporter()V
    .locals 1

    iget-object v0, p0, Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtView;->scrollBarExtViewSupporter:Ltech/rabbit/r1launcher/widget/scrollbar/supporter/ScrollBarExtViewSupporter;

    if-nez v0, :cond_0

    const-string v0, "scrollBarExtViewSupporter"

    .line 88
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-interface {v0, p0}, Ltech/rabbit/r1launcher/widget/scrollbar/supporter/ScrollBarExtViewSupporter;->detach(Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtView;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 59
    invoke-direct {p0}, Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtView;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    sget v1, Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtView;->SCROLL_BAR_TRACK_COLOR:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtView;->trackWidth:F

    sub-float v2, v0, v1

    iget v3, p0, Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtView;->marginTop:F

    .line 63
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtView;->getMeasuredWidth()I

    move-result v0

    int-to-float v4, v0

    iget v0, p0, Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtView;->marginTop:F

    iget v1, p0, Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtView;->trackHeight:F

    add-float v5, v0, v1

    sget v0, Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtView;->SCROLL_BAR_CORNER_SIZE:F

    .line 67
    invoke-direct {p0}, Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtView;->getPaint()Landroid/graphics/Paint;

    move-result-object v8

    move-object v1, p1

    move v6, v0

    move v7, v0

    .line 60
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 70
    invoke-direct {p0}, Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtView;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    sget v2, Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtView;->SCROLL_BAR_THUMB_COLOR:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtView;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtView;->trackWidth:F

    sub-float v2, v1, v2

    iget v1, p0, Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtView;->marginTop:F

    iget v3, p0, Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtView;->percentage:F

    iget v4, p0, Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtView;->trackHeight:F

    iget v5, p0, Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtView;->thumbHeight:F

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v3, v1

    .line 74
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtView;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    iget v1, p0, Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtView;->marginTop:F

    iget v5, p0, Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtView;->percentage:F

    iget v6, p0, Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtView;->trackHeight:F

    iget v7, p0, Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtView;->thumbHeight:F

    sub-float/2addr v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v1, v5

    add-float v5, v1, v7

    .line 78
    invoke-direct {p0}, Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtView;->getPaint()Landroid/graphics/Paint;

    move-result-object v8

    move-object v1, p1

    move v6, v0

    move v7, v0

    .line 71
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 47
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 49
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtView;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x3e840000    # 0.2578125f

    mul-float/2addr p1, p2

    iput p1, p0, Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtView;->marginTop:F

    .line 51
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtView;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    const p2, 0x3e866666    # 0.2625f

    mul-float/2addr p1, p2

    iput p1, p0, Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtView;->trackHeight:F

    .line 52
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtView;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    const p2, 0x3caaaaa9

    mul-float/2addr p1, p2

    iput p1, p0, Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtView;->trackWidth:F

    .line 53
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtView;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x3e000000    # 0.125f

    mul-float/2addr p1, p2

    iput p1, p0, Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtView;->thumbHeight:F

    return-void
.end method

.method public updateScrollPercentage(F)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 92
    invoke-static {p1, v0, v1}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p1

    iput p1, p0, Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtView;->percentage:F

    .line 93
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtView;->invalidate()V

    return-void
.end method
