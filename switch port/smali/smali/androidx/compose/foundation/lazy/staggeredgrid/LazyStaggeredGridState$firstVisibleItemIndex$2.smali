.class final Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState$firstVisibleItemIndex$2;
.super Lkotlin/jvm/internal/Lambda;
.source "LazyStaggeredGridState.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;-><init>([I[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "()Ljava/lang/Integer;"
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
.field final synthetic this$0:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState$firstVisibleItemIndex$2;->this$0:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Integer;
    .locals 6

    iget-object p0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState$firstVisibleItemIndex$2;->this$0:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;

    .line 104
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->getScrollPosition$foundation_release()Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;->getIndices()[I

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    aget v0, p0, v1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    move v0, v1

    .line 107
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 104
    check-cast v0, Ljava/lang/Comparable;

    new-instance v3, Lkotlin/ranges/IntRange;

    const/4 v4, 0x1

    invoke-static {p0}, Lkotlin/collections/ArraysKt;->getLastIndex([I)I

    move-result v5

    invoke-direct {v3, v4, v5}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-virtual {v3}, Lkotlin/ranges/IntRange;->iterator()Lkotlin/collections/IntIterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-virtual {v3}, Lkotlin/collections/IntIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v4

    aget v4, p0, v4

    if-ne v4, v2, :cond_3

    move v4, v1

    .line 107
    :cond_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 104
    check-cast v4, Ljava/lang/Comparable;

    invoke-interface {v0, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_2

    move-object v0, v4

    goto :goto_0

    :cond_4
    move-object p0, v0

    :goto_1
    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 108
    :cond_5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 103
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState$firstVisibleItemIndex$2;->invoke()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
