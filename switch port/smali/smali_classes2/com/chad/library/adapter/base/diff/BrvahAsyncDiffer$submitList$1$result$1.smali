.class public final Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer$submitList$1$result$1;
.super Landroidx/recyclerview/widget/DiffUtil$Callback;
.source "BrvahAsyncDiffer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->submitList(Ljava/util/List;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0018\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u001a\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0008\u0010\n\u001a\u00020\u0005H\u0016J\u0008\u0010\u000b\u001a\u00020\u0005H\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "com/chad/library/adapter/base/diff/BrvahAsyncDiffer$submitList$1$result$1",
        "Landroidx/recyclerview/widget/DiffUtil$Callback;",
        "areContentsTheSame",
        "",
        "oldItemPosition",
        "",
        "newItemPosition",
        "areItemsTheSame",
        "getChangePayload",
        "",
        "getNewListSize",
        "getOldListSize",
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


# instance fields
.field final synthetic $newList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic $oldList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/List;Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TT;>;",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer$submitList$1$result$1;->$oldList:Ljava/util/List;

    iput-object p2, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer$submitList$1$result$1;->$newList:Ljava/util/List;

    iput-object p3, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer$submitList$1$result$1;->this$0:Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;

    .line 128
    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public areContentsTheSame(II)Z
    .locals 1

    iget-object v0, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer$submitList$1$result$1;->$oldList:Ljava/util/List;

    .line 147
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer$submitList$1$result$1;->$newList:Ljava/util/List;

    .line 148
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer$submitList$1$result$1;->this$0:Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;

    .line 150
    invoke-static {p0}, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->access$getConfig$p(Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;)Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig;->getDiffCallback()Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;->areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    const/4 p0, 0x1

    return p0

    .line 155
    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public areItemsTheSame(II)Z
    .locals 1

    iget-object v0, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer$submitList$1$result$1;->$oldList:Ljava/util/List;

    .line 138
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer$submitList$1$result$1;->$newList:Ljava/util/List;

    .line 139
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer$submitList$1$result$1;->this$0:Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;

    .line 141
    invoke-static {p0}, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->access$getConfig$p(Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;)Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig;->getDiffCallback()Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getChangePayload(II)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer$submitList$1$result$1;->$oldList:Ljava/util/List;

    .line 159
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer$submitList$1$result$1;->$newList:Ljava/util/List;

    .line 160
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer$submitList$1$result$1;->this$0:Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;

    .line 162
    invoke-static {p0}, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->access$getConfig$p(Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;)Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig;->getDiffCallback()Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;->getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 164
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public getNewListSize()I
    .locals 0

    iget-object p0, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer$submitList$1$result$1;->$newList:Ljava/util/List;

    .line 134
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getOldListSize()I
    .locals 0

    iget-object p0, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer$submitList$1$result$1;->$oldList:Ljava/util/List;

    .line 130
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method
