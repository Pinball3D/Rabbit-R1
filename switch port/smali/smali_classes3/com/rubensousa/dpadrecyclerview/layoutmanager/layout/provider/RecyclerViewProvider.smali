.class public final Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/provider/RecyclerViewProvider;
.super Ljava/lang/Object;
.source "RecyclerViewProvider.kt"

# interfaces
.implements Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/provider/ViewProvider;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0006\u001a\u00020\u0007J\u0018\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0012\u0010\u0010\u001a\u00020\u00072\n\u0010\u0003\u001a\u00060\u0004R\u00020\u0005R\u0014\u0010\u0003\u001a\u0008\u0018\u00010\u0004R\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/provider/RecyclerViewProvider;",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/provider/ViewProvider;",
        "()V",
        "recycler",
        "Landroidx/recyclerview/widget/RecyclerView$Recycler;",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "clearRecycler",
        "",
        "hasNext",
        "",
        "layoutRequest",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;",
        "state",
        "Landroidx/recyclerview/widget/RecyclerView$State;",
        "next",
        "Landroid/view/View;",
        "updateRecycler",
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
.field private recycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final clearRecycler()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/provider/RecyclerViewProvider;->recycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    return-void
.end method

.method public hasNext(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;Landroidx/recyclerview/widget/RecyclerView$State;)Z
    .locals 1

    const-string v0, "layoutRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/provider/RecyclerViewProvider;->recycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 37
    :cond_0
    invoke-virtual {p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->getCurrentPosition()I

    move-result p0

    if-ltz p0, :cond_1

    invoke-virtual {p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->getCurrentPosition()I

    move-result p0

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    if-ge p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public next(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;Landroidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;
    .locals 1

    const-string v0, "layoutRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/provider/RecyclerViewProvider;->recycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    if-eqz p0, :cond_0

    .line 41
    invoke-virtual {p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->getCurrentPosition()I

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object p0

    const-string p2, "getViewForPosition(...)"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->moveToNextPosition()V

    return-object p0

    .line 41
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value was null."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final updateRecycler(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 1

    const-string v0, "recycler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/provider/RecyclerViewProvider;->recycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    return-void
.end method
