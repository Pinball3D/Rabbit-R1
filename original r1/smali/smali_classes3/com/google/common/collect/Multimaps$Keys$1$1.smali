.class Lcom/google/common/collect/Multimaps$Keys$1$1;
.super Lcom/google/common/collect/Multisets$AbstractEntry;
.source "Multimaps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Multimaps$Keys$1;->transform(Ljava/util/Map$Entry;)Lcom/google/common/collect/Multiset$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Multisets$AbstractEntry<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic val$backingEntry:Ljava/util/Map$Entry;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multimaps$Keys$1;Ljava/util/Map$Entry;)V
    .locals 0

    iput-object p2, p0, Lcom/google/common/collect/Multimaps$Keys$1$1;->val$backingEntry:Ljava/util/Map$Entry;

    .line 1632
    invoke-direct {p0}, Lcom/google/common/collect/Multisets$AbstractEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/Multimaps$Keys$1$1;->val$backingEntry:Ljava/util/Map$Entry;

    .line 1641
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    return p0
.end method

.method public getElement()Ljava/lang/Object;
    .locals 0
    .annotation runtime Lcom/google/common/collect/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/collect/Multimaps$Keys$1$1;->val$backingEntry:Ljava/util/Map$Entry;

    .line 1636
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
