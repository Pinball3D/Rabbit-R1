.class Lcom/google/common/base/Suppliers$ExpiringMemoizingSupplier;
.super Ljava/lang/Object;
.source "Suppliers.java"

# interfaces
.implements Lcom/google/common/base/Supplier;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Suppliers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ExpiringMemoizingSupplier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Supplier<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final delegate:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "TT;>;"
        }
    .end annotation
.end field

.field final durationNanos:J

.field volatile transient expirationNanos:J

.field volatile transient value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/base/Supplier;JLjava/util/concurrent/TimeUnit;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Supplier<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/Supplier;

    iput-object p1, p0, Lcom/google/common/base/Suppliers$ExpiringMemoizingSupplier;->delegate:Lcom/google/common/base/Supplier;

    .line 244
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/base/Suppliers$ExpiringMemoizingSupplier;->durationNanos:J

    const-wide/16 p0, 0x0

    cmp-long p0, p2, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string p1, "duration (%s %s) must be > 0"

    .line 245
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;JLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 8
    .annotation runtime Lcom/google/common/base/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/common/base/Suppliers$ExpiringMemoizingSupplier;->expirationNanos:J

    .line 258
    invoke-static {}, Lcom/google/common/base/Platform;->systemNanoTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-eqz v6, :cond_0

    sub-long v6, v2, v0

    cmp-long v6, v6, v4

    if-ltz v6, :cond_3

    .line 260
    :cond_0
    monitor-enter p0

    :try_start_0
    iget-wide v6, p0, Lcom/google/common/base/Suppliers$ExpiringMemoizingSupplier;->expirationNanos:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/common/base/Suppliers$ExpiringMemoizingSupplier;->delegate:Lcom/google/common/base/Supplier;

    .line 262
    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/base/Suppliers$ExpiringMemoizingSupplier;->value:Ljava/lang/Object;

    iget-wide v6, p0, Lcom/google/common/base/Suppliers$ExpiringMemoizingSupplier;->durationNanos:J

    add-long/2addr v2, v6

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    const-wide/16 v2, 0x1

    :cond_1
    iput-wide v2, p0, Lcom/google/common/base/Suppliers$ExpiringMemoizingSupplier;->expirationNanos:J

    .line 268
    monitor-exit p0

    return-object v0

    .line 270
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    iget-object p0, p0, Lcom/google/common/base/Suppliers$ExpiringMemoizingSupplier;->value:Ljava/lang/Object;

    .line 273
    invoke-static {p0}, Lcom/google/common/base/NullnessCasts;->uncheckedCastNullableTToT(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception v0

    .line 270
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/google/common/base/Suppliers$ExpiringMemoizingSupplier;->delegate:Lcom/google/common/base/Supplier;

    .line 280
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/common/base/Suppliers$ExpiringMemoizingSupplier;->durationNanos:J

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, 0x3e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p0, "Suppliers.memoizeWithExpiration("

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ", "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ", NANOS)"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
