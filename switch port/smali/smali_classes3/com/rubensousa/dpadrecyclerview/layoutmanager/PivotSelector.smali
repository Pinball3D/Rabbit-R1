.class public final Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;
.super Ljava/lang/Object;
.source "PivotSelector.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPivotSelector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PivotSelector.kt\ncom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,364:1\n1855#2,2:365\n1855#2,2:367\n1855#2,2:369\n1855#2,2:371\n*S KotlinDebug\n*F\n+ 1 PivotSelector.kt\ncom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector\n*L\n261#1:365,2\n267#1:367,2\n313#1:369,2\n319#1:371,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u001a\u0008\u0000\u0018\u0000 >2\u00020\u0001:\u0001>B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u000e\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0017J\u0010\u0010\u001e\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020\nH\u0002J\u0006\u0010 \u001a\u00020\u001cJ\u0006\u0010!\u001a\u00020\u001cJ\u0018\u0010\"\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u001f\u001a\u00020\nH\u0002J\u000e\u0010#\u001a\u00020\u00082\u0006\u0010$\u001a\u00020%J\u0006\u0010&\u001a\u00020\u001cJ\u0006\u0010\'\u001a\u00020\u001cJ\u0006\u0010(\u001a\u00020\u001cJ\u0006\u0010)\u001a\u00020\nJ\u0008\u0010*\u001a\u00020\u0008H\u0002J\u0016\u0010+\u001a\u00020\u001c2\u0006\u0010,\u001a\u00020\n2\u0006\u0010\u001f\u001a\u00020\nJ\u0006\u0010-\u001a\u00020\u001cJ\u001e\u0010.\u001a\u00020\u001c2\u0006\u0010/\u001a\u00020\n2\u0006\u00100\u001a\u00020\n2\u0006\u0010\u001f\u001a\u00020\nJ\u0016\u00101\u001a\u00020\u001c2\u0006\u0010,\u001a\u00020\n2\u0006\u0010\u001f\u001a\u00020\nJ\u000e\u00102\u001a\u00020\u001c2\u0006\u0010$\u001a\u00020%J\u0006\u00103\u001a\u00020\u001cJ\u000e\u00104\u001a\u00020\u001c2\u0006\u00105\u001a\u00020\u0008J\u000e\u00106\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0017J\u0006\u00107\u001a\u00020\u001cJ\u0010\u00108\u001a\u00020\u001c2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u0010\u00109\u001a\u00020\u001c2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010J\u0006\u0010:\u001a\u00020\u001cJ\u0018\u0010;\u001a\u00020\u00082\u0006\u0010<\u001a\u00020\n2\u0008\u0008\u0002\u0010=\u001a\u00020\nR\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\n@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u000e\u0010\u000e\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0015\u001a\u0012\u0012\u0004\u0012\u00020\u00170\u0016j\u0008\u0012\u0004\u0012\u00020\u0017`\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0019\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\n@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\r\u00a8\u0006?"
    }
    d2 = {
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;",
        "",
        "layoutManager",
        "Landroidx/recyclerview/widget/RecyclerView$LayoutManager;",
        "layoutInfo",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;",
        "(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;)V",
        "isSelectionUpdatePending",
        "",
        "<set-?>",
        "",
        "position",
        "getPosition",
        "()I",
        "positionOffset",
        "recyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "requestLayoutRunnable",
        "Ljava/lang/Runnable;",
        "selectedViewHolder",
        "Lcom/rubensousa/dpadrecyclerview/DpadViewHolder;",
        "selectionListeners",
        "Ljava/util/ArrayList;",
        "Lcom/rubensousa/dpadrecyclerview/OnViewHolderSelectedListener;",
        "Lkotlin/collections/ArrayList;",
        "subPosition",
        "getSubPosition",
        "addOnViewHolderSelectedListener",
        "",
        "listener",
        "applyPositionOffset",
        "itemCount",
        "clear",
        "clearOnViewHolderSelectedListeners",
        "constrainPivotPosition",
        "consumePendingSelectionChanges",
        "state",
        "Landroidx/recyclerview/widget/RecyclerView$State;",
        "disablePositionOffset",
        "dispatchViewHolderSelected",
        "dispatchViewHolderSelectedAndAligned",
        "getCurrentSubPositions",
        "hasSelectionListeners",
        "onItemsAdded",
        "positionStart",
        "onItemsChanged",
        "onItemsMoved",
        "fromPosition",
        "toPosition",
        "onItemsRemoved",
        "onLayoutChildren",
        "onLayoutCompleted",
        "removeCurrentViewHolderSelection",
        "clearSelection",
        "removeOnViewHolderSelectedListener",
        "resetPositionOffset",
        "scheduleNewLayout",
        "setRecyclerView",
        "setSelectionUpdatePending",
        "update",
        "newPosition",
        "newSubPosition",
        "Companion",
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
.field public static final Companion:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector$Companion;

.field public static final OFFSET_DISABLED:I = -0x80000000


# instance fields
.field private isSelectionUpdatePending:Z

.field private final layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

.field private final layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

.field private position:I

.field private positionOffset:I

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final requestLayoutRunnable:Ljava/lang/Runnable;

.field private selectedViewHolder:Lcom/rubensousa/dpadrecyclerview/DpadViewHolder;

.field private final selectionListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/rubensousa/dpadrecyclerview/OnViewHolderSelectedListener;",
            ">;"
        }
    .end annotation
.end field

.field private subPosition:I


# direct methods
.method public static synthetic $r8$lambda$WhLZM8WS5Kd088aEU5ayuZxdPGo(Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;)V
    .locals 0

    invoke-static {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->requestLayoutRunnable$lambda$0(Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->Companion:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;)V
    .locals 1

    const-string v0, "layoutManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iput-object p2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    const/4 p1, -0x1

    iput p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->position:I

    .line 57
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->selectionListeners:Ljava/util/ArrayList;

    .line 58
    new-instance p1, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector$$ExternalSyntheticLambda0;-><init>(Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;)V

    iput-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->requestLayoutRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private final applyPositionOffset(I)V
    .locals 2

    iget v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->position:I

    iget v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->positionOffset:I

    add-int/2addr v1, v0

    .line 93
    invoke-direct {p0, v1, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->constrainPivotPosition(II)I

    move-result p1

    iput p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->position:I

    if-eq p1, v0, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->setSelectionUpdatePending()V

    :cond_0
    return-void
.end method

.method private final constrainPivotPosition(II)I
    .locals 0

    if-nez p2, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    add-int/lit8 p2, p2, -0x1

    .line 109
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private final hasSelectionListeners()Z
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->selectionListeners:Ljava/util/ArrayList;

    .line 361
    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static final requestLayoutRunnable$lambda$0(Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    return-void
.end method

.method private final scheduleNewLayout(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 358
    check-cast p1, Landroid/view/View;

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->requestLayoutRunnable:Ljava/lang/Runnable;

    invoke-static {p1, p0}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic update$default(Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;IIILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 63
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->update(II)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final addOnViewHolderSelectedListener(Lcom/rubensousa/dpadrecyclerview/OnViewHolderSelectedListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->selectionListeners:Ljava/util/ArrayList;

    .line 328
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final clear()V
    .locals 3

    iget v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->position:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput v2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->position:I

    iput v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->positionOffset:I

    if-eqz v0, :cond_1

    .line 227
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->dispatchViewHolderSelected()V

    .line 228
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->dispatchViewHolderSelectedAndAligned()V

    :cond_1
    return-void
.end method

.method public final clearOnViewHolderSelectedListeners()V
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->selectionListeners:Ljava/util/ArrayList;

    .line 336
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final consumePendingSelectionChanges(Landroidx/recyclerview/widget/RecyclerView$State;)Z
    .locals 4

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->position:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    iget v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->positionOffset:I

    const/high16 v3, -0x80000000

    if-eq v1, v3, :cond_0

    .line 77
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->applyPositionOffset(I)V

    iput v2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->subPosition:I

    const/4 p1, 0x1

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    .line 82
    invoke-direct {p0, v0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->constrainPivotPosition(II)I

    move-result p1

    iput p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->position:I

    move p1, v2

    :goto_0
    iput v2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->positionOffset:I

    return p1
.end method

.method public final disablePositionOffset()V
    .locals 1

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->positionOffset:I

    return-void
.end method

.method public final dispatchViewHolderSelected()V
    .locals 7

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->position:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    move-object v1, v3

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 237
    invoke-virtual {v4, v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    .line 241
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v3

    :goto_1
    iget-object v4, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->selectedViewHolder:Lcom/rubensousa/dpadrecyclerview/DpadViewHolder;

    if-eq v1, v4, :cond_5

    if-eqz v4, :cond_3

    .line 247
    invoke-interface {v4}, Lcom/rubensousa/dpadrecyclerview/DpadViewHolder;->onViewHolderDeselected()V

    .line 248
    :cond_3
    instance-of v4, v1, Lcom/rubensousa/dpadrecyclerview/DpadViewHolder;

    if-eqz v4, :cond_4

    .line 249
    move-object v4, v1

    check-cast v4, Lcom/rubensousa/dpadrecyclerview/DpadViewHolder;

    iput-object v4, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->selectedViewHolder:Lcom/rubensousa/dpadrecyclerview/DpadViewHolder;

    .line 250
    invoke-interface {v4}, Lcom/rubensousa/dpadrecyclerview/DpadViewHolder;->onViewHolderSelected()V

    goto :goto_2

    :cond_4
    iput-object v3, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->selectedViewHolder:Lcom/rubensousa/dpadrecyclerview/DpadViewHolder;

    .line 256
    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->hasSelectionListeners()Z

    move-result v4

    if-nez v4, :cond_6

    return-void

    :cond_6
    const/4 v4, 0x0

    if-eqz v1, :cond_7

    iget-object v2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->selectionListeners:Ljava/util/ArrayList;

    .line 261
    check-cast v2, Ljava/lang/Iterable;

    .line 365
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/rubensousa/dpadrecyclerview/OnViewHolderSelectedListener;

    iget v5, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->position:I

    iget v6, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->subPosition:I

    .line 262
    invoke-interface {v3, v0, v1, v5, v6}, Lcom/rubensousa/dpadrecyclerview/OnViewHolderSelectedListener;->onViewHolderSelected(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;II)V

    goto :goto_3

    :cond_7
    iget-object v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->selectionListeners:Ljava/util/ArrayList;

    .line 267
    check-cast v1, Ljava/lang/Iterable;

    .line 367
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/rubensousa/dpadrecyclerview/OnViewHolderSelectedListener;

    .line 268
    invoke-interface {v5, v0, v3, v2, v4}, Lcom/rubensousa/dpadrecyclerview/OnViewHolderSelectedListener;->onViewHolderSelected(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;II)V

    goto :goto_4

    :cond_8
    iget-object v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 278
    invoke-virtual {v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->isLayoutInProgress()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->isLayoutRequested()Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 279
    invoke-virtual {v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getChildCount()I

    move-result v1

    :goto_5
    if-ge v4, v1, :cond_a

    iget-object v2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 281
    invoke-virtual {v2, v4}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 282
    invoke-virtual {v2}, Landroid/view/View;->isLayoutRequested()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 283
    invoke-direct {p0, v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->scheduleNewLayout(Landroidx/recyclerview/widget/RecyclerView;)V

    goto :goto_6

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_a
    :goto_6
    return-void
.end method

.method public final dispatchViewHolderSelectedAndAligned()V
    .locals 6

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->position:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    move-object v1, v3

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 296
    invoke-virtual {v4, v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    .line 299
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v3

    .line 304
    :goto_1
    instance-of v4, v1, Lcom/rubensousa/dpadrecyclerview/DpadViewHolder;

    if-eqz v4, :cond_3

    .line 305
    move-object v4, v1

    check-cast v4, Lcom/rubensousa/dpadrecyclerview/DpadViewHolder;

    invoke-interface {v4}, Lcom/rubensousa/dpadrecyclerview/DpadViewHolder;->onViewHolderSelectedAndAligned()V

    .line 308
    :cond_3
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->hasSelectionListeners()Z

    move-result v4

    if-nez v4, :cond_4

    return-void

    :cond_4
    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->selectionListeners:Ljava/util/ArrayList;

    .line 313
    check-cast v2, Ljava/lang/Iterable;

    .line 369
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/rubensousa/dpadrecyclerview/OnViewHolderSelectedListener;

    iget v4, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->position:I

    iget v5, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->subPosition:I

    .line 314
    invoke-interface {v3, v0, v1, v4, v5}, Lcom/rubensousa/dpadrecyclerview/OnViewHolderSelectedListener;->onViewHolderSelectedAndAligned(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;II)V

    goto :goto_2

    :cond_5
    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->selectionListeners:Ljava/util/ArrayList;

    .line 319
    check-cast p0, Ljava/lang/Iterable;

    .line 371
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rubensousa/dpadrecyclerview/OnViewHolderSelectedListener;

    const/4 v4, 0x0

    .line 320
    invoke-interface {v1, v0, v3, v2, v4}, Lcom/rubensousa/dpadrecyclerview/OnViewHolderSelectedListener;->onViewHolderSelectedAndAligned(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;II)V

    goto :goto_3

    :cond_6
    return-void
.end method

.method public final getCurrentSubPositions()I
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->selectedViewHolder:Lcom/rubensousa/dpadrecyclerview/DpadViewHolder;

    if-eqz p0, :cond_0

    .line 138
    invoke-interface {p0}, Lcom/rubensousa/dpadrecyclerview/DpadViewHolder;->getSubPositionAlignments()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getPosition()I
    .locals 0

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->position:I

    return p0
.end method

.method public final getSubPosition()I
    .locals 0

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->subPosition:I

    return p0
.end method

.method public final onItemsAdded(II)V
    .locals 3

    .line 154
    sget-object v0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->Companion:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$Companion;

    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$Companion;->getDEBUG$dpadrecyclerview_release()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onItemsAdded: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", positionStart: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", totalItems: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DpadRecyclerView"

    .line 155
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->position:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->positionOffset:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    add-int/2addr v0, v1

    if-gt p1, v0, :cond_1

    add-int/2addr v1, p2

    iput v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->positionOffset:I

    :cond_1
    return-void
.end method

.method public final onItemsChanged()V
    .locals 0

    .line 171
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->resetPositionOffset()V

    return-void
.end method

.method public final onItemsMoved(III)V
    .locals 3

    .line 201
    sget-object v0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->Companion:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$Companion;

    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$Companion;->getDEBUG$dpadrecyclerview_release()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onItemsMoved "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " fromPosition "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", toPosition: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", totalItems: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 204
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v1

    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DpadRecyclerView"

    .line 202
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->position:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    iget v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->positionOffset:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_3

    add-int/2addr v0, v1

    if-gt p1, v0, :cond_1

    add-int v2, p1, p3

    if-ge v0, v2, :cond_1

    sub-int/2addr p2, p1

    add-int/2addr v1, p2

    iput v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->positionOffset:I

    goto :goto_0

    :cond_1
    if-ge p1, v0, :cond_2

    sub-int v2, v0, p3

    if-le p2, v2, :cond_2

    sub-int/2addr v1, p3

    iput v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->positionOffset:I

    goto :goto_0

    :cond_2
    if-le p1, v0, :cond_3

    if-ge p2, v0, :cond_3

    add-int/2addr v1, p3

    iput v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->positionOffset:I

    :cond_3
    :goto_0
    return-void
.end method

.method public final onItemsRemoved(II)V
    .locals 4

    .line 175
    sget-object v0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->Companion:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$Companion;

    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$Companion;->getDEBUG$dpadrecyclerview_release()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onItemsRemoved: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", positionStart: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", totalItems: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DpadRecyclerView"

    .line 176
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->position:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    iget v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->positionOffset:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_3

    add-int/2addr v0, v1

    if-le p1, v0, :cond_1

    return-void

    :cond_1
    add-int v3, p1, p2

    if-le v3, v0, :cond_2

    sub-int/2addr p1, v0

    add-int/2addr v1, p1

    iput v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->positionOffset:I

    iget-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 191
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->applyPositionOffset(I)V

    iput v2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->positionOffset:I

    .line 193
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->setSelectionUpdatePending()V

    goto :goto_0

    :cond_2
    sub-int/2addr v1, p2

    iput v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->positionOffset:I

    :cond_3
    :goto_0
    return-void
.end method

.method public final onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 5

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    iget p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->position:I

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->isSelectionUpdatePending:Z

    iput v2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->position:I

    iput v3, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->subPosition:I

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->position:I

    .line 118
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v4

    if-lt v0, v4, :cond_2

    .line 119
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->position:I

    iput v3, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->subPosition:I

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->position:I

    if-ne v0, v2, :cond_3

    .line 121
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    if-lez p1, :cond_3

    iput v3, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->position:I

    iput v3, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->positionOffset:I

    .line 125
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->setSelectionUpdatePending()V

    :cond_3
    :goto_1
    return-void
.end method

.method public final onLayoutCompleted()V
    .locals 1

    iget-boolean v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->isSelectionUpdatePending:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->isSelectionUpdatePending:Z

    .line 132
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->dispatchViewHolderSelected()V

    .line 133
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->dispatchViewHolderSelectedAndAligned()V

    :cond_0
    return-void
.end method

.method public final removeCurrentViewHolderSelection(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->position:I

    iput p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->positionOffset:I

    :cond_0
    iget-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->selectedViewHolder:Lcom/rubensousa/dpadrecyclerview/DpadViewHolder;

    if-eqz p1, :cond_1

    .line 348
    invoke-interface {p1}, Lcom/rubensousa/dpadrecyclerview/DpadViewHolder;->onViewHolderDeselected()V

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->selectedViewHolder:Lcom/rubensousa/dpadrecyclerview/DpadViewHolder;

    return-void
.end method

.method public final removeOnViewHolderSelectedListener(Lcom/rubensousa/dpadrecyclerview/OnViewHolderSelectedListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->selectionListeners:Ljava/util/ArrayList;

    .line 332
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final resetPositionOffset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->positionOffset:I

    return-void
.end method

.method public final setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    iput-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public final setSelectionUpdatePending()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->isSelectionUpdatePending:Z

    return-void
.end method

.method public final update(II)Z
    .locals 3

    iget v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->position:I

    iget v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->subPosition:I

    iget-object v2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 68
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v2

    .line 66
    invoke-direct {p0, p1, v2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->constrainPivotPosition(II)I

    move-result p1

    iput p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->position:I

    iput p2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->subPosition:I

    if-ne p1, v0, :cond_1

    if-eq p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
