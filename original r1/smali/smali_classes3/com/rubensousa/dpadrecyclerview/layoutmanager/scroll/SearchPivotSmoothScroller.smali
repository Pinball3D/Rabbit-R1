.class public final Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;
.super Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/BaseSmoothScroller;
.source "SearchPivotSmoothScroller.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller$Companion;,
        Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller$Listener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u0000 ,2\u00020\u0001:\u0002,-B=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0002\u0010\u0010J\u000e\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016J\u0012\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0019\u001a\u00020\u0005H\u0016J$\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u0016H\u0002J\u0012\u0010\u001e\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u001c\u001a\u00020\u0005H\u0002J\u0006\u0010\u001f\u001a\u00020\u0014J\u0006\u0010 \u001a\u00020\u0014J\u000e\u0010!\u001a\u00020\u00142\u0006\u0010\"\u001a\u00020\u001bJ\u000e\u0010#\u001a\u00020\u00142\u0006\u0010$\u001a\u00020\u001bJ\u0008\u0010%\u001a\u00020\u0014H\u0014J \u0010&\u001a\u00020\u00142\u0006\u0010\'\u001a\u00020\u001b2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+H\u0014R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006."
    }
    d2 = {
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/BaseSmoothScroller;",
        "recyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "maxPendingMoves",
        "",
        "layoutInfo",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;",
        "spanFocusFinder",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/SpanFocusFinder;",
        "pivotSelector",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;",
        "alignment",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;",
        "listener",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller$Listener;",
        "(Landroidx/recyclerview/widget/RecyclerView;ILcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/SpanFocusFinder;Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller$Listener;)V",
        "movements",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PendingScrollMovements;",
        "addScrollMovement",
        "",
        "forward",
        "",
        "computeScrollVectorForPosition",
        "Landroid/graphics/PointF;",
        "targetPosition",
        "consumeGridMovements",
        "Landroid/view/View;",
        "pivotPosition",
        "consumeAll",
        "consumeOneLinearMovement",
        "consumeOneMovement",
        "onBlockLaidOut",
        "onChildCreated",
        "child",
        "onChildLaidOut",
        "view",
        "onStop",
        "onTargetFound",
        "targetView",
        "state",
        "Landroidx/recyclerview/widget/RecyclerView$State;",
        "action",
        "Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;",
        "Companion",
        "Listener",
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


# static fields
.field public static final Companion:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller$Companion;

.field public static final UNDEFINED_TARGET:I = -0x2


# instance fields
.field private final alignment:Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;

.field private final listener:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller$Listener;

.field private final movements:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PendingScrollMovements;

.field private final pivotSelector:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;

.field private final spanFocusFinder:Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/SpanFocusFinder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->Companion:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;ILcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/SpanFocusFinder;Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller$Listener;)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutInfo"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "spanFocusFinder"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pivotSelector"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "alignment"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0, p1, p3}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/BaseSmoothScroller;-><init>(Landroidx/recyclerview/widget/RecyclerView;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;)V

    iput-object p4, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->spanFocusFinder:Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/SpanFocusFinder;

    iput-object p5, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->pivotSelector:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;

    iput-object p6, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->alignment:Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;

    iput-object p7, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->listener:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller$Listener;

    .line 50
    new-instance p1, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PendingScrollMovements;

    invoke-direct {p1, p2, p3}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PendingScrollMovements;-><init>(ILcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;)V

    iput-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->movements:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PendingScrollMovements;

    const/4 p1, -0x2

    .line 53
    invoke-virtual {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->setTargetPosition(I)V

    return-void
.end method

.method private final consumeGridMovements(ILcom/rubensousa/dpadrecyclerview/layoutmanager/focus/SpanFocusFinder;Z)Landroid/view/View;
    .locals 11

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->movements:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PendingScrollMovements;

    .line 208
    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PendingScrollMovements;->hasPendingMoves()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 211
    :cond_0
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->getLayoutInfo()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->shouldReverseLayout()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    iget-object v4, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->movements:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PendingScrollMovements;

    .line 213
    invoke-virtual {v4}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PendingScrollMovements;->getPendingMoves()I

    move-result v4

    if-lez v4, :cond_2

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->movements:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PendingScrollMovements;

    .line 215
    invoke-virtual {v4}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PendingScrollMovements;->getPendingMoves()I

    move-result v4

    if-gez v4, :cond_2

    :goto_0
    move v8, v2

    goto :goto_1

    :cond_2
    move v8, v3

    :goto_1
    if-eq v8, v0, :cond_3

    .line 218
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->getLayoutInfo()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v2

    goto :goto_2

    .line 220
    :cond_3
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->getLayoutInfo()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getChildClosestToStart()Landroid/view/View;

    move-result-object v2

    :goto_2
    if-nez v2, :cond_4

    return-object v1

    .line 225
    :cond_4
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->getLayoutInfo()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getConfiguration()Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->getSpanSizeLookup()Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;

    move-result-object v9

    .line 226
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->getLayoutInfo()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getLayoutPositionOf(Landroid/view/View;)I

    move-result v10

    move v3, p1

    :cond_5
    :goto_3
    if-eq v3, v10, :cond_8

    iget-object v2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->movements:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PendingScrollMovements;

    .line 230
    invoke-virtual {v2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PendingScrollMovements;->hasPendingMoves()Z

    move-result v2

    if-eqz v2, :cond_8

    move-object v2, p2

    move-object v4, v9

    move v5, v8

    move v6, v10

    move v7, v0

    .line 231
    invoke-virtual/range {v2 .. v7}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/SpanFocusFinder;->findNextSpanPosition(ILcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;ZIZ)I

    move-result v3

    const/4 v2, -0x1

    if-ne v3, v2, :cond_6

    goto :goto_4

    .line 241
    :cond_6
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->getLayoutInfo()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 242
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->getLayoutInfo()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->isViewFocusable(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_3

    .line 245
    :cond_7
    invoke-virtual {p2, v3, v9}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/SpanFocusFinder;->save(ILcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;)V

    iget-object v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->movements:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PendingScrollMovements;

    .line 247
    invoke-virtual {v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PendingScrollMovements;->consume()Z

    move-object v1, v2

    if-nez p3, :cond_5

    :cond_8
    :goto_4
    if-nez v1, :cond_9

    .line 254
    invoke-virtual {p2, p1, v9}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/SpanFocusFinder;->save(ILcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;)V

    :cond_9
    return-object v1
.end method

.method static synthetic consumeGridMovements$default(Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;ILcom/rubensousa/dpadrecyclerview/layoutmanager/focus/SpanFocusFinder;ZILjava/lang/Object;)Landroid/view/View;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    .line 203
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->consumeGridMovements(ILcom/rubensousa/dpadrecyclerview/layoutmanager/focus/SpanFocusFinder;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private final consumeOneLinearMovement(I)Landroid/view/View;
    .locals 5

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->movements:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PendingScrollMovements;

    .line 169
    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PendingScrollMovements;->hasPendingMoves()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 172
    :cond_0
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->getLayoutInfo()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->shouldReverseLayout()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    iget-object v4, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->movements:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PendingScrollMovements;

    .line 174
    invoke-virtual {v4}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PendingScrollMovements;->getPendingMoves()I

    move-result v4

    if-lez v4, :cond_2

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->movements:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PendingScrollMovements;

    .line 176
    invoke-virtual {v4}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PendingScrollMovements;->getPendingMoves()I

    move-result v4

    if-gez v4, :cond_2

    :goto_0
    move v2, v3

    :cond_2
    if-eq v2, v0, :cond_3

    .line 179
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->getLayoutInfo()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 181
    :cond_3
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->getLayoutInfo()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getChildClosestToStart()Landroid/view/View;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_4

    return-object v1

    .line 186
    :cond_4
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->getLayoutInfo()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getLayoutPositionOf(Landroid/view/View;)I

    move-result v0

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    const/4 v3, -0x1

    :cond_6
    :goto_2
    if-eq p1, v0, :cond_8

    iget-object v2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->movements:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PendingScrollMovements;

    .line 190
    invoke-virtual {v2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PendingScrollMovements;->hasPendingMoves()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 191
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->getLayoutInfo()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    add-int/2addr p1, v3

    if-eqz v2, :cond_6

    .line 193
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->getLayoutInfo()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->isViewFocusable(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_2

    :cond_7
    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->movements:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PendingScrollMovements;

    .line 197
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PendingScrollMovements;->consume()Z

    move-object v1, v2

    :cond_8
    return-object v1
.end method


# virtual methods
.method public final addScrollMovement(Z)V
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->movements:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PendingScrollMovements;

    .line 144
    invoke-virtual {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PendingScrollMovements;->add(Z)V

    return-void
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 1

    iget-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->movements:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PendingScrollMovements;

    .line 75
    invoke-virtual {p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PendingScrollMovements;->getPendingMoves()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->movements:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PendingScrollMovements;

    .line 78
    invoke-virtual {p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PendingScrollMovements;->getPendingMoves()I

    move-result p1

    if-gez p1, :cond_1

    const/high16 p1, -0x40800000    # -1.0f

    goto :goto_0

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    .line 79
    :goto_0
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->getLayoutInfo()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->isHorizontal()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 80
    new-instance p0, Landroid/graphics/PointF;

    invoke-direct {p0, p1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_1

    .line 82
    :cond_2
    new-instance p0, Landroid/graphics/PointF;

    invoke-direct {p0, v0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    :goto_1
    return-object p0
.end method

.method public final consumeOneMovement()V
    .locals 3

    .line 117
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->getLayoutInfo()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->isGrid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->pivotSelector:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;

    .line 118
    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->getPosition()I

    move-result v0

    iget-object v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->spanFocusFinder:Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/SpanFocusFinder;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->consumeGridMovements(ILcom/rubensousa/dpadrecyclerview/layoutmanager/focus/SpanFocusFinder;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->pivotSelector:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;

    .line 120
    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->getPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->consumeOneLinearMovement(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->listener:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller$Listener;

    .line 123
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->getLayoutInfo()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getAdapterPositionOf(Landroid/view/View;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller$Listener;->onPivotAttached(I)V

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->listener:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller$Listener;

    .line 124
    invoke-interface {p0, v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller$Listener;->onPivotLaidOut(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public final onBlockLaidOut()V
    .locals 7

    .line 129
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->getLayoutInfo()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->isGrid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->pivotSelector:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;

    .line 132
    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->getPosition()I

    move-result v2

    iget-object v3, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->spanFocusFinder:Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/SpanFocusFinder;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->consumeGridMovements$default(Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;ILcom/rubensousa/dpadrecyclerview/layoutmanager/focus/SpanFocusFinder;ZILjava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->listener:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller$Listener;

    .line 134
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->getLayoutInfo()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getAdapterPositionOf(Landroid/view/View;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller$Listener;->onPivotAttached(I)V

    iget-object v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->listener:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller$Listener;

    .line 135
    invoke-interface {v1, v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller$Listener;->onPivotLaidOut(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->movements:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PendingScrollMovements;

    .line 137
    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PendingScrollMovements;->shouldStopScrolling()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->pivotSelector:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;

    .line 138
    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->getPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->setTargetPosition(I)V

    .line 139
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->stop()V

    :cond_2
    return-void
.end method

.method public final onChildCreated(Landroid/view/View;)V
    .locals 2

    const-string v0, "child"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->getLayoutInfo()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->isGrid()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->movements:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PendingScrollMovements;

    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PendingScrollMovements;->hasPendingMoves()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->getLayoutInfo()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 92
    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    move-result v0

    .line 93
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->getLayoutInfo()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->isViewFocusable(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, -0x1

    if-eq v0, p1, :cond_2

    iget-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->movements:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PendingScrollMovements;

    iget-object v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->pivotSelector:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;

    .line 95
    invoke-virtual {v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->getPosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PendingScrollMovements;->shouldScrollToView(II)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->movements:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PendingScrollMovements;

    .line 96
    invoke-virtual {p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PendingScrollMovements;->consume()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->listener:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller$Listener;

    .line 98
    invoke-interface {p0, v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller$Listener;->onPivotAttached(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final onChildLaidOut(Landroid/view/View;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->getLayoutInfo()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->isGrid()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->getLayoutInfo()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 107
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    move-result v0

    iget-object v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->pivotSelector:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;

    invoke-virtual {v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->getPosition()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->listener:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller$Listener;

    .line 108
    invoke-interface {v0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller$Listener;->onPivotLaidOut(Landroid/view/View;)V

    :cond_1
    iget-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->movements:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PendingScrollMovements;

    .line 110
    invoke-virtual {p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PendingScrollMovements;->shouldStopScrolling()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->pivotSelector:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;

    .line 111
    invoke-virtual {p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->getPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->setTargetPosition(I)V

    .line 112
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->stop()V

    :cond_2
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 148
    invoke-super {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/BaseSmoothScroller;->onStop()V

    .line 149
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->listener:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller$Listener;

    .line 150
    invoke-interface {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller$Listener;->onSmoothScrollerStopped()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->movements:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PendingScrollMovements;

    .line 154
    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PendingScrollMovements;->clear()V

    .line 156
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->getTargetPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->listener:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller$Listener;

    .line 158
    invoke-interface {v1, v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller$Listener;->onPivotFound(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->listener:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller$Listener;

    .line 160
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->getTargetPosition()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller$Listener;->onPivotNotFound(I)V

    :goto_0
    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->listener:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller$Listener;

    .line 163
    invoke-interface {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller$Listener;->onSmoothScrollerStopped()V

    return-void
.end method

.method protected onTargetFound(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;)V
    .locals 4

    const-string v0, "targetView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "action"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->alignment:Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;

    const/4 v0, 0x0

    .line 57
    invoke-virtual {p2, p1, v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;->calculateScrollOffset(Landroid/view/View;I)I

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->getLayoutInfo()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->isHorizontal()Z

    move-result p2

    if-eqz p2, :cond_1

    move v3, v0

    move v0, p1

    move p1, v3

    :cond_1
    mul-int p2, v0, v0

    mul-int v1, p1, p1

    add-int/2addr p2, v1

    int-to-double v1, p2

    .line 69
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-int p2, v1

    .line 70
    invoke-virtual {p0, p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->calculateTimeForDeceleration(I)I

    move-result p2

    .line 71
    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    check-cast p0, Landroid/view/animation/Interpolator;

    invoke-virtual {p3, v0, p1, p2, p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->update(IIILandroid/view/animation/Interpolator;)V

    return-void
.end method
