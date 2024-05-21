.class public Lcom/chad/library/adapter/base/module/BaseDraggableModule;
.super Ljava/lang/Object;
.source "DraggableModule.kt"

# interfaces
.implements Lcom/chad/library/adapter/base/listener/DraggableListenerImp;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chad/library/adapter/base/module/BaseDraggableModule$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000~\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0008\u0008\u0016\u0018\u0000 [2\u00020\u0001:\u0001[B\u0015\u0012\u000e\u0010\u0002\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u00109\u001a\u00020:2\u0006\u0010;\u001a\u00020<J\u0010\u0010=\u001a\u0002042\u0006\u0010>\u001a\u00020?H\u0004J\u0008\u0010@\u001a\u00020\u0006H\u0016J\u0010\u0010A\u001a\u00020\u00062\u0006\u0010B\u001a\u000204H\u0002J\u0008\u0010C\u001a\u00020:H\u0002J\u0015\u0010D\u001a\u00020:2\u0006\u0010E\u001a\u00020FH\u0000\u00a2\u0006\u0002\u0008GJ\u0010\u0010H\u001a\u00020:2\u0006\u0010>\u001a\u00020?H\u0016J\u0018\u0010I\u001a\u00020:2\u0006\u0010J\u001a\u00020?2\u0006\u0010K\u001a\u00020?H\u0016J\u0010\u0010L\u001a\u00020:2\u0006\u0010>\u001a\u00020?H\u0016J\u0010\u0010M\u001a\u00020:2\u0006\u0010>\u001a\u00020?H\u0016J\u0010\u0010N\u001a\u00020:2\u0006\u0010>\u001a\u00020?H\u0016J\u0010\u0010O\u001a\u00020:2\u0006\u0010>\u001a\u00020?H\u0016J4\u0010P\u001a\u00020:2\u0008\u0010Q\u001a\u0004\u0018\u00010R2\u0008\u0010>\u001a\u0004\u0018\u00010?2\u0006\u0010S\u001a\u00020T2\u0006\u0010U\u001a\u00020T2\u0006\u0010V\u001a\u00020\u0006H\u0016J\u0012\u0010W\u001a\u00020:2\u0008\u0010X\u001a\u0004\u0018\u00010\u001cH\u0016J\u0012\u0010Y\u001a\u00020:2\u0008\u0010Z\u001a\u0004\u0018\u00010\"H\u0016R\u0016\u0010\u0002\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0007\"\u0004\u0008\u0008\u0010\tR$\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u0006@VX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u0007\"\u0004\u0008\u000c\u0010\tR\u001a\u0010\r\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u0007\"\u0004\u0008\u000e\u0010\tR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R\u001c\u0010!\u001a\u0004\u0018\u00010\"X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&R\u001c\u0010\'\u001a\u0004\u0018\u00010(X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010*\"\u0004\u0008+\u0010,R\u001c\u0010-\u001a\u0004\u0018\u00010.X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u00100\"\u0004\u00081\u00102R\u001a\u00103\u001a\u000204X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00085\u00106\"\u0004\u00087\u00108\u00a8\u0006\\"
    }
    d2 = {
        "Lcom/chad/library/adapter/base/module/BaseDraggableModule;",
        "Lcom/chad/library/adapter/base/listener/DraggableListenerImp;",
        "baseQuickAdapter",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "(Lcom/chad/library/adapter/base/BaseQuickAdapter;)V",
        "isDragEnabled",
        "",
        "()Z",
        "setDragEnabled",
        "(Z)V",
        "value",
        "isDragOnLongPressEnabled",
        "setDragOnLongPressEnabled",
        "isSwipeEnabled",
        "setSwipeEnabled",
        "itemTouchHelper",
        "Landroidx/recyclerview/widget/ItemTouchHelper;",
        "getItemTouchHelper",
        "()Landroidx/recyclerview/widget/ItemTouchHelper;",
        "setItemTouchHelper",
        "(Landroidx/recyclerview/widget/ItemTouchHelper;)V",
        "itemTouchHelperCallback",
        "Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;",
        "getItemTouchHelperCallback",
        "()Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;",
        "setItemTouchHelperCallback",
        "(Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;)V",
        "mOnItemDragListener",
        "Lcom/chad/library/adapter/base/listener/OnItemDragListener;",
        "getMOnItemDragListener",
        "()Lcom/chad/library/adapter/base/listener/OnItemDragListener;",
        "setMOnItemDragListener",
        "(Lcom/chad/library/adapter/base/listener/OnItemDragListener;)V",
        "mOnItemSwipeListener",
        "Lcom/chad/library/adapter/base/listener/OnItemSwipeListener;",
        "getMOnItemSwipeListener",
        "()Lcom/chad/library/adapter/base/listener/OnItemSwipeListener;",
        "setMOnItemSwipeListener",
        "(Lcom/chad/library/adapter/base/listener/OnItemSwipeListener;)V",
        "mOnToggleViewLongClickListener",
        "Landroid/view/View$OnLongClickListener;",
        "getMOnToggleViewLongClickListener",
        "()Landroid/view/View$OnLongClickListener;",
        "setMOnToggleViewLongClickListener",
        "(Landroid/view/View$OnLongClickListener;)V",
        "mOnToggleViewTouchListener",
        "Landroid/view/View$OnTouchListener;",
        "getMOnToggleViewTouchListener",
        "()Landroid/view/View$OnTouchListener;",
        "setMOnToggleViewTouchListener",
        "(Landroid/view/View$OnTouchListener;)V",
        "toggleViewId",
        "",
        "getToggleViewId",
        "()I",
        "setToggleViewId",
        "(I)V",
        "attachToRecyclerView",
        "",
        "recyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "getViewHolderPosition",
        "viewHolder",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "hasToggleView",
        "inRange",
        "position",
        "initItemTouch",
        "initView",
        "holder",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "initView$com_github_CymChad_brvah",
        "onItemDragEnd",
        "onItemDragMoving",
        "source",
        "target",
        "onItemDragStart",
        "onItemSwipeClear",
        "onItemSwipeStart",
        "onItemSwiped",
        "onItemSwiping",
        "canvas",
        "Landroid/graphics/Canvas;",
        "dX",
        "",
        "dY",
        "isCurrentlyActive",
        "setOnItemDragListener",
        "onItemDragListener",
        "setOnItemSwipeListener",
        "onItemSwipeListener",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/chad/library/adapter/base/module/BaseDraggableModule$Companion;

.field private static final NO_TOGGLE_VIEW:I


# instance fields
.field private final baseQuickAdapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
            "**>;"
        }
    .end annotation
.end field

.field private isDragEnabled:Z

.field private isDragOnLongPressEnabled:Z

.field private isSwipeEnabled:Z

.field public itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

.field public itemTouchHelperCallback:Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;

.field private mOnItemDragListener:Lcom/chad/library/adapter/base/listener/OnItemDragListener;

.field private mOnItemSwipeListener:Lcom/chad/library/adapter/base/listener/OnItemSwipeListener;

.field private mOnToggleViewLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mOnToggleViewTouchListener:Landroid/view/View$OnTouchListener;

.field private toggleViewId:I


# direct methods
.method public static synthetic $r8$lambda$Cl8QboUHBs-qjnFL_ASBzXiEir8(Lcom/chad/library/adapter/base/module/BaseDraggableModule;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->_set_isDragOnLongPressEnabled_$lambda$1(Lcom/chad/library/adapter/base/module/BaseDraggableModule;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$hfMRQ6nYz26ZUFRr2ysXa_Fb6_E(Lcom/chad/library/adapter/base/module/BaseDraggableModule;Landroid/view/View;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->_set_isDragOnLongPressEnabled_$lambda$0(Lcom/chad/library/adapter/base/module/BaseDraggableModule;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/chad/library/adapter/base/module/BaseDraggableModule$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/chad/library/adapter/base/module/BaseDraggableModule$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->Companion:Lcom/chad/library/adapter/base/module/BaseDraggableModule$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/chad/library/adapter/base/BaseQuickAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
            "**>;)V"
        }
    .end annotation

    const-string v0, "baseQuickAdapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->baseQuickAdapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 53
    invoke-direct {p0}, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->initItemTouch()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->isDragOnLongPressEnabled:Z

    return-void
.end method

.method private static final _set_isDragOnLongPressEnabled_$lambda$0(Lcom/chad/library/adapter/base/module/BaseDraggableModule;Landroid/view/View;)Z
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    iget-boolean v0, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->isDragEnabled:Z

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->getItemTouchHelper()Landroidx/recyclerview/widget/ItemTouchHelper;

    move-result-object p0

    sget v0, Lcom/chad/library/R$id;->BaseQuickAdapter_viewholder_support:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView.ViewHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->startDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private static final _set_isDragOnLongPressEnabled_$lambda$1(Lcom/chad/library/adapter/base/module/BaseDraggableModule;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->isDragOnLongPressEnabled()Z

    move-result p2

    if-nez p2, :cond_1

    .line 108
    iget-boolean p2, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->isDragEnabled:Z

    if-eqz p2, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->getItemTouchHelper()Landroidx/recyclerview/widget/ItemTouchHelper;

    move-result-object p0

    sget p2, Lcom/chad/library/R$id;->BaseQuickAdapter_viewholder_support:I

    invoke-virtual {p1, p2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView.ViewHolder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->startDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final inRange(I)Z
    .locals 0

    if-ltz p1, :cond_0

    iget-object p0, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->baseQuickAdapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 185
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-ge p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final initItemTouch()V
    .locals 2

    .line 57
    new-instance v0, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;

    invoke-direct {v0, p0}, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;-><init>(Lcom/chad/library/adapter/base/module/BaseDraggableModule;)V

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->setItemTouchHelperCallback(Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;)V

    .line 58
    new-instance v0, Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->getItemTouchHelperCallback()Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->setItemTouchHelper(Landroidx/recyclerview/widget/ItemTouchHelper;)V

    return-void
.end method


# virtual methods
.method public final attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->getItemTouchHelper()Landroidx/recyclerview/widget/ItemTouchHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public final getItemTouchHelper()Landroidx/recyclerview/widget/ItemTouchHelper;
    .locals 0

    iget-object p0, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "itemTouchHelper"

    .line 44
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getItemTouchHelperCallback()Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;
    .locals 0

    iget-object p0, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->itemTouchHelperCallback:Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "itemTouchHelperCallback"

    .line 45
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method protected final getMOnItemDragListener()Lcom/chad/library/adapter/base/listener/OnItemDragListener;
    .locals 0

    iget-object p0, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->mOnItemDragListener:Lcom/chad/library/adapter/base/listener/OnItemDragListener;

    return-object p0
.end method

.method protected final getMOnItemSwipeListener()Lcom/chad/library/adapter/base/listener/OnItemSwipeListener;
    .locals 0

    iget-object p0, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->mOnItemSwipeListener:Lcom/chad/library/adapter/base/listener/OnItemSwipeListener;

    return-object p0
.end method

.method protected final getMOnToggleViewLongClickListener()Landroid/view/View$OnLongClickListener;
    .locals 0

    iget-object p0, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->mOnToggleViewLongClickListener:Landroid/view/View$OnLongClickListener;

    return-object p0
.end method

.method protected final getMOnToggleViewTouchListener()Landroid/view/View$OnTouchListener;
    .locals 0

    iget-object p0, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->mOnToggleViewTouchListener:Landroid/view/View$OnTouchListener;

    return-object p0
.end method

.method public final getToggleViewId()I
    .locals 0

    iget p0, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->toggleViewId:I

    return p0
.end method

.method protected final getViewHolderPosition(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 1

    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    iget-object p0, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->baseQuickAdapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method

.method public hasToggleView()Z
    .locals 0

    iget p0, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->toggleViewId:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final initView$com_github_CymChad_brvah(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->isDragEnabled:Z

    if-eqz v0, :cond_1

    .line 63
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->hasToggleView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p1, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->itemView:Landroid/view/View;

    iget v1, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->toggleViewId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 66
    sget v1, Lcom/chad/library/R$id;->BaseQuickAdapter_viewholder_support:I

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 67
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->isDragOnLongPressEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->mOnToggleViewLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 68
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->mOnToggleViewTouchListener:Landroid/view/View$OnTouchListener;

    .line 70
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final isDragEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->isDragEnabled:Z

    return p0
.end method

.method public isDragOnLongPressEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->isDragOnLongPressEnabled:Z

    return p0
.end method

.method public final isSwipeEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->isSwipeEnabled:Z

    return p0
.end method

.method public onItemDragEnd(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->mOnItemDragListener:Lcom/chad/library/adapter/base/listener/OnItemDragListener;

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->getViewHolderPosition(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result p0

    invoke-interface {v0, p1, p0}, Lcom/chad/library/adapter/base/listener/OnItemDragListener;->onItemDragEnd(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :cond_0
    return-void
.end method

.method public onItemDragMoving(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 6

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "target"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->getViewHolderPosition(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v0

    .line 133
    invoke-virtual {p0, p2}, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->getViewHolderPosition(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v1

    .line 134
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->inRange(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v1}, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->inRange(I)Z

    move-result v2

    if-eqz v2, :cond_2

    if-ge v0, v1, :cond_0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->baseQuickAdapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 137
    invoke-virtual {v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    invoke-static {v3, v2, v4}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    move v2, v4

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v1, 0x1

    if-gt v2, v0, :cond_1

    move v3, v0

    :goto_1
    iget-object v4, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->baseQuickAdapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 141
    invoke-virtual {v4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v4

    add-int/lit8 v5, v3, -0x1

    invoke-static {v4, v3, v5}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    if-eq v3, v2, :cond_1

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->baseQuickAdapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 144
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v3

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->notifyItemMoved(II)V

    :cond_2
    iget-object p0, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->mOnItemDragListener:Lcom/chad/library/adapter/base/listener/OnItemDragListener;

    if-eqz p0, :cond_3

    .line 146
    invoke-interface {p0, p1, v0, p2, v1}, Lcom/chad/library/adapter/base/listener/OnItemDragListener;->onItemDragMoving(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :cond_3
    return-void
.end method

.method public onItemDragStart(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->mOnItemDragListener:Lcom/chad/library/adapter/base/listener/OnItemDragListener;

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->getViewHolderPosition(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result p0

    invoke-interface {v0, p1, p0}, Lcom/chad/library/adapter/base/listener/OnItemDragListener;->onItemDragStart(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :cond_0
    return-void
.end method

.method public onItemSwipeClear(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->isSwipeEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->mOnItemSwipeListener:Lcom/chad/library/adapter/base/listener/OnItemSwipeListener;

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->getViewHolderPosition(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result p0

    invoke-interface {v0, p1, p0}, Lcom/chad/library/adapter/base/listener/OnItemSwipeListener;->clearView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :cond_0
    return-void
.end method

.method public onItemSwipeStart(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->isSwipeEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->mOnItemSwipeListener:Lcom/chad/library/adapter/base/listener/OnItemSwipeListener;

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->getViewHolderPosition(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result p0

    invoke-interface {v0, p1, p0}, Lcom/chad/library/adapter/base/listener/OnItemSwipeListener;->onItemSwipeStart(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :cond_0
    return-void
.end method

.method public onItemSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 3

    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->getViewHolderPosition(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v0

    .line 169
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->inRange(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->baseQuickAdapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 170
    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->baseQuickAdapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 171
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->notifyItemRemoved(I)V

    iget-boolean v1, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->isSwipeEnabled:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->mOnItemSwipeListener:Lcom/chad/library/adapter/base/listener/OnItemSwipeListener;

    if-eqz p0, :cond_0

    .line 173
    invoke-interface {p0, p1, v0}, Lcom/chad/library/adapter/base/listener/OnItemSwipeListener;->onItemSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :cond_0
    return-void
.end method

.method public onItemSwiping(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFZ)V
    .locals 7

    iget-boolean v0, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->isSwipeEnabled:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->mOnItemSwipeListener:Lcom/chad/library/adapter/base/listener/OnItemSwipeListener;

    if-eqz v1, :cond_0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 180
    invoke-interface/range {v1 .. v6}, Lcom/chad/library/adapter/base/listener/OnItemSwipeListener;->onItemSwipeMoving(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFZ)V

    :cond_0
    return-void
.end method

.method public final setDragEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->isDragEnabled:Z

    return-void
.end method

.method public setDragOnLongPressEnabled(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->isDragOnLongPressEnabled:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iput-object v0, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->mOnToggleViewTouchListener:Landroid/view/View$OnTouchListener;

    .line 99
    new-instance p1, Lcom/chad/library/adapter/base/module/BaseDraggableModule$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/chad/library/adapter/base/module/BaseDraggableModule$$ExternalSyntheticLambda0;-><init>(Lcom/chad/library/adapter/base/module/BaseDraggableModule;)V

    iput-object p1, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->mOnToggleViewLongClickListener:Landroid/view/View$OnLongClickListener;

    goto :goto_0

    .line 106
    :cond_0
    new-instance p1, Lcom/chad/library/adapter/base/module/BaseDraggableModule$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/chad/library/adapter/base/module/BaseDraggableModule$$ExternalSyntheticLambda1;-><init>(Lcom/chad/library/adapter/base/module/BaseDraggableModule;)V

    iput-object p1, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->mOnToggleViewTouchListener:Landroid/view/View$OnTouchListener;

    iput-object v0, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->mOnToggleViewLongClickListener:Landroid/view/View$OnLongClickListener;

    :goto_0
    return-void
.end method

.method public final setItemTouchHelper(Landroidx/recyclerview/widget/ItemTouchHelper;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    return-void
.end method

.method public final setItemTouchHelperCallback(Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->itemTouchHelperCallback:Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;

    return-void
.end method

.method protected final setMOnItemDragListener(Lcom/chad/library/adapter/base/listener/OnItemDragListener;)V
    .locals 0

    iput-object p1, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->mOnItemDragListener:Lcom/chad/library/adapter/base/listener/OnItemDragListener;

    return-void
.end method

.method protected final setMOnItemSwipeListener(Lcom/chad/library/adapter/base/listener/OnItemSwipeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->mOnItemSwipeListener:Lcom/chad/library/adapter/base/listener/OnItemSwipeListener;

    return-void
.end method

.method protected final setMOnToggleViewLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->mOnToggleViewLongClickListener:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method protected final setMOnToggleViewTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->mOnToggleViewTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public setOnItemDragListener(Lcom/chad/library/adapter/base/listener/OnItemDragListener;)V
    .locals 0

    iput-object p1, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->mOnItemDragListener:Lcom/chad/library/adapter/base/listener/OnItemDragListener;

    return-void
.end method

.method public setOnItemSwipeListener(Lcom/chad/library/adapter/base/listener/OnItemSwipeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->mOnItemSwipeListener:Lcom/chad/library/adapter/base/listener/OnItemSwipeListener;

    return-void
.end method

.method public final setSwipeEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->isSwipeEnabled:Z

    return-void
.end method

.method public final setToggleViewId(I)V
    .locals 0

    iput p1, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->toggleViewId:I

    return-void
.end method
