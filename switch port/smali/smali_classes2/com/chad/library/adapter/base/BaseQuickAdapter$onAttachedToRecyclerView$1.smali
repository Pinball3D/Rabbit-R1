.class public final Lcom/chad/library/adapter/base/BaseQuickAdapter$onAttachedToRecyclerView$1;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "BaseQuickAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chad/library/adapter/base/BaseQuickAdapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "com/chad/library/adapter/base/BaseQuickAdapter$onAttachedToRecyclerView$1",
        "Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;",
        "getSpanSize",
        "",
        "position",
        "com.github.CymChad.brvah"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $defSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

.field final synthetic $manager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

.field final synthetic this$0:Lcom/chad/library/adapter/base/BaseQuickAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
            "TT;TVH;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
            "TT;TVH;>;",
            "Landroidx/recyclerview/widget/RecyclerView$LayoutManager;",
            "Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter$onAttachedToRecyclerView$1;->this$0:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    iput-object p2, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter$onAttachedToRecyclerView$1;->$manager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iput-object p3, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter$onAttachedToRecyclerView$1;->$defSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 394
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 3

    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter$onAttachedToRecyclerView$1;->this$0:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 396
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemViewType(I)I

    move-result v0

    const v1, 0x10000111

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter$onAttachedToRecyclerView$1;->this$0:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 397
    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getHeaderViewAsFlow()Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const v1, 0x10000333

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter$onAttachedToRecyclerView$1;->this$0:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 400
    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getFooterViewAsFlow()Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter$onAttachedToRecyclerView$1;->this$0:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 403
    invoke-static {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->access$getMSpanSizeLookup$p(Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lcom/chad/library/adapter/base/listener/GridSpanSizeLookup;

    move-result-object v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter$onAttachedToRecyclerView$1;->this$0:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 404
    invoke-virtual {v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->isFixedViewType(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter$onAttachedToRecyclerView$1;->$manager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    check-cast p0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p0

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter$onAttachedToRecyclerView$1;->$defSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result p0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter$onAttachedToRecyclerView$1;->this$0:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 406
    invoke-virtual {v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->isFixedViewType(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter$onAttachedToRecyclerView$1;->$manager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 407
    check-cast p0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p0

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter$onAttachedToRecyclerView$1;->this$0:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 409
    invoke-static {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->access$getMSpanSizeLookup$p(Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lcom/chad/library/adapter/base/listener/GridSpanSizeLookup;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter$onAttachedToRecyclerView$1;->$manager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    check-cast v2, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter$onAttachedToRecyclerView$1;->this$0:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result p0

    sub-int/2addr p1, p0

    invoke-interface {v1, v2, v0, p1}, Lcom/chad/library/adapter/base/listener/GridSpanSizeLookup;->getSpanSize(Landroidx/recyclerview/widget/GridLayoutManager;II)I

    move-result p0

    :goto_0
    return p0
.end method
