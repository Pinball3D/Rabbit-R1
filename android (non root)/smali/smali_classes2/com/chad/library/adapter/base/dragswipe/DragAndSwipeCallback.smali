.class public Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "DragAndSwipeCallback.java"


# instance fields
.field private mDragMoveFlags:I

.field private mDraggableModule:Lcom/chad/library/adapter/base/module/BaseDraggableModule;

.field private mMoveThreshold:F

.field private mSwipeMoveFlags:I

.field private mSwipeThreshold:F


# direct methods
.method public constructor <init>(Lcom/chad/library/adapter/base/module/BaseDraggableModule;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;->mMoveThreshold:F

    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;->mSwipeThreshold:F

    const/16 v0, 0xf

    iput v0, p0, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;->mDragMoveFlags:I

    const/16 v0, 0x20

    iput v0, p0, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;->mSwipeMoveFlags:I

    iput-object p1, p0, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;->mDraggableModule:Lcom/chad/library/adapter/base/module/BaseDraggableModule;

    return-void
.end method

.method private isViewCreateByAdapter(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 211
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p0

    const p1, 0x10000111

    if-eq p0, p1, :cond_1

    const p1, 0x10000222

    if-eq p0, p1, :cond_1

    const p1, 0x10000333

    if-eq p0, p1, :cond_1

    const p1, 0x10000555

    if-ne p0, p1, :cond_0

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


# virtual methods
.method public clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 3

    .line 71
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 72
    invoke-direct {p0, p2}, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;->isViewCreateByAdapter(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 76
    :cond_0
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/chad/library/R$id;->BaseQuickAdapter_dragging_support:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/chad/library/R$id;->BaseQuickAdapter_dragging_support:I

    .line 77
    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;->mDraggableModule:Lcom/chad/library/adapter/base/module/BaseDraggableModule;

    if-eqz p1, :cond_1

    .line 79
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->onItemDragEnd(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 81
    :cond_1
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/chad/library/R$id;->BaseQuickAdapter_dragging_support:I

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 83
    :cond_2
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/chad/library/R$id;->BaseQuickAdapter_swiping_support:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/chad/library/R$id;->BaseQuickAdapter_swiping_support:I

    .line 84
    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;->mDraggableModule:Lcom/chad/library/adapter/base/module/BaseDraggableModule;

    if-eqz p0, :cond_3

    .line 86
    invoke-virtual {p0, p2}, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->onItemSwipeClear(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 88
    :cond_3
    iget-object p0, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget p1, Lcom/chad/library/R$id;->BaseQuickAdapter_swiping_support:I

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public getMoveThreshold(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)F
    .locals 0

    iget p0, p0, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;->mMoveThreshold:F

    return p0
.end method

.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 0

    .line 94
    invoke-direct {p0, p2}, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;->isViewCreateByAdapter(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    .line 95
    invoke-static {p0, p0}, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;->makeMovementFlags(II)I

    move-result p0

    return p0

    :cond_0
    iget p1, p0, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;->mDragMoveFlags:I

    iget p0, p0, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;->mSwipeMoveFlags:I

    .line 98
    invoke-static {p1, p0}, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;->makeMovementFlags(II)I

    move-result p0

    return p0
.end method

.method public getSwipeThreshold(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)F
    .locals 0

    iget p0, p0, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;->mSwipeThreshold:F

    return p0
.end method

.method public isItemViewSwipeEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;->mDraggableModule:Lcom/chad/library/adapter/base/module/BaseDraggableModule;

    if-eqz p0, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->isSwipeEnabled()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isLongPressDragEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;->mDraggableModule:Lcom/chad/library/adapter/base/module/BaseDraggableModule;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->isDragEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;->mDraggableModule:Lcom/chad/library/adapter/base/module/BaseDraggableModule;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->hasToggleView()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public onChildDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 6

    .line 186
    invoke-super/range {p0 .. p7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onChildDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    const/4 p2, 0x1

    if-ne p6, p2, :cond_2

    .line 189
    invoke-direct {p0, p3}, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;->isViewCreateByAdapter(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 190
    iget-object p2, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 192
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 p6, 0x0

    cmpl-float p6, p4, p6

    if-lez p6, :cond_0

    .line 194
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p6

    int-to-float p6, p6

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    .line 195
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, p4

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v2, v2

    .line 194
    invoke-virtual {p1, p6, v0, v1, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 196
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p6

    int-to-float p6, p6

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p6, p2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 198
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p6

    int-to-float p6, p6

    add-float/2addr p6, p4

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    .line 199
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v2, v2

    .line 198
    invoke-virtual {p1, p6, v0, v1, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 200
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p6

    int-to-float p6, p6

    add-float/2addr p6, p4

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p6, p2}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_0
    iget-object v0, p0, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;->mDraggableModule:Lcom/chad/library/adapter/base/module/BaseDraggableModule;

    if-eqz v0, :cond_1

    move-object v1, p1

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p7

    .line 203
    invoke-virtual/range {v0 .. v5}, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->onItemSwiping(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFZ)V

    .line 205
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    return-void
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 103
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p0

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onMoved(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;III)V
    .locals 0

    .line 108
    invoke-super/range {p0 .. p7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onMoved(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;III)V

    iget-object p0, p0, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;->mDraggableModule:Lcom/chad/library/adapter/base/module/BaseDraggableModule;

    if-eqz p0, :cond_0

    .line 110
    invoke-virtual {p0, p2, p4}, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->onItemDragMoving(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    return-void
.end method

.method public onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 58
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    if-ne p2, v0, :cond_1

    .line 54
    invoke-direct {p0, p1}, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;->isViewCreateByAdapter(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;->mDraggableModule:Lcom/chad/library/adapter/base/module/BaseDraggableModule;

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->onItemDragStart(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 58
    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/chad/library/R$id;->BaseQuickAdapter_dragging_support:I

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    if-ne p2, v1, :cond_3

    .line 60
    invoke-direct {p0, p1}, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;->isViewCreateByAdapter(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;->mDraggableModule:Lcom/chad/library/adapter/base/module/BaseDraggableModule;

    if-eqz v0, :cond_2

    .line 62
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->onItemSwipeStart(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 64
    :cond_2
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/chad/library/R$id;->BaseQuickAdapter_swiping_support:I

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 66
    :cond_3
    :goto_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 116
    invoke-direct {p0, p1}, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;->isViewCreateByAdapter(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p0, p0, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;->mDraggableModule:Lcom/chad/library/adapter/base/module/BaseDraggableModule;

    if-eqz p0, :cond_0

    .line 118
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->onItemSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    return-void
.end method

.method public setDragMoveFlags(I)V
    .locals 0

    iput p1, p0, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;->mDragMoveFlags:I

    return-void
.end method

.method public setMoveThreshold(F)V
    .locals 0

    iput p1, p0, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;->mMoveThreshold:F

    return-void
.end method

.method public setSwipeMoveFlags(I)V
    .locals 0

    iput p1, p0, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;->mSwipeMoveFlags:I

    return-void
.end method

.method public setSwipeThreshold(F)V
    .locals 0

    iput p1, p0, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;->mSwipeThreshold:F

    return-void
.end method
