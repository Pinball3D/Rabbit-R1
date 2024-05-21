.class public final Landroidx/room/AmbiguousColumnResolver$Solution$Companion;
.super Ljava/lang/Object;
.source "AmbiguousColumnResolver.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/AmbiguousColumnResolver$Solution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAmbiguousColumnResolver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AmbiguousColumnResolver.kt\nandroidx/room/AmbiguousColumnResolver$Solution$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,253:1\n1#2:254\n1770#3,3:255\n1851#3,2:258\n1773#3:260\n*S KotlinDebug\n*F\n+ 1 AmbiguousColumnResolver.kt\nandroidx/room/AmbiguousColumnResolver$Solution$Companion\n*L\n233#1:255,3\n235#1:258,2\n233#1:260\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0014\u0010\u0007\u001a\u00020\u00042\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tR\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u000b"
    }
    d2 = {
        "Landroidx/room/AmbiguousColumnResolver$Solution$Companion;",
        "",
        "()V",
        "NO_SOLUTION",
        "Landroidx/room/AmbiguousColumnResolver$Solution;",
        "getNO_SOLUTION",
        "()Landroidx/room/AmbiguousColumnResolver$Solution;",
        "build",
        "matches",
        "",
        "Landroidx/room/AmbiguousColumnResolver$Match;",
        "room-common"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/room/AmbiguousColumnResolver$Solution$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final build(Ljava/util/List;)Landroidx/room/AmbiguousColumnResolver$Solution;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/room/AmbiguousColumnResolver$Match;",
            ">;)",
            "Landroidx/room/AmbiguousColumnResolver$Solution;"
        }
    .end annotation

    const-string p0, "matches"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    move-object p0, p1

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/room/AmbiguousColumnResolver$Match;

    .line 229
    invoke-virtual {v3}, Landroidx/room/AmbiguousColumnResolver$Match;->getResultRange()Lkotlin/ranges/IntRange;

    move-result-object v5

    invoke-virtual {v5}, Lkotlin/ranges/IntRange;->getLast()I

    move-result v5

    invoke-virtual {v3}, Landroidx/room/AmbiguousColumnResolver$Match;->getResultRange()Lkotlin/ranges/IntRange;

    move-result-object v6

    invoke-virtual {v6}, Lkotlin/ranges/IntRange;->getFirst()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v5, v4

    invoke-virtual {v3}, Landroidx/room/AmbiguousColumnResolver$Match;->getResultIndices()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v5, v3

    add-int/2addr v2, v5

    goto :goto_0

    .line 231
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/room/AmbiguousColumnResolver$Match;

    invoke-virtual {v3}, Landroidx/room/AmbiguousColumnResolver$Match;->getResultRange()Lkotlin/ranges/IntRange;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/ranges/IntRange;->getFirst()I

    move-result v3

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/room/AmbiguousColumnResolver$Match;

    invoke-virtual {v5}, Landroidx/room/AmbiguousColumnResolver$Match;->getResultRange()Lkotlin/ranges/IntRange;

    move-result-object v5

    invoke-virtual {v5}, Lkotlin/ranges/IntRange;->getFirst()I

    move-result v5

    if-le v3, v5, :cond_1

    move v3, v5

    goto :goto_1

    .line 232
    :cond_2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/room/AmbiguousColumnResolver$Match;

    invoke-virtual {v5}, Landroidx/room/AmbiguousColumnResolver$Match;->getResultRange()Lkotlin/ranges/IntRange;

    move-result-object v5

    invoke-virtual {v5}, Lkotlin/ranges/IntRange;->getLast()I

    move-result v5

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/room/AmbiguousColumnResolver$Match;

    invoke-virtual {v6}, Landroidx/room/AmbiguousColumnResolver$Match;->getResultRange()Lkotlin/ranges/IntRange;

    move-result-object v6

    invoke-virtual {v6}, Lkotlin/ranges/IntRange;->getLast()I

    move-result v6

    if-ge v5, v6, :cond_3

    move v5, v6

    goto :goto_2

    .line 233
    :cond_4
    new-instance v0, Lkotlin/ranges/IntRange;

    invoke-direct {v0, v3, v5}, Lkotlin/ranges/IntRange;-><init>(II)V

    check-cast v0, Ljava/lang/Iterable;

    .line 255
    instance-of v3, v0, Ljava/util/Collection;

    if-eqz v3, :cond_5

    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_4

    .line 257
    :cond_5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v3, v1

    :cond_6
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    move-object v5, v0

    check-cast v5, Lkotlin/collections/IntIterator;

    invoke-virtual {v5}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v5

    .line 258
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v7, v1

    :cond_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/room/AmbiguousColumnResolver$Match;

    .line 236
    invoke-virtual {v8}, Landroidx/room/AmbiguousColumnResolver$Match;->getResultRange()Lkotlin/ranges/IntRange;

    move-result-object v8

    invoke-virtual {v8, v5}, Lkotlin/ranges/IntRange;->contains(I)Z

    move-result v8

    if-eqz v8, :cond_8

    add-int/lit8 v7, v7, 0x1

    :cond_8
    if-le v7, v4, :cond_7

    add-int/lit8 v3, v3, 0x1

    if-gez v3, :cond_6

    .line 257
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwCountOverflow()V

    goto :goto_3

    :cond_9
    move v1, v3

    .line 245
    :goto_4
    new-instance p0, Landroidx/room/AmbiguousColumnResolver$Solution;

    invoke-direct {p0, p1, v2, v1}, Landroidx/room/AmbiguousColumnResolver$Solution;-><init>(Ljava/util/List;II)V

    return-object p0

    .line 232
    :cond_a
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    .line 231
    :cond_b
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final getNO_SOLUTION()Landroidx/room/AmbiguousColumnResolver$Solution;
    .locals 0

    .line 223
    invoke-static {}, Landroidx/room/AmbiguousColumnResolver$Solution;->access$getNO_SOLUTION$cp()Landroidx/room/AmbiguousColumnResolver$Solution;

    move-result-object p0

    return-object p0
.end method
