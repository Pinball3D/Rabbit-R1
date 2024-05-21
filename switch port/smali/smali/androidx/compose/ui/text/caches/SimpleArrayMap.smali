.class public final Landroidx/compose/ui/text/caches/SimpleArrayMap;
.super Ljava/lang/Object;
.source "SimpleArrayMap.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\'\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0004\u0008\u0001\u0010\u00022\u00020\u0003B\u0011\u0008\u0017\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006B\u001d\u0008\u0016\u0012\u0014\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u0000\u00a2\u0006\u0002\u0010\u0008J\u0006\u0010\u0015\u001a\u00020\u0016J\u0013\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u001aJ\u0013\u0010\u001b\u001a\u00020\u00182\u0006\u0010\u001c\u001a\u00028\u0001\u00a2\u0006\u0002\u0010\u001aJ\u000e\u0010\u001d\u001a\u00020\u00162\u0006\u0010\u001e\u001a\u00020\u0005J\u0013\u0010\u001f\u001a\u00020\u00182\u0008\u0010 \u001a\u0004\u0018\u00010\u0003H\u0096\u0002J\u0018\u0010!\u001a\u0004\u0018\u00018\u00012\u0006\u0010\u0019\u001a\u00028\u0000H\u0086\u0002\u00a2\u0006\u0002\u0010\"J\u001b\u0010#\u001a\u00028\u00012\u0006\u0010\u0019\u001a\u00028\u00002\u0006\u0010$\u001a\u00028\u0001\u00a2\u0006\u0002\u0010%J\u0008\u0010&\u001a\u00020\u0005H\u0016J\u0018\u0010\'\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u00032\u0006\u0010(\u001a\u00020\u0005H\u0004J\u0010\u0010)\u001a\u00020\u00052\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0003J\u0008\u0010*\u001a\u00020\u0005H\u0004J\u0017\u0010+\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00028\u0001H\u0000\u00a2\u0006\u0004\u0008,\u0010-J\u0006\u0010.\u001a\u00020\u0018J\u0013\u0010/\u001a\u00028\u00002\u0006\u00100\u001a\u00020\u0005\u00a2\u0006\u0002\u00101J\u001d\u00102\u001a\u0004\u0018\u00018\u00012\u0006\u0010\u0019\u001a\u00028\u00002\u0006\u0010\u001c\u001a\u00028\u0001\u00a2\u0006\u0002\u0010%J\u001e\u00103\u001a\u00020\u00162\u0016\u00104\u001a\u0012\u0012\u0006\u0008\u0001\u0012\u00028\u0000\u0012\u0006\u0008\u0001\u0012\u00028\u00010\u0000J\u001d\u00105\u001a\u0004\u0018\u00018\u00012\u0006\u0010\u0019\u001a\u00028\u00002\u0006\u0010\u001c\u001a\u00028\u0001\u00a2\u0006\u0002\u0010%J\u0015\u00106\u001a\u0004\u0018\u00018\u00012\u0006\u0010\u0019\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\"J\u001b\u00106\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00028\u00002\u0006\u0010\u001c\u001a\u00028\u0001\u00a2\u0006\u0002\u00107J\u0015\u00108\u001a\u0004\u0018\u00018\u00012\u0006\u00100\u001a\u00020\u0005\u00a2\u0006\u0002\u00101J\u001d\u00109\u001a\u0004\u0018\u00018\u00012\u0006\u0010\u0019\u001a\u00028\u00002\u0006\u0010\u001c\u001a\u00028\u0001\u00a2\u0006\u0002\u0010%J#\u00109\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00028\u00002\u0006\u0010:\u001a\u00028\u00012\u0006\u0010;\u001a\u00028\u0001\u00a2\u0006\u0002\u0010<J\u001b\u0010=\u001a\u00028\u00012\u0006\u00100\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00028\u0001\u00a2\u0006\u0002\u0010>J\u0008\u0010?\u001a\u00020@H\u0016J\u0013\u0010A\u001a\u00028\u00012\u0006\u00100\u001a\u00020\u0005\u00a2\u0006\u0002\u00101R\u001a\u0010\t\u001a\u00020\u0005X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\u0006R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u000f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0010X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0011R\u0017\u0010\u0012\u001a\u00020\u00058G\u00a2\u0006\u000c\u0012\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0012\u0010\u000b\u00a8\u0006B"
    }
    d2 = {
        "Landroidx/compose/ui/text/caches/SimpleArrayMap;",
        "K",
        "V",
        "",
        "capacity",
        "",
        "(I)V",
        "map",
        "(Landroidx/compose/ui/text/caches/SimpleArrayMap;)V",
        "_size",
        "get_size",
        "()I",
        "set_size",
        "hashes",
        "",
        "keyValues",
        "",
        "[Ljava/lang/Object;",
        "size",
        "size$annotations",
        "()V",
        "clear",
        "",
        "containsKey",
        "",
        "key",
        "(Ljava/lang/Object;)Z",
        "containsValue",
        "value",
        "ensureCapacity",
        "minimumCapacity",
        "equals",
        "other",
        "get",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "getOrDefault",
        "defaultValue",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;",
        "hashCode",
        "indexOf",
        "hash",
        "indexOfKey",
        "indexOfNull",
        "indexOfValue",
        "indexOfValue$ui_text_release",
        "(Ljava/lang/Object;)I",
        "isEmpty",
        "keyAt",
        "index",
        "(I)Ljava/lang/Object;",
        "put",
        "putAll",
        "array",
        "putIfAbsent",
        "remove",
        "(Ljava/lang/Object;Ljava/lang/Object;)Z",
        "removeAt",
        "replace",
        "oldValue",
        "newValue",
        "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z",
        "setValueAt",
        "(ILjava/lang/Object;)Ljava/lang/Object;",
        "toString",
        "",
        "valueAt",
        "ui-text_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private _size:I

.field private hashes:[I

.field private keyValues:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Landroidx/compose/ui/text/caches/SimpleArrayMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 142
    sget-object p1, Landroidx/compose/ui/text/caches/ContainerHelpersKt;->EMPTY_INTS:[I

    iput-object p1, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->hashes:[I

    .line 143
    sget-object p1, Landroidx/compose/ui/text/caches/ContainerHelpersKt;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object p1, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->keyValues:[Ljava/lang/Object;

    goto :goto_0

    .line 145
    :cond_0
    new-array v0, p1, [I

    iput-object v0, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->hashes:[I

    shl-int/lit8 p1, p1, 0x1

    .line 146
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->keyValues:[Ljava/lang/Object;

    :goto_0
    const/4 p1, 0x0

    iput p1, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->_size:I

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 140
    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/ui/text/caches/SimpleArrayMap;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/text/caches/SimpleArrayMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/caches/SimpleArrayMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 154
    invoke-direct {p0, v2, v0, v1}, Landroidx/compose/ui/text/caches/SimpleArrayMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    if-eqz p1, :cond_0

    .line 156
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/caches/SimpleArrayMap;->putAll(Landroidx/compose/ui/text/caches/SimpleArrayMap;)V

    :cond_0
    return-void
.end method

.method public static synthetic size$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    iget v0, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->_size:I

    if-lez v0, :cond_0

    .line 167
    sget-object v0, Landroidx/compose/ui/text/caches/ContainerHelpersKt;->EMPTY_INTS:[I

    iput-object v0, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->hashes:[I

    .line 168
    sget-object v0, Landroidx/compose/ui/text/caches/ContainerHelpersKt;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v0, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->keyValues:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->_size:I

    :cond_0
    iget p0, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->_size:I

    if-gtz p0, :cond_1

    return-void

    .line 172
    :cond_1
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .line 199
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/caches/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 240
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/caches/SimpleArrayMap;->indexOfValue$ui_text_release(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final ensureCapacity(I)V
    .locals 3

    iget v0, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->_size:I

    iget-object v1, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->hashes:[I

    .line 184
    array-length v2, v1

    if-ge v2, p1, :cond_0

    .line 185
    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    const-string v2, "copyOf(this, newSize)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->hashes:[I

    iget-object v1, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->keyValues:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    .line 186
    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->keyValues:[Ljava/lang/Object;

    :cond_0
    iget p0, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->_size:I

    if-ne p0, v0, :cond_1

    return-void

    .line 189
    :cond_1
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 549
    :try_start_0
    instance-of v2, p1, Landroidx/compose/ui/text/caches/SimpleArrayMap;

    if-eqz v2, :cond_6

    .line 550
    check-cast p1, Landroidx/compose/ui/text/caches/SimpleArrayMap;

    iget v2, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->_size:I

    .line 551
    iget v3, p1, Landroidx/compose/ui/text/caches/SimpleArrayMap;->_size:I

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_5

    .line 556
    invoke-virtual {p0, v3}, Landroidx/compose/ui/text/caches/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 557
    invoke-virtual {p0, v3}, Landroidx/compose/ui/text/caches/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    .line 559
    invoke-virtual {p1, v4}, Landroidx/compose/ui/text/caches/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_3

    if-nez v6, :cond_2

    .line 561
    invoke-virtual {p1, v4}, Landroidx/compose/ui/text/caches/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_2
    return v1

    .line 564
    :cond_3
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    return v1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return v0

    .line 569
    :cond_6
    instance-of v2, p1, Ljava/util/Map;

    if-eqz v2, :cond_c

    iget v2, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->_size:I

    .line 571
    move-object v3, p1

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-eq v2, v3, :cond_7

    return v1

    :cond_7
    iget v2, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->_size:I

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_b

    .line 575
    invoke-virtual {p0, v3}, Landroidx/compose/ui/text/caches/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 576
    invoke-virtual {p0, v3}, Landroidx/compose/ui/text/caches/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    .line 577
    move-object v6, p1

    check-cast v6, Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_9

    if-nez v6, :cond_8

    .line 579
    move-object v5, p1

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    :cond_8
    return v1

    .line 582
    :cond_9
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_a

    return v1

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_b
    return v0

    :catch_0
    :cond_c
    return v1
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 251
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/caches/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object p0, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->keyValues:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    .line 252
    aget-object p0, p0, p1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 264
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/caches/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object p0, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->keyValues:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    .line 265
    aget-object p2, p0, p1

    :cond_0
    return-object p2
.end method

.method protected final get_size()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->_size:I

    return p0
.end method

.method public hashCode()I
    .locals 8

    iget-object v0, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->hashes:[I

    iget-object v1, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->keyValues:[Ljava/lang/Object;

    iget p0, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->_size:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    move v4, v2

    move v5, v4

    :goto_0
    if-ge v4, p0, :cond_1

    .line 605
    aget-object v6, v1, v3

    .line 606
    aget v7, v0, v4

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    goto :goto_1

    :cond_0
    move v6, v2

    :goto_1
    xor-int/2addr v6, v7

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_1
    return v5
.end method

.method protected final indexOf(Ljava/lang/Object;I)I
    .locals 5

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->_size:I

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object v1, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->hashes:[I

    .line 61
    invoke-static {v1, v0, p2}, Landroidx/compose/ui/text/caches/ContainerHelpersKt;->binarySearchInternal([III)I

    move-result v1

    if-gez v1, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->keyValues:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    .line 69
    aget-object v2, v2, v3

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v1, 0x1

    :goto_0
    if-ge v2, v0, :cond_4

    iget-object v3, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->hashes:[I

    .line 76
    aget v3, v3, v2

    if-ne v3, p2, :cond_4

    iget-object v3, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->keyValues:[Ljava/lang/Object;

    shl-int/lit8 v4, v2, 0x1

    .line 77
    aget-object v3, v3, v4

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_6

    iget-object v0, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->hashes:[I

    .line 83
    aget v0, v0, v1

    if-ne v0, p2, :cond_6

    iget-object v0, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->keyValues:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    .line 84
    aget-object v0, v0, v3

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_6
    not-int p0, v2

    return p0
.end method

.method public final indexOfKey(Ljava/lang/Object;)I
    .locals 1

    if-nez p1, :cond_0

    .line 208
    invoke-virtual {p0}, Landroidx/compose/ui/text/caches/SimpleArrayMap;->indexOfNull()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroidx/compose/ui/text/caches/SimpleArrayMap;->indexOf(Ljava/lang/Object;I)I

    move-result p0

    :goto_0
    return p0
.end method

.method protected final indexOfNull()I
    .locals 5

    iget v0, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->_size:I

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object v1, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->hashes:[I

    const/4 v2, 0x0

    .line 102
    invoke-static {v1, v0, v2}, Landroidx/compose/ui/text/caches/ContainerHelpersKt;->binarySearchInternal([III)I

    move-result v1

    if-gez v1, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->keyValues:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    .line 110
    aget-object v2, v2, v3

    if-nez v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v1, 0x1

    :goto_0
    if-ge v2, v0, :cond_4

    iget-object v3, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->hashes:[I

    .line 117
    aget v3, v3, v2

    if-nez v3, :cond_4

    iget-object v3, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->keyValues:[Ljava/lang/Object;

    shl-int/lit8 v4, v2, 0x1

    .line 118
    aget-object v3, v3, v4

    if-nez v3, :cond_3

    return v2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_6

    iget-object v0, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->hashes:[I

    .line 124
    aget v0, v0, v1

    if-nez v0, :cond_6

    iget-object v0, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->keyValues:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    .line 125
    aget-object v0, v0, v3

    if-nez v0, :cond_5

    return v1

    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_6
    not-int p0, v2

    return p0
.end method

.method public final indexOfValue$ui_text_release(Ljava/lang/Object;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)I"
        }
    .end annotation

    iget v0, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->_size:I

    const/4 v1, 0x1

    shl-int/2addr v0, v1

    iget-object p0, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->keyValues:[Ljava/lang/Object;

    if-nez p1, :cond_1

    move p1, v1

    :goto_0
    if-ge p1, v0, :cond_3

    .line 216
    aget-object v2, p0, p1

    if-nez v2, :cond_0

    shr-int/lit8 p0, p1, 0x1

    return p0

    :cond_0
    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_3

    .line 224
    aget-object v3, p0, v2

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    shr-int/lit8 p0, v2, 0x1

    return p0

    :cond_2
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method public final isEmpty()Z
    .locals 0

    iget p0, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->_size:I

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final keyAt(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->keyValues:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    .line 274
    aget-object p0, p0, p1

    return-object p0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    iget v0, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->_size:I

    if-nez p1, :cond_0

    .line 320
    invoke-virtual {p0}, Landroidx/compose/ui/text/caches/SimpleArrayMap;->indexOfNull()I

    move-result v1

    const/4 v2, 0x0

    goto :goto_0

    .line 322
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 323
    invoke-virtual {p0, p1, v2}, Landroidx/compose/ui/text/caches/SimpleArrayMap;->indexOf(Ljava/lang/Object;I)I

    move-result v1

    :goto_0
    if-ltz v1, :cond_1

    shl-int/lit8 p1, v1, 0x1

    add-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->keyValues:[Ljava/lang/Object;

    .line 327
    aget-object v0, p0, p1

    .line 328
    aput-object p2, p0, p1

    return-object v0

    :cond_1
    not-int v1, v1

    iget-object v3, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->hashes:[I

    .line 333
    array-length v4, v3

    if-lt v0, v4, :cond_5

    const/16 v4, 0x8

    if-lt v0, v4, :cond_2

    shr-int/lit8 v4, v0, 0x1

    add-int/2addr v4, v0

    goto :goto_1

    :cond_2
    const/4 v5, 0x4

    if-lt v0, v5, :cond_3

    goto :goto_1

    :cond_3
    move v4, v5

    .line 342
    :goto_1
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    const-string v5, "copyOf(this, newSize)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->hashes:[I

    iget-object v3, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->keyValues:[Ljava/lang/Object;

    shl-int/lit8 v4, v4, 0x1

    .line 343
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->keyValues:[Ljava/lang/Object;

    iget v3, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->_size:I

    if-ne v0, v3, :cond_4

    goto :goto_2

    .line 346
    :cond_4
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0

    :cond_5
    :goto_2
    if-ge v1, v0, :cond_6

    iget-object v3, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->hashes:[I

    add-int/lit8 v4, v1, 0x1

    .line 354
    invoke-static {v3, v3, v4, v1, v0}, Lkotlin/collections/ArraysKt;->copyInto([I[IIII)[I

    iget-object v3, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->keyValues:[Ljava/lang/Object;

    shl-int/lit8 v4, v4, 0x1

    shl-int/lit8 v5, v1, 0x1

    iget v6, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->_size:I

    shl-int/lit8 v6, v6, 0x1

    .line 355
    invoke-static {v3, v3, v4, v5, v6}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    :cond_6
    iget v3, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->_size:I

    if-ne v0, v3, :cond_7

    iget-object v0, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->hashes:[I

    .line 359
    array-length v4, v0

    if-ge v1, v4, :cond_7

    .line 364
    aput v2, v0, v1

    iget-object v0, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->keyValues:[Ljava/lang/Object;

    shl-int/lit8 v1, v1, 0x1

    .line 365
    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 366
    aput-object p2, v0, v1

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->_size:I

    const/4 p0, 0x0

    return-object p0

    .line 360
    :cond_7
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method

.method public final putAll(Landroidx/compose/ui/text/caches/SimpleArrayMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/caches/SimpleArrayMap<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    const-string v0, "array"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 376
    iget v0, p1, Landroidx/compose/ui/text/caches/SimpleArrayMap;->_size:I

    iget v1, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->_size:I

    add-int/2addr v1, v0

    .line 377
    invoke-virtual {p0, v1}, Landroidx/compose/ui/text/caches/SimpleArrayMap;->ensureCapacity(I)V

    iget v1, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->_size:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    if-lez v0, :cond_1

    .line 380
    iget-object v1, p1, Landroidx/compose/ui/text/caches/SimpleArrayMap;->hashes:[I

    iget-object v3, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->hashes:[I

    invoke-static {v1, v3, v2, v2, v0}, Lkotlin/collections/ArraysKt;->copyInto([I[IIII)[I

    .line 381
    iget-object p1, p1, Landroidx/compose/ui/text/caches/SimpleArrayMap;->keyValues:[Ljava/lang/Object;

    iget-object v1, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->keyValues:[Ljava/lang/Object;

    shl-int/lit8 v3, v0, 0x1

    invoke-static {p1, v1, v2, v2, v3}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    iput v0, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->_size:I

    goto :goto_1

    :cond_0
    :goto_0
    if-ge v2, v0, :cond_1

    .line 386
    invoke-virtual {p1, v2}, Landroidx/compose/ui/text/caches/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v2}, Landroidx/compose/ui/text/caches/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Landroidx/compose/ui/text/caches/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 400
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/caches/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 402
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/text/caches/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 414
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/caches/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 415
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/caches/SimpleArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .line 425
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/caches/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 427
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/caches/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 428
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 429
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/caches/SimpleArrayMap;->removeAt(I)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final removeAt(I)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->keyValues:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    add-int/lit8 v2, v1, 0x1

    .line 444
    aget-object v2, v0, v2

    iget v3, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->_size:I

    const/4 v4, 0x1

    if-gt v3, v4, :cond_0

    .line 451
    invoke-virtual {p0}, Landroidx/compose/ui/text/caches/SimpleArrayMap;->clear()V

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v3, -0x1

    iget-object v6, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->hashes:[I

    .line 454
    array-length v7, v6

    const/16 v8, 0x8

    if-le v7, v8, :cond_3

    array-length v7, v6

    div-int/lit8 v7, v7, 0x3

    if-ge v3, v7, :cond_3

    if-le v3, v8, :cond_1

    shr-int/lit8 v7, v3, 0x1

    add-int v8, v3, v7

    .line 466
    :cond_1
    new-array v7, v8, [I

    iput-object v7, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->hashes:[I

    shl-int/2addr v8, v4

    .line 467
    new-array v8, v8, [Ljava/lang/Object;

    iput-object v8, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->keyValues:[Ljava/lang/Object;

    if-lez p1, :cond_2

    const/4 v8, 0x0

    .line 476
    invoke-static {v6, v7, v8, v8, p1}, Lkotlin/collections/ArraysKt;->copyInto([I[IIII)[I

    iget-object v7, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->keyValues:[Ljava/lang/Object;

    .line 477
    invoke-static {v0, v7, v8, v8, v1}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    :cond_2
    if-ge p1, v5, :cond_5

    iget-object v7, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->hashes:[I

    add-int/lit8 v8, p1, 0x1

    .line 483
    invoke-static {v6, v7, p1, v8, v3}, Lkotlin/collections/ArraysKt;->copyInto([I[IIII)[I

    iget-object p1, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->keyValues:[Ljava/lang/Object;

    shl-int/lit8 v4, v8, 0x1

    shl-int/lit8 v6, v3, 0x1

    .line 484
    invoke-static {v0, p1, v1, v4, v6}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    goto :goto_0

    :cond_3
    if-ge p1, v5, :cond_4

    add-int/lit8 v0, p1, 0x1

    .line 489
    invoke-static {v6, v6, p1, v0, v3}, Lkotlin/collections/ArraysKt;->copyInto([I[IIII)[I

    iget-object p1, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->keyValues:[Ljava/lang/Object;

    shl-int/2addr v0, v4

    shl-int/lit8 v6, v3, 0x1

    .line 490
    invoke-static {p1, p1, v1, v0, v6}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    :cond_4
    iget-object p1, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->keyValues:[Ljava/lang/Object;

    shl-int/lit8 v0, v5, 0x1

    const/4 v1, 0x0

    .line 492
    aput-object v1, p1, v0

    add-int/2addr v0, v4

    .line 493
    aput-object v1, p1, v0

    :cond_5
    :goto_0
    iget p1, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->_size:I

    if-ne v3, p1, :cond_6

    iput v5, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->_size:I

    :goto_1
    return-object v2

    .line 496
    :cond_6
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method

.method public final replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 510
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/caches/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 511
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/text/caches/SimpleArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .line 523
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/caches/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 525
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/caches/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_0

    .line 527
    invoke-virtual {p0, p1, p3}, Landroidx/compose/ui/text/caches/SimpleArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final setValueAt(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->keyValues:[Ljava/lang/Object;

    .line 293
    aget-object v0, p0, p1

    .line 294
    aput-object p2, p0, p1

    return-object v0
.end method

.method protected final set_size(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->_size:I

    return-void
.end method

.method public final size()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->_size:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 621
    invoke-virtual {p0}, Landroidx/compose/ui/text/caches/SimpleArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo p0, "{}"

    return-object p0

    .line 625
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->_size:I

    mul-int/lit8 v1, v1, 0x1c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    .line 626
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->_size:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    if-lez v2, :cond_1

    const-string v3, ", "

    .line 629
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    :cond_1
    invoke-virtual {p0, v2}, Landroidx/compose/ui/text/caches/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "(this Map)"

    if-eq v3, p0, :cond_2

    .line 633
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 635
    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const/16 v3, 0x3d

    .line 637
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 638
    invoke-virtual {p0, v2}, Landroidx/compose/ui/text/caches/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, p0, :cond_3

    .line 640
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 642
    :cond_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    const/16 p0, 0x7d

    .line 645
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 646
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "buffer.toString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final valueAt(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->keyValues:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    .line 282
    aget-object p0, p0, p1

    return-object p0
.end method
