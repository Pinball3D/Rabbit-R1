.class public final Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;
.super Landroid/view/View;
.source "NumberPickerView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$ConfirmedCircleItemLocation;,
        Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;,
        Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$OnNumberPickerListener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNumberPickerView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NumberPickerView.kt\ntech/rabbit/r1launcher/initstep/widget/NumberPickerView\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Animator.kt\nandroidx/core/animation/AnimatorKt\n*L\n1#1,829:1\n1549#2:830\n1620#2,3:831\n1864#2,3:834\n1045#2:921\n1045#2:922\n95#3,14:837\n95#3,14:851\n95#3,14:865\n95#3,14:879\n95#3,14:893\n95#3,14:907\n*S KotlinDebug\n*F\n+ 1 NumberPickerView.kt\ntech/rabbit/r1launcher/initstep/widget/NumberPickerView\n*L\n190#1:830\n190#1:831,3\n280#1:834,3\n496#1:921\n565#1:922\n537#1:837,14\n606#1:851,14\n646#1:865,14\n679#1:879,14\n723#1:893,14\n759#1:907,14\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u001c\u0008\u0007\u0018\u00002\u00020\u0001:\u0003`abB%\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010>\u001a\u00020?H\u0002J\u0008\u0010@\u001a\u00020?H\u0002J\u0010\u0010A\u001a\u00020?2\u0006\u0010B\u001a\u00020\nH\u0002J\u0008\u0010C\u001a\u00020?H\u0002J\u0008\u0010D\u001a\u00020?H\u0002J\u0010\u0010E\u001a\u00020?2\u0006\u0010F\u001a\u00020GH\u0002J\u0010\u0010H\u001a\u00020?2\u0006\u0010F\u001a\u00020GH\u0002J\u0010\u0010I\u001a\u00020?2\u0006\u0010F\u001a\u00020GH\u0002J\u0010\u0010J\u001a\u00020?2\u0006\u0010F\u001a\u00020GH\u0002J\u0008\u0010K\u001a\u00020\nH\u0002J\u0006\u0010L\u001a\u000200J\u0006\u0010M\u001a\u000200J\u0006\u0010N\u001a\u000200J\u0008\u0010O\u001a\u00020?H\u0002J\u0008\u0010P\u001a\u00020?H\u0002J\u0006\u0010Q\u001a\u00020?J\u0010\u0010R\u001a\u00020?2\u0006\u0010F\u001a\u00020GH\u0014J\u0018\u0010S\u001a\u00020?2\u0006\u0010T\u001a\u00020\u00072\u0006\u0010U\u001a\u00020\u0007H\u0014J\u0006\u0010V\u001a\u00020?J\u0006\u0010W\u001a\u00020?J\u0006\u0010X\u001a\u00020?J\u0006\u0010Y\u001a\u00020?J\u000e\u0010Z\u001a\u00020?2\u0006\u0010[\u001a\u000205J\u0010\u0010\\\u001a\u00020?2\u0006\u0010]\u001a\u000200H\u0016J\u0008\u0010^\u001a\u00020?H\u0002J\u0006\u0010_\u001a\u00020?R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\nX\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\nX\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R#\u0010\u001d\u001a\n \u001f*\u0004\u0018\u00010\u001e0\u001e8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\"\u0010#\u001a\u0004\u0008 \u0010!R#\u0010$\u001a\n \u001f*\u0004\u0018\u00010\u001e0\u001e8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008&\u0010#\u001a\u0004\u0008%\u0010!R\u000e\u0010\'\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020\nX\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020\nX\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010,\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010-\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010.\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010/\u001a\u000200X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u00101\u001a\u0008\u0012\u0004\u0012\u00020302X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u00104\u001a\u0004\u0018\u000105X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00106\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u00107\u001a\u000208X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u00109\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010:\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010;\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010<\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010=\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006c"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;",
        "Landroid/view/View;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "confirmSelectedAreaHeight",
        "",
        "confirmSelectedAreaReversScaleFactor",
        "confirmSelectedAreaScaleFactor",
        "confirmSelectedAreaTranslateXOffset",
        "confirmSelectedAreaTranslateYOffset",
        "confirmSelectedAreaWidth",
        "confirmSelectedItemTextBounds",
        "Landroid/graphics/Rect;",
        "confirmSelectedItemTextTranslateXOffset",
        "confirmWrapItemTextCanScaleCircleRadius",
        "confirmWrapItemTextCirclePaint",
        "Landroid/graphics/Paint;",
        "confirmWrapItemTextCircleRadius",
        "confirmedCircleItemCount",
        "confirmedCircleItemsLocation",
        "",
        "Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$ConfirmedCircleItemLocation;",
        "confirmedCircleItemsPaint",
        "confirmedCircleSpacing",
        "icDelete",
        "Landroid/graphics/Bitmap;",
        "kotlin.jvm.PlatformType",
        "getIcDelete",
        "()Landroid/graphics/Bitmap;",
        "icDelete$delegate",
        "Lkotlin/Lazy;",
        "icScrollGuide",
        "getIcScrollGuide",
        "icScrollGuide$delegate",
        "icScrollGuideLocation",
        "icScrollGuidePaint",
        "icScrollGuideScaleFactor",
        "icScrollGuideScaleTranslateYOffset",
        "icScrollGuideSelectedAreaScaleSizeOffset",
        "icScrollGuideSize",
        "indicatorPaint",
        "indicatorRadius",
        "isAnimationRunning",
        "",
        "items",
        "",
        "Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;",
        "onNumberPickerListener",
        "Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$OnNumberPickerListener;",
        "selectedAreaCorners",
        "selectedAreaDrawRect",
        "Landroid/graphics/RectF;",
        "selectedAreaHeight",
        "selectedAreaMarginEnd",
        "selectedAreaPaint",
        "selectedAreaWidth",
        "textPaint",
        "calculateInitItemsLocationYAndTextSize",
        "",
        "calculateItemsLocation",
        "calculateItemsLocationOffsetY",
        "factor",
        "calculateSelectedItem",
        "calculateSelectedItemAreaLocation",
        "drawConfirmedItemsCircle",
        "canvas",
        "Landroid/graphics/Canvas;",
        "drawIndicator",
        "drawItems",
        "drawSelectedItemArea",
        "getDrawBeginLocationYOnCanvas",
        "isAvailable",
        "isDeleteItem",
        "isNormalItemInSelectArea",
        "moveToNext",
        "moveToPrev",
        "onDelete",
        "onDraw",
        "onMeasure",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "onScrollDown",
        "onScrollUp",
        "reset",
        "resetCacheData",
        "setOnNumberPickerListener",
        "listener",
        "setSelected",
        "selected",
        "showNoSelectedConfirmAnimation",
        "showSelectedConfirmAnimation",
        "ConfirmedCircleItemLocation",
        "Item",
        "OnNumberPickerListener",
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
.field private final confirmSelectedAreaHeight:F

.field private confirmSelectedAreaReversScaleFactor:F

.field private confirmSelectedAreaScaleFactor:F

.field private final confirmSelectedAreaTranslateXOffset:F

.field private final confirmSelectedAreaTranslateYOffset:F

.field private final confirmSelectedAreaWidth:F

.field private final confirmSelectedItemTextBounds:Landroid/graphics/Rect;

.field private final confirmSelectedItemTextTranslateXOffset:F

.field private final confirmWrapItemTextCanScaleCircleRadius:F

.field private final confirmWrapItemTextCirclePaint:Landroid/graphics/Paint;

.field private final confirmWrapItemTextCircleRadius:F

.field private confirmedCircleItemCount:I

.field private final confirmedCircleItemsLocation:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$ConfirmedCircleItemLocation;",
            ">;"
        }
    .end annotation
.end field

.field private final confirmedCircleItemsPaint:Landroid/graphics/Paint;

.field private final confirmedCircleSpacing:F

.field private final icDelete$delegate:Lkotlin/Lazy;

.field private final icScrollGuide$delegate:Lkotlin/Lazy;

.field private final icScrollGuideLocation:Landroid/graphics/Rect;

.field private final icScrollGuidePaint:Landroid/graphics/Paint;

.field private icScrollGuideScaleFactor:F

.field private final icScrollGuideScaleTranslateYOffset:F

.field private final icScrollGuideSelectedAreaScaleSizeOffset:F

.field private final icScrollGuideSize:F

.field private final indicatorPaint:Landroid/graphics/Paint;

.field private final indicatorRadius:F

.field private isAnimationRunning:Z

.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;",
            ">;"
        }
    .end annotation
.end field

.field private onNumberPickerListener:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$OnNumberPickerListener;

.field private final selectedAreaCorners:F

.field private final selectedAreaDrawRect:Landroid/graphics/RectF;

.field private final selectedAreaHeight:F

.field private final selectedAreaMarginEnd:F

.field private final selectedAreaPaint:Landroid/graphics/Paint;

.field private final selectedAreaWidth:F

.field private final textPaint:Landroid/graphics/Paint;


# direct methods
.method public static synthetic $r8$lambda$F4O0IHZJl5yjxg-MBjpS4Dir9qI(Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->onDelete$lambda$32$lambda$29(Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IEr6Ccps03IN61L6NP7M6DwCZ1I(Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->showSelectedConfirmAnimation$lambda$21$lambda$17(Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ody4lAAvduxey5YEKQaV2rUyyC0(Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->moveToNext$lambda$11$lambda$8(Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$m-4bvBihYia1eYUz5nkDme5CVzQ(Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->showNoSelectedConfirmAnimation$lambda$28$lambda$26(Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nk4PeilezqYKFjlwUf3657Cn1Do(Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->moveToPrev$lambda$16$lambda$13(Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yPDka9VpB1BDNj8MRN85_wlFlKU(Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->showSelectedConfirmAnimation$lambda$25$lambda$22(Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x5

    .line 125
    invoke-static {p2}, Ltech/rabbit/r1launcher/initstep/utils/UiExtensionsKt;->getDp(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->indicatorRadius:F

    .line 126
    new-instance p2, Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    const-string v0, "#AAAAAA"

    .line 127
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 128
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iput-object p2, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->indicatorPaint:Landroid/graphics/Paint;

    const/16 p2, 0x38

    .line 131
    invoke-static {p2}, Ltech/rabbit/r1launcher/initstep/utils/UiExtensionsKt;->getDp(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->selectedAreaHeight:F

    const/16 p2, 0x35

    .line 132
    invoke-static {p2}, Ltech/rabbit/r1launcher/initstep/utils/UiExtensionsKt;->getDp(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->selectedAreaWidth:F

    const/16 p2, 0x9

    .line 133
    invoke-static {p2}, Ltech/rabbit/r1launcher/initstep/utils/UiExtensionsKt;->getDp(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->selectedAreaCorners:F

    const/16 p2, 0x18

    .line 134
    invoke-static {p2}, Ltech/rabbit/r1launcher/initstep/utils/UiExtensionsKt;->getDp(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->selectedAreaMarginEnd:F

    .line 135
    new-instance p2, Landroid/graphics/RectF;

    const/4 v0, 0x0

    invoke-direct {p2, v0, v0, v0, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p2, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->selectedAreaDrawRect:Landroid/graphics/RectF;

    .line 136
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    const-string v0, "#FF4D00"

    .line 137
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 138
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iput-object p2, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->selectedAreaPaint:Landroid/graphics/Paint;

    .line 141
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v0, -0x1

    .line 142
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 144
    sget v1, Ltech/rabbit/r1launcher/R$font;->power_grotesk_regular:I

    invoke-static {p1, v1}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object p1

    const/16 v1, 0x190

    const/4 v2, 0x0

    .line 143
    invoke-static {p1, v1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iput-object p2, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->textPaint:Landroid/graphics/Paint;

    const/high16 p1, 0x41a00000    # 20.0f

    iput p1, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->icScrollGuideScaleTranslateYOffset:F

    const/high16 p2, 0x41400000    # 12.0f

    iput p2, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->icScrollGuideSelectedAreaScaleSizeOffset:F

    const/16 p2, 0x23

    .line 154
    invoke-static {p2}, Ltech/rabbit/r1launcher/initstep/utils/UiExtensionsKt;->getDp(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->icScrollGuideSize:F

    .line 155
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->icScrollGuideLocation:Landroid/graphics/Rect;

    .line 156
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->icScrollGuidePaint:Landroid/graphics/Paint;

    .line 157
    new-instance p2, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$icScrollGuide$2;

    invoke-direct {p2, p0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$icScrollGuide$2;-><init>(Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->icScrollGuide$delegate:Lkotlin/Lazy;

    const/16 p2, 0xf

    .line 161
    invoke-static {p2}, Ltech/rabbit/r1launcher/initstep/utils/UiExtensionsKt;->getDp(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmedCircleSpacing:F

    .line 162
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmedCircleItemsLocation:Ljava/util/List;

    .line 163
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, p3}, Landroid/graphics/Paint;-><init>(I)V

    .line 164
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 165
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iput-object v1, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmedCircleItemsPaint:Landroid/graphics/Paint;

    iput p1, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmSelectedAreaTranslateXOffset:F

    iput p1, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmSelectedAreaTranslateYOffset:F

    const/16 p1, 0x19

    .line 172
    invoke-static {p1}, Ltech/rabbit/r1launcher/initstep/utils/UiExtensionsKt;->getDp(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmSelectedAreaHeight:F

    .line 173
    invoke-static {p2}, Ltech/rabbit/r1launcher/initstep/utils/UiExtensionsKt;->getDp(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmSelectedAreaWidth:F

    const/16 p1, 0x14

    .line 175
    invoke-static {p1}, Ltech/rabbit/r1launcher/initstep/utils/UiExtensionsKt;->getDp(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmSelectedItemTextTranslateXOffset:F

    .line 176
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmSelectedItemTextBounds:Landroid/graphics/Rect;

    const/16 p1, 0x12

    .line 178
    invoke-static {p1}, Ltech/rabbit/r1launcher/initstep/utils/UiExtensionsKt;->getDp(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmWrapItemTextCircleRadius:F

    const/16 p1, 0xd

    .line 179
    invoke-static {p1}, Ltech/rabbit/r1launcher/initstep/utils/UiExtensionsKt;->getDp(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmWrapItemTextCanScaleCircleRadius:F

    .line 180
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p3}, Landroid/graphics/Paint;-><init>(I)V

    .line 181
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 182
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iput-object p1, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmWrapItemTextCirclePaint:Landroid/graphics/Paint;

    .line 187
    new-instance p1, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$icDelete$2;

    invoke-direct {p1, p0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$icDelete$2;-><init>(Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->icDelete$delegate:Lkotlin/Lazy;

    const-string v0, "0"

    const-string v1, "1"

    const-string v2, "2"

    const-string v3, "3"

    const-string v4, "4"

    const-string v5, "5"

    const-string v6, "6"

    const-string v7, "7"

    const-string v8, "8"

    const-string v9, "9"

    const-string v10, "-1"

    .line 190
    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 830
    new-instance p2, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p2, Ljava/util/Collection;

    .line 831
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 832
    check-cast v0, Ljava/lang/String;

    .line 191
    new-instance v1, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;

    iget-object v2, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->textPaint:Landroid/graphics/Paint;

    invoke-direct {v1, v0, v2}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;-><init>(Ljava/lang/String;Landroid/graphics/Paint;)V

    .line 832
    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 833
    :cond_0
    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->items:Ljava/util/List;

    .line 198
    invoke-virtual {p0, p3}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->setSelected(Z)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 23
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic access$calculateInitItemsLocationYAndTextSize(Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->calculateInitItemsLocationYAndTextSize()V

    return-void
.end method

.method public static final synthetic access$calculateItemsLocation(Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->calculateItemsLocation()V

    return-void
.end method

.method public static final synthetic access$calculateSelectedItem(Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->calculateSelectedItem()V

    return-void
.end method

.method public static final synthetic access$calculateSelectedItemAreaLocation(Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->calculateSelectedItemAreaLocation()V

    return-void
.end method

.method public static final synthetic access$getConfirmedCircleItemCount$p(Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;)I
    .locals 0

    .line 23
    iget p0, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmedCircleItemCount:I

    return p0
.end method

.method public static final synthetic access$getConfirmedCircleItemsLocation$p(Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;)Ljava/util/List;
    .locals 0

    .line 23
    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmedCircleItemsLocation:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getDrawBeginLocationYOnCanvas(Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;)F
    .locals 0

    .line 23
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->getDrawBeginLocationYOnCanvas()F

    move-result p0

    return p0
.end method

.method public static final synthetic access$getItems$p(Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;)Ljava/util/List;
    .locals 0

    .line 23
    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->items:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getOnNumberPickerListener$p(Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;)Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$OnNumberPickerListener;
    .locals 0

    .line 23
    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->onNumberPickerListener:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$OnNumberPickerListener;

    return-object p0
.end method

.method public static final synthetic access$setAnimationRunning$p(Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;Z)V
    .locals 0

    .line 23
    iput-boolean p1, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->isAnimationRunning:Z

    return-void
.end method

.method public static final synthetic access$setConfirmSelectedAreaReversScaleFactor$p(Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;F)V
    .locals 0

    .line 23
    iput p1, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmSelectedAreaReversScaleFactor:F

    return-void
.end method

.method public static final synthetic access$setConfirmSelectedAreaScaleFactor$p(Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;F)V
    .locals 0

    .line 23
    iput p1, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmSelectedAreaScaleFactor:F

    return-void
.end method

.method public static final synthetic access$setConfirmedCircleItemCount$p(Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;I)V
    .locals 0

    .line 23
    iput p1, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmedCircleItemCount:I

    return-void
.end method

.method private final calculateInitItemsLocationYAndTextSize()V
    .locals 10

    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->items:Ljava/util/List;

    .line 268
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "<get-icDelete>(...)"

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;

    .line 269
    invoke-virtual {v4, v1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;->setLocationY(F)V

    .line 270
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->getIcDelete()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v7, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;->Companion:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item$Companion;

    invoke-virtual {v7}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item$Companion;->getMAX_TEXT_SIZE()F

    move-result v7

    int-to-float v8, v3

    sget-object v9, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;->Companion:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item$Companion;

    invoke-virtual {v9}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item$Companion;->getREDUCE_TEXT_SIZE()F

    move-result v9

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    invoke-virtual {v4, v6, v7}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;->setTextSize(Landroid/graphics/Bitmap;F)V

    .line 271
    invoke-virtual {v4}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;->moveOffset()F

    move-result v6

    add-float/2addr v1, v6

    add-int/lit8 v3, v3, 0x1

    .line 274
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->getDrawBeginLocationYOnCanvas()F

    move-result v6

    sub-float/2addr v6, v1

    invoke-virtual {v4}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;->moveOffset()F

    move-result v7

    neg-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_0

    .line 275
    invoke-virtual {v4}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;->moveOffset()F

    move-result v0

    neg-float v1, v0

    :cond_1
    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->items:Ljava/util/List;

    .line 280
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v0, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->reversed(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 835
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-gez v2, :cond_2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_2
    check-cast v3, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;

    .line 281
    invoke-virtual {v3, v1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;->setLocationY(F)V

    .line 282
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->getIcDelete()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;->Companion:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item$Companion;

    invoke-virtual {v6}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item$Companion;->getMAX_TEXT_SIZE()F

    move-result v6

    int-to-float v7, v4

    sget-object v8, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;->Companion:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item$Companion;

    invoke-virtual {v8}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item$Companion;->getREDUCE_TEXT_SIZE()F

    move-result v8

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    invoke-virtual {v3, v2, v6}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;->setTextSize(Landroid/graphics/Bitmap;F)V

    .line 283
    invoke-virtual {v3}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;->moveOffset()F

    move-result v2

    sub-float/2addr v1, v2

    move v2, v4

    goto :goto_0

    :cond_3
    return-void
.end method

.method private final calculateItemsLocation()V
    .locals 10

    .line 292
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->getDrawBeginLocationYOnCanvas()F

    move-result v0

    iget-object v1, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->items:Ljava/util/List;

    .line 294
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;

    iget v3, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmSelectedAreaScaleFactor:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    const/4 v4, 0x2

    const/high16 v5, 0x40000000    # 2.0f

    if-lez v3, :cond_0

    .line 295
    invoke-virtual {v2}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 296
    invoke-virtual {v2}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;->getLocation()Landroid/graphics/RectF;

    move-result-object v3

    iget-object v6, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->selectedAreaDrawRect:Landroid/graphics/RectF;

    .line 298
    iget v6, v6, Landroid/graphics/RectF;->left:F

    iget-object v7, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->selectedAreaDrawRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    int-to-float v4, v4

    div-float/2addr v7, v4

    add-float/2addr v6, v7

    invoke-virtual {v2}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;->getTextWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v5

    sub-float/2addr v6, v7

    iget v7, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmSelectedItemTextTranslateXOffset:F

    iget v8, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmSelectedAreaScaleFactor:F

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    iget v7, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmSelectedAreaTranslateXOffset:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    .line 300
    invoke-virtual {v2}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;->getTextHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v5

    sub-float v7, v0, v7

    invoke-virtual {v2}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;->getLocationY()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-virtual {v2}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;->getLocationOffsetY()F

    move-result v8

    add-float/2addr v7, v8

    iget v8, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmSelectedAreaTranslateYOffset:F

    iget v9, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmSelectedAreaScaleFactor:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    iget-object v8, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->selectedAreaDrawRect:Landroid/graphics/RectF;

    .line 302
    iget v8, v8, Landroid/graphics/RectF;->right:F

    iget-object v9, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->selectedAreaDrawRect:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v9

    div-float/2addr v9, v4

    sub-float/2addr v8, v9

    invoke-virtual {v2}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;->getTextWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    add-float/2addr v8, v4

    iget v4, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmSelectedItemTextTranslateXOffset:F

    iget v9, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmSelectedAreaScaleFactor:F

    mul-float/2addr v4, v9

    sub-float/2addr v8, v4

    iget v4, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmSelectedAreaTranslateXOffset:F

    mul-float/2addr v4, v9

    add-float/2addr v8, v4

    .line 304
    invoke-virtual {v2}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;->getTextHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    add-float/2addr v4, v0

    invoke-virtual {v2}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;->getLocationY()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {v2}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;->getLocationOffsetY()F

    move-result v2

    add-float/2addr v4, v2

    iget v2, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmSelectedAreaTranslateYOffset:F

    iget v5, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmSelectedAreaScaleFactor:F

    mul-float/2addr v2, v5

    add-float/2addr v4, v2

    .line 296
    invoke-virtual {v3, v6, v7, v8, v4}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_0

    .line 307
    :cond_0
    invoke-virtual {v2}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;->getLocation()Landroid/graphics/RectF;

    move-result-object v3

    iget-object v6, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->selectedAreaDrawRect:Landroid/graphics/RectF;

    .line 309
    iget v6, v6, Landroid/graphics/RectF;->left:F

    iget-object v7, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->selectedAreaDrawRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    int-to-float v4, v4

    div-float/2addr v7, v4

    add-float/2addr v6, v7

    invoke-virtual {v2}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;->getTextWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v5

    sub-float/2addr v6, v7

    .line 311
    invoke-virtual {v2}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;->getTextHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v5

    sub-float v7, v0, v7

    invoke-virtual {v2}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;->getLocationY()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-virtual {v2}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;->getLocationOffsetY()F

    move-result v8

    add-float/2addr v7, v8

    iget-object v8, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->selectedAreaDrawRect:Landroid/graphics/RectF;

    .line 313
    iget v8, v8, Landroid/graphics/RectF;->right:F

    iget-object v9, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->selectedAreaDrawRect:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v9

    div-float/2addr v9, v4

    sub-float/2addr v8, v9

    invoke-virtual {v2}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;->getTextWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    add-float/2addr v8, v4

    .line 315
    invoke-virtual {v2}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;->getTextHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    add-float/2addr v4, v0

    invoke-virtual {v2}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;->getLocationY()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {v2}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;->getLocationOffsetY()F

    move-result v2

    add-float/2addr v4, v2

    .line 307
    invoke-virtual {v3, v6, v7, v8, v4}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method private final calculateItemsLocationOffsetY(F)V
    .locals 1

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->items:Ljava/util/List;

    .line 288
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;

    invoke-virtual {v0, p1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;->calculateLocationOffsetY(F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final calculateSelectedItem()V
    .locals 4

    iget v0, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmSelectedAreaScaleFactor:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->items:Ljava/util/List;

    .line 323
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;

    .line 325
    invoke-virtual {v1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;->getLocation()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->selectedAreaDrawRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    invoke-virtual {v1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;->getLocation()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->selectedAreaDrawRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    const/high16 v2, -0x1000000

    goto :goto_1

    :cond_1
    const/4 v2, -0x1

    .line 324
    :goto_1
    invoke-virtual {v1, v2}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;->setTextColor(I)V

    iget-object v2, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->selectedAreaDrawRect:Landroid/graphics/RectF;

    .line 328
    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;->getLocation()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->top:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_2

    iget-object v2, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->selectedAreaDrawRect:Landroid/graphics/RectF;

    .line 329
    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;->getLocation()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    .line 328
    :goto_2
    invoke-virtual {v1, v2}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;->setSelected(Z)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private final calculateSelectedItemAreaLocation()V
    .locals 12

    .line 220
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->getDrawBeginLocationYOnCanvas()F

    move-result v0

    iget v1, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmSelectedAreaScaleFactor:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    const/high16 v4, 0x40000000    # 2.0f

    if-lez v3, :cond_0

    iget v3, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmSelectedAreaReversScaleFactor:F

    cmpg-float v3, v3, v2

    if-nez v3, :cond_0

    .line 229
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->selectedAreaWidth:F

    sub-float/2addr v1, v2

    iget v2, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->selectedAreaMarginEnd:F

    sub-float/2addr v1, v2

    iget v2, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmSelectedAreaWidth:F

    neg-float v2, v2

    iget v3, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmSelectedAreaScaleFactor:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmSelectedAreaTranslateXOffset:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->selectedAreaHeight:F

    div-float v5, v2, v4

    sub-float v5, v0, v5

    div-float/2addr v2, v4

    iget v6, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmSelectedAreaHeight:F

    div-float/2addr v6, v4

    sub-float/2addr v2, v6

    mul-float/2addr v2, v3

    add-float/2addr v5, v2

    iget v2, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmSelectedAreaTranslateYOffset:F

    mul-float/2addr v3, v2

    add-float/2addr v5, v3

    .line 233
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->selectedAreaMarginEnd:F

    sub-float/2addr v2, v3

    iget v3, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmSelectedAreaScaleFactor:F

    iget v6, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmSelectedAreaTranslateXOffset:F

    mul-float/2addr v6, v3

    add-float/2addr v2, v6

    iget v6, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->selectedAreaHeight:F

    div-float v7, v6, v4

    add-float/2addr v0, v7

    div-float/2addr v6, v4

    iget v7, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmSelectedAreaHeight:F

    div-float/2addr v7, v4

    sub-float/2addr v6, v7

    neg-float v6, v6

    mul-float/2addr v6, v3

    add-float/2addr v0, v6

    iget v6, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmSelectedAreaTranslateYOffset:F

    mul-float/2addr v3, v6

    add-float/2addr v0, v3

    goto/16 :goto_0

    :cond_0
    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    iget v1, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmSelectedAreaReversScaleFactor:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 238
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->selectedAreaWidth:F

    sub-float/2addr v1, v2

    iget v2, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->selectedAreaMarginEnd:F

    sub-float/2addr v1, v2

    iget v2, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmSelectedAreaWidth:F

    neg-float v3, v2

    iget v5, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmSelectedAreaScaleFactor:F

    mul-float/2addr v3, v5

    add-float/2addr v1, v3

    iget v3, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmSelectedAreaTranslateXOffset:F

    mul-float v6, v5, v3

    add-float/2addr v1, v6

    iget v6, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmSelectedAreaReversScaleFactor:F

    mul-float/2addr v2, v6

    add-float/2addr v1, v2

    mul-float v2, v6, v3

    sub-float/2addr v1, v2

    iget v2, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->selectedAreaHeight:F

    div-float v7, v2, v4

    sub-float v7, v0, v7

    div-float v8, v2, v4

    iget v9, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmSelectedAreaHeight:F

    div-float v10, v9, v4

    sub-float/2addr v8, v10

    mul-float/2addr v8, v5

    add-float/2addr v7, v8

    iget v8, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmSelectedAreaTranslateYOffset:F

    mul-float/2addr v5, v8

    add-float/2addr v7, v5

    div-float/2addr v2, v4

    div-float/2addr v9, v4

    sub-float/2addr v2, v9

    neg-float v2, v2

    mul-float/2addr v2, v6

    add-float/2addr v7, v2

    mul-float/2addr v6, v3

    sub-float v5, v7, v6

    .line 242
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->selectedAreaMarginEnd:F

    sub-float/2addr v2, v3

    iget v3, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmSelectedAreaScaleFactor:F

    iget v6, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmSelectedAreaTranslateXOffset:F

    mul-float v7, v3, v6

    add-float/2addr v2, v7

    iget v7, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmSelectedAreaReversScaleFactor:F

    mul-float v8, v7, v6

    sub-float/2addr v2, v8

    iget v8, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->selectedAreaHeight:F

    div-float v9, v8, v4

    add-float/2addr v0, v9

    div-float v9, v8, v4

    iget v10, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmSelectedAreaHeight:F

    div-float v11, v10, v4

    sub-float/2addr v9, v11

    neg-float v9, v9

    mul-float/2addr v9, v3

    add-float/2addr v0, v9

    iget v9, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmSelectedAreaTranslateYOffset:F

    mul-float/2addr v3, v9

    add-float/2addr v0, v3

    div-float/2addr v8, v4

    div-float/2addr v10, v4

    sub-float/2addr v8, v10

    mul-float/2addr v8, v7

    add-float/2addr v0, v8

    mul-float/2addr v7, v6

    sub-float/2addr v0, v7

    goto :goto_0

    :cond_1
    iget v1, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->icScrollGuideSelectedAreaScaleSizeOffset:F

    iget v2, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->icScrollGuideScaleFactor:F

    mul-float/2addr v1, v2

    .line 249
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->selectedAreaWidth:F

    sub-float/2addr v2, v3

    iget v3, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->selectedAreaMarginEnd:F

    sub-float/2addr v2, v3

    add-float/2addr v2, v1

    iget v3, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->selectedAreaHeight:F

    div-float/2addr v3, v4

    sub-float v3, v0, v3

    add-float v5, v3, v1

    .line 251
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    iget v6, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->selectedAreaMarginEnd:F

    sub-float/2addr v3, v6

    sub-float/2addr v3, v1

    iget v6, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->selectedAreaHeight:F

    div-float/2addr v6, v4

    add-float/2addr v0, v6

    sub-float/2addr v0, v1

    move v1, v2

    move v2, v3

    :goto_0
    iget-object v3, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->selectedAreaDrawRect:Landroid/graphics/RectF;

    .line 255
    invoke-virtual {v3, v1, v5, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->icScrollGuideLocation:Landroid/graphics/Rect;

    iget-object v1, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->selectedAreaDrawRect:Landroid/graphics/RectF;

    .line 258
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget v2, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->icScrollGuideSize:F

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->selectedAreaDrawRect:Landroid/graphics/RectF;

    .line 259
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget v3, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->icScrollGuideSize:F

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->selectedAreaDrawRect:Landroid/graphics/RectF;

    .line 260
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget v5, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->icScrollGuideSize:F

    div-float/2addr v5, v4

    add-float/2addr v3, v5

    float-to-int v3, v3

    iget-object v5, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->selectedAreaDrawRect:Landroid/graphics/RectF;

    .line 261
    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    iget p0, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->icScrollGuideSize:F

    div-float/2addr p0, v4

    add-float/2addr v5, p0

    float-to-int p0, v5

    .line 257
    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private final drawConfirmedItemsCircle(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmedCircleItemsLocation:Ljava/util/List;

    .line 370
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$ConfirmedCircleItemLocation;

    .line 372
    invoke-virtual {v1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$ConfirmedCircleItemLocation;->getCx()F

    move-result v2

    iget v3, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmSelectedAreaTranslateXOffset:F

    iget v4, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmSelectedAreaScaleFactor:F

    mul-float/2addr v4, v3

    add-float/2addr v2, v4

    iget v4, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmSelectedAreaReversScaleFactor:F

    mul-float/2addr v4, v3

    sub-float/2addr v2, v4

    invoke-virtual {v1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$ConfirmedCircleItemLocation;->getOffsetX()F

    move-result v3

    invoke-virtual {v1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$ConfirmedCircleItemLocation;->getOffsetXTemp()F

    move-result v4

    add-float/2addr v3, v4

    sub-float/2addr v2, v3

    .line 373
    invoke-virtual {v1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$ConfirmedCircleItemLocation;->getCy()F

    move-result v3

    iget v4, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmSelectedAreaTranslateYOffset:F

    iget v5, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmSelectedAreaScaleFactor:F

    mul-float/2addr v5, v4

    add-float/2addr v3, v5

    iget v5, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmSelectedAreaReversScaleFactor:F

    mul-float/2addr v5, v4

    sub-float/2addr v3, v5

    .line 374
    invoke-virtual {v1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$ConfirmedCircleItemLocation;->getRadius()F

    move-result v1

    iget-object v4, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmedCircleItemsPaint:Landroid/graphics/Paint;

    .line 371
    invoke-virtual {p1, v2, v3, v1, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final drawIndicator(Landroid/graphics/Canvas;)V
    .locals 4

    .line 382
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->selectedAreaMarginEnd:F

    const/4 v2, 0x4

    invoke-static {v2}, Ltech/rabbit/r1launcher/initstep/utils/UiExtensionsKt;->getDp(I)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    iget v3, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmSelectedAreaScaleFactor:F

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    iget v1, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->selectedAreaMarginEnd:F

    invoke-static {v2}, Ltech/rabbit/r1launcher/initstep/utils/UiExtensionsKt;->getDp(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmSelectedAreaReversScaleFactor:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 383
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->getDrawBeginLocationYOnCanvas()F

    move-result v1

    iget v2, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmSelectedAreaTranslateYOffset:F

    iget v3, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmSelectedAreaScaleFactor:F

    mul-float/2addr v3, v2

    add-float/2addr v1, v3

    iget v3, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmSelectedAreaReversScaleFactor:F

    mul-float/2addr v3, v2

    sub-float/2addr v1, v3

    iget v2, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->indicatorRadius:F

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->indicatorPaint:Landroid/graphics/Paint;

    .line 381
    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private final drawItems(Landroid/graphics/Canvas;)V
    .locals 9

    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->items:Ljava/util/List;

    .line 404
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;

    .line 405
    invoke-virtual {v1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;->getText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-1"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 406
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 407
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->getIcDelete()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;->getLocation()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->left:F

    invoke-virtual {v1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;->getLocation()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->textPaint:Landroid/graphics/Paint;

    .line 410
    invoke-virtual {v1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;->getTextSize()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v2, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->textPaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    int-to-float v3, v3

    iget v4, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmSelectedAreaScaleFactor:F

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v3, v3

    .line 414
    invoke-virtual {v1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;->getTextColor()I

    move-result v4

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v4

    .line 415
    invoke-virtual {v1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;->getTextColor()I

    move-result v6

    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    .line 416
    invoke-virtual {v1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;->getTextColor()I

    move-result v7

    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v7

    .line 412
    invoke-static {v3, v4, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget v2, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmSelectedAreaScaleFactor:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    .line 419
    invoke-virtual {v1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->textPaint:Landroid/graphics/Paint;

    .line 421
    invoke-virtual {v1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;->getTextSize()F

    move-result v3

    invoke-virtual {v1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;->getTextSize()F

    move-result v4

    iget v6, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmSelectedAreaScaleFactor:F

    mul-float/2addr v4, v6

    sub-float/2addr v3, v4

    .line 420
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v2, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->textPaint:Landroid/graphics/Paint;

    .line 423
    invoke-virtual {v1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;->getText()Ljava/lang/String;

    move-result-object v3

    .line 425
    invoke-virtual {v1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v6, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmSelectedItemTextBounds:Landroid/graphics/Rect;

    const/4 v7, 0x0

    .line 422
    invoke-virtual {v2, v3, v7, v4, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v2, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmWrapItemTextCirclePaint:Landroid/graphics/Paint;

    iget v3, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmSelectedAreaScaleFactor:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    .line 429
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 433
    invoke-virtual {v1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;->getLocation()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmSelectedItemTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget-object v5, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmSelectedItemTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    iget v6, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmSelectedAreaScaleFactor:F

    mul-float/2addr v5, v6

    sub-float/2addr v3, v5

    add-float/2addr v2, v3

    iget v3, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmedCircleSpacing:F

    mul-float/2addr v3, v4

    iget v5, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmSelectedAreaReversScaleFactor:F

    mul-float/2addr v3, v5

    sub-float/2addr v2, v3

    .line 435
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->getDrawBeginLocationYOnCanvas()F

    move-result v3

    iget v5, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmSelectedAreaTranslateYOffset:F

    iget v6, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmSelectedAreaScaleFactor:F

    mul-float/2addr v5, v6

    add-float/2addr v3, v5

    iget v5, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmSelectedAreaReversScaleFactor:F

    iget v7, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmSelectedAreaTranslateXOffset:F

    mul-float/2addr v5, v7

    sub-float/2addr v3, v5

    iget v5, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmWrapItemTextCircleRadius:F

    iget v7, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmWrapItemTextCanScaleCircleRadius:F

    mul-float/2addr v7, v6

    sub-float/2addr v5, v7

    iget v6, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmedCircleItemCount:I

    iget-object v7, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmedCircleItemsLocation:Ljava/util/List;

    .line 439
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-eq v6, v7, :cond_2

    iget v6, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmedCircleItemCount:I

    if-lez v6, :cond_2

    iget-object v6, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmedCircleItemsLocation:Ljava/util/List;

    .line 442
    new-instance v7, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$ConfirmedCircleItemLocation;

    invoke-virtual {v1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v2, v3, v5}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$ConfirmedCircleItemLocation;-><init>(Ljava/lang/String;FFF)V

    .line 441
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v6, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmWrapItemTextCirclePaint:Landroid/graphics/Paint;

    .line 447
    invoke-virtual {p1, v2, v3, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 455
    invoke-virtual {v1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;->getText()Ljava/lang/String;

    move-result-object v2

    .line 456
    invoke-virtual {v1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;->getLocation()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmSelectedItemTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    iget v5, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmSelectedAreaScaleFactor:F

    mul-float/2addr v3, v5

    sub-float/2addr v1, v3

    .line 457
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->getDrawBeginLocationYOnCanvas()F

    move-result v3

    iget-object v5, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmSelectedItemTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    add-float/2addr v3, v5

    iget v4, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmSelectedAreaTranslateYOffset:F

    iget v5, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmSelectedAreaScaleFactor:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->textPaint:Landroid/graphics/Paint;

    .line 454
    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 461
    :cond_3
    invoke-virtual {v1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;->getLocation()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->left:F

    invoke-virtual {v1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;->getLocation()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v1, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method private final drawSelectedItemArea(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->selectedAreaDrawRect:Landroid/graphics/RectF;

    iget v1, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->selectedAreaCorners:F

    iget-object v2, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->selectedAreaPaint:Landroid/graphics/Paint;

    .line 390
    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget v0, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->icScrollGuideScaleFactor:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iget-object v1, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->icScrollGuidePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 398
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 399
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->getIcScrollGuide()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->icScrollGuideLocation:Landroid/graphics/Rect;

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->icScrollGuidePaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private final getDrawBeginLocationYOnCanvas()F
    .locals 1

    .line 205
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->getMeasuredHeight()I

    move-result p0

    int-to-float p0, p0

    const v0, 0x3f23d70a    # 0.64f

    mul-float/2addr p0, v0

    return p0
.end method

.method private final getIcDelete()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->icDelete$delegate:Lkotlin/Lazy;

    .line 187
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0
.end method

.method private final getIcScrollGuide()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->icScrollGuide$delegate:Lkotlin/Lazy;

    .line 157
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0
.end method

.method private final moveToNext()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    .line 488
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x15e

    .line 489
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 491
    new-instance v1, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$$ExternalSyntheticLambda3;-><init>(Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 537
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v1, v0

    check-cast v1, Landroid/animation/Animator;

    .line 843
    new-instance v2, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$moveToNext$lambda$11$$inlined$addListener$default$1;

    invoke-direct {v2, p0, v0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$moveToNext$lambda$11$$inlined$addListener$default$1;-><init>(Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;Landroid/animation/ValueAnimator;)V

    .line 849
    check-cast v2, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 553
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static final moveToNext$lambda$11$lambda$8(Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;Landroid/animation/ValueAnimator;)V
    .locals 8

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 492
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 494
    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->calculateItemsLocationOffsetY(F)V

    .line 496
    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->items:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 921
    new-instance v1, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$moveToNext$lambda$11$lambda$8$$inlined$sortedBy$1;

    invoke-direct {v1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$moveToNext$lambda$11$lambda$8$$inlined$sortedBy$1;-><init>()V

    check-cast v1, Ljava/util/Comparator;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    .line 498
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v4, v3, 0x1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;

    .line 500
    invoke-virtual {v5}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;->getLocation()Landroid/graphics/RectF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    iget-object v7, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->selectedAreaDrawRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_0

    invoke-virtual {v5}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;->getLocation()Landroid/graphics/RectF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    iget-object v6, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->selectedAreaDrawRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_0

    goto :goto_1

    :cond_0
    move v3, v4

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    :goto_1
    if-ltz v3, :cond_5

    .line 508
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;

    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->getIcDelete()Landroid/graphics/Bitmap;

    move-result-object v4

    const-string v5, "<get-icDelete>(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v4, v2, p1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;->calculateTextSizeOffset(Landroid/graphics/Bitmap;IF)V

    add-int/lit8 v1, v3, -0x1

    add-int/lit8 v2, v3, 0x1

    :cond_2
    :goto_2
    if-gez v1, :cond_3

    .line 513
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_5

    :cond_3
    if-ltz v1, :cond_4

    .line 515
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;

    .line 516
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->getIcDelete()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sub-int v7, v3, v1

    .line 515
    invoke-virtual {v4, v6, v7, p1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;->calculateTextSizeOffset(Landroid/graphics/Bitmap;IF)V

    add-int/lit8 v1, v1, -0x1

    .line 522
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 523
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;

    .line 524
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->getIcDelete()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sub-int v7, v2, v3

    .line 523
    invoke-virtual {v4, v6, v7, p1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;->calculateTextSizeOffset(Landroid/graphics/Bitmap;IF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 533
    :cond_5
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->calculateItemsLocation()V

    .line 534
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->calculateSelectedItem()V

    .line 535
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->invalidate()V

    return-void
.end method

.method private final moveToPrev()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    .line 557
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x15e

    .line 558
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 560
    new-instance v1, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$$ExternalSyntheticLambda4;-><init>(Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 606
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v1, v0

    check-cast v1, Landroid/animation/Animator;

    .line 857
    new-instance v2, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$moveToPrev$lambda$16$$inlined$addListener$default$1;

    invoke-direct {v2, p0, v0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$moveToPrev$lambda$16$$inlined$addListener$default$1;-><init>(Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;Landroid/animation/ValueAnimator;)V

    .line 863
    check-cast v2, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 622
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static final moveToPrev$lambda$16$lambda$13(Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;Landroid/animation/ValueAnimator;)V
    .locals 8

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 561
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, -0x40800000    # -1.0f

    mul-float/2addr v0, p1

    .line 563
    invoke-direct {p0, v0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->calculateItemsLocationOffsetY(F)V

    .line 565
    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->items:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 922
    new-instance v1, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$moveToPrev$lambda$16$lambda$13$$inlined$sortedBy$1;

    invoke-direct {v1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$moveToPrev$lambda$16$lambda$13$$inlined$sortedBy$1;-><init>()V

    check-cast v1, Ljava/util/Comparator;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    .line 567
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v4, v3, 0x1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;

    .line 569
    invoke-virtual {v5}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;->getLocation()Landroid/graphics/RectF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    iget-object v7, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->selectedAreaDrawRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_0

    invoke-virtual {v5}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;->getLocation()Landroid/graphics/RectF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    iget-object v6, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->selectedAreaDrawRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_0

    goto :goto_1

    :cond_0
    move v3, v4

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    :goto_1
    if-ltz v3, :cond_5

    .line 577
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;

    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->getIcDelete()Landroid/graphics/Bitmap;

    move-result-object v4

    const-string v5, "<get-icDelete>(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v4, v2, p1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;->calculateTextSizeOffset(Landroid/graphics/Bitmap;IF)V

    add-int/lit8 v1, v3, -0x1

    add-int/lit8 v2, v3, 0x1

    :cond_2
    :goto_2
    if-gez v1, :cond_3

    .line 582
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_5

    :cond_3
    if-ltz v1, :cond_4

    .line 584
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;

    .line 585
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->getIcDelete()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sub-int v7, v3, v1

    .line 584
    invoke-virtual {v4, v6, v7, p1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;->calculateTextSizeOffset(Landroid/graphics/Bitmap;IF)V

    add-int/lit8 v1, v1, -0x1

    .line 591
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 592
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;

    .line 593
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->getIcDelete()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sub-int v7, v2, v3

    .line 592
    invoke-virtual {v4, v6, v7, p1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;->calculateTextSizeOffset(Landroid/graphics/Bitmap;IF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 602
    :cond_5
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->calculateItemsLocation()V

    .line 603
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->calculateSelectedItem()V

    .line 604
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->invalidate()V

    return-void
.end method

.method private static final onDelete$lambda$32$lambda$29(Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;Landroid/animation/ValueAnimator;)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 746
    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmedCircleItemsLocation:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$ConfirmedCircleItemLocation;

    .line 748
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    neg-float v2, v2

    iget v3, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmedCircleSpacing:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    mul-float/2addr v2, v3

    .line 747
    invoke-virtual {v1, v2}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$ConfirmedCircleItemLocation;->setOffsetXTemp(F)V

    goto :goto_0

    .line 751
    :cond_0
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->calculateSelectedItemAreaLocation()V

    .line 753
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->calculateInitItemsLocationYAndTextSize()V

    .line 754
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->calculateItemsLocation()V

    .line 755
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->calculateSelectedItem()V

    .line 757
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->invalidate()V

    return-void
.end method

.method private final showNoSelectedConfirmAnimation()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    .line 712
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x15e

    .line 713
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 715
    new-instance v1, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$$ExternalSyntheticLambda5;-><init>(Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 723
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v1, v0

    check-cast v1, Landroid/animation/Animator;

    .line 899
    new-instance v2, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$showNoSelectedConfirmAnimation$lambda$28$$inlined$addListener$default$1;

    invoke-direct {v2, p0, v0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$showNoSelectedConfirmAnimation$lambda$28$$inlined$addListener$default$1;-><init>(Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;Landroid/animation/ValueAnimator;)V

    .line 905
    check-cast v2, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 735
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private static final showNoSelectedConfirmAnimation$lambda$28$lambda$26(Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 716
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->icScrollGuideScaleFactor:F

    .line 718
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->calculateSelectedItemAreaLocation()V

    .line 719
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->calculateInitItemsLocationYAndTextSize()V

    .line 720
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->calculateItemsLocation()V

    .line 721
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->invalidate()V

    return-void
.end method

.method private static final showSelectedConfirmAnimation$lambda$21$lambda$17(Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;Landroid/animation/ValueAnimator;)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 635
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmSelectedAreaScaleFactor:F

    .line 637
    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmedCircleItemsLocation:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$ConfirmedCircleItemLocation;

    .line 639
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget v4, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmedCircleSpacing:F

    mul-float/2addr v3, v4

    .line 638
    invoke-virtual {v2, v3}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$ConfirmedCircleItemLocation;->setOffsetXTemp(F)V

    goto :goto_0

    .line 642
    :cond_0
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->calculateSelectedItemAreaLocation()V

    .line 643
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->calculateItemsLocation()V

    .line 644
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->invalidate()V

    return-void
.end method

.method private static final showSelectedConfirmAnimation$lambda$25$lambda$22(Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;Landroid/animation/ValueAnimator;)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 668
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmSelectedAreaReversScaleFactor:F

    .line 670
    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmedCircleItemsLocation:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$ConfirmedCircleItemLocation;

    .line 672
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget v4, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmedCircleSpacing:F

    mul-float/2addr v3, v4

    .line 671
    invoke-virtual {v2, v3}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$ConfirmedCircleItemLocation;->setOffsetXTemp(F)V

    goto :goto_0

    .line 675
    :cond_0
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->calculateSelectedItemAreaLocation()V

    .line 677
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->invalidate()V

    return-void
.end method


# virtual methods
.method public final isAvailable()Z
    .locals 1

    iget-boolean v0, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->isAnimationRunning:Z

    if-nez v0, :cond_0

    .line 483
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->isSelected()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isDeleteItem()Z
    .locals 4

    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->items:Ljava/util/List;

    .line 824
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;

    .line 825
    invoke-virtual {v1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;->getLocation()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->selectedAreaDrawRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    invoke-virtual {v1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;->getLocation()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->selectedAreaDrawRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    invoke-virtual {v1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;->getText()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-1"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final isNormalItemInSelectArea()Z
    .locals 4

    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->items:Ljava/util/List;

    .line 334
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;

    .line 335
    invoke-virtual {v1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;->getLocation()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->selectedAreaDrawRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    invoke-virtual {v1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;->getLocation()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->selectedAreaDrawRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    invoke-virtual {v1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$Item;->getText()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-1"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final onDelete()V
    .locals 3

    iget v0, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmedCircleItemCount:I

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->isAnimationRunning:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->isAnimationRunning:Z

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    .line 742
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x15e

    .line 743
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 745
    new-instance v1, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$$ExternalSyntheticLambda0;-><init>(Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 759
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v1, v0

    check-cast v1, Landroid/animation/Animator;

    .line 913
    new-instance v2, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$onDelete$lambda$32$$inlined$addListener$default$1;

    invoke-direct {v2, p0, v0, p0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$onDelete$lambda$32$$inlined$addListener$default$1;-><init>(Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;Landroid/animation/ValueAnimator;Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;)V

    .line 919
    check-cast v2, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 778
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    :goto_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 342
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->icScrollGuideScaleFactor:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    iget v2, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->icScrollGuideScaleTranslateYOffset:F

    neg-float v2, v2

    mul-float/2addr v0, v2

    .line 345
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_0
    iget v0, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmSelectedAreaScaleFactor:F

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    iget v2, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmSelectedAreaReversScaleFactor:F

    cmpg-float v2, v2, v1

    if-nez v2, :cond_1

    iget v1, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmSelectedAreaTranslateXOffset:F

    neg-float v1, v1

    mul-float/2addr v1, v0

    iget v2, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmSelectedAreaTranslateYOffset:F

    neg-float v2, v2

    mul-float/2addr v0, v2

    .line 349
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    :cond_1
    cmpl-float v2, v0, v1

    if-lez v2, :cond_2

    iget v2, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmSelectedAreaReversScaleFactor:F

    cmpl-float v1, v2, v1

    if-lez v1, :cond_2

    iget v1, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmSelectedAreaTranslateXOffset:F

    neg-float v3, v1

    mul-float/2addr v3, v0

    mul-float/2addr v1, v2

    add-float/2addr v3, v1

    iget v1, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmSelectedAreaTranslateYOffset:F

    neg-float v4, v1

    mul-float/2addr v0, v4

    mul-float/2addr v2, v1

    add-float/2addr v0, v2

    .line 354
    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 360
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->drawSelectedItemArea(Landroid/graphics/Canvas;)V

    .line 361
    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->drawItems(Landroid/graphics/Canvas;)V

    .line 362
    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->drawConfirmedItemsCircle(Landroid/graphics/Canvas;)V

    iget v0, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmedCircleItemCount:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_3

    .line 365
    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->drawIndicator(Landroid/graphics/Canvas;)V

    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 208
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 210
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->getMeasuredHeight()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 212
    :cond_0
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->calculateSelectedItemAreaLocation()V

    .line 214
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->calculateInitItemsLocationYAndTextSize()V

    .line 215
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->calculateItemsLocation()V

    .line 216
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->calculateSelectedItem()V

    return-void
.end method

.method public final onScrollDown()V
    .locals 1

    iget-boolean v0, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->isAnimationRunning:Z

    if-nez v0, :cond_2

    .line 468
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->isAnimationRunning:Z

    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->onNumberPickerListener:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$OnNumberPickerListener;

    if-eqz v0, :cond_1

    .line 471
    invoke-interface {v0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$OnNumberPickerListener;->onScroll()V

    .line 472
    :cond_1
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->moveToNext()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final onScrollUp()V
    .locals 1

    iget-boolean v0, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->isAnimationRunning:Z

    if-nez v0, :cond_2

    .line 476
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->isAnimationRunning:Z

    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->onNumberPickerListener:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$OnNumberPickerListener;

    if-eqz v0, :cond_1

    .line 479
    invoke-interface {v0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$OnNumberPickerListener;->onScroll()V

    .line 480
    :cond_1
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->moveToPrev()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmSelectedAreaScaleFactor:F

    iput v0, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmSelectedAreaReversScaleFactor:F

    const/4 v0, 0x0

    iput v0, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmedCircleItemCount:I

    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmedCircleItemsLocation:Ljava/util/List;

    .line 787
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 789
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->calculateSelectedItemAreaLocation()V

    .line 791
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->calculateInitItemsLocationYAndTextSize()V

    .line 792
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->calculateItemsLocation()V

    .line 793
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->calculateSelectedItem()V

    .line 795
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->invalidate()V

    return-void
.end method

.method public final resetCacheData()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmSelectedAreaScaleFactor:F

    iput v0, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmSelectedAreaReversScaleFactor:F

    const/4 v0, 0x0

    iput v0, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmedCircleItemCount:I

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->confirmedCircleItemsLocation:Ljava/util/List;

    .line 803
    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final setOnNumberPickerListener(Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$OnNumberPickerListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->onNumberPickerListener:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$OnNumberPickerListener;

    return-void
.end method

.method public setSelected(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->selectedAreaPaint:Landroid/graphics/Paint;

    const-string v1, "#FF4D00"

    .line 809
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 810
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->selectedAreaPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    .line 814
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 815
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v1, 0x3

    .line 816
    invoke-static {v1}, Ltech/rabbit/r1launcher/initstep/utils/UiExtensionsKt;->getDp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 820
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method public final showSelectedConfirmAnimation()V
    .locals 6

    iget-boolean v0, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->isAnimationRunning:Z

    if-nez v0, :cond_1

    .line 628
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->isAnimationRunning:Z

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    .line 631
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0x15e

    .line 632
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 634
    new-instance v4, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$$ExternalSyntheticLambda1;-><init>(Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 646
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v4, v1

    check-cast v4, Landroid/animation/Animator;

    .line 871
    new-instance v5, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$showSelectedConfirmAnimation$lambda$21$$inlined$addListener$default$1;

    invoke-direct {v5, p0, v1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$showSelectedConfirmAnimation$lambda$21$$inlined$addListener$default$1;-><init>(Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;Landroid/animation/ValueAnimator;)V

    .line 877
    check-cast v5, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v4, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 660
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    .line 662
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 663
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 665
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 667
    new-instance v1, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$$ExternalSyntheticLambda2;-><init>(Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 679
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v1, v0

    check-cast v1, Landroid/animation/Animator;

    .line 885
    new-instance v2, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$showSelectedConfirmAnimation$lambda$25$$inlined$addListener$default$1;

    invoke-direct {v2, p0, v0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$showSelectedConfirmAnimation$lambda$25$$inlined$addListener$default$1;-><init>(Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;Landroid/animation/ValueAnimator;)V

    .line 891
    check-cast v2, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 708
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
