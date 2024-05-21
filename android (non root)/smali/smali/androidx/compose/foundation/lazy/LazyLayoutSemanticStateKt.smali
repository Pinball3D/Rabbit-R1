.class public final Landroidx/compose/foundation/lazy/LazyLayoutSemanticStateKt;
.super Ljava/lang/Object;
.source "LazyLayoutSemanticState.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u001a\u0018\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0000\u00a8\u0006\u0006"
    }
    d2 = {
        "LazyLayoutSemanticState",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;",
        "state",
        "Landroidx/compose/foundation/lazy/LazyListState;",
        "isVertical",
        "",
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
.method public static final LazyLayoutSemanticState(Landroidx/compose/foundation/lazy/LazyListState;Z)Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;
    .locals 1

    const-string/jumbo v0, "state"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    new-instance v0, Landroidx/compose/foundation/lazy/LazyLayoutSemanticStateKt$LazyLayoutSemanticState$1;

    invoke-direct {v0, p0, p1}, Landroidx/compose/foundation/lazy/LazyLayoutSemanticStateKt$LazyLayoutSemanticState$1;-><init>(Landroidx/compose/foundation/lazy/LazyListState;Z)V

    check-cast v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;

    return-object v0
.end method
