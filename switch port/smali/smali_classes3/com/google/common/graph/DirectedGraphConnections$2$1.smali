.class Lcom/google/common/graph/DirectedGraphConnections$2$1;
.super Lcom/google/common/collect/AbstractIterator;
.source "DirectedGraphConnections.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/DirectedGraphConnections$2;->iterator()Lcom/google/common/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator<",
        "TN;>;"
    }
.end annotation


# instance fields
.field final synthetic val$entries:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/google/common/graph/DirectedGraphConnections$2;Ljava/util/Iterator;)V
    .locals 0

    iput-object p2, p0, Lcom/google/common/graph/DirectedGraphConnections$2$1;->val$entries:Ljava/util/Iterator;

    .line 280
    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    return-void
.end method


# virtual methods
.method protected computeNext()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    :cond_0
    iget-object v0, p0, Lcom/google/common/graph/DirectedGraphConnections$2$1;->val$entries:Ljava/util/Iterator;

    .line 284
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/graph/DirectedGraphConnections$2$1;->val$entries:Ljava/util/Iterator;

    .line 285
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 286
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/graph/DirectedGraphConnections;->access$200(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 290
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/graph/DirectedGraphConnections$2$1;->endOfData()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
