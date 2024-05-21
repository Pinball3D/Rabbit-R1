.class final Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher_androidKt$LazyLayoutPrefetcher$2;
.super Lkotlin/jvm/internal/Lambda;
.source "LazyLayoutPrefetcher.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher_androidKt;->LazyLayoutPrefetcher(Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;Landroidx/compose/ui/layout/SubcomposeLayoutState;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $$changed:I

.field final synthetic $itemContentFactory:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;

.field final synthetic $prefetchState:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

.field final synthetic $subcomposeLayoutState:Landroidx/compose/ui/layout/SubcomposeLayoutState;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;Landroidx/compose/ui/layout/SubcomposeLayoutState;I)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher_androidKt$LazyLayoutPrefetcher$2;->$prefetchState:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    iput-object p2, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher_androidKt$LazyLayoutPrefetcher$2;->$itemContentFactory:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;

    iput-object p3, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher_androidKt$LazyLayoutPrefetcher$2;->$subcomposeLayoutState:Landroidx/compose/ui/layout/SubcomposeLayoutState;

    iput p4, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher_androidKt$LazyLayoutPrefetcher$2;->$$changed:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher_androidKt$LazyLayoutPrefetcher$2;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 2

    iget-object p2, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher_androidKt$LazyLayoutPrefetcher$2;->$prefetchState:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher_androidKt$LazyLayoutPrefetcher$2;->$itemContentFactory:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;

    iget-object v1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher_androidKt$LazyLayoutPrefetcher$2;->$subcomposeLayoutState:Landroidx/compose/ui/layout/SubcomposeLayoutState;

    iget p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher_androidKt$LazyLayoutPrefetcher$2;->$$changed:I

    or-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result p0

    invoke-static {p2, v0, v1, p1, p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher_androidKt;->LazyLayoutPrefetcher(Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;Landroidx/compose/ui/layout/SubcomposeLayoutState;Landroidx/compose/runtime/Composer;I)V

    return-void
.end method
