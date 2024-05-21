.class public final Landroidx/media3/datasource/cache/DefaultContentMetadata;
.super Ljava/lang/Object;
.source "DefaultContentMetadata.java"

# interfaces
.implements Landroidx/media3/datasource/cache/ContentMetadata;


# static fields
.field public static final EMPTY:Landroidx/media3/datasource/cache/DefaultContentMetadata;


# instance fields
.field private hashCode:I

.field private final metadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Landroidx/media3/datasource/cache/DefaultContentMetadata;

    .line 36
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/media3/datasource/cache/DefaultContentMetadata;-><init>(Ljava/util/Map;)V

    sput-object v0, Landroidx/media3/datasource/cache/DefaultContentMetadata;->EMPTY:Landroidx/media3/datasource/cache/DefaultContentMetadata;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/media3/datasource/cache/DefaultContentMetadata;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/datasource/cache/DefaultContentMetadata;->metadata:Ljava/util/Map;

    return-void
.end method

.method private static addValues(Ljava/util/HashMap;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[B>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 159
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 160
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/datasource/cache/DefaultContentMetadata;->getBytes(Ljava/lang/Object;)[B

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static applyMutations(Ljava/util/Map;Landroidx/media3/datasource/cache/ContentMetadataMutations;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;",
            "Landroidx/media3/datasource/cache/ContentMetadataMutations;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .line 146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 147
    invoke-virtual {p1}, Landroidx/media3/datasource/cache/ContentMetadataMutations;->getRemovedValues()Ljava/util/List;

    move-result-object p0

    invoke-static {v0, p0}, Landroidx/media3/datasource/cache/DefaultContentMetadata;->removeValues(Ljava/util/HashMap;Ljava/util/List;)V

    .line 148
    invoke-virtual {p1}, Landroidx/media3/datasource/cache/ContentMetadataMutations;->getEditedValues()Ljava/util/Map;

    move-result-object p0

    invoke-static {v0, p0}, Landroidx/media3/datasource/cache/DefaultContentMetadata;->addValues(Ljava/util/HashMap;Ljava/util/Map;)V

    return-object v0
.end method

.method private static getBytes(Ljava/lang/Object;)[B
    .locals 3

    .line 165
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    .line 166
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0

    .line 167
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 168
    check-cast p0, Ljava/lang/String;

    sget-object v0, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0

    .line 169
    :cond_1
    instance-of v0, p0, [B

    if-eqz v0, :cond_2

    .line 170
    check-cast p0, [B

    return-object p0

    .line 172
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private static isMetadataEqual(Ljava/util/Map;Ljava/util/Map;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)Z"
        }
    .end annotation

    .line 131
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 134
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 135
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 136
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 137
    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private static removeValues(Ljava/util/HashMap;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[B>;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 153
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 154
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/datasource/cache/DefaultContentMetadata;->metadata:Ljava/util/Map;

    .line 104
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public copyWithMutationsApplied(Landroidx/media3/datasource/cache/ContentMetadataMutations;)Landroidx/media3/datasource/cache/DefaultContentMetadata;
    .locals 1

    iget-object v0, p0, Landroidx/media3/datasource/cache/DefaultContentMetadata;->metadata:Ljava/util/Map;

    .line 58
    invoke-static {v0, p1}, Landroidx/media3/datasource/cache/DefaultContentMetadata;->applyMutations(Ljava/util/Map;Landroidx/media3/datasource/cache/ContentMetadataMutations;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Landroidx/media3/datasource/cache/DefaultContentMetadata;->metadata:Ljava/util/Map;

    .line 59
    invoke-static {v0, p1}, Landroidx/media3/datasource/cache/DefaultContentMetadata;->isMetadataEqual(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 62
    :cond_0
    new-instance p0, Landroidx/media3/datasource/cache/DefaultContentMetadata;

    invoke-direct {p0, p1}, Landroidx/media3/datasource/cache/DefaultContentMetadata;-><init>(Ljava/util/Map;)V

    return-object p0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "[B>;>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/media3/datasource/cache/DefaultContentMetadata;->metadata:Ljava/util/Map;

    .line 67
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_2

    .line 112
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/media3/datasource/cache/DefaultContentMetadata;->metadata:Ljava/util/Map;

    .line 115
    check-cast p1, Landroidx/media3/datasource/cache/DefaultContentMetadata;

    iget-object p1, p1, Landroidx/media3/datasource/cache/DefaultContentMetadata;->metadata:Ljava/util/Map;

    invoke-static {p0, p1}, Landroidx/media3/datasource/cache/DefaultContentMetadata;->isMetadataEqual(Ljava/util/Map;Ljava/util/Map;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final get(Ljava/lang/String;J)J
    .locals 0

    iget-object p0, p0, Landroidx/media3/datasource/cache/DefaultContentMetadata;->metadata:Ljava/util/Map;

    .line 94
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    if-eqz p0, :cond_0

    .line 96
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide p0

    return-wide p0

    :cond_0
    return-wide p2
.end method

.method public final get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/media3/datasource/cache/DefaultContentMetadata;->metadata:Ljava/util/Map;

    .line 84
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    if-eqz p0, :cond_0

    .line 86
    new-instance p1, Ljava/lang/String;

    sget-object p2, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, p0, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p1

    :cond_0
    return-object p2
.end method

.method public final get(Ljava/lang/String;[B)[B
    .locals 0

    iget-object p0, p0, Landroidx/media3/datasource/cache/DefaultContentMetadata;->metadata:Ljava/util/Map;

    .line 73
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    if-eqz p0, :cond_0

    .line 75
    array-length p1, p0

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    return-object p0

    :cond_0
    return-object p2
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Landroidx/media3/datasource/cache/DefaultContentMetadata;->hashCode:I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media3/datasource/cache/DefaultContentMetadata;->metadata:Ljava/util/Map;

    .line 122
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 123
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    xor-int/2addr v2, v3

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    iput v1, p0, Landroidx/media3/datasource/cache/DefaultContentMetadata;->hashCode:I

    :cond_1
    iget p0, p0, Landroidx/media3/datasource/cache/DefaultContentMetadata;->hashCode:I

    return p0
.end method
