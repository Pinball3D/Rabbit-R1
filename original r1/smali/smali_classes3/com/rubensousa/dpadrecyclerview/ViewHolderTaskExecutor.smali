.class public final Lcom/rubensousa/dpadrecyclerview/ViewHolderTaskExecutor;
.super Ljava/lang/Object;
.source "ViewHolderTaskExecutor.kt"

# interfaces
.implements Lcom/rubensousa/dpadrecyclerview/OnViewHolderSelectedListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0002J*\u0010\u000c\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0006H\u0016J*\u0010\u0012\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0006H\u0016J\u0016\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0004J\u001e\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0004R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/rubensousa/dpadrecyclerview/ViewHolderTaskExecutor;",
        "Lcom/rubensousa/dpadrecyclerview/OnViewHolderSelectedListener;",
        "()V",
        "pendingTask",
        "Lcom/rubensousa/dpadrecyclerview/ViewHolderTask;",
        "targetPosition",
        "",
        "targetSubPosition",
        "executePendingTask",
        "",
        "viewHolder",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "onViewHolderSelected",
        "parent",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "child",
        "position",
        "subPosition",
        "onViewHolderSelectedAndAligned",
        "schedule",
        "task",
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
.field private pendingTask:Lcom/rubensousa/dpadrecyclerview/ViewHolderTask;

.field private targetPosition:I

.field private targetSubPosition:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/rubensousa/dpadrecyclerview/ViewHolderTaskExecutor;->targetPosition:I

    iput v0, p0, Lcom/rubensousa/dpadrecyclerview/ViewHolderTaskExecutor;->targetSubPosition:I

    return-void
.end method

.method private final executePendingTask(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/ViewHolderTaskExecutor;->pendingTask:Lcom/rubensousa/dpadrecyclerview/ViewHolderTask;

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0, p1}, Lcom/rubensousa/dpadrecyclerview/ViewHolderTask;->execute(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/rubensousa/dpadrecyclerview/ViewHolderTaskExecutor;->pendingTask:Lcom/rubensousa/dpadrecyclerview/ViewHolderTask;

    const/4 p1, -0x1

    iput p1, p0, Lcom/rubensousa/dpadrecyclerview/ViewHolderTaskExecutor;->targetPosition:I

    return-void
.end method


# virtual methods
.method public onViewHolderSelected(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;II)V
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p0, Lcom/rubensousa/dpadrecyclerview/ViewHolderTaskExecutor;->targetPosition:I

    if-ne p3, p1, :cond_1

    if-eqz p2, :cond_1

    iget p1, p0, Lcom/rubensousa/dpadrecyclerview/ViewHolderTaskExecutor;->targetSubPosition:I

    const/4 p3, -0x1

    if-eq p1, p3, :cond_0

    if-ne p1, p4, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/rubensousa/dpadrecyclerview/ViewHolderTaskExecutor;->pendingTask:Lcom/rubensousa/dpadrecyclerview/ViewHolderTask;

    if-eqz p1, :cond_1

    .line 48
    invoke-virtual {p1}, Lcom/rubensousa/dpadrecyclerview/ViewHolderTask;->getExecuteWhenAligned()Z

    move-result p1

    if-nez p1, :cond_1

    .line 50
    invoke-direct {p0, p2}, Lcom/rubensousa/dpadrecyclerview/ViewHolderTaskExecutor;->executePendingTask(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_1
    return-void
.end method

.method public onViewHolderSelectedAndAligned(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;II)V
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p0, Lcom/rubensousa/dpadrecyclerview/ViewHolderTaskExecutor;->targetPosition:I

    if-ne p3, p1, :cond_1

    if-eqz p2, :cond_1

    iget p1, p0, Lcom/rubensousa/dpadrecyclerview/ViewHolderTaskExecutor;->targetSubPosition:I

    const/4 p3, -0x1

    if-eq p1, p3, :cond_0

    if-ne p1, p4, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/rubensousa/dpadrecyclerview/ViewHolderTaskExecutor;->pendingTask:Lcom/rubensousa/dpadrecyclerview/ViewHolderTask;

    if-eqz p1, :cond_1

    .line 63
    invoke-virtual {p1}, Lcom/rubensousa/dpadrecyclerview/ViewHolderTask;->getExecuteWhenAligned()Z

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_1

    .line 65
    invoke-direct {p0, p2}, Lcom/rubensousa/dpadrecyclerview/ViewHolderTaskExecutor;->executePendingTask(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_1
    return-void
.end method

.method public final schedule(IILcom/rubensousa/dpadrecyclerview/ViewHolderTask;)V
    .locals 1

    const-string v0, "task"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput p1, p0, Lcom/rubensousa/dpadrecyclerview/ViewHolderTaskExecutor;->targetPosition:I

    iput p2, p0, Lcom/rubensousa/dpadrecyclerview/ViewHolderTaskExecutor;->targetSubPosition:I

    iput-object p3, p0, Lcom/rubensousa/dpadrecyclerview/ViewHolderTaskExecutor;->pendingTask:Lcom/rubensousa/dpadrecyclerview/ViewHolderTask;

    return-void
.end method

.method public final schedule(ILcom/rubensousa/dpadrecyclerview/ViewHolderTask;)V
    .locals 1

    const-string v0, "task"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput p1, p0, Lcom/rubensousa/dpadrecyclerview/ViewHolderTaskExecutor;->targetPosition:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/rubensousa/dpadrecyclerview/ViewHolderTaskExecutor;->targetSubPosition:I

    iput-object p2, p0, Lcom/rubensousa/dpadrecyclerview/ViewHolderTaskExecutor;->pendingTask:Lcom/rubensousa/dpadrecyclerview/ViewHolderTask;

    return-void
.end method
