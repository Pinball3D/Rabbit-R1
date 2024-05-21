.class final Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState$firstVisibleItemScrollOffset$2;
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

    iput-object p1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState$firstVisibleItemScrollOffset$2;->this$0:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Integer;
    .locals 8

    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState$firstVisibleItemScrollOffset$2;->this$0:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;

    .line 118
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->getScrollPosition$foundation_release()Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;->getOffsets()[I

    move-result-object v0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState$firstVisibleItemScrollOffset$2;->this$0:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;

    .line 119
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->getFirstVisibleItemIndex()I

    move-result v1

    .line 120
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->getScrollPosition$foundation_release()Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;->getIndices()[I

    move-result-object p0

    .line 122
    array-length v2, v0

    const v3, 0x7fffffff

    const/4 v4, 0x0

    move v6, v3

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_1

    .line 123
    aget v7, p0, v5

    if-ne v7, v1, :cond_0

    .line 124
    aget v7, v0, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    if-ne v6, v3, :cond_2

    goto :goto_1

    :cond_2
    move v4, v6

    .line 127
    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 117
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState$firstVisibleItemScrollOffset$2;->invoke()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
