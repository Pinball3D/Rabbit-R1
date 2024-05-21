.class Lcom/google/common/collect/CompactHashMap$KeySetView;
.super Ljava/util/AbstractSet;
.source "CompactHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/CompactHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KeySetView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/CompactHashMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/CompactHashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/CompactHashMap$KeySetView;->this$0:Lcom/google/common/collect/CompactHashMap;

    .line 685
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/CompactHashMap$KeySetView;->this$0:Lcom/google/common/collect/CompactHashMap;

    .line 711
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/common/collect/CompactHashMap$KeySetView;->this$0:Lcom/google/common/collect/CompactHashMap;

    .line 693
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CompactHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/collect/CompactHashMap$KeySetView;->this$0:Lcom/google/common/collect/CompactHashMap;

    .line 706
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->keySetIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap$KeySetView;->this$0:Lcom/google/common/collect/CompactHashMap;

    .line 698
    invoke-virtual {v0}, Lcom/google/common/collect/CompactHashMap;->delegateOrNull()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 700
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/common/collect/CompactHashMap$KeySetView;->this$0:Lcom/google/common/collect/CompactHashMap;

    .line 701
    invoke-static {p0, p1}, Lcom/google/common/collect/CompactHashMap;->access$200(Lcom/google/common/collect/CompactHashMap;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lcom/google/common/collect/CompactHashMap;->access$300()Ljava/lang/Object;

    move-result-object p1

    if-eq p0, p1, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/CompactHashMap$KeySetView;->this$0:Lcom/google/common/collect/CompactHashMap;

    .line 688
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->size()I

    move-result p0

    return p0
.end method
