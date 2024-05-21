.class final Lcom/google/common/cache/LocalCache$KeySet;
.super Lcom/google/common/cache/LocalCache$AbstractCacheSet;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/cache/LocalCache<",
        "TK;TV;>.AbstractCacheSet<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/cache/LocalCache;


# direct methods
.method constructor <init>(Lcom/google/common/cache/LocalCache;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/cache/LocalCache$KeySet;->this$0:Lcom/google/common/cache/LocalCache;

    .line 4406
    invoke-direct {p0, p1}, Lcom/google/common/cache/LocalCache$AbstractCacheSet;-><init>(Lcom/google/common/cache/LocalCache;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/common/cache/LocalCache$KeySet;->this$0:Lcom/google/common/cache/LocalCache;

    .line 4415
    invoke-virtual {p0, p1}, Lcom/google/common/cache/LocalCache;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 4410
    new-instance v0, Lcom/google/common/cache/LocalCache$KeyIterator;

    iget-object p0, p0, Lcom/google/common/cache/LocalCache$KeySet;->this$0:Lcom/google/common/cache/LocalCache;

    invoke-direct {v0, p0}, Lcom/google/common/cache/LocalCache$KeyIterator;-><init>(Lcom/google/common/cache/LocalCache;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/common/cache/LocalCache$KeySet;->this$0:Lcom/google/common/cache/LocalCache;

    .line 4420
    invoke-virtual {p0, p1}, Lcom/google/common/cache/LocalCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
