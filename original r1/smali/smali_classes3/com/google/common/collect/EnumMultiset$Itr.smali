.class abstract Lcom/google/common/collect/EnumMultiset$Itr;
.super Ljava/lang/Object;
.source "EnumMultiset.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/EnumMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "Itr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field index:I

.field final synthetic this$0:Lcom/google/common/collect/EnumMultiset;

.field toRemove:I


# direct methods
.method constructor <init>(Lcom/google/common/collect/EnumMultiset;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/EnumMultiset$Itr;->this$0:Lcom/google/common/collect/EnumMultiset;

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/common/collect/EnumMultiset$Itr;->index:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/common/collect/EnumMultiset$Itr;->toRemove:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    :goto_0
    iget v0, p0, Lcom/google/common/collect/EnumMultiset$Itr;->index:I

    iget-object v1, p0, Lcom/google/common/collect/EnumMultiset$Itr;->this$0:Lcom/google/common/collect/EnumMultiset;

    .line 218
    invoke-static {v1}, Lcom/google/common/collect/EnumMultiset;->access$000(Lcom/google/common/collect/EnumMultiset;)[Ljava/lang/Enum;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/EnumMultiset$Itr;->this$0:Lcom/google/common/collect/EnumMultiset;

    .line 219
    invoke-static {v0}, Lcom/google/common/collect/EnumMultiset;->access$100(Lcom/google/common/collect/EnumMultiset;)[I

    move-result-object v0

    iget v1, p0, Lcom/google/common/collect/EnumMultiset$Itr;->index:I

    aget v0, v0, v1

    if-lez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/collect/EnumMultiset$Itr;->index:I

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 228
    invoke-virtual {p0}, Lcom/google/common/collect/EnumMultiset$Itr;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/common/collect/EnumMultiset$Itr;->index:I

    .line 231
    invoke-virtual {p0, v0}, Lcom/google/common/collect/EnumMultiset$Itr;->output(I)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/google/common/collect/EnumMultiset$Itr;->index:I

    iput v1, p0, Lcom/google/common/collect/EnumMultiset$Itr;->toRemove:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/collect/EnumMultiset$Itr;->index:I

    return-object v0

    .line 229
    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method abstract output(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

.method public remove()V
    .locals 4

    iget v0, p0, Lcom/google/common/collect/EnumMultiset$Itr;->toRemove:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 239
    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/CollectPreconditions;->checkRemove(Z)V

    iget-object v0, p0, Lcom/google/common/collect/EnumMultiset$Itr;->this$0:Lcom/google/common/collect/EnumMultiset;

    .line 240
    invoke-static {v0}, Lcom/google/common/collect/EnumMultiset;->access$100(Lcom/google/common/collect/EnumMultiset;)[I

    move-result-object v0

    iget v2, p0, Lcom/google/common/collect/EnumMultiset$Itr;->toRemove:I

    aget v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/EnumMultiset$Itr;->this$0:Lcom/google/common/collect/EnumMultiset;

    .line 241
    invoke-static {v0}, Lcom/google/common/collect/EnumMultiset;->access$210(Lcom/google/common/collect/EnumMultiset;)I

    iget-object v0, p0, Lcom/google/common/collect/EnumMultiset$Itr;->this$0:Lcom/google/common/collect/EnumMultiset;

    .line 242
    invoke-static {v0}, Lcom/google/common/collect/EnumMultiset;->access$100(Lcom/google/common/collect/EnumMultiset;)[I

    move-result-object v2

    iget v3, p0, Lcom/google/common/collect/EnumMultiset$Itr;->toRemove:I

    aget v2, v2, v3

    int-to-long v2, v2

    invoke-static {v0, v2, v3}, Lcom/google/common/collect/EnumMultiset;->access$322(Lcom/google/common/collect/EnumMultiset;J)J

    iget-object v0, p0, Lcom/google/common/collect/EnumMultiset$Itr;->this$0:Lcom/google/common/collect/EnumMultiset;

    .line 243
    invoke-static {v0}, Lcom/google/common/collect/EnumMultiset;->access$100(Lcom/google/common/collect/EnumMultiset;)[I

    move-result-object v0

    iget v2, p0, Lcom/google/common/collect/EnumMultiset$Itr;->toRemove:I

    aput v1, v0, v2

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/collect/EnumMultiset$Itr;->toRemove:I

    return-void
.end method
