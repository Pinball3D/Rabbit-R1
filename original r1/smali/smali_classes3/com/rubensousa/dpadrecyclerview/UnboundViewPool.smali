.class public final Lcom/rubensousa/dpadrecyclerview/UnboundViewPool;
.super Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;
.source "UnboundViewPool.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016J\u0016\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00060\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0002J\u0012\u0010\r\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0010\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0010\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u0006H\u0016J\u0018\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0012\u001a\u00020\u000cH\u0016R\u001a\u0010\u0003\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/rubensousa/dpadrecyclerview/UnboundViewPool;",
        "Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;",
        "()V",
        "viewHolderQueues",
        "Landroidx/collection/SparseArrayCompat;",
        "Ljava/util/LinkedList;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "clear",
        "",
        "getOrCreateQueue",
        "Ljava/util/Queue;",
        "viewType",
        "",
        "getRecycledView",
        "getRecycledViewCount",
        "putRecycledView",
        "viewHolder",
        "setMaxRecycledViews",
        "max",
        "dpadrecyclerview_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final viewHolderQueues:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Ljava/util/LinkedList<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 31
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;-><init>()V

    .line 33
    new-instance v0, Landroidx/collection/SparseArrayCompat;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/SparseArrayCompat;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/rubensousa/dpadrecyclerview/UnboundViewPool;->viewHolderQueues:Landroidx/collection/SparseArrayCompat;

    return-void
.end method

.method private final getOrCreateQueue(I)Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Queue<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/UnboundViewPool;->viewHolderQueues:Landroidx/collection/SparseArrayCompat;

    .line 56
    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/UnboundViewPool;->viewHolderQueues:Landroidx/collection/SparseArrayCompat;

    .line 59
    invoke-virtual {p0, p1, v0}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 61
    :cond_0
    check-cast v0, Ljava/util/Queue;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/UnboundViewPool;->viewHolderQueues:Landroidx/collection/SparseArrayCompat;

    .line 36
    invoke-virtual {p0}, Landroidx/collection/SparseArrayCompat;->clear()V

    return-void
.end method

.method public getRecycledView(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/UnboundViewPool;->viewHolderQueues:Landroidx/collection/SparseArrayCompat;

    .line 44
    invoke-virtual {p0, p1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/LinkedList;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getRecycledViewCount(I)I
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/UnboundViewPool;->viewHolderQueues:Landroidx/collection/SparseArrayCompat;

    .line 48
    invoke-virtual {p0, p1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/LinkedList;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public putRecycledView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/rubensousa/dpadrecyclerview/UnboundViewPool;->getOrCreateQueue(I)Ljava/util/Queue;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setMaxRecycledViews(II)V
    .locals 0

    return-void
.end method
