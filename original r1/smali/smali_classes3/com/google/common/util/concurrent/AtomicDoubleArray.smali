.class public Lcom/google/common/util/concurrent/AtomicDoubleArray;
.super Ljava/lang/Object;
.source "AtomicDoubleArray.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/google/common/util/concurrent/ElementTypesAreNonnullByDefault;
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private transient longs:Ljava/util/concurrent/atomic/AtomicLongArray;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AtomicDoubleArray;->longs:Ljava/util/concurrent/atomic/AtomicLongArray;

    return-void
.end method

.method public constructor <init>([D)V
    .locals 5

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    array-length v0, p1

    .line 73
    new-array v1, v0, [J

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 75
    aget-wide v3, p1, v2

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 77
    :cond_0
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-direct {p1, v1}, Ljava/util/concurrent/atomic/AtomicLongArray;-><init>([J)V

    iput-object p1, p0, Lcom/google/common/util/concurrent/AtomicDoubleArray;->longs:Ljava/util/concurrent/atomic/AtomicLongArray;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 252
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 254
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 255
    invoke-static {}, Lcom/google/common/primitives/ImmutableLongArray;->builder()Lcom/google/common/primitives/ImmutableLongArray$Builder;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 257
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readDouble()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/google/common/primitives/ImmutableLongArray$Builder;->add(J)Lcom/google/common/primitives/ImmutableLongArray$Builder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 259
    :cond_0
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v1}, Lcom/google/common/primitives/ImmutableLongArray$Builder;->build()Lcom/google/common/primitives/ImmutableLongArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/primitives/ImmutableLongArray;->toArray()[J

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicLongArray;-><init>([J)V

    iput-object p1, p0, Lcom/google/common/util/concurrent/AtomicDoubleArray;->longs:Ljava/util/concurrent/atomic/AtomicLongArray;

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 237
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 240
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AtomicDoubleArray;->length()I

    move-result v0

    .line 241
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 245
    invoke-virtual {p0, v1}, Lcom/google/common/util/concurrent/AtomicDoubleArray;->get(I)D

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/io/ObjectOutputStream;->writeDouble(D)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addAndGet(ID)D
    .locals 9

    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AtomicDoubleArray;->longs:Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 196
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v3

    .line 197
    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    add-double v7, v0, p2

    .line 199
    invoke-static {v7, v8}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v5

    iget-object v1, p0, Lcom/google/common/util/concurrent/AtomicDoubleArray;->longs:Ljava/util/concurrent/atomic/AtomicLongArray;

    move v2, p1

    .line 200
    invoke-virtual/range {v1 .. v6}, Ljava/util/concurrent/atomic/AtomicLongArray;->compareAndSet(IJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide v7
.end method

.method public final compareAndSet(IDD)Z
    .locals 6

    iget-object v0, p0, Lcom/google/common/util/concurrent/AtomicDoubleArray;->longs:Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 144
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    invoke-static {p4, p5}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v4

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongArray;->compareAndSet(IJJ)Z

    move-result p0

    return p0
.end method

.method public final get(I)D
    .locals 0

    iget-object p0, p0, Lcom/google/common/util/concurrent/AtomicDoubleArray;->longs:Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 96
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0
.end method

.method public final getAndAdd(ID)D
    .locals 9

    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AtomicDoubleArray;->longs:Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 175
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v3

    .line 176
    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v7

    add-double v0, v7, p2

    .line 178
    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v5

    iget-object v1, p0, Lcom/google/common/util/concurrent/AtomicDoubleArray;->longs:Ljava/util/concurrent/atomic/AtomicLongArray;

    move v2, p1

    .line 179
    invoke-virtual/range {v1 .. v6}, Ljava/util/concurrent/atomic/AtomicLongArray;->compareAndSet(IJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide v7
.end method

.method public final getAndSet(ID)D
    .locals 0

    .line 129
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p2

    iget-object p0, p0, Lcom/google/common/util/concurrent/AtomicDoubleArray;->longs:Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 130
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLongArray;->getAndSet(IJ)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0
.end method

.method public final lazySet(ID)V
    .locals 0

    .line 117
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p2

    iget-object p0, p0, Lcom/google/common/util/concurrent/AtomicDoubleArray;->longs:Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 118
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLongArray;->lazySet(IJ)V

    return-void
.end method

.method public final length()I
    .locals 0

    iget-object p0, p0, Lcom/google/common/util/concurrent/AtomicDoubleArray;->longs:Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 86
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLongArray;->length()I

    move-result p0

    return p0
.end method

.method public final set(ID)V
    .locals 0

    .line 106
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p2

    iget-object p0, p0, Lcom/google/common/util/concurrent/AtomicDoubleArray;->longs:Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 107
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLongArray;->set(IJ)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 213
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AtomicDoubleArray;->length()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const-string p0, "[]"

    return-object p0

    .line 219
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    mul-int/lit8 v0, v0, 0x13

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v0, 0x5b

    .line 220
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/google/common/util/concurrent/AtomicDoubleArray;->longs:Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 222
    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    if-ne v0, v1, :cond_1

    const/16 p0, 0x5d

    .line 224
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v3, ", "

    .line 226
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final weakCompareAndSet(IDD)Z
    .locals 6

    iget-object v0, p0, Lcom/google/common/util/concurrent/AtomicDoubleArray;->longs:Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 162
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    invoke-static {p4, p5}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v4

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongArray;->weakCompareAndSet(IJJ)Z

    move-result p0

    return p0
.end method
