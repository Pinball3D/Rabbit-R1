.class public final Lcom/google/common/primitives/ImmutableDoubleArray$Builder;
.super Ljava/lang/Object;
.source "ImmutableDoubleArray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/ImmutableDoubleArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private array:[D

.field private count:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->count:I

    .line 204
    new-array p1, p1, [D

    iput-object p1, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->array:[D

    return-void
.end method

.method private ensureRoomFor(I)V
    .locals 2

    iget v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->count:I

    add-int/2addr v0, p1

    iget-object p1, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->array:[D

    .line 268
    array-length v1, p1

    if-le v0, v1, :cond_0

    .line 269
    array-length v1, p1

    invoke-static {v1, v0}, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->expandedCapacity(II)I

    move-result v0

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->array:[D

    :cond_0
    return-void
.end method

.method private static expandedCapacity(II)I
    .locals 1

    if-ltz p1, :cond_2

    shr-int/lit8 v0, p0, 0x1

    add-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x1

    if-ge p0, p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 281
    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p0

    shl-int/lit8 p0, p0, 0x1

    :cond_0
    if-gez p0, :cond_1

    const p0, 0x7fffffff

    :cond_1
    return p0

    .line 276
    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "cannot store more than MAX_VALUE elements"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method


# virtual methods
.method public add(D)Lcom/google/common/primitives/ImmutableDoubleArray$Builder;
    .locals 3

    const/4 v0, 0x1

    .line 212
    invoke-direct {p0, v0}, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->ensureRoomFor(I)V

    iget-object v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->array:[D

    iget v2, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->count:I

    .line 213
    aput-wide p1, v1, v2

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->count:I

    return-object p0
.end method

.method public addAll(Lcom/google/common/primitives/ImmutableDoubleArray;)Lcom/google/common/primitives/ImmutableDoubleArray$Builder;
    .locals 5

    .line 260
    invoke-virtual {p1}, Lcom/google/common/primitives/ImmutableDoubleArray;->length()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->ensureRoomFor(I)V

    .line 261
    invoke-static {p1}, Lcom/google/common/primitives/ImmutableDoubleArray;->access$000(Lcom/google/common/primitives/ImmutableDoubleArray;)[D

    move-result-object v0

    invoke-static {p1}, Lcom/google/common/primitives/ImmutableDoubleArray;->access$100(Lcom/google/common/primitives/ImmutableDoubleArray;)I

    move-result v1

    iget-object v2, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->array:[D

    iget v3, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->count:I

    invoke-virtual {p1}, Lcom/google/common/primitives/ImmutableDoubleArray;->length()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->count:I

    .line 262
    invoke-virtual {p1}, Lcom/google/common/primitives/ImmutableDoubleArray;->length()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->count:I

    return-object p0
.end method

.method public addAll(Ljava/lang/Iterable;)Lcom/google/common/primitives/ImmutableDoubleArray$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Double;",
            ">;)",
            "Lcom/google/common/primitives/ImmutableDoubleArray$Builder;"
        }
    .end annotation

    .line 234
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 235
    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->addAll(Ljava/util/Collection;)Lcom/google/common/primitives/ImmutableDoubleArray$Builder;

    move-result-object p0

    return-object p0

    .line 237
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 238
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->add(D)Lcom/google/common/primitives/ImmutableDoubleArray$Builder;

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public addAll(Ljava/util/Collection;)Lcom/google/common/primitives/ImmutableDoubleArray$Builder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Double;",
            ">;)",
            "Lcom/google/common/primitives/ImmutableDoubleArray$Builder;"
        }
    .end annotation

    .line 248
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->ensureRoomFor(I)V

    .line 249
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    iget-object v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->array:[D

    iget v2, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->count:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->count:I

    .line 250
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    aput-wide v3, v1, v2

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public addAll([D)Lcom/google/common/primitives/ImmutableDoubleArray$Builder;
    .locals 4

    .line 223
    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->ensureRoomFor(I)V

    iget-object v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->array:[D

    iget v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->count:I

    .line 224
    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->count:I

    .line 225
    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->count:I

    return-object p0
.end method

.method public build()Lcom/google/common/primitives/ImmutableDoubleArray;
    .locals 4
    .annotation runtime Lcom/google/errorprone/annotations/CheckReturnValue;
    .end annotation

    iget v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->count:I

    if-nez v0, :cond_0

    .line 299
    invoke-static {}, Lcom/google/common/primitives/ImmutableDoubleArray;->access$200()Lcom/google/common/primitives/ImmutableDoubleArray;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/primitives/ImmutableDoubleArray;

    iget-object v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->array:[D

    iget p0, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->count:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, p0, v2}, Lcom/google/common/primitives/ImmutableDoubleArray;-><init>([DIILcom/google/common/primitives/ImmutableDoubleArray$1;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method
