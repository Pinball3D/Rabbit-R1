.class public final Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;
.super Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;
.source "AccessibilityIterators.android.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/platform/AccessibilityIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PageTextSegmentIterator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0018\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u001e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0012\u0010\u0015\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;",
        "Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;",
        "()V",
        "layoutResult",
        "Landroidx/compose/ui/text/TextLayoutResult;",
        "node",
        "Landroidx/compose/ui/semantics/SemanticsNode;",
        "tempRect",
        "Landroid/graphics/Rect;",
        "following",
        "",
        "current",
        "",
        "getLineEdgeIndex",
        "lineNumber",
        "direction",
        "Landroidx/compose/ui/text/style/ResolvedTextDirection;",
        "initialize",
        "",
        "text",
        "",
        "preceding",
        "Companion",
        "ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I

.field public static final Companion:Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator$Companion;

.field private static final DirectionEnd:Landroidx/compose/ui/text/style/ResolvedTextDirection;

.field private static final DirectionStart:Landroidx/compose/ui/text/style/ResolvedTextDirection;

.field private static pageInstance:Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;


# instance fields
.field private layoutResult:Landroidx/compose/ui/text/TextLayoutResult;

.field private node:Landroidx/compose/ui/semantics/SemanticsNode;

.field private tempRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;->Companion:Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator$Companion;

    const/16 v0, 0x8

    sput v0, Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;->$stable:I

    .line 429
    sget-object v0, Landroidx/compose/ui/text/style/ResolvedTextDirection;->Rtl:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    sput-object v0, Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;->DirectionStart:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    .line 430
    sget-object v0, Landroidx/compose/ui/text/style/ResolvedTextDirection;->Ltr:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    sput-object v0, Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;->DirectionEnd:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 426
    invoke-direct {p0}, Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;-><init>()V

    .line 442
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;->tempRect:Landroid/graphics/Rect;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;-><init>()V

    return-void
.end method

.method public static final synthetic access$getPageInstance$cp()Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;
    .locals 1

    sget-object v0, Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;->pageInstance:Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;

    return-object v0
.end method

.method public static final synthetic access$setPageInstance$cp(Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;)V
    .locals 0

    sput-object p0, Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;->pageInstance:Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;

    return-void
.end method

.method private final getLineEdgeIndex(ILandroidx/compose/ui/text/style/ResolvedTextDirection;)I
    .locals 4

    iget-object v0, p0, Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;->layoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    const-string v1, "layoutResult"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 523
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/TextLayoutResult;->getLineStart(I)I

    move-result v0

    iget-object v3, p0, Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;->layoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    if-nez v3, :cond_1

    .line 524
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_1
    invoke-virtual {v3, v0}, Landroidx/compose/ui/text/TextLayoutResult;->getParagraphDirection(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;

    move-result-object v0

    if-eq p2, v0, :cond_3

    iget-object p0, p0, Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;->layoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    if-nez p0, :cond_2

    .line 526
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v2, p0

    :goto_0
    invoke-virtual {v2, p1}, Landroidx/compose/ui/text/TextLayoutResult;->getLineStart(I)I

    move-result p0

    goto :goto_1

    :cond_3
    iget-object p0, p0, Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;->layoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    if-nez p0, :cond_4

    .line 528
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v2

    :cond_4
    const/4 p2, 0x0

    const/4 v0, 0x2

    invoke-static {p0, p1, p2, v0, v2}, Landroidx/compose/ui/text/TextLayoutResult;->getLineEnd$default(Landroidx/compose/ui/text/TextLayoutResult;IZILjava/lang/Object;)I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public following(I)[I
    .locals 5

    .line 451
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return-object v1

    .line 455
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p1, v0, :cond_1

    return-object v1

    :cond_1
    :try_start_0
    iget-object v0, p0, Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;->node:Landroidx/compose/ui/semantics/SemanticsNode;

    if-nez v0, :cond_2

    const-string v0, "node"

    .line 460
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->getBoundsInRoot()Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->getHeight()F

    move-result v0

    invoke-static {v0}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    .line 466
    invoke-static {v2, p1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p1

    iget-object v2, p0, Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;->layoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    const-string v3, "layoutResult"

    if-nez v2, :cond_3

    .line 468
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v1

    :cond_3
    invoke-virtual {v2, p1}, Landroidx/compose/ui/text/TextLayoutResult;->getLineForOffset(I)I

    move-result v2

    iget-object v4, p0, Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;->layoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    if-nez v4, :cond_4

    .line 469
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v1

    :cond_4
    invoke-virtual {v4, v2}, Landroidx/compose/ui/text/TextLayoutResult;->getLineTop(I)F

    move-result v2

    int-to-float v0, v0

    add-float/2addr v2, v0

    iget-object v0, p0, Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;->layoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    if-nez v0, :cond_5

    .line 474
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_5
    iget-object v4, p0, Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;->layoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    if-nez v4, :cond_6

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v1

    :cond_6
    invoke-virtual {v4}, Landroidx/compose/ui/text/TextLayoutResult;->getLineCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Landroidx/compose/ui/text/TextLayoutResult;->getLineTop(I)F

    move-result v0

    cmpg-float v0, v2, v0

    if-gez v0, :cond_8

    iget-object v0, p0, Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;->layoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    if-nez v0, :cond_7

    .line 476
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    move-object v1, v0

    :goto_0
    invoke-virtual {v1, v2}, Landroidx/compose/ui/text/TextLayoutResult;->getLineForVerticalPosition(F)I

    move-result v0

    goto :goto_2

    :cond_8
    iget-object v0, p0, Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;->layoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    if-nez v0, :cond_9

    .line 477
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    move-object v1, v0

    :goto_1
    invoke-virtual {v1}, Landroidx/compose/ui/text/TextLayoutResult;->getLineCount()I

    move-result v0

    :goto_2
    add-int/lit8 v0, v0, -0x1

    sget-object v1, Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;->DirectionEnd:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    .line 479
    invoke-direct {p0, v0, v1}, Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;->getLineEdgeIndex(ILandroidx/compose/ui/text/style/ResolvedTextDirection;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 481
    invoke-virtual {p0, p1, v0}, Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;->getRange(II)[I

    move-result-object p0

    return-object p0

    :catch_0
    return-object v1
.end method

.method public final initialize(Ljava/lang/String;Landroidx/compose/ui/text/TextLayoutResult;Landroidx/compose/ui/semantics/SemanticsNode;)V
    .locals 1

    const-string/jumbo v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutResult"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "node"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 445
    invoke-virtual {p0, p1}, Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;->setText(Ljava/lang/String;)V

    iput-object p2, p0, Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;->layoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    iput-object p3, p0, Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;->node:Landroidx/compose/ui/semantics/SemanticsNode;

    return-void
.end method

.method public preceding(I)[I
    .locals 5

    .line 485
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return-object v1

    :cond_0
    if-gtz p1, :cond_1

    return-object v1

    :cond_1
    :try_start_0
    iget-object v0, p0, Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;->node:Landroidx/compose/ui/semantics/SemanticsNode;

    if-nez v0, :cond_2

    const-string v0, "node"

    .line 494
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->getBoundsInRoot()Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->getHeight()F

    move-result v0

    invoke-static {v0}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 500
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2, p1}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result p1

    iget-object v2, p0, Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;->layoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    const-string v3, "layoutResult"

    if-nez v2, :cond_3

    .line 502
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v1

    :cond_3
    invoke-virtual {v2, p1}, Landroidx/compose/ui/text/TextLayoutResult;->getLineForOffset(I)I

    move-result v2

    iget-object v4, p0, Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;->layoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    if-nez v4, :cond_4

    .line 503
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v1

    :cond_4
    invoke-virtual {v4, v2}, Landroidx/compose/ui/text/TextLayoutResult;->getLineTop(I)F

    move-result v4

    int-to-float v0, v0

    sub-float/2addr v4, v0

    const/4 v0, 0x0

    cmpl-float v0, v4, v0

    if-lez v0, :cond_6

    iget-object v0, p0, Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;->layoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    if-nez v0, :cond_5

    .line 510
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object v1, v0

    :goto_0
    invoke-virtual {v1, v4}, Landroidx/compose/ui/text/TextLayoutResult;->getLineForVerticalPosition(F)I

    move-result v0

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    .line 513
    :goto_1
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne p1, v1, :cond_7

    if-ge v0, v2, :cond_7

    add-int/lit8 v0, v0, 0x1

    :cond_7
    sget-object v1, Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;->DirectionStart:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    .line 517
    invoke-direct {p0, v0, v1}, Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;->getLineEdgeIndex(ILandroidx/compose/ui/text/style/ResolvedTextDirection;)I

    move-result v0

    .line 519
    invoke-virtual {p0, v0, p1}, Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;->getRange(II)[I

    move-result-object p0

    return-object p0

    :catch_0
    return-object v1
.end method
