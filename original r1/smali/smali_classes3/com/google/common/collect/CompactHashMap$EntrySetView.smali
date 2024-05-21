.class Lcom/google/common/collect/CompactHashMap$EntrySetView;
.super Ljava/util/AbstractSet;
.source "CompactHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/CompactHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EntrySetView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/CompactHashMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/CompactHashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/CompactHashMap$EntrySetView;->this$0:Lcom/google/common/collect/CompactHashMap;

    .line 741
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/CompactHashMap$EntrySetView;->this$0:Lcom/google/common/collect/CompactHashMap;

    .line 750
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap$EntrySetView;->this$0:Lcom/google/common/collect/CompactHashMap;

    .line 760
    invoke-virtual {v0}, Lcom/google/common/collect/CompactHashMap;->delegateOrNull()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 762
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 763
    :cond_0
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 764
    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap$EntrySetView;->this$0:Lcom/google/common/collect/CompactHashMap;

    .line 765
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/common/collect/CompactHashMap;->access$500(Lcom/google/common/collect/CompactHashMap;Ljava/lang/Object;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget-object p0, p0, Lcom/google/common/collect/CompactHashMap$EntrySetView;->this$0:Lcom/google/common/collect/CompactHashMap;

    .line 766
    invoke-static {p0, v0}, Lcom/google/common/collect/CompactHashMap;->access$600(Lcom/google/common/collect/CompactHashMap;I)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/collect/CompactHashMap$EntrySetView;->this$0:Lcom/google/common/collect/CompactHashMap;

    .line 755
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->entrySetIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 9
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap$EntrySetView;->this$0:Lcom/google/common/collect/CompactHashMap;

    .line 773
    invoke-virtual {v0}, Lcom/google/common/collect/CompactHashMap;->delegateOrNull()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 775
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 776
    :cond_0
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 777
    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap$EntrySetView;->this$0:Lcom/google/common/collect/CompactHashMap;

    .line 778
    invoke-virtual {v0}, Lcom/google/common/collect/CompactHashMap;->needsAllocArrays()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap$EntrySetView;->this$0:Lcom/google/common/collect/CompactHashMap;

    .line 781
    invoke-static {v0}, Lcom/google/common/collect/CompactHashMap;->access$700(Lcom/google/common/collect/CompactHashMap;)I

    move-result v0

    .line 784
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 785
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    iget-object p1, p0, Lcom/google/common/collect/CompactHashMap$EntrySetView;->this$0:Lcom/google/common/collect/CompactHashMap;

    .line 787
    invoke-static {p1}, Lcom/google/common/collect/CompactHashMap;->access$800(Lcom/google/common/collect/CompactHashMap;)Ljava/lang/Object;

    move-result-object v5

    iget-object p1, p0, Lcom/google/common/collect/CompactHashMap$EntrySetView;->this$0:Lcom/google/common/collect/CompactHashMap;

    .line 788
    invoke-static {p1}, Lcom/google/common/collect/CompactHashMap;->access$900(Lcom/google/common/collect/CompactHashMap;)[I

    move-result-object v6

    iget-object p1, p0, Lcom/google/common/collect/CompactHashMap$EntrySetView;->this$0:Lcom/google/common/collect/CompactHashMap;

    .line 789
    invoke-static {p1}, Lcom/google/common/collect/CompactHashMap;->access$1000(Lcom/google/common/collect/CompactHashMap;)[Ljava/lang/Object;

    move-result-object v7

    iget-object p1, p0, Lcom/google/common/collect/CompactHashMap$EntrySetView;->this$0:Lcom/google/common/collect/CompactHashMap;

    .line 790
    invoke-static {p1}, Lcom/google/common/collect/CompactHashMap;->access$1100(Lcom/google/common/collect/CompactHashMap;)[Ljava/lang/Object;

    move-result-object v8

    move v4, v0

    .line 783
    invoke-static/range {v2 .. v8}, Lcom/google/common/collect/CompactHashing;->remove(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;[I[Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_2

    return v1

    :cond_2
    iget-object v1, p0, Lcom/google/common/collect/CompactHashMap$EntrySetView;->this$0:Lcom/google/common/collect/CompactHashMap;

    .line 795
    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/CompactHashMap;->moveLastEntry(II)V

    iget-object p1, p0, Lcom/google/common/collect/CompactHashMap$EntrySetView;->this$0:Lcom/google/common/collect/CompactHashMap;

    .line 796
    invoke-static {p1}, Lcom/google/common/collect/CompactHashMap;->access$1210(Lcom/google/common/collect/CompactHashMap;)I

    iget-object p0, p0, Lcom/google/common/collect/CompactHashMap$EntrySetView;->this$0:Lcom/google/common/collect/CompactHashMap;

    .line 797
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->incrementModCount()V

    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/CompactHashMap$EntrySetView;->this$0:Lcom/google/common/collect/CompactHashMap;

    .line 745
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->size()I

    move-result p0

    return p0
.end method
