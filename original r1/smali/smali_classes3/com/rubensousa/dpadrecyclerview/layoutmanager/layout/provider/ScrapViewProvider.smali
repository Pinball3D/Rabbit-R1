.class public final Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/provider/ScrapViewProvider;
.super Ljava/lang/Object;
.source "ScrapViewProvider.kt"

# interfaces
.implements Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/provider/ViewProvider;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScrapViewProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScrapViewProvider.kt\ncom/rubensousa/dpadrecyclerview/layoutmanager/layout/provider/ScrapViewProvider\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 SparseArray.kt\nandroidx/collection/SparseArrayKt\n*L\n1#1,96:1\n1855#2,2:97\n62#3,4:99\n*S KotlinDebug\n*F\n+ 1 ScrapViewProvider.kt\ncom/rubensousa/dpadrecyclerview/layoutmanager/layout/provider/ScrapViewProvider\n*L\n56#1:97,2\n84#1:99,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\u0008H\u0002J\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004J\u0018\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0007\u001a\u00020\u0008J\u0016\u0010\u0012\u001a\u00020\u00112\u000e\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0014R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/provider/ScrapViewProvider;",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/provider/ViewProvider;",
        "()V",
        "scrap",
        "Landroidx/collection/SparseArrayCompat;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "findNextViewHolder",
        "layoutRequest",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;",
        "getScrap",
        "hasNext",
        "",
        "state",
        "Landroidx/recyclerview/widget/RecyclerView$State;",
        "next",
        "Landroid/view/View;",
        "setNextLayoutPosition",
        "",
        "updateScrap",
        "newScrap",
        "",
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
.field private final scrap:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroidx/collection/SparseArrayCompat;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/SparseArrayCompat;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/provider/ScrapViewProvider;->scrap:Landroidx/collection/SparseArrayCompat;

    return-void
.end method

.method private final findNextViewHolder(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 7

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/provider/ScrapViewProvider;->scrap:Landroidx/collection/SparseArrayCompat;

    .line 78
    invoke-virtual {p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/provider/ScrapViewProvider;->scrap:Landroidx/collection/SparseArrayCompat;

    .line 99
    invoke-virtual {p0}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 100
    invoke-virtual {p0, v3}, Landroidx/collection/SparseArrayCompat;->keyAt(I)I

    move-result v4

    invoke-virtual {p0, v3}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 85
    invoke-virtual {p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->getCurrentPosition()I

    move-result v6

    sub-int/2addr v4, v6

    .line 86
    invoke-virtual {p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->getCurrentItemDirection()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;

    move-result-object v6

    invoke-virtual {v6}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;->getValue()I

    move-result v6

    mul-int/2addr v4, v6

    if-ltz v4, :cond_1

    if-ge v4, v2, :cond_1

    move v2, v4

    move-object v1, v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method


# virtual methods
.method public final getScrap()Landroidx/collection/SparseArrayCompat;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/SparseArrayCompat<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/provider/ScrapViewProvider;->scrap:Landroidx/collection/SparseArrayCompat;

    return-object p0
.end method

.method public hasNext(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;Landroidx/recyclerview/widget/RecyclerView$State;)Z
    .locals 2

    const-string v0, "layoutRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/provider/ScrapViewProvider;->scrap:Landroidx/collection/SparseArrayCompat;

    .line 35
    invoke-virtual {p2}, Landroidx/collection/SparseArrayCompat;->isEmpty()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    return v0

    .line 38
    :cond_0
    invoke-direct {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/provider/ScrapViewProvider;->findNextViewHolder(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    if-nez p2, :cond_1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/provider/ScrapViewProvider;->scrap:Landroidx/collection/SparseArrayCompat;

    .line 42
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/collection/SparseArrayCompat;->remove(I)V

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/provider/ScrapViewProvider;->scrap:Landroidx/collection/SparseArrayCompat;

    .line 43
    invoke-virtual {p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->getCurrentPosition()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public next(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;Landroidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;
    .locals 2

    const-string v0, "layoutRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/provider/ScrapViewProvider;->findNextViewHolder(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/provider/ScrapViewProvider;->scrap:Landroidx/collection/SparseArrayCompat;

    .line 49
    invoke-virtual {p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/collection/SparseArrayCompat;->remove(I)V

    .line 50
    invoke-virtual {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/provider/ScrapViewProvider;->setNextLayoutPosition(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;)V

    .line 51
    iget-object p0, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string p1, "itemView"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 48
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public final setNextLayoutPosition(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;)V
    .locals 1

    const-string v0, "layoutRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-direct {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/provider/ScrapViewProvider;->findNextViewHolder(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    .line 67
    invoke-virtual {p1, p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->setCurrentPosition(I)V

    return-void

    .line 70
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->setCurrentPosition(I)V

    return-void
.end method

.method public final updateScrap(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/provider/ScrapViewProvider;->scrap:Landroidx/collection/SparseArrayCompat;

    .line 55
    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->clear()V

    if-eqz p1, :cond_1

    .line 56
    check-cast p1, Ljava/lang/Iterable;

    .line 97
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 57
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView.LayoutParams"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 58
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/provider/ScrapViewProvider;->scrap:Landroidx/collection/SparseArrayCompat;

    .line 59
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method
