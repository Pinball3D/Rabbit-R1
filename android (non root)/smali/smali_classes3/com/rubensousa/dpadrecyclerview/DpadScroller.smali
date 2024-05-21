.class public final Lcom/rubensousa/dpadrecyclerview/DpadScroller;
.super Ljava/lang/Object;
.source "DpadScroller.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rubensousa/dpadrecyclerview/DpadScroller$DefaultScrollDistanceCalculator;,
        Lcom/rubensousa/dpadrecyclerview/DpadScroller$KeyListener;,
        Lcom/rubensousa/dpadrecyclerview/DpadScroller$ScrollDistanceCalculator;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001:\u0003\u0010\u0011\u0012B\u000f\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u0008J\u0006\u0010\r\u001a\u00020\u000cJ\u000e\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\nR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u00060\u0006R\u00020\u0000X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/rubensousa/dpadrecyclerview/DpadScroller;",
        "",
        "calculator",
        "Lcom/rubensousa/dpadrecyclerview/DpadScroller$ScrollDistanceCalculator;",
        "(Lcom/rubensousa/dpadrecyclerview/DpadScroller$ScrollDistanceCalculator;)V",
        "keyListener",
        "Lcom/rubensousa/dpadrecyclerview/DpadScroller$KeyListener;",
        "recyclerView",
        "Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;",
        "smoothScrollEnabled",
        "",
        "attach",
        "",
        "detach",
        "setSmoothScrollEnabled",
        "enabled",
        "DefaultScrollDistanceCalculator",
        "KeyListener",
        "ScrollDistanceCalculator",
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
.field private final calculator:Lcom/rubensousa/dpadrecyclerview/DpadScroller$ScrollDistanceCalculator;

.field private final keyListener:Lcom/rubensousa/dpadrecyclerview/DpadScroller$KeyListener;

.field private recyclerView:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;

.field private smoothScrollEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/rubensousa/dpadrecyclerview/DpadScroller;-><init>(Lcom/rubensousa/dpadrecyclerview/DpadScroller$ScrollDistanceCalculator;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/rubensousa/dpadrecyclerview/DpadScroller$ScrollDistanceCalculator;)V
    .locals 1

    const-string v0, "calculator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rubensousa/dpadrecyclerview/DpadScroller;->calculator:Lcom/rubensousa/dpadrecyclerview/DpadScroller$ScrollDistanceCalculator;

    .line 34
    new-instance p1, Lcom/rubensousa/dpadrecyclerview/DpadScroller$KeyListener;

    invoke-direct {p1, p0}, Lcom/rubensousa/dpadrecyclerview/DpadScroller$KeyListener;-><init>(Lcom/rubensousa/dpadrecyclerview/DpadScroller;)V

    iput-object p1, p0, Lcom/rubensousa/dpadrecyclerview/DpadScroller;->keyListener:Lcom/rubensousa/dpadrecyclerview/DpadScroller$KeyListener;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/rubensousa/dpadrecyclerview/DpadScroller;->smoothScrollEnabled:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/rubensousa/dpadrecyclerview/DpadScroller$ScrollDistanceCalculator;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 30
    new-instance p1, Lcom/rubensousa/dpadrecyclerview/DpadScroller$DefaultScrollDistanceCalculator;

    invoke-direct {p1}, Lcom/rubensousa/dpadrecyclerview/DpadScroller$DefaultScrollDistanceCalculator;-><init>()V

    check-cast p1, Lcom/rubensousa/dpadrecyclerview/DpadScroller$ScrollDistanceCalculator;

    .line 29
    :cond_0
    invoke-direct {p0, p1}, Lcom/rubensousa/dpadrecyclerview/DpadScroller;-><init>(Lcom/rubensousa/dpadrecyclerview/DpadScroller$ScrollDistanceCalculator;)V

    return-void
.end method

.method public static final synthetic access$getCalculator$p(Lcom/rubensousa/dpadrecyclerview/DpadScroller;)Lcom/rubensousa/dpadrecyclerview/DpadScroller$ScrollDistanceCalculator;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/DpadScroller;->calculator:Lcom/rubensousa/dpadrecyclerview/DpadScroller$ScrollDistanceCalculator;

    return-object p0
.end method

.method public static final synthetic access$getRecyclerView$p(Lcom/rubensousa/dpadrecyclerview/DpadScroller;)Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/DpadScroller;->recyclerView:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;

    return-object p0
.end method

.method public static final synthetic access$getSmoothScrollEnabled$p(Lcom/rubensousa/dpadrecyclerview/DpadScroller;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcom/rubensousa/dpadrecyclerview/DpadScroller;->smoothScrollEnabled:Z

    return p0
.end method


# virtual methods
.method public final attach(Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/DpadScroller;->detach()V

    iput-object p1, p0, Lcom/rubensousa/dpadrecyclerview/DpadScroller;->recyclerView:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;

    const/high16 v0, 0x60000

    .line 46
    invoke-virtual {p1, v0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->setDescendantFocusability(I)V

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/DpadScroller;->keyListener:Lcom/rubensousa/dpadrecyclerview/DpadScroller$KeyListener;

    .line 47
    check-cast p0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$OnKeyInterceptListener;

    invoke-virtual {p1, p0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->setOnKeyInterceptListener(Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$OnKeyInterceptListener;)V

    return-void
.end method

.method public final detach()V
    .locals 2

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/DpadScroller;->recyclerView:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x40000

    .line 54
    invoke-virtual {v0, v1}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->setDescendantFocusability(I)V

    :goto_0
    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/DpadScroller;->recyclerView:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 55
    invoke-virtual {v0, v1}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->setOnKeyInterceptListener(Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$OnKeyInterceptListener;)V

    :cond_1
    iput-object v1, p0, Lcom/rubensousa/dpadrecyclerview/DpadScroller;->recyclerView:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;

    return-void
.end method

.method public final setSmoothScrollEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/rubensousa/dpadrecyclerview/DpadScroller;->smoothScrollEnabled:Z

    return-void
.end method
