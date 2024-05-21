.class final Lcom/google/common/collect/MapMakerInternalMap$WriteThroughEntry;
.super Lcom/google/common/collect/AbstractMapEntry;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "WriteThroughEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractMapEntry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/MapMakerInternalMap;

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMakerInternalMap;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$WriteThroughEntry;->this$0:Lcom/google/common/collect/MapMakerInternalMap;

    .line 2640
    invoke-direct {p0}, Lcom/google/common/collect/AbstractMapEntry;-><init>()V

    iput-object p2, p0, Lcom/google/common/collect/MapMakerInternalMap$WriteThroughEntry;->key:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/common/collect/MapMakerInternalMap$WriteThroughEntry;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 2658
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2659
    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$WriteThroughEntry;->key:Ljava/lang/Object;

    .line 2660
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/common/collect/MapMakerInternalMap$WriteThroughEntry;->value:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getKey()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/collect/MapMakerInternalMap$WriteThroughEntry;->key:Ljava/lang/Object;

    return-object p0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/collect/MapMakerInternalMap$WriteThroughEntry;->value:Ljava/lang/Object;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$WriteThroughEntry;->key:Ljava/lang/Object;

    .line 2668
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object p0, p0, Lcom/google/common/collect/MapMakerInternalMap$WriteThroughEntry;->value:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$WriteThroughEntry;->this$0:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$WriteThroughEntry;->key:Ljava/lang/Object;

    .line 2673
    invoke-virtual {v0, v1, p1}, Lcom/google/common/collect/MapMakerInternalMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$WriteThroughEntry;->value:Ljava/lang/Object;

    return-object v0
.end method
