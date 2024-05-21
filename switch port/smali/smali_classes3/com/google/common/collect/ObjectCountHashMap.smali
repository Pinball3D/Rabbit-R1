.class Lcom/google/common/collect/ObjectCountHashMap;
.super Ljava/lang/Object;
.source "ObjectCountHashMap.java"


# annotations
.annotation runtime Lcom/google/common/collect/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/ObjectCountHashMap$MapEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final DEFAULT_LOAD_FACTOR:F = 1.0f

.field static final DEFAULT_SIZE:I = 0x3

.field private static final HASH_MASK:J = -0x100000000L

.field private static final MAXIMUM_CAPACITY:I = 0x40000000

.field private static final NEXT_MASK:J = 0xffffffffL

.field static final UNSET:I = -0x1


# instance fields
.field transient entries:[J

.field transient keys:[Ljava/lang/Object;

.field private transient loadFactor:F

.field transient modCount:I

.field transient size:I

.field private transient table:[I

.field private transient threshold:I

.field transient values:[I


# direct methods
.method constructor <init>()V
    .locals 2

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    const/high16 v1, 0x3f800000    # 1.0f

    .line 120
    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/ObjectCountHashMap;->init(IF)V

    return-void
.end method

.method constructor <init>(I)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 136
    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/ObjectCountHashMap;-><init>(IF)V

    return-void
.end method

.method constructor <init>(IF)V
    .locals 0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ObjectCountHashMap;->init(IF)V

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/ObjectCountHashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ObjectCountHashMap<",
            "+TK;>;)V"
        }
    .end annotation

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    invoke-virtual {p1}, Lcom/google/common/collect/ObjectCountHashMap;->size()I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/ObjectCountHashMap;->init(IF)V

    .line 125
    invoke-virtual {p1}, Lcom/google/common/collect/ObjectCountHashMap;->firstIndex()I

    move-result v0

    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 126
    invoke-virtual {p1, v0}, Lcom/google/common/collect/ObjectCountHashMap;->getKey(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0}, Lcom/google/common/collect/ObjectCountHashMap;->getValue(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/google/common/collect/ObjectCountHashMap;->put(Ljava/lang/Object;I)I

    .line 125
    invoke-virtual {p1, v0}, Lcom/google/common/collect/ObjectCountHashMap;->nextIndex(I)I

    move-result v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method static create()Lcom/google/common/collect/ObjectCountHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/ObjectCountHashMap<",
            "TK;>;"
        }
    .end annotation

    .line 47
    new-instance v0, Lcom/google/common/collect/ObjectCountHashMap;

    invoke-direct {v0}, Lcom/google/common/collect/ObjectCountHashMap;-><init>()V

    return-object v0
.end method

.method static createWithExpectedSize(I)Lcom/google/common/collect/ObjectCountHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/common/collect/ObjectCountHashMap<",
            "TK;>;"
        }
    .end annotation

    .line 61
    new-instance v0, Lcom/google/common/collect/ObjectCountHashMap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ObjectCountHashMap;-><init>(I)V

    return-object v0
.end method

.method private static getHash(J)I
    .locals 1

    const/16 v0, 0x20

    ushr-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method private static getNext(J)I
    .locals 0

    long-to-int p0, p0

    return p0
.end method

.method private hashTableMask()I
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/ObjectCountHashMap;->table:[I

    .line 170
    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method private static newEntries(I)[J
    .locals 2

    .line 164
    new-array p0, p0, [J

    const-wide/16 v0, -0x1

    .line 165
    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->fill([JJ)V

    return-object p0
.end method

.method private static newTable(I)[I
    .locals 1

    .line 158
    new-array p0, p0, [I

    const/4 v0, -0x1

    .line 159
    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([II)V

    return-object p0
.end method

.method private remove(Ljava/lang/Object;I)I
    .locals 8
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 417
    invoke-direct {p0}, Lcom/google/common/collect/ObjectCountHashMap;->hashTableMask()I

    move-result v0

    and-int/2addr v0, p2

    iget-object v1, p0, Lcom/google/common/collect/ObjectCountHashMap;->table:[I

    .line 418
    aget v1, v1, v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    return v2

    :cond_0
    move v4, v3

    :goto_0
    iget-object v5, p0, Lcom/google/common/collect/ObjectCountHashMap;->entries:[J

    .line 424
    aget-wide v5, v5, v1

    invoke-static {v5, v6}, Lcom/google/common/collect/ObjectCountHashMap;->getHash(J)I

    move-result v5

    if-ne v5, p2, :cond_2

    iget-object v5, p0, Lcom/google/common/collect/ObjectCountHashMap;->keys:[Ljava/lang/Object;

    .line 425
    aget-object v5, v5, v1

    invoke-static {p1, v5}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object p1, p0, Lcom/google/common/collect/ObjectCountHashMap;->values:[I

    .line 426
    aget p1, p1, v1

    if-ne v4, v3, :cond_1

    iget-object p2, p0, Lcom/google/common/collect/ObjectCountHashMap;->table:[I

    iget-object v2, p0, Lcom/google/common/collect/ObjectCountHashMap;->entries:[J

    .line 430
    aget-wide v2, v2, v1

    invoke-static {v2, v3}, Lcom/google/common/collect/ObjectCountHashMap;->getNext(J)I

    move-result v2

    aput v2, p2, v0

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/google/common/collect/ObjectCountHashMap;->entries:[J

    .line 433
    aget-wide v2, p2, v4

    aget-wide v5, p2, v1

    invoke-static {v5, v6}, Lcom/google/common/collect/ObjectCountHashMap;->getNext(J)I

    move-result v0

    invoke-static {v2, v3, v0}, Lcom/google/common/collect/ObjectCountHashMap;->swapNext(JI)J

    move-result-wide v2

    aput-wide v2, p2, v4

    .line 436
    :goto_1
    invoke-virtual {p0, v1}, Lcom/google/common/collect/ObjectCountHashMap;->moveLastEntry(I)V

    iget p2, p0, Lcom/google/common/collect/ObjectCountHashMap;->size:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/google/common/collect/ObjectCountHashMap;->size:I

    iget p2, p0, Lcom/google/common/collect/ObjectCountHashMap;->modCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/google/common/collect/ObjectCountHashMap;->modCount:I

    return p1

    :cond_2
    iget-object v4, p0, Lcom/google/common/collect/ObjectCountHashMap;->entries:[J

    .line 443
    aget-wide v4, v4, v1

    invoke-static {v4, v5}, Lcom/google/common/collect/ObjectCountHashMap;->getNext(J)I

    move-result v4

    if-ne v4, v3, :cond_3

    return v2

    :cond_3
    move v7, v4

    move v4, v1

    move v1, v7

    goto :goto_0
.end method

.method private resizeMeMaybe(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->entries:[J

    .line 336
    array-length v0, v0

    if-le p1, v0, :cond_1

    ushr-int/lit8 p1, v0, 0x1

    const/4 v1, 0x1

    .line 338
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/2addr p1, v0

    if-gez p1, :cond_0

    const p1, 0x7fffffff

    :cond_0
    if-eq p1, v0, :cond_1

    .line 343
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ObjectCountHashMap;->resizeEntries(I)V

    :cond_1
    return-void
.end method

.method private resizeTable(I)V
    .locals 11

    iget-object v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->table:[I

    .line 366
    array-length v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    if-lt v0, v1, :cond_0

    const p1, 0x7fffffff

    iput p1, p0, Lcom/google/common/collect/ObjectCountHashMap;->threshold:I

    return-void

    :cond_0
    int-to-float v0, p1

    iget v1, p0, Lcom/google/common/collect/ObjectCountHashMap;->loadFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    .line 372
    invoke-static {p1}, Lcom/google/common/collect/ObjectCountHashMap;->newTable(I)[I

    move-result-object p1

    iget-object v1, p0, Lcom/google/common/collect/ObjectCountHashMap;->entries:[J

    .line 375
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    :goto_0
    iget v4, p0, Lcom/google/common/collect/ObjectCountHashMap;->size:I

    if-ge v3, v4, :cond_1

    .line 377
    aget-wide v4, v1, v3

    .line 378
    invoke-static {v4, v5}, Lcom/google/common/collect/ObjectCountHashMap;->getHash(J)I

    move-result v4

    and-int v5, v4, v2

    .line 380
    aget v6, p1, v5

    .line 381
    aput v3, p1, v5

    int-to-long v4, v4

    const/16 v7, 0x20

    shl-long/2addr v4, v7

    const-wide v7, 0xffffffffL

    int-to-long v9, v6

    and-long v6, v9, v7

    or-long/2addr v4, v6

    .line 382
    aput-wide v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iput v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->threshold:I

    iput-object p1, p0, Lcom/google/common/collect/ObjectCountHashMap;->table:[I

    return-void
.end method

.method private static swapNext(JI)J
    .locals 4

    const-wide v0, -0x100000000L

    and-long/2addr p0, v0

    const-wide v0, 0xffffffffL

    int-to-long v2, p2

    and-long/2addr v0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public clear()V
    .locals 4

    iget v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->modCount:I

    iget-object v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->keys:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/ObjectCountHashMap;->size:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 497
    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->values:[I

    iget v1, p0, Lcom/google/common/collect/ObjectCountHashMap;->size:I

    .line 498
    invoke-static {v0, v3, v1, v3}, Ljava/util/Arrays;->fill([IIII)V

    iget-object v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->table:[I

    const/4 v1, -0x1

    .line 499
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->entries:[J

    const-wide/16 v1, -0x1

    .line 500
    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    iput v3, p0, Lcom/google/common/collect/ObjectCountHashMap;->size:I

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 403
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ObjectCountHashMap;->indexOf(Ljava/lang/Object;)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method ensureCapacity(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->entries:[J

    .line 273
    array-length v0, v0

    if-le p1, v0, :cond_0

    .line 274
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ObjectCountHashMap;->resizeEntries(I)V

    :cond_0
    iget v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->threshold:I

    if-lt p1, v0, :cond_1

    add-int/lit8 p1, p1, -0x1

    .line 277
    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p1

    shl-int/lit8 p1, p1, 0x1

    const/4 v0, 0x2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 278
    invoke-direct {p0, p1}, Lcom/google/common/collect/ObjectCountHashMap;->resizeTable(I)V

    :cond_1
    return-void
.end method

.method firstIndex()I
    .locals 0

    iget p0, p0, Lcom/google/common/collect/ObjectCountHashMap;->size:I

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public get(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 407
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ObjectCountHashMap;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/common/collect/ObjectCountHashMap;->values:[I

    .line 408
    aget p0, p0, p1

    :goto_0
    return p0
.end method

.method getEntry(I)Lcom/google/common/collect/Multiset$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TK;>;"
        }
    .end annotation

    iget v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->size:I

    .line 207
    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 208
    new-instance v0, Lcom/google/common/collect/ObjectCountHashMap$MapEntry;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/ObjectCountHashMap$MapEntry;-><init>(Lcom/google/common/collect/ObjectCountHashMap;I)V

    return-object v0
.end method

.method getKey(I)Ljava/lang/Object;
    .locals 1
    .annotation runtime Lcom/google/common/collect/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    iget v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->size:I

    .line 192
    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    iget-object p0, p0, Lcom/google/common/collect/ObjectCountHashMap;->keys:[Ljava/lang/Object;

    .line 193
    aget-object p0, p0, p1

    return-object p0
.end method

.method getValue(I)I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->size:I

    .line 197
    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    iget-object p0, p0, Lcom/google/common/collect/ObjectCountHashMap;->values:[I

    .line 198
    aget p0, p0, p1

    return p0
.end method

.method indexOf(Ljava/lang/Object;)I
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 390
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/ObjectCountHashMap;->table:[I

    .line 391
    invoke-direct {p0}, Lcom/google/common/collect/ObjectCountHashMap;->hashTableMask()I

    move-result v2

    and-int/2addr v2, v0

    aget v1, v1, v2

    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/common/collect/ObjectCountHashMap;->entries:[J

    .line 393
    aget-wide v2, v2, v1

    .line 394
    invoke-static {v2, v3}, Lcom/google/common/collect/ObjectCountHashMap;->getHash(J)I

    move-result v4

    if-ne v4, v0, :cond_0

    iget-object v4, p0, Lcom/google/common/collect/ObjectCountHashMap;->keys:[Ljava/lang/Object;

    aget-object v4, v4, v1

    invoke-static {p1, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v1

    .line 397
    :cond_0
    invoke-static {v2, v3}, Lcom/google/common/collect/ObjectCountHashMap;->getNext(J)I

    move-result v1

    goto :goto_0

    :cond_1
    return v2
.end method

.method init(IF)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const-string v3, "Initial capacity must be non-negative"

    .line 144
    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-lez v2, :cond_1

    move v0, v1

    :cond_1
    const-string v2, "Illegal load factor"

    .line 145
    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    float-to-double v2, p2

    .line 146
    invoke-static {p1, v2, v3}, Lcom/google/common/collect/Hashing;->closedTableSize(ID)I

    move-result v0

    .line 147
    invoke-static {v0}, Lcom/google/common/collect/ObjectCountHashMap;->newTable(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/collect/ObjectCountHashMap;->table:[I

    iput p2, p0, Lcom/google/common/collect/ObjectCountHashMap;->loadFactor:F

    .line 150
    new-array v2, p1, [Ljava/lang/Object;

    iput-object v2, p0, Lcom/google/common/collect/ObjectCountHashMap;->keys:[Ljava/lang/Object;

    .line 151
    new-array v2, p1, [I

    iput-object v2, p0, Lcom/google/common/collect/ObjectCountHashMap;->values:[I

    .line 153
    invoke-static {p1}, Lcom/google/common/collect/ObjectCountHashMap;->newEntries(I)[J

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/ObjectCountHashMap;->entries:[J

    int-to-float p1, v0

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 154
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/ObjectCountHashMap;->threshold:I

    return-void
.end method

.method insertEntry(ILjava/lang/Object;II)V
    .locals 5
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;II)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->entries:[J

    int-to-long v1, p4

    const/16 p4, 0x20

    shl-long/2addr v1, p4

    const-wide v3, 0xffffffffL

    or-long/2addr v1, v3

    .line 329
    aput-wide v1, v0, p1

    iget-object p4, p0, Lcom/google/common/collect/ObjectCountHashMap;->keys:[Ljava/lang/Object;

    .line 330
    aput-object p2, p4, p1

    iget-object p0, p0, Lcom/google/common/collect/ObjectCountHashMap;->values:[I

    .line 331
    aput p3, p0, p1

    return-void
.end method

.method moveLastEntry(I)V
    .locals 8

    .line 457
    invoke-virtual {p0}, Lcom/google/common/collect/ObjectCountHashMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-ge p1, v0, :cond_2

    iget-object v5, p0, Lcom/google/common/collect/ObjectCountHashMap;->keys:[Ljava/lang/Object;

    .line 460
    aget-object v6, v5, v0

    aput-object v6, v5, p1

    iget-object v6, p0, Lcom/google/common/collect/ObjectCountHashMap;->values:[I

    .line 461
    aget v7, v6, v0

    aput v7, v6, p1

    .line 462
    aput-object v4, v5, v0

    .line 463
    aput v3, v6, v0

    iget-object v3, p0, Lcom/google/common/collect/ObjectCountHashMap;->entries:[J

    .line 466
    aget-wide v4, v3, v0

    .line 467
    aput-wide v4, v3, p1

    .line 468
    aput-wide v1, v3, v0

    .line 472
    invoke-static {v4, v5}, Lcom/google/common/collect/ObjectCountHashMap;->getHash(J)I

    move-result v1

    invoke-direct {p0}, Lcom/google/common/collect/ObjectCountHashMap;->hashTableMask()I

    move-result v2

    and-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/common/collect/ObjectCountHashMap;->table:[I

    .line 473
    aget v3, v2, v1

    if-ne v3, v0, :cond_0

    .line 476
    aput p1, v2, v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/common/collect/ObjectCountHashMap;->entries:[J

    .line 483
    aget-wide v1, v1, v3

    invoke-static {v1, v2}, Lcom/google/common/collect/ObjectCountHashMap;->getNext(J)I

    move-result v4

    if-ne v4, v0, :cond_1

    iget-object p0, p0, Lcom/google/common/collect/ObjectCountHashMap;->entries:[J

    .line 486
    invoke-static {v1, v2, p1}, Lcom/google/common/collect/ObjectCountHashMap;->swapNext(JI)J

    move-result-wide v0

    aput-wide v0, p0, v3

    goto :goto_1

    :cond_1
    move v3, v4

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->keys:[Ljava/lang/Object;

    .line 489
    aput-object v4, v0, p1

    iget-object v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->values:[I

    .line 490
    aput v3, v0, p1

    iget-object p0, p0, Lcom/google/common/collect/ObjectCountHashMap;->entries:[J

    .line 491
    aput-wide v1, p0, p1

    :goto_1
    return-void
.end method

.method nextIndex(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x1

    iget p0, p0, Lcom/google/common/collect/ObjectCountHashMap;->size:I

    if-ge p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method nextIndexAfterRemove(II)I
    .locals 0

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public put(Ljava/lang/Object;I)I
    .locals 11
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)I"
        }
    .end annotation

    const-string v0, "count"

    .line 284
    invoke-static {p2, v0}, Lcom/google/common/collect/CollectPreconditions;->checkPositive(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->entries:[J

    iget-object v1, p0, Lcom/google/common/collect/ObjectCountHashMap;->keys:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/common/collect/ObjectCountHashMap;->values:[I

    .line 289
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v3

    .line 290
    invoke-direct {p0}, Lcom/google/common/collect/ObjectCountHashMap;->hashTableMask()I

    move-result v4

    and-int/2addr v4, v3

    iget v5, p0, Lcom/google/common/collect/ObjectCountHashMap;->size:I

    iget-object v6, p0, Lcom/google/common/collect/ObjectCountHashMap;->table:[I

    .line 292
    aget v7, v6, v4

    const/4 v8, -0x1

    if-ne v7, v8, :cond_0

    .line 294
    aput v5, v6, v4

    goto :goto_1

    .line 300
    :cond_0
    :goto_0
    aget-wide v9, v0, v7

    .line 301
    invoke-static {v9, v10}, Lcom/google/common/collect/ObjectCountHashMap;->getHash(J)I

    move-result v4

    if-ne v4, v3, :cond_1

    aget-object v4, v1, v7

    invoke-static {p1, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 302
    aget p0, v2, v7

    .line 304
    aput p2, v2, v7

    return p0

    .line 307
    :cond_1
    invoke-static {v9, v10}, Lcom/google/common/collect/ObjectCountHashMap;->getNext(J)I

    move-result v4

    if-ne v4, v8, :cond_4

    .line 309
    invoke-static {v9, v10, v5}, Lcom/google/common/collect/ObjectCountHashMap;->swapNext(JI)J

    move-result-wide v1

    aput-wide v1, v0, v7

    :goto_1
    const v0, 0x7fffffff

    if-eq v5, v0, :cond_3

    add-int/lit8 v0, v5, 0x1

    .line 315
    invoke-direct {p0, v0}, Lcom/google/common/collect/ObjectCountHashMap;->resizeMeMaybe(I)V

    .line 316
    invoke-virtual {p0, v5, p1, p2, v3}, Lcom/google/common/collect/ObjectCountHashMap;->insertEntry(ILjava/lang/Object;II)V

    iput v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->size:I

    iget p1, p0, Lcom/google/common/collect/ObjectCountHashMap;->threshold:I

    if-lt v5, p1, :cond_2

    iget-object p1, p0, Lcom/google/common/collect/ObjectCountHashMap;->table:[I

    .line 319
    array-length p1, p1

    mul-int/lit8 p1, p1, 0x2

    invoke-direct {p0, p1}, Lcom/google/common/collect/ObjectCountHashMap;->resizeTable(I)V

    :cond_2
    iget p1, p0, Lcom/google/common/collect/ObjectCountHashMap;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/collect/ObjectCountHashMap;->modCount:I

    const/4 p0, 0x0

    return p0

    .line 312
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot contain more than Integer.MAX_VALUE elements!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    move v7, v4

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 413
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/ObjectCountHashMap;->remove(Ljava/lang/Object;I)I

    move-result p0

    return p0
.end method

.method removeEntry(I)I
    .locals 3

    iget-object v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->keys:[Ljava/lang/Object;

    .line 450
    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/google/common/collect/ObjectCountHashMap;->entries:[J

    aget-wide v1, v1, p1

    invoke-static {v1, v2}, Lcom/google/common/collect/ObjectCountHashMap;->getHash(J)I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/google/common/collect/ObjectCountHashMap;->remove(Ljava/lang/Object;I)I

    move-result p0

    return p0
.end method

.method resizeEntries(I)V
    .locals 4

    iget-object v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->keys:[Ljava/lang/Object;

    .line 353
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->keys:[Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->values:[I

    .line 354
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->values:[I

    iget-object v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->entries:[J

    .line 356
    array-length v1, v0

    .line 357
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    if-le p1, v1, :cond_0

    const-wide/16 v2, -0x1

    .line 359
    invoke-static {v0, v1, p1, v2, v3}, Ljava/util/Arrays;->fill([JIIJ)V

    :cond_0
    iput-object v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->entries:[J

    return-void
.end method

.method setValue(II)V
    .locals 1

    iget v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->size:I

    .line 202
    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    iget-object p0, p0, Lcom/google/common/collect/ObjectCountHashMap;->values:[I

    .line 203
    aput p2, p0, p1

    return-void
.end method

.method size()I
    .locals 0

    iget p0, p0, Lcom/google/common/collect/ObjectCountHashMap;->size:I

    return p0
.end method
