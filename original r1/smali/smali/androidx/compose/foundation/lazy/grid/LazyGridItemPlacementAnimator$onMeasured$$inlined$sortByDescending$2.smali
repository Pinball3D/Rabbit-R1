.class public final Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator$onMeasured$$inlined$sortByDescending$2;
.super Ljava/lang/Object;
.source "Comparisons.kt"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->onMeasured(IIILjava/util/List;Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt$compareByDescending$1\n+ 2 LazyGridItemPlacementAnimator.kt\nandroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator\n*L\n1#1,328:1\n200#2:329\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u00022\u000e\u0010\u0003\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u00022\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u0002H\n\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "a",
        "kotlin.jvm.PlatformType",
        "b",
        "compare",
        "(Ljava/lang/Object;Ljava/lang/Object;)I",
        "kotlin/comparisons/ComparisonsKt__ComparisonsKt$compareByDescending$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator$onMeasured$$inlined$sortByDescending$2;->this$0:Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 121
    check-cast p2, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator$onMeasured$$inlined$sortByDescending$2;->this$0:Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;

    .line 329
    invoke-static {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->access$getKeyIndexMap$p(Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;)Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    move-result-object v0

    invoke-virtual {p2}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;->getIndex(Ljava/lang/Object;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 121
    check-cast p2, Ljava/lang/Comparable;

    check-cast p1, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator$onMeasured$$inlined$sortByDescending$2;->this$0:Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;

    .line 329
    invoke-static {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->access$getKeyIndexMap$p(Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;)Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    move-result-object p0

    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;->getIndex(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 121
    check-cast p0, Ljava/lang/Comparable;

    invoke-static {p2, p0}, Lkotlin/comparisons/ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    return p0
.end method
