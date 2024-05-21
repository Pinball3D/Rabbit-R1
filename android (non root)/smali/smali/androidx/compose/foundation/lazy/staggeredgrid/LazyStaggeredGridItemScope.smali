.class public interface abstract Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemScope;
.super Ljava/lang/Object;
.source "LazyStaggeredGridItemScope.kt"


# annotations
.annotation runtime Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScopeMarker;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008w\u0018\u00002\u00020\u0001J\u001f\u0010\u0002\u001a\u00020\u0003*\u00020\u00032\u000e\u0008\u0002\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\'\u00f8\u0001\u0000\u0082\u0001\u0001\u0007\u00f8\u0001\u0001\u0082\u0002\n\n\u0002\u0008\u0019\n\u0004\u0008!0\u0001\u00a8\u0006\u0008\u00c0\u0006\u0001"
    }
    d2 = {
        "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemScope;",
        "",
        "animateItemPlacement",
        "Landroidx/compose/ui/Modifier;",
        "animationSpec",
        "Landroidx/compose/animation/core/FiniteAnimationSpec;",
        "Landroidx/compose/ui/unit/IntOffset;",
        "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemScopeImpl;",
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
.method public static synthetic animateItemPlacement$default(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemScope;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/FiniteAnimationSpec;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 2

    if-nez p4, :cond_1

    const/4 p4, 0x1

    and-int/2addr p3, p4

    if-eqz p3, :cond_0

    .line 56
    sget-object p2, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    invoke-static {p2}, Landroidx/compose/animation/core/VisibilityThresholdsKt;->getVisibilityThreshold(Landroidx/compose/ui/unit/IntOffset$Companion;)J

    move-result-wide p2

    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->box-impl(J)Landroidx/compose/ui/unit/IntOffset;

    move-result-object p2

    const/4 p3, 0x0

    const/4 v0, 0x0

    const/high16 v1, 0x43c80000    # 400.0f

    .line 54
    invoke-static {v0, v1, p2, p4, p3}, Landroidx/compose/animation/core/AnimationSpecKt;->spring$default(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    move-result-object p2

    check-cast p2, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 53
    :cond_0
    invoke-interface {p0, p1, p2}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemScope;->animateItemPlacement(Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/FiniteAnimationSpec;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: animateItemPlacement"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract animateItemPlacement(Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/FiniteAnimationSpec;)Landroidx/compose/ui/Modifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Landroidx/compose/ui/unit/IntOffset;",
            ">;)",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation
.end method
