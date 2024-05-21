.class public final Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt;
.super Ljava/lang/Object;
.source "LazyAnimateScroll.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyAnimateScroll.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyAnimateScroll.kt\nandroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,268:1\n154#2:269\n154#2:270\n154#2:271\n*S KotlinDebug\n*F\n+ 1 LazyAnimateScroll.kt\nandroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt\n*L\n34#1:269\n35#1:270\n36#1:271\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u001a\u0017\u0010\u0007\u001a\u00020\u00082\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH\u0082\u0008\u001a%\u0010\u000c\u001a\u00020\u0008*\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0080@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0011\"\u0013\u0010\u0000\u001a\u00020\u0001X\u0082\u0004\u00f8\u0001\u0000\u00a2\u0006\u0004\n\u0002\u0010\u0002\"\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\"\u0013\u0010\u0005\u001a\u00020\u0001X\u0082\u0004\u00f8\u0001\u0000\u00a2\u0006\u0004\n\u0002\u0010\u0002\"\u0013\u0010\u0006\u001a\u00020\u0001X\u0082\u0004\u00f8\u0001\u0000\u00a2\u0006\u0004\n\u0002\u0010\u0002\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0012"
    }
    d2 = {
        "BoundDistance",
        "Landroidx/compose/ui/unit/Dp;",
        "F",
        "DEBUG",
        "",
        "MinimumDistance",
        "TargetDistance",
        "debugLog",
        "",
        "generateMsg",
        "Lkotlin/Function0;",
        "",
        "animateScrollToItem",
        "Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollScope;",
        "index",
        "",
        "scrollOffset",
        "(Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollScope;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "foundation_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final BoundDistance:F

.field private static final DEBUG:Z = false

.field private static final MinimumDistance:F

.field private static final TargetDistance:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9c4

    int-to-float v0, v0

    .line 269
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt;->TargetDistance:F

    const/16 v0, 0x5dc

    int-to-float v0, v0

    .line 270
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt;->BoundDistance:F

    const/16 v0, 0x32

    int-to-float v0, v0

    .line 271
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt;->MinimumDistance:F

    return-void
.end method

.method public static final synthetic access$getBoundDistance$p()F
    .locals 1

    sget v0, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt;->BoundDistance:F

    return v0
.end method

.method public static final synthetic access$getMinimumDistance$p()F
    .locals 1

    sget v0, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt;->MinimumDistance:F

    return v0
.end method

.method public static final synthetic access$getTargetDistance$p()F
    .locals 1

    sget v0, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt;->TargetDistance:F

    return v0
.end method

.method public static final animateScrollToItem(Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollScope;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollScope;",
            "II",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 76
    new-instance v0, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, p2, v1}, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;-><init>(ILandroidx/compose/foundation/lazy/layout/LazyAnimateScrollScope;ILkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {p0, v0, p3}, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollScope;->scroll(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final debugLog(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
