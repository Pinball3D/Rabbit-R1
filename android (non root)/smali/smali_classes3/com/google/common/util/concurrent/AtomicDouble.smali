.class public Lcom/google/common/util/concurrent/AtomicDouble;
.super Ljava/lang/Number;
.source "AtomicDouble.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/google/common/util/concurrent/ElementTypesAreNonnullByDefault;
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private transient value:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 70
    invoke-direct {p0, v0, v1}, Lcom/google/common/util/concurrent/AtomicDouble;-><init>(D)V

    return-void
.end method

.method public constructor <init>(D)V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    invoke-direct {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AtomicDouble;->value:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 239
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 240
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AtomicDouble;->value:Ljava/util/concurrent/atomic/AtomicLong;

    .line 241
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readDouble()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/common/util/concurrent/AtomicDouble;->set(D)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 231
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 233
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AtomicDouble;->get()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeDouble(D)V

    return-void
.end method


# virtual methods
.method public final addAndGet(D)D
    .locals 7

    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AtomicDouble;->value:Ljava/util/concurrent/atomic/AtomicLong;

    .line 172
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 173
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    add-double/2addr v2, p1

    .line 175
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v4

    iget-object v6, p0, Lcom/google/common/util/concurrent/AtomicDouble;->value:Ljava/util/concurrent/atomic/AtomicLong;

    .line 176
    invoke-virtual {v6, v0, v1, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide v2
.end method

.method public final compareAndSet(DD)Z
    .locals 0

    iget-object p0, p0, Lcom/google/common/util/concurrent/AtomicDouble;->value:Ljava/util/concurrent/atomic/AtomicLong;

    .line 123
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p3

    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result p0

    return p0
.end method

.method public doubleValue()D
    .locals 2

    .line 222
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AtomicDouble;->get()D

    move-result-wide v0

    return-wide v0
.end method

.method public floatValue()F
    .locals 2

    .line 216
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AtomicDouble;->get()D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public final get()D
    .locals 2

    iget-object p0, p0, Lcom/google/common/util/concurrent/AtomicDouble;->value:Ljava/util/concurrent/atomic/AtomicLong;

    .line 79
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final getAndAdd(D)D
    .locals 7

    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AtomicDouble;->value:Ljava/util/concurrent/atomic/AtomicLong;

    .line 152
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 153
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    add-double v4, v2, p1

    .line 155
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v4

    iget-object v6, p0, Lcom/google/common/util/concurrent/AtomicDouble;->value:Ljava/util/concurrent/atomic/AtomicLong;

    .line 156
    invoke-virtual {v6, v0, v1, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide v2
.end method

.method public final getAndSet(D)D
    .locals 0

    .line 109
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    iget-object p0, p0, Lcom/google/common/util/concurrent/AtomicDouble;->value:Ljava/util/concurrent/atomic/AtomicLong;

    .line 110
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0
.end method

.method public intValue()I
    .locals 2

    .line 198
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AtomicDouble;->get()D

    move-result-wide v0

    double-to-int p0, v0

    return p0
.end method

.method public final lazySet(D)V
    .locals 0

    .line 98
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    iget-object p0, p0, Lcom/google/common/util/concurrent/AtomicDouble;->value:Ljava/util/concurrent/atomic/AtomicLong;

    .line 99
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    return-void
.end method

.method public longValue()J
    .locals 2

    .line 207
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AtomicDouble;->get()D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0
.end method

.method public final set(D)V
    .locals 0

    .line 88
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    iget-object p0, p0, Lcom/google/common/util/concurrent/AtomicDouble;->value:Ljava/util/concurrent/atomic/AtomicLong;

    .line 89
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 189
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AtomicDouble;->get()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final weakCompareAndSet(DD)Z
    .locals 0

    iget-object p0, p0, Lcom/google/common/util/concurrent/AtomicDouble;->value:Ljava/util/concurrent/atomic/AtomicLong;

    .line 140
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p3

    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/util/concurrent/atomic/AtomicLong;->weakCompareAndSet(JJ)Z

    move-result p0

    return p0
.end method
