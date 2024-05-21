.class public final Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;
.super Ljava/lang/Object;
.source "PivotLayout.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$ChildLayoutListener;,
        Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$Companion;,
        Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$SavedState;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPivotLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PivotLayout.kt\ncom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,353:1\n1855#2,2:354\n*S KotlinDebug\n*F\n+ 1 PivotLayout.kt\ncom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout\n*L\n196#1:354,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000 F2\u00020\u0001:\u0003EFGB5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0002\u0010\u000eJ\u000e\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u0018J\u0006\u0010!\u001a\u00020\u001fJ\u0008\u0010\"\u001a\u00020\u001dH\u0002J\u001c\u0010#\u001a\u00020\u001f2\n\u0010$\u001a\u00060%R\u00020&2\u0006\u0010\'\u001a\u00020(H\u0002J\u0016\u0010)\u001a\u00020\u001f2\u0006\u0010*\u001a\u00020\u00102\u0006\u0010+\u001a\u00020\u0010J\u001e\u0010,\u001a\u00020\u001f2\u0006\u0010-\u001a\u00020\u00102\u0006\u0010.\u001a\u00020\u00102\u0006\u0010+\u001a\u00020\u0010J\u0016\u0010/\u001a\u00020\u001f2\u0006\u0010*\u001a\u00020\u00102\u0006\u0010+\u001a\u00020\u0010J\u001a\u00100\u001a\u00020\u001f2\n\u0010$\u001a\u00060%R\u00020&2\u0006\u0010\'\u001a\u00020(J\u000e\u00101\u001a\u00020\u001f2\u0006\u0010\'\u001a\u00020(J\u0010\u00102\u001a\u00020\u001f2\u0008\u0010\'\u001a\u0004\u0018\u000103J\u0006\u00104\u001a\u000203J$\u00105\u001a\u00020\u001f2\u0006\u00106\u001a\u00020\u00102\n\u0010$\u001a\u00060%R\u00020&2\u0006\u0010\'\u001a\u00020(H\u0002J\u000e\u00107\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u0018J\u0006\u00108\u001a\u00020\u001fJ\u001c\u00109\u001a\u00020\u001f2\n\u0010$\u001a\u00060%R\u00020&2\u0006\u0010\'\u001a\u00020(H\u0002J\u0008\u0010:\u001a\u00020\u001fH\u0002J$\u0010;\u001a\u00020\u00102\u0006\u0010<\u001a\u00020\u00102\n\u0010$\u001a\u00060%R\u00020&2\u0006\u0010\'\u001a\u00020(H\u0002J\"\u0010=\u001a\u00020\u00102\u0006\u0010>\u001a\u00020\u00102\n\u0010$\u001a\u00060%R\u00020&2\u0006\u0010\'\u001a\u00020(J\"\u0010?\u001a\u00020\u00102\u0006\u0010@\u001a\u00020\u00102\n\u0010$\u001a\u00060%R\u00020&2\u0006\u0010\'\u001a\u00020(J\u0010\u0010A\u001a\u00020\u001f2\u0008\u0010 \u001a\u0004\u0018\u00010\u001bJ\u0006\u0010B\u001a\u00020\u001fJ\u000c\u0010C\u001a\u00020D*\u00020(H\u0002R\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0011R\u0012\u0010\u0012\u001a\u00060\u0013R\u00020\u0000X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0016\u001a\u0012\u0012\u0004\u0012\u00020\u00180\u0017j\u0008\u0012\u0004\u0012\u00020\u0018`\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006H"
    }
    d2 = {
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;",
        "",
        "layoutManager",
        "Landroidx/recyclerview/widget/RecyclerView$LayoutManager;",
        "layoutAlignment",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;",
        "configuration",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;",
        "pivotSelector",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;",
        "scroller",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;",
        "layoutInfo",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;",
        "(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;)V",
        "anchor",
        "",
        "Ljava/lang/Integer;",
        "childLayoutListener",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$ChildLayoutListener;",
        "itemChanges",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemChanges;",
        "layoutCompleteListeners",
        "Ljava/util/ArrayList;",
        "Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$OnLayoutCompletedListener;",
        "Lkotlin/collections/ArrayList;",
        "layoutListener",
        "Lcom/rubensousa/dpadrecyclerview/OnChildLaidOutListener;",
        "structureEngineer",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/StructureEngineer;",
        "addOnLayoutCompletedListener",
        "",
        "listener",
        "clearOnLayoutCompletedListeners",
        "createStructureEngineer",
        "layoutChildren",
        "recycler",
        "Landroidx/recyclerview/widget/RecyclerView$Recycler;",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "state",
        "Landroidx/recyclerview/widget/RecyclerView$State;",
        "onItemsAdded",
        "positionStart",
        "itemCount",
        "onItemsMoved",
        "from",
        "to",
        "onItemsRemoved",
        "onLayoutChildren",
        "onLayoutCompleted",
        "onRestoreInstanceState",
        "Landroid/os/Parcelable;",
        "onSaveInstanceState",
        "preLayoutChildren",
        "pivotPosition",
        "removeOnLayoutCompletedListener",
        "reset",
        "restoreAnchorState",
        "saveAnchorState",
        "scrollBy",
        "offset",
        "scrollHorizontallyBy",
        "dx",
        "scrollVerticallyBy",
        "dy",
        "setOnChildLaidOutListener",
        "updateStructure",
        "asString",
        "",
        "ChildLayoutListener",
        "Companion",
        "SavedState",
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
.field public static final Companion:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$Companion;

.field public static final TAG:Ljava/lang/String; = "PivotLayout"


# instance fields
.field private anchor:Ljava/lang/Integer;

.field private final childLayoutListener:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$ChildLayoutListener;

.field private final configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

.field private final itemChanges:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemChanges;

.field private final layoutAlignment:Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;

.field private final layoutCompleteListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$OnLayoutCompletedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

.field private layoutListener:Lcom/rubensousa/dpadrecyclerview/OnChildLaidOutListener;

.field private final layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

.field private final pivotSelector:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;

.field private final scroller:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;

.field private structureEngineer:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/StructureEngineer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->Companion:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;)V
    .locals 1

    const-string v0, "layoutManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutAlignment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configuration"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pivotSelector"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scroller"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutInfo"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iput-object p2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->layoutAlignment:Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;

    iput-object p3, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    iput-object p4, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->pivotSelector:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;

    iput-object p5, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->scroller:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;

    iput-object p6, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 48
    new-instance p1, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$ChildLayoutListener;

    invoke-direct {p1, p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$ChildLayoutListener;-><init>(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;)V

    iput-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->childLayoutListener:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$ChildLayoutListener;

    .line 50
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->createStructureEngineer()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/StructureEngineer;

    move-result-object p1

    iput-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->structureEngineer:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/StructureEngineer;

    .line 51
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->layoutCompleteListeners:Ljava/util/ArrayList;

    .line 52
    new-instance p1, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemChanges;

    invoke-direct {p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemChanges;-><init>()V

    iput-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->itemChanges:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemChanges;

    return-void
.end method

.method public static final synthetic access$getConfiguration$p(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;)Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    return-object p0
.end method

.method public static final synthetic access$getLayoutInfo$p(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;)Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    return-object p0
.end method

.method public static final synthetic access$getLayoutListener$p(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;)Lcom/rubensousa/dpadrecyclerview/OnChildLaidOutListener;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->layoutListener:Lcom/rubensousa/dpadrecyclerview/OnChildLaidOutListener;

    return-object p0
.end method

.method public static final synthetic access$getPivotSelector$p(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;)Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->pivotSelector:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;

    return-object p0
.end method

.method public static final synthetic access$getScroller$p(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;)Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->scroller:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;

    return-object p0
.end method

.method private final asString(Landroidx/recyclerview/widget/RecyclerView$State;)Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 274
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->isVertical()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 275
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getRemainingScrollVertical()I

    move-result p0

    goto :goto_0

    .line 277
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getRemainingScrollHorizontal()I

    move-result p0

    .line 279
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "itemCount="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", didStructureChange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 280
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->didStructureChange()Z

    move-result v1

    .line 279
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", remainingScroll="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ", predictiveAnimations="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 282
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->willRunPredictiveAnimations()Z

    move-result p1

    .line 279
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final createStructureEngineer()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/StructureEngineer;
    .locals 4

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    .line 61
    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->getSpanCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 62
    new-instance v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/grid/GridLayoutEngineer;

    iget-object v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    iget-object v3, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->layoutAlignment:Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->childLayoutListener:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$ChildLayoutListener;

    check-cast p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/OnChildLayoutListener;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/grid/GridLayoutEngineer;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/OnChildLayoutListener;)V

    check-cast v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/StructureEngineer;

    goto :goto_0

    .line 64
    :cond_0
    new-instance v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;

    iget-object v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    iget-object v3, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->layoutAlignment:Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->childLayoutListener:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$ChildLayoutListener;

    check-cast p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/OnChildLayoutListener;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/OnChildLayoutListener;)V

    check-cast v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/StructureEngineer;

    :goto_0
    return-object v0
.end method

.method private final layoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 4

    .line 115
    sget-object v0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->Companion:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$Companion;

    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$Companion;->getDEBUG$dpadrecyclerview_release()Z

    move-result v0

    const-string v1, "PivotLayout"

    if-eqz v0, :cond_0

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "LayoutStart for pivot "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->pivotSelector:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;

    invoke-virtual {v2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->getPosition()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->asString(Landroidx/recyclerview/widget/RecyclerView$State;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->structureEngineer:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/StructureEngineer;

    .line 117
    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/StructureEngineer;->logChildren()V

    :cond_0
    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    .line 120
    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->getKeepLayoutAnchor()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->saveAnchorState()V

    :cond_1
    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->structureEngineer:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/StructureEngineer;

    iget-object v2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->pivotSelector:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;

    .line 124
    invoke-virtual {v2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->getPosition()I

    move-result v2

    iget-object v3, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->itemChanges:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemChanges;

    invoke-virtual {v0, v2, v3, p1, p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/StructureEngineer;->layoutChildren(ILcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemChanges;Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    .line 126
    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->getKeepLayoutAnchor()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 127
    invoke-direct {p0, p1, p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->restoreAnchorState(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 130
    :cond_2
    sget-object p1, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->Companion:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$Companion;

    invoke-virtual {p1}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$Companion;->getDEBUG$dpadrecyclerview_release()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "LayoutFinished"

    .line 131
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->structureEngineer:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/StructureEngineer;

    .line 132
    invoke-virtual {p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/StructureEngineer;->logChildren()V

    :cond_3
    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->structureEngineer:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/StructureEngineer;

    .line 135
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/StructureEngineer;->onLayoutFinished()V

    return-void
.end method

.method private final preLayoutChildren(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 3

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 97
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 101
    :cond_0
    sget-object v0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->Companion:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$Companion;

    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$Companion;->getDEBUG$dpadrecyclerview_release()Z

    move-result v0

    const-string v1, "PivotLayout"

    if-eqz v0, :cond_1

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "PreLayoutStart: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->asString(Landroidx/recyclerview/widget/RecyclerView$State;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->structureEngineer:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/StructureEngineer;

    .line 103
    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/StructureEngineer;->logChildren()V

    :cond_1
    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->structureEngineer:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/StructureEngineer;

    .line 106
    invoke-virtual {v0, p1, p2, p3}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/StructureEngineer;->preLayoutChildren(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 108
    sget-object p1, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->Companion:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$Companion;

    invoke-virtual {p1}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$Companion;->getDEBUG$dpadrecyclerview_release()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "PreLayoutFinished"

    .line 109
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->structureEngineer:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/StructureEngineer;

    .line 110
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/StructureEngineer;->logChildren()V

    :cond_2
    return-void
.end method

.method private final restoreAnchorState(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 3

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->anchor:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 158
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->pivotSelector:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;

    .line 159
    invoke-virtual {v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->getPosition()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    iget-object v2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->pivotSelector:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;

    .line 160
    invoke-virtual {v2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 161
    invoke-virtual {v2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->shouldReverseLayout()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 162
    invoke-virtual {v2, v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getDecoratedStart(Landroid/view/View;)I

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 164
    invoke-virtual {v2, v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getDecoratedEnd(Landroid/view/View;)I

    move-result v1

    :goto_0
    sub-int/2addr v1, v0

    .line 166
    invoke-direct {p0, v1, p1, p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->anchor:Ljava/lang/Integer;

    :cond_2
    return-void
.end method

.method private final saveAnchorState()V
    .locals 5

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 139
    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->shouldReverseLayout()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 140
    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->findFirstVisiblePosition()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 142
    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->findLastVisiblePosition()I

    move-result v0

    :goto_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->pivotSelector:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 147
    invoke-static {v1, v0, v4, v2, v3}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->update$default(Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;IIILjava/lang/Object;)Z

    iget-object v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 148
    invoke-virtual {v1, v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 149
    invoke-virtual {v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->shouldReverseLayout()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 150
    invoke-virtual {v1, v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getDecoratedStart(Landroid/view/View;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 152
    invoke-virtual {v1, v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->anchor:Ljava/lang/Integer;

    :cond_3
    return-void
.end method

.method private final scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    .line 266
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->isLayoutEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->layoutAlignment:Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;

    .line 269
    invoke-virtual {v0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;->getCappedScroll(I)I

    move-result p1

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->structureEngineer:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/StructureEngineer;

    const/4 v0, 0x1

    .line 270
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/StructureEngineer;->scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final addOnLayoutCompletedListener(Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$OnLayoutCompletedListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->layoutCompleteListeners:Ljava/util/ArrayList;

    .line 206
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final clearOnLayoutCompletedListeners()V
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->layoutCompleteListeners:Ljava/util/ArrayList;

    .line 214
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final onItemsAdded(II)V
    .locals 1

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->itemChanges:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemChanges;

    .line 178
    invoke-virtual {v0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemChanges;->setInsertionPosition(I)V

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->itemChanges:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemChanges;

    .line 179
    invoke-virtual {p0, p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemChanges;->setInsertionItemCount(I)V

    return-void
.end method

.method public final onItemsMoved(III)V
    .locals 1

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->itemChanges:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemChanges;

    .line 188
    invoke-virtual {v0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemChanges;->setMoveFromPosition(I)V

    iget-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->itemChanges:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemChanges;

    .line 189
    invoke-virtual {p1, p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemChanges;->setMoveToPosition(I)V

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->itemChanges:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemChanges;

    .line 190
    invoke-virtual {p0, p3}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemChanges;->setMoveItemCount(I)V

    return-void
.end method

.method public final onItemsRemoved(II)V
    .locals 1

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->itemChanges:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemChanges;

    .line 183
    invoke-virtual {v0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemChanges;->setRemovalPosition(I)V

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->itemChanges:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemChanges;

    .line 184
    invoke-virtual {p0, p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemChanges;->setRemovalItemCount(I)V

    return-void
.end method

.method public final onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 2

    const-string v0, "recycler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    sget-object v0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->Companion:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$Companion;

    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$Companion;->getDEBUG$dpadrecyclerview_release()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OnLayoutChildren: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->asString(Landroidx/recyclerview/widget/RecyclerView$State;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PivotLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 72
    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->setLayoutInProgress()V

    .line 75
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->isLayoutEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->pivotSelector:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;

    .line 81
    invoke-virtual {v0, p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->consumePendingSelectionChanges(Landroidx/recyclerview/widget/RecyclerView$State;)Z

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->structureEngineer:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/StructureEngineer;

    .line 82
    invoke-virtual {v0, p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/StructureEngineer;->onLayoutStarted(Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 84
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->pivotSelector:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;

    .line 85
    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->getPosition()I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->preLayoutChildren(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    return-void

    .line 89
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->layoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    return-void

    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 76
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleAllViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 77
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->reset()V

    return-void
.end method

.method public final onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->itemChanges:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemChanges;

    .line 194
    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemChanges;->reset()V

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 195
    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->onLayoutCompleted()V

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->layoutCompleteListeners:Ljava/util/ArrayList;

    .line 196
    check-cast p0, Ljava/lang/Iterable;

    .line 354
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$OnLayoutCompletedListener;

    .line 197
    invoke-interface {v0, p1}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$OnLayoutCompletedListener;->onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5

    .line 249
    instance-of v0, p1, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$SavedState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->pivotSelector:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;

    .line 250
    check-cast p1, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$SavedState;

    invoke-virtual {p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$SavedState;->getSelectedPosition()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->update$default(Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;IIILjava/lang/Object;)Z

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 251
    invoke-virtual {p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$SavedState;->isLoopingStart()Z

    move-result v1

    invoke-virtual {p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$SavedState;->isLoopingAllowed()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->updateLoopingState(ZZ)V

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 252
    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getConfiguration()Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    move-result-object v0

    invoke-virtual {p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$SavedState;->getLoopDirection()Lcom/rubensousa/dpadrecyclerview/DpadLoopDirection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->setLoopDirection(Lcom/rubensousa/dpadrecyclerview/DpadLoopDirection;)V

    .line 253
    invoke-virtual {p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$SavedState;->getSelectedPosition()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->pivotSelector:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;

    .line 254
    invoke-virtual {p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->setSelectionUpdatePending()V

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 255
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    :cond_0
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .line 240
    new-instance v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$SavedState;

    iget-object v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->pivotSelector:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;

    .line 241
    invoke-virtual {v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->getPosition()I

    move-result v1

    iget-object v2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 242
    invoke-virtual {v2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->isLoopingStart()Z

    move-result v2

    iget-object v3, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 243
    invoke-virtual {v3}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->isLoopingAllowed()Z

    move-result v3

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 244
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getConfiguration()Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->getLoopDirection()Lcom/rubensousa/dpadrecyclerview/DpadLoopDirection;

    move-result-object p0

    .line 240
    invoke-direct {v0, v1, v2, v3, p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$SavedState;-><init>(IZZLcom/rubensousa/dpadrecyclerview/DpadLoopDirection;)V

    check-cast v0, Landroid/os/Parcelable;

    return-object v0
.end method

.method public final removeOnLayoutCompletedListener(Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$OnLayoutCompletedListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->layoutCompleteListeners:Ljava/util/ArrayList;

    .line 210
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final reset()V
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->structureEngineer:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/StructureEngineer;

    .line 174
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/StructureEngineer;->clear()V

    return-void
.end method

.method public final scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    const-string v0, "recycler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    .line 222
    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->isVertical()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 225
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public final scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    const-string v0, "recycler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    .line 233
    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 236
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public final setOnChildLaidOutListener(Lcom/rubensousa/dpadrecyclerview/OnChildLaidOutListener;)V
    .locals 0

    iput-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->layoutListener:Lcom/rubensousa/dpadrecyclerview/OnChildLaidOutListener;

    return-void
.end method

.method public final updateStructure()V
    .locals 1

    .line 56
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->createStructureEngineer()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/StructureEngineer;

    move-result-object v0

    iput-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->structureEngineer:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/StructureEngineer;

    .line 57
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->reset()V

    return-void
.end method
