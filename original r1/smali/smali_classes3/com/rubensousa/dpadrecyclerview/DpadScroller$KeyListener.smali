.class final Lcom/rubensousa/dpadrecyclerview/DpadScroller$KeyListener;
.super Ljava/lang/Object;
.source "DpadScroller.kt"

# interfaces
.implements Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$OnKeyInterceptListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rubensousa/dpadrecyclerview/DpadScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "KeyListener"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0018\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0018\u0010\n\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u0006H\u0002\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/rubensousa/dpadrecyclerview/DpadScroller$KeyListener;",
        "Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$OnKeyInterceptListener;",
        "(Lcom/rubensousa/dpadrecyclerview/DpadScroller;)V",
        "onInterceptKeyEvent",
        "",
        "event",
        "Landroid/view/KeyEvent;",
        "scrollHorizontally",
        "recyclerView",
        "Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;",
        "scrollVertically",
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
.field final synthetic this$0:Lcom/rubensousa/dpadrecyclerview/DpadScroller;


# direct methods
.method public constructor <init>(Lcom/rubensousa/dpadrecyclerview/DpadScroller;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/rubensousa/dpadrecyclerview/DpadScroller$KeyListener;->this$0:Lcom/rubensousa/dpadrecyclerview/DpadScroller;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final scrollHorizontally(Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;Landroid/view/KeyEvent;)Z
    .locals 4

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/DpadScroller$KeyListener;->this$0:Lcom/rubensousa/dpadrecyclerview/DpadScroller;

    .line 107
    invoke-static {v0}, Lcom/rubensousa/dpadrecyclerview/DpadScroller;->access$getCalculator$p(Lcom/rubensousa/dpadrecyclerview/DpadScroller;)Lcom/rubensousa/dpadrecyclerview/DpadScroller$ScrollDistanceCalculator;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/rubensousa/dpadrecyclerview/DpadScroller$ScrollDistanceCalculator;->calculateScrollDistance(Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;Landroid/view/KeyEvent;)I

    move-result v0

    .line 108
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    const/16 v1, 0x15

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p2, v1, :cond_2

    const/16 v1, 0x16

    if-eq p2, v1, :cond_0

    return v3

    :cond_0
    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/DpadScroller$KeyListener;->this$0:Lcom/rubensousa/dpadrecyclerview/DpadScroller;

    .line 110
    invoke-static {p0}, Lcom/rubensousa/dpadrecyclerview/DpadScroller;->access$getSmoothScrollEnabled$p(Lcom/rubensousa/dpadrecyclerview/DpadScroller;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 111
    invoke-virtual {p1, v3, v0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->smoothScrollBy(II)V

    goto :goto_0

    .line 113
    :cond_1
    invoke-virtual {p1, v3, v0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->scrollBy(II)V

    :goto_0
    return v2

    :cond_2
    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/DpadScroller$KeyListener;->this$0:Lcom/rubensousa/dpadrecyclerview/DpadScroller;

    .line 119
    invoke-static {p0}, Lcom/rubensousa/dpadrecyclerview/DpadScroller;->access$getSmoothScrollEnabled$p(Lcom/rubensousa/dpadrecyclerview/DpadScroller;)Z

    move-result p0

    if-eqz p0, :cond_3

    neg-int p0, v0

    .line 120
    invoke-virtual {p1, v3, p0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->smoothScrollBy(II)V

    goto :goto_1

    :cond_3
    neg-int p0, v0

    .line 122
    invoke-virtual {p1, v3, p0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->scrollBy(II)V

    :goto_1
    return v2
.end method

.method private final scrollVertically(Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;Landroid/view/KeyEvent;)Z
    .locals 4

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/DpadScroller$KeyListener;->this$0:Lcom/rubensousa/dpadrecyclerview/DpadScroller;

    .line 83
    invoke-static {v0}, Lcom/rubensousa/dpadrecyclerview/DpadScroller;->access$getCalculator$p(Lcom/rubensousa/dpadrecyclerview/DpadScroller;)Lcom/rubensousa/dpadrecyclerview/DpadScroller$ScrollDistanceCalculator;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/rubensousa/dpadrecyclerview/DpadScroller$ScrollDistanceCalculator;->calculateScrollDistance(Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;Landroid/view/KeyEvent;)I

    move-result v0

    .line 84
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    const/16 v1, 0x13

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p2, v1, :cond_2

    const/16 v1, 0x14

    if-eq p2, v1, :cond_0

    return v3

    :cond_0
    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/DpadScroller$KeyListener;->this$0:Lcom/rubensousa/dpadrecyclerview/DpadScroller;

    .line 86
    invoke-static {p0}, Lcom/rubensousa/dpadrecyclerview/DpadScroller;->access$getSmoothScrollEnabled$p(Lcom/rubensousa/dpadrecyclerview/DpadScroller;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 87
    invoke-virtual {p1, v3, v0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->smoothScrollBy(II)V

    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {p1, v3, v0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->scrollBy(II)V

    :goto_0
    return v2

    :cond_2
    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/DpadScroller$KeyListener;->this$0:Lcom/rubensousa/dpadrecyclerview/DpadScroller;

    .line 95
    invoke-static {p0}, Lcom/rubensousa/dpadrecyclerview/DpadScroller;->access$getSmoothScrollEnabled$p(Lcom/rubensousa/dpadrecyclerview/DpadScroller;)Z

    move-result p0

    if-eqz p0, :cond_3

    neg-int p0, v0

    .line 96
    invoke-virtual {p1, v3, p0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->smoothScrollBy(II)V

    goto :goto_1

    :cond_3
    neg-int p0, v0

    .line 98
    invoke-virtual {p1, v3, p0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->scrollBy(II)V

    :goto_1
    return v2
.end method


# virtual methods
.method public onInterceptKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/DpadScroller$KeyListener;->this$0:Lcom/rubensousa/dpadrecyclerview/DpadScroller;

    .line 69
    invoke-static {v0}, Lcom/rubensousa/dpadrecyclerview/DpadScroller;->access$getRecyclerView$p(Lcom/rubensousa/dpadrecyclerview/DpadScroller;)Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 70
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    .line 72
    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->getOrientation()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 73
    invoke-direct {p0, v0, p1}, Lcom/rubensousa/dpadrecyclerview/DpadScroller$KeyListener;->scrollVertically(Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;Landroid/view/KeyEvent;)Z

    move-result p0

    goto :goto_0

    .line 75
    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/rubensousa/dpadrecyclerview/DpadScroller$KeyListener;->scrollHorizontally(Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;Landroid/view/KeyEvent;)Z

    move-result p0

    :goto_0
    return p0

    :cond_2
    return v1
.end method
