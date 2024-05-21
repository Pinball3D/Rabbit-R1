.class Lcom/google/common/collect/Iterators$8;
.super Lcom/google/common/collect/UnmodifiableIterator;
.source "Iterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Iterators;->consumingIterator(Ljava/util/Iterator;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/UnmodifiableIterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$iterator:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Ljava/util/Iterator;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/Iterators$8;->val$iterator:Ljava/util/Iterator;

    .line 999
    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/Iterators$8;->val$iterator:Ljava/util/Iterator;

    .line 1002
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation runtime Lcom/google/common/collect/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Iterators$8;->val$iterator:Ljava/util/Iterator;

    .line 1008
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object p0, p0, Lcom/google/common/collect/Iterators$8;->val$iterator:Ljava/util/Iterator;

    .line 1009
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Iterators.consumingIterator(...)"

    return-object p0
.end method
