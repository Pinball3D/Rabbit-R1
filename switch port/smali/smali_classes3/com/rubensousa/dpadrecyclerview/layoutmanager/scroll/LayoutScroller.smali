.class public final Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;
.super Ljava/lang/Object;
.source "LayoutScroller.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller$Companion;,
        Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller$IdleScrollListener;,
        Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller$SearchPivotListener;,
        Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller$SelectionPivotListener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLayoutScroller.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LayoutScroller.kt\ncom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,544:1\n1#2:545\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0098\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0015\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0000\u0018\u0000 L2\u00020\u0001:\u0004LMNOB5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0002\u0010\u000eJ\u000e\u0010#\u001a\u00020\u00162\u0006\u0010$\u001a\u00020%J\u0018\u0010&\u001a\u00020\u00162\u0006\u0010\'\u001a\u00020\u00162\u0008\u0008\u0002\u0010(\u001a\u00020\u0016J\u0006\u0010)\u001a\u00020*J\u0012\u0010+\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u001b\u001a\u00020,H\u0002J\u000e\u0010-\u001a\u00020\u00162\u0006\u0010.\u001a\u00020/J\u0018\u00100\u001a\u00020\u00162\u0006\u00101\u001a\u0002022\u0006\u00103\u001a\u00020%H\u0002J\u0006\u00104\u001a\u00020\u0016J\u0006\u00105\u001a\u00020*J\u000e\u00106\u001a\u00020*2\u0006\u00103\u001a\u00020%J\u000e\u00107\u001a\u00020*2\u0006\u00103\u001a\u00020%J*\u00108\u001a\u00020*2\u0006\u00103\u001a\u00020%2\u0008\u00109\u001a\u0004\u0018\u00010%2\u0006\u0010:\u001a\u00020\u00162\u0006\u0010;\u001a\u00020\u0016H\u0002J\u0018\u0010<\u001a\u00020*2\u0006\u0010\'\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u001cH\u0002J\u0018\u0010=\u001a\u00020*2\u0006\u0010>\u001a\u0002022\u0006\u0010;\u001a\u00020\u0016H\u0002J\u0018\u0010?\u001a\u00020*2\u0006\u00101\u001a\u0002022\u0008\u0008\u0002\u0010@\u001a\u000202J\u001e\u0010?\u001a\u00020*2\u0006\u00101\u001a\u0002022\u0006\u0010@\u001a\u0002022\u0006\u0010;\u001a\u00020\u0016J\u0018\u0010A\u001a\u00020*2\u0006\u0010;\u001a\u00020\u00162\u0008\u0008\u0002\u0010B\u001a\u00020\u0016J*\u0010C\u001a\u00020*2\u0008\u00103\u001a\u0004\u0018\u00010%2\u0008\u00109\u001a\u0004\u0018\u00010%2\u0006\u0010;\u001a\u00020\u00162\u0006\u0010B\u001a\u00020\u0016J\u0010\u0010D\u001a\u00020*2\u0008\u0010E\u001a\u0004\u0018\u00010\u001cJ\u000e\u0010F\u001a\u00020*2\u0006\u0010G\u001a\u00020HJ(\u0010I\u001a\u00020*2\u0006\u00101\u001a\u0002022\u0006\u0010@\u001a\u0002022\u0006\u00103\u001a\u00020%2\u0006\u0010;\u001a\u00020\u0016H\u0002J\u0018\u0010J\u001a\u00020*2\u0006\u00101\u001a\u0002022\u0006\u0010@\u001a\u000202H\u0002J\u0008\u0010K\u001a\u00020*H\u0002R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0013\u001a\u00060\u0014R\u00020\u0000X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0015\u001a\u00020\u0016@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u001d\u001a\u00060\u001eR\u00020\u0000X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001f\u001a\u0004\u0018\u00010 X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010!\u001a\u00060\"R\u00020\u0000X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006P"
    }
    d2 = {
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;",
        "",
        "layoutManager",
        "Landroidx/recyclerview/widget/RecyclerView$LayoutManager;",
        "layoutInfo",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;",
        "layoutAlignment",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;",
        "configuration",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;",
        "pivotSelector",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;",
        "spanFocusFinder",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/SpanFocusFinder;",
        "(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/SpanFocusFinder;)V",
        "alignmentQueue",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue;",
        "audioManager",
        "Landroid/media/AudioManager;",
        "idleScrollListener",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller$IdleScrollListener;",
        "<set-?>",
        "",
        "isSelectionInProgress",
        "()Z",
        "pivotSelectionScroller",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PivotSelectionSmoothScroller;",
        "recyclerView",
        "Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;",
        "searchPivotListener",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller$SearchPivotListener;",
        "searchPivotScroller",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;",
        "selectionPivotListener",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller$SelectionPivotListener;",
        "addPendingAlignment",
        "newFocusedView",
        "Landroid/view/View;",
        "addScrollMovement",
        "forward",
        "consume",
        "cancelSmoothScroller",
        "",
        "getAudioManager",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "hasReachedPendingAlignmentLimit",
        "focusDirection",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;",
        "isScrollToViewPossible",
        "position",
        "",
        "view",
        "isSearchingPivot",
        "onBlockLaidOut",
        "onChildCreated",
        "onChildLaidOut",
        "performScrollToView",
        "subPositionView",
        "selectViewHolder",
        "smooth",
        "playSoundEffect",
        "scrollBy",
        "offset",
        "scrollToPosition",
        "subPosition",
        "scrollToSelectedPosition",
        "requestFocus",
        "scrollToView",
        "setRecyclerView",
        "newRecyclerView",
        "setSmoothScroller",
        "smoothScroller",
        "Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;",
        "startScroll",
        "startSmoothScrollingToPivot",
        "stopSmoothScrolling",
        "Companion",
        "IdleScrollListener",
        "SearchPivotListener",
        "SelectionPivotListener",
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
.field public static final Companion:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller$Companion;

.field public static final TAG:Ljava/lang/String; = "LayoutScroller"


# instance fields
.field private final alignmentQueue:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue;

.field private audioManager:Landroid/media/AudioManager;

.field private final configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

.field private final idleScrollListener:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller$IdleScrollListener;

.field private isSelectionInProgress:Z

.field private final layoutAlignment:Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;

.field private final layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

.field private final layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

.field private pivotSelectionScroller:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PivotSelectionSmoothScroller;

.field private final pivotSelector:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;

.field private recyclerView:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;

.field private final searchPivotListener:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller$SearchPivotListener;

.field private searchPivotScroller:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;

.field private final selectionPivotListener:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller$SelectionPivotListener;

.field private final spanFocusFinder:Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/SpanFocusFinder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->Companion:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/SpanFocusFinder;)V
    .locals 1

    const-string v0, "layoutManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutAlignment"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configuration"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pivotSelector"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "spanFocusFinder"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iput-object p2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    iput-object p3, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->layoutAlignment:Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;

    iput-object p4, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    iput-object p5, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->pivotSelector:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;

    iput-object p6, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->spanFocusFinder:Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/SpanFocusFinder;

    .line 55
    new-instance p1, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue;

    invoke-direct {p1, p4, p3, p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue;-><init>(Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;)V

    iput-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->alignmentQueue:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue;

    .line 56
    new-instance p1, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller$IdleScrollListener;

    invoke-direct {p1, p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller$IdleScrollListener;-><init>(Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;)V

    iput-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->idleScrollListener:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller$IdleScrollListener;

    .line 57
    new-instance p1, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller$SearchPivotListener;

    invoke-direct {p1, p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller$SearchPivotListener;-><init>(Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;)V

    iput-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->searchPivotListener:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller$SearchPivotListener;

    .line 58
    new-instance p1, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller$SelectionPivotListener;

    invoke-direct {p1, p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller$SelectionPivotListener;-><init>(Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;)V

    iput-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->selectionPivotListener:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller$SelectionPivotListener;

    return-void
.end method

.method public static final synthetic access$getAlignmentQueue$p(Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;)Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->alignmentQueue:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue;

    return-object p0
.end method

.method public static final synthetic access$getLayoutAlignment$p(Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;)Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->layoutAlignment:Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;

    return-object p0
.end method

.method public static final synthetic access$getLayoutInfo$p(Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;)Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    return-object p0
.end method

.method public static final synthetic access$getLayoutManager$p(Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    return-object p0
.end method

.method public static final synthetic access$getPivotSelector$p(Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;)Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->pivotSelector:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;

    return-object p0
.end method

.method public static final synthetic access$setPivotSelectionScroller$p(Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PivotSelectionSmoothScroller;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->pivotSelectionScroller:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PivotSelectionSmoothScroller;

    return-void
.end method

.method public static final synthetic access$setSearchPivotScroller$p(Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->searchPivotScroller:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;

    return-void
.end method

.method public static final synthetic access$setSelectionInProgress$p(Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;Z)V
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->isSelectionInProgress:Z

    return-void
.end method

.method public static synthetic addScrollMovement$default(Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;ZZILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 249
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->addScrollMovement(ZZ)Z

    move-result p0

    return p0
.end method

.method private final getAudioManager(Landroidx/recyclerview/widget/RecyclerView;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->audioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    return-object v0

    .line 438
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/media/AudioManager;

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->audioManager:Landroid/media/AudioManager;

    return-object p1
.end method

.method private final isScrollToViewPossible(ILandroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->recyclerView:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 132
    invoke-virtual {p0, p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getAdapterPositionOf(Landroid/view/View;)I

    move-result p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final performScrollToView(Landroid/view/View;Landroid/view/View;ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    .line 371
    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->isScrollEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->layoutAlignment:Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;

    .line 372
    invoke-virtual {v0, p1, p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;->calculateScrollOffset(Landroid/view/View;Landroid/view/View;)I

    move-result p1

    .line 373
    invoke-direct {p0, p1, p4}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->scrollBy(IZ)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->pivotSelector:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;

    .line 377
    invoke-virtual {p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->dispatchViewHolderSelected()V

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->pivotSelector:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;

    .line 380
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->dispatchViewHolderSelectedAndAligned()V

    :cond_1
    return-void
.end method

.method private final playSoundEffect(ZLcom/rubensousa/dpadrecyclerview/DpadRecyclerView;)V
    .locals 2

    .line 309
    invoke-virtual {p2}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_3

    const/4 v1, 0x2

    goto :goto_1

    .line 318
    :cond_0
    invoke-virtual {p2}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->getLayoutDirection()I

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    xor-int/2addr p1, v1

    if-eqz p1, :cond_2

    const/4 v1, 0x4

    goto :goto_1

    :cond_2
    const/4 v1, 0x3

    .line 325
    :cond_3
    :goto_1
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0, p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->getAudioManager(Landroidx/recyclerview/widget/RecyclerView;)Landroid/media/AudioManager;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    :cond_4
    return-void
.end method

.method private final scrollBy(IZ)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 389
    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->isLayoutInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 395
    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->isHorizontal()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move v2, v1

    move v1, p1

    move p1, v2

    :goto_0
    if-eqz p2, :cond_3

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->recyclerView:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;

    if-eqz p0, :cond_4

    .line 401
    invoke-virtual {p0, p1, v1}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->smoothScrollBy(II)V

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->recyclerView:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;

    if-eqz p0, :cond_4

    .line 403
    invoke-virtual {p0, p1, v1}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->scrollBy(II)V

    :cond_4
    :goto_1
    return-void
.end method

.method public static synthetic scrollToPosition$default(Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;IIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 214
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->scrollToPosition(II)V

    return-void
.end method

.method public static synthetic scrollToSelectedPosition$default(Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;ZZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 192
    iget-object p2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->hasFocus()Z

    move-result p2

    .line 190
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->scrollToSelectedPosition(ZZ)V

    return-void
.end method

.method private final startScroll(IILandroid/view/View;Z)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->isSelectionInProgress:Z

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->layoutAlignment:Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;

    .line 173
    invoke-virtual {v0, p3, p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;->getViewAtSubPosition(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 177
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Subposition "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " doesn\'t exist for position "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ",scroll instead started for subposition 0"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DpadRecyclerView"

    .line 175
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 185
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->hasFocus()Z

    move-result p1

    .line 181
    invoke-virtual {p0, p3, v0, p4, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->scrollToView(Landroid/view/View;Landroid/view/View;ZZ)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->isSelectionInProgress:Z

    return-void
.end method

.method private final startSmoothScrollingToPivot(II)V
    .locals 10

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 139
    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getHasLaidOutViews()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "DpadRecyclerView"

    const-string p1, "smooth scrolling is not supported when there are no views in the layout"

    .line 140
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->recyclerView:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 148
    new-instance v9, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PivotSelectionSmoothScroller;

    .line 149
    move-object v3, v0

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    iget-object v6, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    iget-object v7, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->layoutAlignment:Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->selectionPivotListener:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller$SelectionPivotListener;

    .line 154
    move-object v8, v0

    check-cast v8, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PivotSelectionSmoothScroller$Listener;

    move-object v2, v9

    move v4, p1

    move v5, p2

    .line 148
    invoke-direct/range {v2 .. v8}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PivotSelectionSmoothScroller;-><init>(Landroidx/recyclerview/widget/RecyclerView;IILcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PivotSelectionSmoothScroller$Listener;)V

    check-cast v9, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    .line 147
    invoke-virtual {v1, v9}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    const/4 p1, 0x1

    .line 157
    invoke-virtual {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->setIsScrollingToTarget(Z)V

    :cond_1
    return-void
.end method

.method private final stopSmoothScrolling()V
    .locals 0

    .line 162
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->cancelSmoothScroller()V

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->recyclerView:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;

    if-eqz p0, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->stopScroll()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final addPendingAlignment(Landroid/view/View;)Z
    .locals 2

    const-string v0, "newFocusedView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 424
    invoke-virtual {v0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 425
    :cond_0
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v1, "itemView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-object v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->layoutAlignment:Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;

    .line 431
    invoke-virtual {v1, v0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;->calculateScrollOffset(Landroid/view/View;Landroid/view/View;)I

    move-result v1

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->alignmentQueue:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue;

    .line 432
    invoke-virtual {p0, v0, p1, v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue;->push(Landroid/view/View;Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public final addScrollMovement(ZZ)Z
    .locals 10

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 251
    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->shouldReverseLayout()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 253
    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->hasCreatedLastItem()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 254
    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->isLoopingAllowed()Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_0
    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 259
    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->hasCreatedFirstItem()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 260
    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->isLoopingStart()Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 267
    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->hasCreatedFirstItem()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 268
    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->isLoopingAllowed()Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_2
    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 273
    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->hasCreatedLastItem()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 274
    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->isLoopingStart()Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->recyclerView:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;

    if-nez v0, :cond_4

    return v1

    :cond_4
    iget-object v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->searchPivotScroller:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;

    if-nez v1, :cond_5

    .line 282
    new-instance v1, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;

    .line 283
    move-object v3, v0

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    .line 284
    invoke-virtual {v2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->getMaxPendingMoves()I

    move-result v4

    iget-object v5, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    iget-object v6, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->spanFocusFinder:Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/SpanFocusFinder;

    iget-object v7, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->pivotSelector:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;

    iget-object v8, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->layoutAlignment:Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;

    iget-object v2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->searchPivotListener:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller$SearchPivotListener;

    .line 289
    move-object v9, v2

    check-cast v9, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller$Listener;

    move-object v2, v1

    .line 282
    invoke-direct/range {v2 .. v9}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;-><init>(Landroidx/recyclerview/widget/RecyclerView;ILcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/SpanFocusFinder;Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller$Listener;)V

    iget-object v2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->layoutAlignment:Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;

    .line 291
    invoke-virtual {v2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;->updateScrollLimits()V

    iget-object v2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->pivotSelector:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;

    .line 292
    invoke-virtual {v2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->resetPositionOffset()V

    .line 293
    invoke-virtual {v1, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->addScrollMovement(Z)V

    iget-object v2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 294
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    goto :goto_0

    :cond_5
    if-eqz v1, :cond_6

    .line 296
    invoke-virtual {v1, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->addScrollMovement(Z)V

    :cond_6
    :goto_0
    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->searchPivotScroller:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;

    if-eqz p2, :cond_7

    .line 299
    invoke-virtual {p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->consumeOneMovement()V

    .line 301
    :cond_7
    invoke-direct {p0, p1, v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->playSoundEffect(ZLcom/rubensousa/dpadrecyclerview/DpadRecyclerView;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final cancelSmoothScroller()V
    .locals 2

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    const/4 v1, 0x0

    .line 242
    invoke-virtual {v0, v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->setIsScrollingToTarget(Z)V

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->searchPivotScroller:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->searchPivotScroller:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;

    iget-object v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->pivotSelectionScroller:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PivotSelectionSmoothScroller;

    if-eqz v1, :cond_1

    .line 245
    invoke-virtual {v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PivotSelectionSmoothScroller;->cancel()V

    :cond_1
    iput-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->pivotSelectionScroller:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PivotSelectionSmoothScroller;

    return-void
.end method

.method public final hasReachedPendingAlignmentLimit(Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;)Z
    .locals 1

    const-string v0, "focusDirection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->alignmentQueue:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue;

    .line 420
    invoke-virtual {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue;->hasReachedLimit(Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;)Z

    move-result p0

    return p0
.end method

.method public final isSearchingPivot()Z
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->searchPivotScroller:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isSelectionInProgress()Z
    .locals 0

    iget-boolean p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->isSelectionInProgress:Z

    return p0
.end method

.method public final onBlockLaidOut()V
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->searchPivotScroller:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;

    if-eqz p0, :cond_0

    .line 416
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->onBlockLaidOut()V

    :cond_0
    return-void
.end method

.method public final onChildCreated(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->searchPivotScroller:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;

    if-eqz p0, :cond_0

    .line 408
    invoke-virtual {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->onChildCreated(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final onChildLaidOut(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->searchPivotScroller:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;

    if-eqz p0, :cond_0

    .line 412
    invoke-virtual {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;->onChildLaidOut(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final scrollToPosition(II)V
    .locals 1

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->pivotSelector:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;

    .line 215
    invoke-virtual {v0, p1, p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->update(II)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->pivotSelector:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;

    .line 216
    invoke-virtual {p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->disablePositionOffset()V

    iget-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->pivotSelector:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;

    .line 217
    invoke-virtual {p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->setSelectionUpdatePending()V

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 218
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    :cond_0
    return-void
.end method

.method public final scrollToPosition(IIZ)V
    .locals 2

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 80
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 83
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->isSmoothScrolling()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 85
    invoke-direct {p0, p1, v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->isScrollToViewPossible(ILandroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->startScroll(IILandroid/view/View;Z)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    .line 92
    invoke-virtual {v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->isLayoutEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p3, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->pivotSelector:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;

    .line 93
    invoke-virtual {p3, p1, p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->update(II)Z

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->pivotSelector:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;

    .line 94
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->disablePositionOffset()V

    return-void

    :cond_1
    if-eqz p3, :cond_2

    iget-object v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->recyclerView:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;

    if-eqz v1, :cond_2

    .line 99
    invoke-virtual {v1}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->isLayoutRequested()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object p3, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->pivotSelector:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;

    .line 100
    invoke-virtual {p3, p1, p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->update(II)Z

    iget-object p3, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->pivotSelector:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;

    .line 101
    invoke-virtual {p3}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->disablePositionOffset()V

    .line 102
    invoke-direct {p0, p1, p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->startSmoothScrollingToPivot(II)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 106
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->isSmoothScrolling()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 107
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->stopSmoothScrolling()V

    :cond_3
    if-eqz v0, :cond_4

    .line 110
    invoke-direct {p0, p1, v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->isScrollToViewPossible(ILandroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 111
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->startScroll(IILandroid/view/View;Z)V

    return-void

    .line 119
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->scrollToPosition(II)V

    return-void
.end method

.method public final scrollToSelectedPosition(ZZ)V
    .locals 4

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 194
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    iget-object v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->pivotSelector:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;

    .line 195
    invoke-virtual {v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->getPosition()I

    move-result v1

    iget-object v2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->pivotSelector:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;

    .line 196
    invoke-virtual {v2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->getSubPosition()I

    move-result v2

    const/4 v3, 0x0

    if-nez v0, :cond_0

    :goto_0
    move v1, v3

    move v2, v1

    goto :goto_1

    :cond_0
    if-lt v1, v0, :cond_1

    add-int/lit8 v1, v0, -0x1

    move v2, v3

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    if-ne v1, v0, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 207
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-object v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->layoutAlignment:Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;

    .line 209
    invoke-virtual {v1, v0, v2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;->getViewAtSubPosition(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 208
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->scrollToView(Landroid/view/View;Landroid/view/View;ZZ)V

    return-void
.end method

.method public final scrollToView(Landroid/view/View;Landroid/view/View;ZZ)V
    .locals 3

    const/4 v0, -0x1

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 332
    invoke-virtual {v1, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getAdapterPositionOf(Landroid/view/View;)I

    move-result v1

    :goto_0
    if-ne v1, v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->layoutAlignment:Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;

    .line 337
    invoke-virtual {v0, p1, p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;->getSubPositionOfView(Landroid/view/View;Landroid/view/View;)I

    move-result v0

    iget-object v2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->pivotSelector:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;

    .line 338
    invoke-virtual {v2, v1, v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->update(II)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->pivotSelector:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;

    .line 341
    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->resetPositionOffset()V

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 342
    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->isLayoutInProgress()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->pivotSelector:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;

    .line 345
    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->setSelectionUpdatePending()V

    :goto_1
    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    .line 347
    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->isChildDrawingOrderEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->recyclerView:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;

    if-eqz v0, :cond_3

    .line 348
    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->invalidate()V

    :cond_3
    if-nez p1, :cond_4

    return-void

    :cond_4
    if-eqz p2, :cond_5

    if-eqz p4, :cond_5

    .line 356
    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    goto :goto_2

    :cond_5
    if-eqz p4, :cond_6

    .line 358
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 360
    :cond_6
    :goto_2
    invoke-direct {p0, p1, p2, v1, p3}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->performScrollToView(Landroid/view/View;Landroid/view/View;ZZ)V

    return-void
.end method

.method public final setRecyclerView(Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;)V
    .locals 2

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->recyclerView:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->idleScrollListener:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller$IdleScrollListener;

    .line 61
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->idleScrollListener:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller$IdleScrollListener;

    .line 62
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p1, v0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :cond_1
    iput-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->recyclerView:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;

    return-void
.end method

.method public final setSmoothScroller(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V
    .locals 2

    const-string v0, "smoothScroller"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->isRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 224
    instance-of v0, p1, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PivotSelectionSmoothScroller;

    if-eqz v0, :cond_0

    .line 226
    move-object v0, p1

    check-cast v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PivotSelectionSmoothScroller;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->pivotSelectionScroller:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PivotSelectionSmoothScroller;

    .line 230
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    instance-of v0, p1, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;

    if-eqz v0, :cond_1

    .line 233
    move-object v1, p1

    check-cast v1, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;

    :cond_1
    iput-object v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->searchPivotScroller:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;

    return-void
.end method
