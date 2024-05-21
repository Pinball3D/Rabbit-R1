.class Lcom/google/common/cache/LocalCache$AccessQueue$1;
.super Lcom/google/common/cache/LocalCache$AbstractReferenceEntry;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/LocalCache$AccessQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/cache/LocalCache$AbstractReferenceEntry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field nextAccess:Lcom/google/common/cache/ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field previousAccess:Lcom/google/common/cache/ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/cache/LocalCache$AccessQueue;)V
    .locals 0

    .line 3663
    invoke-direct {p0}, Lcom/google/common/cache/LocalCache$AbstractReferenceEntry;-><init>()V

    iput-object p0, p0, Lcom/google/common/cache/LocalCache$AccessQueue$1;->nextAccess:Lcom/google/common/cache/ReferenceEntry;

    iput-object p0, p0, Lcom/google/common/cache/LocalCache$AccessQueue$1;->previousAccess:Lcom/google/common/cache/ReferenceEntry;

    return-void
.end method


# virtual methods
.method public getAccessTime()J
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public getNextInAccessQueue()Lcom/google/common/cache/ReferenceEntry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/cache/LocalCache$AccessQueue$1;->nextAccess:Lcom/google/common/cache/ReferenceEntry;

    return-object p0
.end method

.method public getPreviousInAccessQueue()Lcom/google/common/cache/ReferenceEntry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/cache/LocalCache$AccessQueue$1;->previousAccess:Lcom/google/common/cache/ReferenceEntry;

    return-object p0
.end method

.method public setAccessTime(J)V
    .locals 0

    return-void
.end method

.method public setNextInAccessQueue(Lcom/google/common/cache/ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/common/cache/LocalCache$AccessQueue$1;->nextAccess:Lcom/google/common/cache/ReferenceEntry;

    return-void
.end method

.method public setPreviousInAccessQueue(Lcom/google/common/cache/ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/common/cache/LocalCache$AccessQueue$1;->previousAccess:Lcom/google/common/cache/ReferenceEntry;

    return-void
.end method
