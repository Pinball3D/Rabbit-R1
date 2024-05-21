.class public final Landroidx/compose/foundation/SystemGestureExclusionKt;
.super Ljava/lang/Object;
.source "SystemGestureExclusion.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSystemGestureExclusion.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SystemGestureExclusion.kt\nandroidx/compose/foundation/SystemGestureExclusionKt\n*L\n1#1,176:1\n69#1:177\n69#1:178\n*S KotlinDebug\n*F\n+ 1 SystemGestureExclusion.kt\nandroidx/compose/foundation/SystemGestureExclusionKt\n*L\n45#1:177\n62#1:178\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a!\u0010\u0000\u001a\u00020\u00012\u0016\u0008\u0008\u0010\u0002\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0003H\u0083\u0008\u001a\n\u0010\u0006\u001a\u00020\u0001*\u00020\u0001\u001a\u001e\u0010\u0006\u001a\u00020\u0001*\u00020\u00012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u00a8\u0006\u0007"
    }
    d2 = {
        "excludeFromSystemGestureQ",
        "Landroidx/compose/ui/Modifier;",
        "exclusion",
        "Lkotlin/Function1;",
        "Landroidx/compose/ui/layout/LayoutCoordinates;",
        "Landroidx/compose/ui/geometry/Rect;",
        "systemGestureExclusion",
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


# direct methods
.method private static final excludeFromSystemGestureQ(Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/layout/LayoutCoordinates;",
            "Landroidx/compose/ui/geometry/Rect;",
            ">;)",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    .line 69
    new-instance v0, Landroidx/compose/foundation/ExcludeFromSystemGestureElement;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/ExcludeFromSystemGestureElement;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Landroidx/compose/ui/Modifier;

    return-object v0
.end method

.method public static final systemGestureExclusion(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    new-instance v0, Landroidx/compose/foundation/ExcludeFromSystemGestureElement;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/foundation/ExcludeFromSystemGestureElement;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Landroidx/compose/ui/Modifier;

    .line 45
    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final systemGestureExclusion(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/layout/LayoutCoordinates;",
            "Landroidx/compose/ui/geometry/Rect;",
            ">;)",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exclusion"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    new-instance v0, Landroidx/compose/foundation/ExcludeFromSystemGestureElement;

    invoke-direct {v0, p1}, Landroidx/compose/foundation/ExcludeFromSystemGestureElement;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Landroidx/compose/ui/Modifier;

    .line 62
    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method
