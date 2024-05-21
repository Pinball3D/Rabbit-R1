.class final Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState$Companion;
.super Ljava/lang/Object;
.source "LazyLayoutNearestRangeState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0082\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u0006H\u0002\u00a8\u0006\t"
    }
    d2 = {
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState$Companion;",
        "",
        "()V",
        "calculateNearestItemsRange",
        "Lkotlin/ranges/IntRange;",
        "firstVisibleItem",
        "",
        "slidingWindowSize",
        "extraItemCount",
        "foundation_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$calculateNearestItemsRange(Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState$Companion;III)Lkotlin/ranges/IntRange;
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState$Companion;->calculateNearestItemsRange(III)Lkotlin/ranges/IntRange;

    move-result-object p0

    return-object p0
.end method

.method private final calculateNearestItemsRange(III)Lkotlin/ranges/IntRange;
    .locals 1

    .line 57
    div-int/2addr p1, p2

    mul-int/2addr p1, p2

    sub-int p0, p1, p3

    const/4 v0, 0x0

    .line 59
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    add-int/2addr p1, p2

    add-int/2addr p1, p3

    .line 61
    invoke-static {p0, p1}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object p0

    return-object p0
.end method
