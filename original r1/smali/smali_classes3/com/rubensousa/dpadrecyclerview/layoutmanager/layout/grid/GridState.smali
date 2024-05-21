.class public final Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/grid/GridState;
.super Ljava/lang/Object;
.source "GridState.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\t\u001a\u00020\nJ\u000e\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000cJ\u000e\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000cJ\u000e\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000cJ\u0006\u0010\u0010\u001a\u00020\nR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/grid/GridState;",
        "",
        "layoutManager",
        "Landroidx/recyclerview/widget/RecyclerView$LayoutManager;",
        "(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V",
        "preLayoutSpanGroupIndexCache",
        "Landroid/util/SparseIntArray;",
        "preLayoutSpanIndexCache",
        "preLayoutSpanSizeCache",
        "clear",
        "",
        "getSpanGroupIndex",
        "",
        "position",
        "getSpanIndex",
        "getSpanSize",
        "save",
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
.field private final layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

.field private final preLayoutSpanGroupIndexCache:Landroid/util/SparseIntArray;

.field private final preLayoutSpanIndexCache:Landroid/util/SparseIntArray;

.field private final preLayoutSpanSizeCache:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 1

    const-string v0, "layoutManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/grid/GridState;->layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 25
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/grid/GridState;->preLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    .line 26
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/grid/GridState;->preLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    .line 27
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/grid/GridState;->preLayoutSpanGroupIndexCache:Landroid/util/SparseIntArray;

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/grid/GridState;->preLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    .line 54
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/grid/GridState;->preLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    .line 55
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public final getSpanGroupIndex(I)I
    .locals 1

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/grid/GridState;->preLayoutSpanGroupIndexCache:Landroid/util/SparseIntArray;

    const/4 v0, -0x1

    .line 30
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    return p0
.end method

.method public final getSpanIndex(I)I
    .locals 1

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/grid/GridState;->preLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    const/4 v0, -0x1

    .line 34
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    return p0
.end method

.method public final getSpanSize(I)I
    .locals 1

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/grid/GridState;->preLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    const/4 v0, -0x1

    .line 38
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    return p0
.end method

.method public final save()V
    .locals 6

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/grid/GridState;->layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 42
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/grid/GridState;->layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 44
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 45
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type com.rubensousa.dpadrecyclerview.layoutmanager.DpadLayoutParams"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/rubensousa/dpadrecyclerview/layoutmanager/DpadLayoutParams;

    .line 46
    invoke-virtual {v2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/DpadLayoutParams;->getViewLayoutPosition()I

    move-result v3

    iget-object v4, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/grid/GridState;->preLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    .line 47
    invoke-virtual {v2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/DpadLayoutParams;->getSpanSize()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v4, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/grid/GridState;->preLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    .line 48
    invoke-virtual {v2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/DpadLayoutParams;->getSpanIndex()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v4, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/grid/GridState;->preLayoutSpanGroupIndexCache:Landroid/util/SparseIntArray;

    .line 49
    invoke-virtual {v2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/DpadLayoutParams;->getSpanGroupIndex()I

    move-result v2

    invoke-virtual {v4, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
