.class public final Lcom/google/common/collect/EnumMultiset;
.super Lcom/google/common/collect/AbstractMultiset;
.source "EnumMultiset.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/google/common/collect/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/EnumMultiset$Itr;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Enum<",
        "TE;>;>",
        "Lcom/google/common/collect/AbstractMultiset<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private transient counts:[I

.field private transient distinctElements:I

.field private transient enumConstants:[Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private transient size:J

.field private transient type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TE;>;)V"
        }
    .end annotation

    .line 89
    invoke-direct {p0}, Lcom/google/common/collect/AbstractMultiset;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/EnumMultiset;->type:Ljava/lang/Class;

    .line 91
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 92
    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Enum;

    iput-object p1, p0, Lcom/google/common/collect/EnumMultiset;->enumConstants:[Ljava/lang/Enum;

    .line 93
    array-length p1, p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/google/common/collect/EnumMultiset;->counts:[I

    return-void
.end method

.method static synthetic access$000(Lcom/google/common/collect/EnumMultiset;)[Ljava/lang/Enum;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/google/common/collect/EnumMultiset;->enumConstants:[Ljava/lang/Enum;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/common/collect/EnumMultiset;)[I
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/google/common/collect/EnumMultiset;->counts:[I

    return-object p0
.end method

.method static synthetic access$210(Lcom/google/common/collect/EnumMultiset;)I
    .locals 2

    .line 47
    iget v0, p0, Lcom/google/common/collect/EnumMultiset;->distinctElements:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/google/common/collect/EnumMultiset;->distinctElements:I

    return v0
.end method

.method static synthetic access$322(Lcom/google/common/collect/EnumMultiset;J)J
    .locals 2

    .line 47
    iget-wide v0, p0, Lcom/google/common/collect/EnumMultiset;->size:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/common/collect/EnumMultiset;->size:J

    return-wide v0
.end method

.method private checkIsE(Ljava/lang/Object;)V
    .locals 3

    .line 110
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    invoke-direct {p0, p1}, Lcom/google/common/collect/EnumMultiset;->isActuallyE(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 112
    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    iget-object p0, p0, Lcom/google/common/collect/EnumMultiset;->type:Ljava/lang/Class;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x15

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Expected an "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " but got "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static create(Ljava/lang/Class;)Lcom/google/common/collect/EnumMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Lcom/google/common/collect/EnumMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 51
    new-instance v0, Lcom/google/common/collect/EnumMultiset;

    invoke-direct {v0, p0}, Lcom/google/common/collect/EnumMultiset;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static create(Ljava/lang/Iterable;)Lcom/google/common/collect/EnumMultiset;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Iterable<",
            "TE;>;)",
            "Lcom/google/common/collect/EnumMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 63
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 64
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "EnumMultiset constructor passed empty Iterable"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 65
    new-instance v1, Lcom/google/common/collect/EnumMultiset;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    invoke-virtual {v0}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/common/collect/EnumMultiset;-><init>(Ljava/lang/Class;)V

    .line 66
    invoke-static {v1, p0}, Lcom/google/common/collect/Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    return-object v1
.end method

.method public static create(Ljava/lang/Iterable;Ljava/lang/Class;)Lcom/google/common/collect/EnumMultiset;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Iterable<",
            "TE;>;",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Lcom/google/common/collect/EnumMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 77
    invoke-static {p1}, Lcom/google/common/collect/EnumMultiset;->create(Ljava/lang/Class;)Lcom/google/common/collect/EnumMultiset;

    move-result-object p1

    .line 78
    invoke-static {p1, p0}, Lcom/google/common/collect/Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    return-object p1
.end method

.method private isActuallyE(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 97
    instance-of v0, p1, Ljava/lang/Enum;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 98
    check-cast p1, Ljava/lang/Enum;

    .line 99
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object p0, p0, Lcom/google/common/collect/EnumMultiset;->enumConstants:[Ljava/lang/Enum;

    .line 100
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-object p0, p0, v0

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 297
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 299
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcom/google/common/collect/EnumMultiset;->type:Ljava/lang/Class;

    .line 301
    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    iput-object v0, p0, Lcom/google/common/collect/EnumMultiset;->enumConstants:[Ljava/lang/Enum;

    .line 302
    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/common/collect/EnumMultiset;->counts:[I

    .line 303
    invoke-static {p0, p1}, Lcom/google/common/collect/Serialization;->populateMultiset(Lcom/google/common/collect/Multiset;Ljava/io/ObjectInputStream;)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 286
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget-object v0, p0, Lcom/google/common/collect/EnumMultiset;->type:Ljava/lang/Class;

    .line 287
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 288
    invoke-static {p0, p1}, Lcom/google/common/collect/Serialization;->writeMultiset(Lcom/google/common/collect/Multiset;Ljava/io/ObjectOutputStream;)V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Enum;I)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .line 140
    invoke-direct {p0, p1}, Lcom/google/common/collect/EnumMultiset;->checkIsE(Ljava/lang/Object;)V

    const-string v0, "occurrences"

    .line 141
    invoke-static {p2, v0}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    if-nez p2, :cond_0

    .line 143
    invoke-virtual {p0, p1}, Lcom/google/common/collect/EnumMultiset;->count(Ljava/lang/Object;)I

    move-result p0

    return p0

    .line 145
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iget-object v0, p0, Lcom/google/common/collect/EnumMultiset;->counts:[I

    .line 146
    aget v0, v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    add-long/2addr v1, v3

    const-wide/32 v5, 0x7fffffff

    cmp-long p2, v1, v5

    const/4 v5, 0x1

    if-gtz p2, :cond_1

    move p2, v5

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    const-string v6, "too many occurrences: %s"

    .line 148
    invoke-static {p2, v6, v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    iget-object p2, p0, Lcom/google/common/collect/EnumMultiset;->counts:[I

    long-to-int v1, v1

    .line 149
    aput v1, p2, p1

    if-nez v0, :cond_2

    iget p1, p0, Lcom/google/common/collect/EnumMultiset;->distinctElements:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/google/common/collect/EnumMultiset;->distinctElements:I

    :cond_2
    iget-wide p1, p0, Lcom/google/common/collect/EnumMultiset;->size:J

    add-long/2addr p1, v3

    iput-wide p1, p0, Lcom/google/common/collect/EnumMultiset;->size:J

    return v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;I)I
    .locals 0

    .line 45
    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/EnumMultiset;->add(Ljava/lang/Enum;I)I

    move-result p0

    return p0
.end method

.method public clear()V
    .locals 4

    iget-object v0, p0, Lcom/google/common/collect/EnumMultiset;->counts:[I

    const/4 v1, 0x0

    .line 205
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/common/collect/EnumMultiset;->size:J

    iput v1, p0, Lcom/google/common/collect/EnumMultiset;->distinctElements:I

    return-void
.end method

.method public bridge synthetic contains(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 45
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMultiset;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public count(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    .line 129
    invoke-direct {p0, p1}, Lcom/google/common/collect/EnumMultiset;->isActuallyE(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    check-cast p1, Ljava/lang/Enum;

    iget-object p0, p0, Lcom/google/common/collect/EnumMultiset;->counts:[I

    .line 133
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method distinctElements()I
    .locals 0

    iget p0, p0, Lcom/google/common/collect/EnumMultiset;->distinctElements:I

    return p0
.end method

.method elementIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 251
    new-instance v0, Lcom/google/common/collect/EnumMultiset$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/EnumMultiset$1;-><init>(Lcom/google/common/collect/EnumMultiset;)V

    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .locals 0

    .line 45
    invoke-super {p0}, Lcom/google/common/collect/AbstractMultiset;->elementSet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method entryIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;>;"
        }
    .end annotation

    .line 261
    new-instance v0, Lcom/google/common/collect/EnumMultiset$2;

    invoke-direct {v0, p0}, Lcom/google/common/collect/EnumMultiset$2;-><init>(Lcom/google/common/collect/EnumMultiset;)V

    return-object v0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 0

    .line 45
    invoke-super {p0}, Lcom/google/common/collect/AbstractMultiset;->entrySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic isEmpty()Z
    .locals 0

    .line 45
    invoke-super {p0}, Lcom/google/common/collect/AbstractMultiset;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 281
    invoke-static {p0}, Lcom/google/common/collect/Multisets;->iteratorImpl(Lcom/google/common/collect/Multiset;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public remove(Ljava/lang/Object;I)I
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 162
    invoke-direct {p0, p1}, Lcom/google/common/collect/EnumMultiset;->isActuallyE(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 165
    :cond_0
    move-object v1, p1

    check-cast v1, Ljava/lang/Enum;

    const-string v2, "occurrences"

    .line 166
    invoke-static {p2, v2}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    if-nez p2, :cond_1

    .line 168
    invoke-virtual {p0, p1}, Lcom/google/common/collect/EnumMultiset;->count(Ljava/lang/Object;)I

    move-result p0

    return p0

    .line 170
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iget-object v1, p0, Lcom/google/common/collect/EnumMultiset;->counts:[I

    .line 171
    aget v2, v1, p1

    if-nez v2, :cond_2

    return v0

    :cond_2
    if-gt v2, p2, :cond_3

    .line 175
    aput v0, v1, p1

    iget p1, p0, Lcom/google/common/collect/EnumMultiset;->distinctElements:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/common/collect/EnumMultiset;->distinctElements:I

    iget-wide p1, p0, Lcom/google/common/collect/EnumMultiset;->size:J

    int-to-long v0, v2

    sub-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/common/collect/EnumMultiset;->size:J

    goto :goto_0

    :cond_3
    sub-int v0, v2, p2

    .line 179
    aput v0, v1, p1

    iget-wide v0, p0, Lcom/google/common/collect/EnumMultiset;->size:J

    int-to-long p1, p2

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/common/collect/EnumMultiset;->size:J

    :goto_0
    return v2

    :cond_4
    :goto_1
    return v0
.end method

.method public setCount(Ljava/lang/Enum;I)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .line 189
    invoke-direct {p0, p1}, Lcom/google/common/collect/EnumMultiset;->checkIsE(Ljava/lang/Object;)V

    const-string v0, "count"

    .line 190
    invoke-static {p2, v0}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 191
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iget-object v0, p0, Lcom/google/common/collect/EnumMultiset;->counts:[I

    .line 192
    aget v1, v0, p1

    .line 193
    aput p2, v0, p1

    iget-wide v2, p0, Lcom/google/common/collect/EnumMultiset;->size:J

    sub-int p1, p2, v1

    int-to-long v4, p1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/common/collect/EnumMultiset;->size:J

    if-nez v1, :cond_0

    if-lez p2, :cond_0

    iget p1, p0, Lcom/google/common/collect/EnumMultiset;->distinctElements:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/collect/EnumMultiset;->distinctElements:I

    goto :goto_0

    :cond_0
    if-lez v1, :cond_1

    if-nez p2, :cond_1

    iget p1, p0, Lcom/google/common/collect/EnumMultiset;->distinctElements:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/common/collect/EnumMultiset;->distinctElements:I

    :cond_1
    :goto_0
    return v1
.end method

.method public bridge synthetic setCount(Ljava/lang/Object;I)I
    .locals 0

    .line 45
    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/EnumMultiset;->setCount(Ljava/lang/Enum;I)I

    move-result p0

    return p0
.end method

.method public bridge synthetic setCount(Ljava/lang/Object;II)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param

    .line 45
    invoke-super {p0, p1, p2, p3}, Lcom/google/common/collect/AbstractMultiset;->setCount(Ljava/lang/Object;II)Z

    move-result p0

    return p0
.end method

.method public size()I
    .locals 2

    iget-wide v0, p0, Lcom/google/common/collect/EnumMultiset;->size:J

    .line 123
    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result p0

    return p0
.end method
