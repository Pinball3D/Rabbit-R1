.class final Lcom/google/common/collect/HashBiMap$EntrySet;
.super Lcom/google/common/collect/HashBiMap$View;
.source "HashBiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/HashBiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/HashBiMap$View<",
        "TK;TV;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/HashBiMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/HashBiMap;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/HashBiMap$EntrySet;->this$0:Lcom/google/common/collect/HashBiMap;

    .line 838
    invoke-direct {p0, p1}, Lcom/google/common/collect/HashBiMap$View;-><init>(Lcom/google/common/collect/HashBiMap;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 843
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 844
    check-cast p1, Ljava/util/Map$Entry;

    .line 845
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 846
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    iget-object v2, p0, Lcom/google/common/collect/HashBiMap$EntrySet;->this$0:Lcom/google/common/collect/HashBiMap;

    .line 847
    invoke-virtual {v2, v0}, Lcom/google/common/collect/HashBiMap;->findEntryByKey(Ljava/lang/Object;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-object p0, p0, Lcom/google/common/collect/HashBiMap$EntrySet;->this$0:Lcom/google/common/collect/HashBiMap;

    .line 848
    iget-object p0, p0, Lcom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    aget-object p0, p0, v0

    invoke-static {p1, p0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method bridge synthetic forEntry(I)Ljava/lang/Object;
    .locals 0

    .line 836
    invoke-virtual {p0, p1}, Lcom/google/common/collect/HashBiMap$EntrySet;->forEntry(I)Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method forEntry(I)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 872
    new-instance v0, Lcom/google/common/collect/HashBiMap$EntryForKey;

    iget-object p0, p0, Lcom/google/common/collect/HashBiMap$EntrySet;->this$0:Lcom/google/common/collect/HashBiMap;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/HashBiMap$EntryForKey;-><init>(Lcom/google/common/collect/HashBiMap;I)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 856
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    .line 857
    check-cast p1, Ljava/util/Map$Entry;

    .line 858
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 859
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 860
    invoke-static {v0}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Lcom/google/common/collect/HashBiMap$EntrySet;->this$0:Lcom/google/common/collect/HashBiMap;

    .line 861
    invoke-virtual {v2, v0, v1}, Lcom/google/common/collect/HashBiMap;->findEntryByKey(Ljava/lang/Object;I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lcom/google/common/collect/HashBiMap$EntrySet;->this$0:Lcom/google/common/collect/HashBiMap;

    .line 862
    iget-object v2, v2, Lcom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {p1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/common/collect/HashBiMap$EntrySet;->this$0:Lcom/google/common/collect/HashBiMap;

    .line 863
    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/HashBiMap;->removeEntryKeyHashKnown(II)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
