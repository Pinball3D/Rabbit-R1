.class Lcom/google/common/collect/Iterables$6;
.super Lcom/google/common/collect/FluentIterable;
.source "Iterables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Iterables;->skip(Ljava/lang/Iterable;I)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/FluentIterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$iterable:Ljava/lang/Iterable;

.field final synthetic val$numberToSkip:I


# direct methods
.method constructor <init>(Ljava/lang/Iterable;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/Iterables$6;->val$iterable:Ljava/lang/Iterable;

    iput p2, p0, Lcom/google/common/collect/Iterables$6;->val$numberToSkip:I

    .line 918
    invoke-direct {p0}, Lcom/google/common/collect/FluentIterable;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Iterables$6;->val$iterable:Ljava/lang/Iterable;

    .line 921
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 922
    check-cast v0, Ljava/util/List;

    .line 923
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget p0, p0, Lcom/google/common/collect/Iterables$6;->val$numberToSkip:I

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 924
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, p0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    .line 926
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget v1, p0, Lcom/google/common/collect/Iterables$6;->val$numberToSkip:I

    .line 928
    invoke-static {v0, v1}, Lcom/google/common/collect/Iterators;->advance(Ljava/util/Iterator;I)I

    .line 935
    new-instance v1, Lcom/google/common/collect/Iterables$6$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/Iterables$6$1;-><init>(Lcom/google/common/collect/Iterables$6;Ljava/util/Iterator;)V

    return-object v1
.end method
