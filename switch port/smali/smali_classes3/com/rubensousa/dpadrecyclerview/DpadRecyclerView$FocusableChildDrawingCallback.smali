.class final Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$FocusableChildDrawingCallback;
.super Ljava/lang/Object;
.source "DpadRecyclerView.kt"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FocusableChildDrawingCallback"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$FocusableChildDrawingCallback;",
        "Landroidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;",
        "(Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;)V",
        "onGetChildDrawingOrder",
        "",
        "childCount",
        "i",
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
.field final synthetic this$0:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;


# direct methods
.method public constructor <init>(Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$FocusableChildDrawingCallback;->this$0:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;

    .line 1263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetChildDrawingOrder(II)I
    .locals 2

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$FocusableChildDrawingCallback;->this$0:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;

    .line 1266
    invoke-static {v0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->access$getPivotLayoutManager$p(Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;)Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->getSelectedPosition()I

    move-result v0

    iget-object v1, p0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$FocusableChildDrawingCallback;->this$0:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;

    .line 1267
    invoke-static {v1}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->access$getPivotLayoutManager$p(Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;)Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$FocusableChildDrawingCallback;->this$0:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;

    .line 1268
    invoke-virtual {p0, v0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result p0

    if-ge p2, p0, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, p1, -0x1

    if-ge p2, v0, :cond_2

    add-int/2addr p0, p1

    add-int/lit8 p0, p0, -0x1

    sub-int p2, p0, p2

    goto :goto_0

    :cond_2
    move p2, p0

    :cond_3
    :goto_0
    return p2
.end method
