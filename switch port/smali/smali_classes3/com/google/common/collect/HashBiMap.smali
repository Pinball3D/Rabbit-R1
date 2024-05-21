.class public final Lcom/google/common/collect/HashBiMap;
.super Ljava/util/AbstractMap;
.source "HashBiMap.java"

# interfaces
.implements Lcom/google/common/collect/BiMap;
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/google/common/collect/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/HashBiMap$EntryForValue;,
        Lcom/google/common/collect/HashBiMap$InverseEntrySet;,
        Lcom/google/common/collect/HashBiMap$Inverse;,
        Lcom/google/common/collect/HashBiMap$EntryForKey;,
        Lcom/google/common/collect/HashBiMap$EntrySet;,
        Lcom/google/common/collect/HashBiMap$ValueSet;,
        Lcom/google/common/collect/HashBiMap$KeySet;,
        Lcom/google/common/collect/HashBiMap$View;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Lcom/google/common/collect/BiMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final ABSENT:I = -0x1

.field private static final ENDPOINT:I = -0x2


# instance fields
.field private transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private transient firstInInsertionOrder:I

.field private transient hashTableKToV:[I

.field private transient hashTableVToK:[I

.field private transient inverse:Lcom/google/common/collect/BiMap;
    .annotation runtime Lcom/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/BiMap<",
            "TV;TK;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private transient keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation
.end field

.field transient keys:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TK;"
        }
    .end annotation
.end field

.field private transient lastInInsertionOrder:I

.field transient modCount:I

.field private transient nextInBucketKToV:[I

.field private transient nextInBucketVToK:[I

.field private transient nextInInsertionOrder:[I

.field private transient prevInInsertionOrder:[I

.field transient size:I

.field private transient valueSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation
.end field

.field transient values:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 114
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 115
    invoke-virtual {p0, p1}, Lcom/google/common/collect/HashBiMap;->init(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/common/collect/HashBiMap;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/google/common/collect/HashBiMap;->firstInInsertionOrder:I

    return p0
.end method

.method static synthetic access$100(Lcom/google/common/collect/HashBiMap;)[I
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/google/common/collect/HashBiMap;->nextInInsertionOrder:[I

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/common/collect/HashBiMap;ILjava/lang/Object;Z)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/HashBiMap;->replaceValueInEntry(ILjava/lang/Object;Z)V

    return-void
.end method

.method static synthetic access$302(Lcom/google/common/collect/HashBiMap;Lcom/google/common/collect/BiMap;)Lcom/google/common/collect/BiMap;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/google/common/collect/HashBiMap;->inverse:Lcom/google/common/collect/BiMap;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/common/collect/HashBiMap;ILjava/lang/Object;Z)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/HashBiMap;->replaceKeyInEntry(ILjava/lang/Object;Z)V

    return-void
.end method

.method private bucket(I)I
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[I

    .line 199
    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    and-int/2addr p0, p1

    return p0
.end method

.method public static create()Lcom/google/common/collect/HashBiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/HashBiMap<",
            "TK;TV;>;"
        }
    .end annotation

    const/16 v0, 0x10

    .line 62
    invoke-static {v0}, Lcom/google/common/collect/HashBiMap;->create(I)Lcom/google/common/collect/HashBiMap;

    move-result-object v0

    return-object v0
.end method

.method public static create(I)Lcom/google/common/collect/HashBiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/common/collect/HashBiMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 73
    new-instance v0, Lcom/google/common/collect/HashBiMap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/HashBiMap;-><init>(I)V

    return-object v0
.end method

.method public static create(Ljava/util/Map;)Lcom/google/common/collect/HashBiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)",
            "Lcom/google/common/collect/HashBiMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 82
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/HashBiMap;->create(I)Lcom/google/common/collect/HashBiMap;

    move-result-object v0

    .line 83
    invoke-virtual {v0, p0}, Lcom/google/common/collect/HashBiMap;->putAll(Ljava/util/Map;)V

    return-object v0
.end method

.method private static createFilledWithAbsent(I)[I
    .locals 1

    .line 141
    new-array p0, p0, [I

    const/4 v0, -0x1

    .line 142
    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([II)V

    return-object p0
.end method

.method private deleteFromTableKToV(II)V
    .locals 4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 418
    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 419
    invoke-direct {p0, p2}, Lcom/google/common/collect/HashBiMap;->bucket(I)I

    move-result p2

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[I

    .line 421
    aget v2, v1, p2

    if-ne v2, p1, :cond_1

    iget-object p0, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketKToV:[I

    .line 422
    aget v2, p0, p1

    aput v2, v1, p2

    .line 423
    aput v0, p0, p1

    return-void

    :cond_1
    iget-object p2, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketKToV:[I

    .line 428
    aget p2, p2, v2

    :goto_1
    move v3, v2

    move v2, p2

    move p2, v3

    if-eq v2, v0, :cond_3

    if-ne v2, p1, :cond_2

    iget-object p0, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketKToV:[I

    .line 432
    aget v1, p0, p1

    aput v1, p0, p2

    .line 433
    aput v0, p0, p1

    return-void

    :cond_2
    iget-object p2, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketKToV:[I

    .line 430
    aget p2, p2, v2

    goto :goto_1

    .line 438
    :cond_3
    new-instance p2, Ljava/lang/AssertionError;

    iget-object p0, p0, Lcom/google/common/collect/HashBiMap;->keys:[Ljava/lang/Object;

    aget-object p0, p0, p1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Expected to find entry with key "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method private deleteFromTableVToK(II)V
    .locals 4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 446
    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 447
    invoke-direct {p0, p2}, Lcom/google/common/collect/HashBiMap;->bucket(I)I

    move-result p2

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->hashTableVToK:[I

    .line 449
    aget v2, v1, p2

    if-ne v2, p1, :cond_1

    iget-object p0, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketVToK:[I

    .line 450
    aget v2, p0, p1

    aput v2, v1, p2

    .line 451
    aput v0, p0, p1

    return-void

    :cond_1
    iget-object p2, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketVToK:[I

    .line 456
    aget p2, p2, v2

    :goto_1
    move v3, v2

    move v2, p2

    move p2, v3

    if-eq v2, v0, :cond_3

    if-ne v2, p1, :cond_2

    iget-object p0, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketVToK:[I

    .line 460
    aget v1, p0, p1

    aput v1, p0, p2

    .line 461
    aput v0, p0, p1

    return-void

    :cond_2
    iget-object p2, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketVToK:[I

    .line 458
    aget p2, p2, v2

    goto :goto_1

    .line 466
    :cond_3
    new-instance p2, Ljava/lang/AssertionError;

    iget-object p0, p0, Lcom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    aget-object p0, p0, p1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Expected to find entry with value "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method private ensureCapacity(I)V
    .locals 4

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketKToV:[I

    .line 163
    array-length v1, v0

    if-ge v1, p1, :cond_0

    .line 164
    array-length v0, v0

    .line 165
    invoke-static {v0, p1}, Lcom/google/common/collect/ImmutableCollection$Builder;->expandedCapacity(II)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->keys:[Ljava/lang/Object;

    .line 167
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/HashBiMap;->keys:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    .line 168
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketKToV:[I

    .line 169
    invoke-static {v1, v0}, Lcom/google/common/collect/HashBiMap;->expandAndFillWithAbsent([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketKToV:[I

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketVToK:[I

    .line 170
    invoke-static {v1, v0}, Lcom/google/common/collect/HashBiMap;->expandAndFillWithAbsent([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketVToK:[I

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->prevInInsertionOrder:[I

    .line 171
    invoke-static {v1, v0}, Lcom/google/common/collect/HashBiMap;->expandAndFillWithAbsent([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/HashBiMap;->prevInInsertionOrder:[I

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->nextInInsertionOrder:[I

    .line 172
    invoke-static {v1, v0}, Lcom/google/common/collect/HashBiMap;->expandAndFillWithAbsent([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/HashBiMap;->nextInInsertionOrder:[I

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[I

    .line 175
    array-length v0, v0

    if-ge v0, p1, :cond_1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 176
    invoke-static {p1, v0, v1}, Lcom/google/common/collect/Hashing;->closedTableSize(ID)I

    move-result p1

    .line 177
    invoke-static {p1}, Lcom/google/common/collect/HashBiMap;->createFilledWithAbsent(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[I

    .line 178
    invoke-static {p1}, Lcom/google/common/collect/HashBiMap;->createFilledWithAbsent(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/HashBiMap;->hashTableVToK:[I

    const/4 p1, 0x0

    :goto_0
    iget v0, p0, Lcom/google/common/collect/HashBiMap;->size:I

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->keys:[Ljava/lang/Object;

    .line 181
    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    .line 182
    invoke-direct {p0, v0}, Lcom/google/common/collect/HashBiMap;->bucket(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketKToV:[I

    iget-object v2, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[I

    .line 183
    aget v3, v2, v0

    aput v3, v1, p1

    .line 184
    aput p1, v2, v0

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    .line 186
    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    .line 187
    invoke-direct {p0, v0}, Lcom/google/common/collect/HashBiMap;->bucket(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketVToK:[I

    iget-object v2, p0, Lcom/google/common/collect/HashBiMap;->hashTableVToK:[I

    .line 188
    aget v3, v2, v0

    aput v3, v1, p1

    .line 189
    aput p1, v2, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static expandAndFillWithAbsent([II)[I
    .locals 2

    .line 148
    array-length v0, p0

    .line 149
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    const/4 v1, -0x1

    .line 150
    invoke-static {p0, v0, p1, v1}, Ljava/util/Arrays;->fill([IIII)V

    return-object p0
.end method

.method private insertIntoTableKToV(II)V
    .locals 2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 396
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 397
    invoke-direct {p0, p2}, Lcom/google/common/collect/HashBiMap;->bucket(I)I

    move-result p2

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketKToV:[I

    iget-object p0, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[I

    .line 398
    aget v1, p0, p2

    aput v1, v0, p1

    .line 399
    aput p1, p0, p2

    return-void
.end method

.method private insertIntoTableVToK(II)V
    .locals 2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 407
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 408
    invoke-direct {p0, p2}, Lcom/google/common/collect/HashBiMap;->bucket(I)I

    move-result p2

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketVToK:[I

    iget-object p0, p0, Lcom/google/common/collect/HashBiMap;->hashTableVToK:[I

    .line 409
    aget v1, p0, p2

    aput v1, v0, p1

    .line 410
    aput p1, p0, p2

    return-void
.end method

.method private moveEntryToIndex(II)V
    .locals 5

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->prevInInsertionOrder:[I

    .line 610
    aget v0, v0, p1

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->nextInInsertionOrder:[I

    .line 611
    aget v1, v1, p1

    .line 612
    invoke-direct {p0, v0, p2}, Lcom/google/common/collect/HashBiMap;->setSucceeds(II)V

    .line 613
    invoke-direct {p0, p2, v1}, Lcom/google/common/collect/HashBiMap;->setSucceeds(II)V

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->keys:[Ljava/lang/Object;

    .line 615
    aget-object v1, v0, p1

    iget-object v2, p0, Lcom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    .line 616
    aget-object v3, v2, p1

    .line 618
    aput-object v1, v0, p2

    .line 619
    aput-object v3, v2, p2

    .line 622
    invoke-static {v1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    .line 623
    invoke-direct {p0, v0}, Lcom/google/common/collect/HashBiMap;->bucket(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[I

    .line 624
    aget v2, v1, v0

    if-ne v2, p1, :cond_1

    .line 625
    aput p2, v1, v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketKToV:[I

    .line 628
    aget v0, v0, v2

    :goto_0
    move v4, v2

    move v2, v0

    move v0, v4

    if-ne v2, p1, :cond_4

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketKToV:[I

    .line 632
    aput p2, v1, v0

    :goto_1
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketKToV:[I

    .line 638
    aget v1, v0, p1

    aput v1, v0, p2

    const/4 v1, -0x1

    .line 639
    aput v1, v0, p1

    .line 642
    invoke-static {v3}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    .line 643
    invoke-direct {p0, v0}, Lcom/google/common/collect/HashBiMap;->bucket(I)I

    move-result v0

    iget-object v2, p0, Lcom/google/common/collect/HashBiMap;->hashTableVToK:[I

    .line 644
    aget v3, v2, v0

    if-ne v3, p1, :cond_2

    .line 645
    aput p2, v2, v0

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketVToK:[I

    .line 648
    aget v0, v0, v3

    :goto_2
    move v4, v3

    move v3, v0

    move v0, v4

    if-ne v3, p1, :cond_3

    iget-object v2, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketVToK:[I

    .line 652
    aput p2, v2, v0

    :goto_3
    iget-object p0, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketVToK:[I

    .line 658
    aget v0, p0, p1

    aput v0, p0, p2

    .line 659
    aput v1, p0, p1

    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketVToK:[I

    .line 650
    aget v0, v0, v3

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketKToV:[I

    .line 630
    aget v0, v0, v2

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1144
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1145
    invoke-static {p1}, Lcom/google/common/collect/Serialization;->readCount(Ljava/io/ObjectInputStream;)I

    move-result v0

    const/16 v1, 0x10

    .line 1146
    invoke-virtual {p0, v1}, Lcom/google/common/collect/HashBiMap;->init(I)V

    .line 1147
    invoke-static {p0, p1, v0}, Lcom/google/common/collect/Serialization;->populateMap(Ljava/util/Map;Ljava/io/ObjectInputStream;I)V

    return-void
.end method

.method private removeEntry(III)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 577
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 578
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/HashBiMap;->deleteFromTableKToV(II)V

    .line 579
    invoke-direct {p0, p1, p3}, Lcom/google/common/collect/HashBiMap;->deleteFromTableVToK(II)V

    iget-object p2, p0, Lcom/google/common/collect/HashBiMap;->prevInInsertionOrder:[I

    .line 581
    aget p2, p2, p1

    iget-object p3, p0, Lcom/google/common/collect/HashBiMap;->nextInInsertionOrder:[I

    .line 582
    aget p3, p3, p1

    .line 583
    invoke-direct {p0, p2, p3}, Lcom/google/common/collect/HashBiMap;->setSucceeds(II)V

    iget p2, p0, Lcom/google/common/collect/HashBiMap;->size:I

    sub-int/2addr p2, v1

    .line 585
    invoke-direct {p0, p2, p1}, Lcom/google/common/collect/HashBiMap;->moveEntryToIndex(II)V

    iget-object p1, p0, Lcom/google/common/collect/HashBiMap;->keys:[Ljava/lang/Object;

    iget p2, p0, Lcom/google/common/collect/HashBiMap;->size:I

    add-int/lit8 p3, p2, -0x1

    const/4 v0, 0x0

    .line 586
    aput-object v0, p1, p3

    iget-object p1, p0, Lcom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    add-int/lit8 p3, p2, -0x1

    .line 587
    aput-object v0, p1, p3

    sub-int/2addr p2, v1

    iput p2, p0, Lcom/google/common/collect/HashBiMap;->size:I

    iget p1, p0, Lcom/google/common/collect/HashBiMap;->modCount:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/google/common/collect/HashBiMap;->modCount:I

    return-void
.end method

.method private replaceKeyInEntry(ILjava/lang/Object;Z)V
    .locals 4
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;Z)V"
        }
    .end annotation

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 499
    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 500
    invoke-static {p2}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v1

    .line 501
    invoke-virtual {p0, p2, v1}, Lcom/google/common/collect/HashBiMap;->findEntryByKey(Ljava/lang/Object;I)I

    move-result v2

    iget v3, p0, Lcom/google/common/collect/HashBiMap;->lastInInsertionOrder:I

    if-eq v2, v0, :cond_2

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/google/common/collect/HashBiMap;->prevInInsertionOrder:[I

    .line 507
    aget v3, p3, v2

    iget-object p3, p0, Lcom/google/common/collect/HashBiMap;->nextInInsertionOrder:[I

    .line 508
    aget p3, p3, v2

    .line 509
    invoke-virtual {p0, v2, v1}, Lcom/google/common/collect/HashBiMap;->removeEntryKeyHashKnown(II)V

    iget v0, p0, Lcom/google/common/collect/HashBiMap;->size:I

    if-ne p1, v0, :cond_3

    move p1, v2

    goto :goto_1

    .line 514
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, 0x1c

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Key already present in map: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    const/4 p3, -0x2

    :cond_3
    :goto_1
    if-ne v3, p1, :cond_4

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->prevInInsertionOrder:[I

    .line 518
    aget v3, v0, p1

    goto :goto_2

    :cond_4
    iget v0, p0, Lcom/google/common/collect/HashBiMap;->size:I

    if-ne v3, v0, :cond_5

    move v3, v2

    :cond_5
    :goto_2
    if-ne p3, p1, :cond_6

    iget-object p3, p0, Lcom/google/common/collect/HashBiMap;->nextInInsertionOrder:[I

    .line 524
    aget v2, p3, p1

    goto :goto_3

    :cond_6
    iget v0, p0, Lcom/google/common/collect/HashBiMap;->size:I

    if-ne p3, v0, :cond_7

    goto :goto_3

    :cond_7
    move v2, p3

    :goto_3
    iget-object p3, p0, Lcom/google/common/collect/HashBiMap;->prevInInsertionOrder:[I

    .line 529
    aget p3, p3, p1

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->nextInInsertionOrder:[I

    .line 530
    aget v0, v0, p1

    .line 531
    invoke-direct {p0, p3, v0}, Lcom/google/common/collect/HashBiMap;->setSucceeds(II)V

    iget-object p3, p0, Lcom/google/common/collect/HashBiMap;->keys:[Ljava/lang/Object;

    .line 533
    aget-object p3, p3, p1

    invoke-static {p3}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result p3

    invoke-direct {p0, p1, p3}, Lcom/google/common/collect/HashBiMap;->deleteFromTableKToV(II)V

    iget-object p3, p0, Lcom/google/common/collect/HashBiMap;->keys:[Ljava/lang/Object;

    .line 534
    aput-object p2, p3, p1

    .line 535
    invoke-static {p2}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/HashBiMap;->insertIntoTableKToV(II)V

    .line 538
    invoke-direct {p0, v3, p1}, Lcom/google/common/collect/HashBiMap;->setSucceeds(II)V

    .line 539
    invoke-direct {p0, p1, v2}, Lcom/google/common/collect/HashBiMap;->setSucceeds(II)V

    return-void
.end method

.method private replaceValueInEntry(ILjava/lang/Object;Z)V
    .locals 3
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;Z)V"
        }
    .end annotation

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 474
    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 475
    invoke-static {p2}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v1

    .line 476
    invoke-virtual {p0, p2, v1}, Lcom/google/common/collect/HashBiMap;->findEntryByValue(Ljava/lang/Object;I)I

    move-result v2

    if-eq v2, v0, :cond_2

    if-eqz p3, :cond_1

    .line 479
    invoke-virtual {p0, v2, v1}, Lcom/google/common/collect/HashBiMap;->removeEntryValueHashKnown(II)V

    iget p3, p0, Lcom/google/common/collect/HashBiMap;->size:I

    if-ne p1, p3, :cond_2

    move p1, v2

    goto :goto_1

    .line 484
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, 0x1e

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Value already present in map: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    iget-object p3, p0, Lcom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    .line 488
    aget-object p3, p3, p1

    invoke-static {p3}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result p3

    invoke-direct {p0, p1, p3}, Lcom/google/common/collect/HashBiMap;->deleteFromTableVToK(II)V

    iget-object p3, p0, Lcom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    .line 489
    aput-object p2, p3, p1

    .line 490
    invoke-direct {p0, p1, v1}, Lcom/google/common/collect/HashBiMap;->insertIntoTableVToK(II)V

    return-void
.end method

.method private setSucceeds(II)V
    .locals 2

    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    iput p2, p0, Lcom/google/common/collect/HashBiMap;->firstInInsertionOrder:I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->nextInInsertionOrder:[I

    .line 382
    aput p2, v1, p1

    :goto_0
    if-ne p2, v0, :cond_1

    iput p1, p0, Lcom/google/common/collect/HashBiMap;->lastInInsertionOrder:I

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/google/common/collect/HashBiMap;->prevInInsertionOrder:[I

    .line 387
    aput p1, p0, p2

    :goto_1
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1138
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1139
    invoke-static {p0, p1}, Lcom/google/common/collect/Serialization;->writeMap(Ljava/util/Map;Ljava/io/ObjectOutputStream;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->keys:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/HashBiMap;->size:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 664
    invoke-static {v0, v2, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/HashBiMap;->size:I

    .line 665
    invoke-static {v0, v2, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[I

    const/4 v1, -0x1

    .line 666
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->hashTableVToK:[I

    .line 667
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketKToV:[I

    iget v3, p0, Lcom/google/common/collect/HashBiMap;->size:I

    .line 668
    invoke-static {v0, v2, v3, v1}, Ljava/util/Arrays;->fill([IIII)V

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketVToK:[I

    iget v3, p0, Lcom/google/common/collect/HashBiMap;->size:I

    .line 669
    invoke-static {v0, v2, v3, v1}, Ljava/util/Arrays;->fill([IIII)V

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->prevInInsertionOrder:[I

    iget v3, p0, Lcom/google/common/collect/HashBiMap;->size:I

    .line 670
    invoke-static {v0, v2, v3, v1}, Ljava/util/Arrays;->fill([IIII)V

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->nextInInsertionOrder:[I

    iget v3, p0, Lcom/google/common/collect/HashBiMap;->size:I

    .line 671
    invoke-static {v0, v2, v3, v1}, Ljava/util/Arrays;->fill([IIII)V

    iput v2, p0, Lcom/google/common/collect/HashBiMap;->size:I

    const/4 v0, -0x2

    iput v0, p0, Lcom/google/common/collect/HashBiMap;->firstInInsertionOrder:I

    iput v0, p0, Lcom/google/common/collect/HashBiMap;->lastInInsertionOrder:I

    iget v0, p0, Lcom/google/common/collect/HashBiMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/HashBiMap;->modCount:I

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 243
    invoke-virtual {p0, p1}, Lcom/google/common/collect/HashBiMap;->findEntryByKey(Ljava/lang/Object;)I

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

.method public containsValue(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 258
    invoke-virtual {p0, p1}, Lcom/google/common/collect/HashBiMap;->findEntryByValue(Ljava/lang/Object;)I

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

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->entrySet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 833
    new-instance v0, Lcom/google/common/collect/HashBiMap$EntrySet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/HashBiMap$EntrySet;-><init>(Lcom/google/common/collect/HashBiMap;)V

    iput-object v0, p0, Lcom/google/common/collect/HashBiMap;->entrySet:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method findEntry(Ljava/lang/Object;I[I[I[Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 233
    invoke-direct {p0, p2}, Lcom/google/common/collect/HashBiMap;->bucket(I)I

    move-result p0

    aget p0, p3, p0

    :goto_0
    const/4 p2, -0x1

    if-eq p0, p2, :cond_1

    .line 234
    aget-object p2, p5, p0

    invoke-static {p2, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return p0

    .line 233
    :cond_0
    aget p0, p4, p0

    goto :goto_0

    :cond_1
    return p2
.end method

.method findEntryByKey(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 204
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/HashBiMap;->findEntryByKey(Ljava/lang/Object;I)I

    move-result p0

    return p0
.end method

.method findEntryByKey(Ljava/lang/Object;I)I
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    iget-object v3, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[I

    iget-object v4, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketKToV:[I

    iget-object v5, p0, Lcom/google/common/collect/HashBiMap;->keys:[Ljava/lang/Object;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 211
    invoke-virtual/range {v0 .. v5}, Lcom/google/common/collect/HashBiMap;->findEntry(Ljava/lang/Object;I[I[I[Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method findEntryByValue(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 216
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/HashBiMap;->findEntryByValue(Ljava/lang/Object;I)I

    move-result p0

    return p0
.end method

.method findEntryByValue(Ljava/lang/Object;I)I
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    iget-object v3, p0, Lcom/google/common/collect/HashBiMap;->hashTableVToK:[I

    iget-object v4, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketVToK:[I

    iget-object v5, p0, Lcom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 224
    invoke-virtual/range {v0 .. v5}, Lcom/google/common/collect/HashBiMap;->findEntry(Ljava/lang/Object;I[I[I[Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public forcePut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    const/4 v0, 0x1

    .line 323
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/common/collect/HashBiMap;->put(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 264
    invoke-virtual {p0, p1}, Lcom/google/common/collect/HashBiMap;->findEntryByKey(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    .line 265
    aget-object p0, p0, p1

    :goto_0
    return-object p0
.end method

.method getInverse(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TK;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 270
    invoke-virtual {p0, p1}, Lcom/google/common/collect/HashBiMap;->findEntryByValue(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/common/collect/HashBiMap;->keys:[Ljava/lang/Object;

    .line 271
    aget-object p0, p0, p1

    :goto_0
    return-object p0
.end method

.method init(I)V
    .locals 2

    const-string v0, "expectedSize"

    .line 120
    invoke-static {p1, v0}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 121
    invoke-static {p1, v0, v1}, Lcom/google/common/collect/Hashing;->closedTableSize(ID)I

    move-result v0

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/common/collect/HashBiMap;->size:I

    .line 124
    new-array v1, p1, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/common/collect/HashBiMap;->keys:[Ljava/lang/Object;

    .line 125
    new-array v1, p1, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    .line 127
    invoke-static {v0}, Lcom/google/common/collect/HashBiMap;->createFilledWithAbsent(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[I

    .line 128
    invoke-static {v0}, Lcom/google/common/collect/HashBiMap;->createFilledWithAbsent(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/HashBiMap;->hashTableVToK:[I

    .line 129
    invoke-static {p1}, Lcom/google/common/collect/HashBiMap;->createFilledWithAbsent(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketKToV:[I

    .line 130
    invoke-static {p1}, Lcom/google/common/collect/HashBiMap;->createFilledWithAbsent(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketVToK:[I

    const/4 v0, -0x2

    iput v0, p0, Lcom/google/common/collect/HashBiMap;->firstInInsertionOrder:I

    iput v0, p0, Lcom/google/common/collect/HashBiMap;->lastInInsertionOrder:I

    .line 135
    invoke-static {p1}, Lcom/google/common/collect/HashBiMap;->createFilledWithAbsent(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/HashBiMap;->prevInInsertionOrder:[I

    .line 136
    invoke-static {p1}, Lcom/google/common/collect/HashBiMap;->createFilledWithAbsent(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/HashBiMap;->nextInInsertionOrder:[I

    return-void
.end method

.method public inverse()Lcom/google/common/collect/BiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/BiMap<",
            "TV;TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->inverse:Lcom/google/common/collect/BiMap;

    if-nez v0, :cond_0

    .line 950
    new-instance v0, Lcom/google/common/collect/HashBiMap$Inverse;

    invoke-direct {v0, p0}, Lcom/google/common/collect/HashBiMap$Inverse;-><init>(Lcom/google/common/collect/HashBiMap;)V

    iput-object v0, p0, Lcom/google/common/collect/HashBiMap;->inverse:Lcom/google/common/collect/BiMap;

    :cond_0
    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->keySet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 757
    new-instance v0, Lcom/google/common/collect/HashBiMap$KeySet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/HashBiMap$KeySet;-><init>(Lcom/google/common/collect/HashBiMap;)V

    iput-object v0, p0, Lcom/google/common/collect/HashBiMap;->keySet:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    const/4 v0, 0x0

    .line 278
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/common/collect/HashBiMap;->put(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method put(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;Z)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 283
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    .line 284
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/HashBiMap;->findEntryByKey(Ljava/lang/Object;I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object p1, p0, Lcom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    .line 286
    aget-object p1, p1, v1

    .line 287
    invoke-static {p1, p2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    .line 290
    :cond_0
    invoke-direct {p0, v1, p2, p3}, Lcom/google/common/collect/HashBiMap;->replaceValueInEntry(ILjava/lang/Object;Z)V

    return-object p1

    .line 295
    :cond_1
    invoke-static {p2}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v1

    .line 296
    invoke-virtual {p0, p2, v1}, Lcom/google/common/collect/HashBiMap;->findEntryByValue(Ljava/lang/Object;I)I

    move-result v3

    const/4 v4, 0x1

    if-eqz p3, :cond_2

    if-eq v3, v2, :cond_4

    .line 299
    invoke-virtual {p0, v3, v1}, Lcom/google/common/collect/HashBiMap;->removeEntryValueHashKnown(II)V

    goto :goto_1

    :cond_2
    if-ne v3, v2, :cond_3

    move p3, v4

    goto :goto_0

    :cond_3
    const/4 p3, 0x0

    :goto_0
    const-string v2, "Value already present: %s"

    .line 302
    invoke-static {p3, v2, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    :cond_4
    :goto_1
    iget p3, p0, Lcom/google/common/collect/HashBiMap;->size:I

    add-int/2addr p3, v4

    .line 305
    invoke-direct {p0, p3}, Lcom/google/common/collect/HashBiMap;->ensureCapacity(I)V

    iget-object p3, p0, Lcom/google/common/collect/HashBiMap;->keys:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/HashBiMap;->size:I

    .line 306
    aput-object p1, p3, v2

    iget-object p1, p0, Lcom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    .line 307
    aput-object p2, p1, v2

    .line 309
    invoke-direct {p0, v2, v0}, Lcom/google/common/collect/HashBiMap;->insertIntoTableKToV(II)V

    iget p1, p0, Lcom/google/common/collect/HashBiMap;->size:I

    .line 310
    invoke-direct {p0, p1, v1}, Lcom/google/common/collect/HashBiMap;->insertIntoTableVToK(II)V

    iget p1, p0, Lcom/google/common/collect/HashBiMap;->lastInInsertionOrder:I

    iget p2, p0, Lcom/google/common/collect/HashBiMap;->size:I

    .line 312
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/HashBiMap;->setSucceeds(II)V

    iget p1, p0, Lcom/google/common/collect/HashBiMap;->size:I

    const/4 p2, -0x2

    .line 313
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/HashBiMap;->setSucceeds(II)V

    iget p1, p0, Lcom/google/common/collect/HashBiMap;->size:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/google/common/collect/HashBiMap;->size:I

    iget p1, p0, Lcom/google/common/collect/HashBiMap;->modCount:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/google/common/collect/HashBiMap;->modCount:I

    const/4 p0, 0x0

    return-object p0
.end method

.method putInverse(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TK;Z)TK;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 329
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    .line 330
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/HashBiMap;->findEntryByValue(Ljava/lang/Object;I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object p1, p0, Lcom/google/common/collect/HashBiMap;->keys:[Ljava/lang/Object;

    .line 332
    aget-object p1, p1, v1

    .line 333
    invoke-static {p1, p2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    .line 336
    :cond_0
    invoke-direct {p0, v1, p2, p3}, Lcom/google/common/collect/HashBiMap;->replaceKeyInEntry(ILjava/lang/Object;Z)V

    return-object p1

    :cond_1
    iget v1, p0, Lcom/google/common/collect/HashBiMap;->lastInInsertionOrder:I

    .line 342
    invoke-static {p2}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v3

    .line 343
    invoke-virtual {p0, p2, v3}, Lcom/google/common/collect/HashBiMap;->findEntryByKey(Ljava/lang/Object;I)I

    move-result v4

    const/4 v5, 0x1

    if-eqz p3, :cond_2

    if-eq v4, v2, :cond_4

    iget-object p3, p0, Lcom/google/common/collect/HashBiMap;->prevInInsertionOrder:[I

    .line 346
    aget v1, p3, v4

    .line 347
    invoke-virtual {p0, v4, v3}, Lcom/google/common/collect/HashBiMap;->removeEntryKeyHashKnown(II)V

    goto :goto_1

    :cond_2
    if-ne v4, v2, :cond_3

    move p3, v5

    goto :goto_0

    :cond_3
    const/4 p3, 0x0

    :goto_0
    const-string v2, "Key already present: %s"

    .line 350
    invoke-static {p3, v2, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    :cond_4
    :goto_1
    iget p3, p0, Lcom/google/common/collect/HashBiMap;->size:I

    add-int/2addr p3, v5

    .line 357
    invoke-direct {p0, p3}, Lcom/google/common/collect/HashBiMap;->ensureCapacity(I)V

    iget-object p3, p0, Lcom/google/common/collect/HashBiMap;->keys:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/HashBiMap;->size:I

    .line 358
    aput-object p2, p3, v2

    iget-object p2, p0, Lcom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    .line 359
    aput-object p1, p2, v2

    .line 361
    invoke-direct {p0, v2, v3}, Lcom/google/common/collect/HashBiMap;->insertIntoTableKToV(II)V

    iget p1, p0, Lcom/google/common/collect/HashBiMap;->size:I

    .line 362
    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/HashBiMap;->insertIntoTableVToK(II)V

    const/4 p1, -0x2

    if-ne v1, p1, :cond_5

    iget p1, p0, Lcom/google/common/collect/HashBiMap;->firstInInsertionOrder:I

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/google/common/collect/HashBiMap;->nextInInsertionOrder:[I

    .line 365
    aget p1, p1, v1

    :goto_2
    iget p2, p0, Lcom/google/common/collect/HashBiMap;->size:I

    .line 366
    invoke-direct {p0, v1, p2}, Lcom/google/common/collect/HashBiMap;->setSucceeds(II)V

    iget p2, p0, Lcom/google/common/collect/HashBiMap;->size:I

    .line 367
    invoke-direct {p0, p2, p1}, Lcom/google/common/collect/HashBiMap;->setSucceeds(II)V

    iget p1, p0, Lcom/google/common/collect/HashBiMap;->size:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/google/common/collect/HashBiMap;->size:I

    iget p1, p0, Lcom/google/common/collect/HashBiMap;->modCount:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/google/common/collect/HashBiMap;->modCount:I

    const/4 p0, 0x0

    return-object p0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 546
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    .line 547
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/HashBiMap;->findEntryByKey(Ljava/lang/Object;I)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    .line 551
    aget-object v1, v1, p1

    .line 552
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/HashBiMap;->removeEntryKeyHashKnown(II)V

    return-object v1
.end method

.method removeEntry(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->keys:[Ljava/lang/Object;

    .line 572
    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/HashBiMap;->removeEntryKeyHashKnown(II)V

    return-void
.end method

.method removeEntryKeyHashKnown(II)V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    .line 594
    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/HashBiMap;->removeEntry(III)V

    return-void
.end method

.method removeEntryValueHashKnown(II)V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->keys:[Ljava/lang/Object;

    .line 599
    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/common/collect/HashBiMap;->removeEntry(III)V

    return-void
.end method

.method removeInverse(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TK;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 559
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    .line 560
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/HashBiMap;->findEntryByValue(Ljava/lang/Object;I)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->keys:[Ljava/lang/Object;

    .line 564
    aget-object v1, v1, p1

    .line 565
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/HashBiMap;->removeEntryValueHashKnown(II)V

    return-object v1
.end method

.method public size()I
    .locals 0

    iget p0, p0, Lcom/google/common/collect/HashBiMap;->size:I

    return p0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 0

    .line 55
    invoke-virtual {p0}, Lcom/google/common/collect/HashBiMap;->values()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public values()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->valueSet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 795
    new-instance v0, Lcom/google/common/collect/HashBiMap$ValueSet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/HashBiMap$ValueSet;-><init>(Lcom/google/common/collect/HashBiMap;)V

    iput-object v0, p0, Lcom/google/common/collect/HashBiMap;->valueSet:Ljava/util/Set;

    :cond_0
    return-object v0
.end method
