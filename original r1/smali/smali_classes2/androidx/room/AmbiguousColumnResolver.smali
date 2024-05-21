.class public final Landroidx/room/AmbiguousColumnResolver;
.super Ljava/lang/Object;
.source "AmbiguousColumnResolver.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/AmbiguousColumnResolver$ResultColumn;,
        Landroidx/room/AmbiguousColumnResolver$Match;,
        Landroidx/room/AmbiguousColumnResolver$Solution;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAmbiguousColumnResolver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AmbiguousColumnResolver.kt\nandroidx/room/AmbiguousColumnResolver\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,253:1\n1#2:254\n13543#3,2:255\n13608#3,3:257\n13608#3,2:260\n11335#3:262\n11670#3,2:263\n11672#3:267\n13610#3:268\n1851#4,2:265\n1722#4,3:269\n1549#4:272\n1620#4,3:273\n1851#4,2:278\n37#5,2:276\n*S KotlinDebug\n*F\n+ 1 AmbiguousColumnResolver.kt\nandroidx/room/AmbiguousColumnResolver\n*L\n86#1:255,2\n88#1:257,3\n97#1:260,2\n119#1:262\n119#1:263,2\n119#1:267\n97#1:268\n121#1:265,2\n142#1:269,3\n152#1:272\n152#1:273,3\n189#1:278,2\n152#1:276,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0015\n\u0002\u0008\u0007\u0008\u00c7\u0002\u0018\u00002\u00020\u0001:\u0003\u001b\u001c\u001dB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002JV\u0010\u0003\u001a\u00020\u0004\"\u0004\u0008\u0000\u0010\u00052\u0012\u0010\u0006\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00050\u00070\u00072\u000e\u0008\u0002\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0018\u0010\u000c\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00050\u0007\u0012\u0004\u0012\u00020\u00040\rH\u0002JO\u0010\u000e\u001a\u00020\u00042\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u00072\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00112$\u0010\u0013\u001a \u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f0\u0007\u0012\u0004\u0012\u00020\u00040\u0014H\u0002\u00a2\u0006\u0002\u0010\u0015J5\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u00112\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00112\u0012\u0010\u0019\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00120\u00110\u0011H\u0007\u00a2\u0006\u0002\u0010\u001a\u00a8\u0006\u001e"
    }
    d2 = {
        "Landroidx/room/AmbiguousColumnResolver;",
        "",
        "()V",
        "dfs",
        "",
        "T",
        "content",
        "",
        "current",
        "",
        "depth",
        "",
        "block",
        "Lkotlin/Function1;",
        "rabinKarpSearch",
        "Landroidx/room/AmbiguousColumnResolver$ResultColumn;",
        "pattern",
        "",
        "",
        "onHashMatch",
        "Lkotlin/Function3;",
        "(Ljava/util/List;[Ljava/lang/String;Lkotlin/jvm/functions/Function3;)V",
        "resolve",
        "",
        "resultColumns",
        "mappings",
        "([Ljava/lang/String;[[Ljava/lang/String;)[[I",
        "Match",
        "ResultColumn",
        "Solution",
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


# static fields
.field public static final INSTANCE:Landroidx/room/AmbiguousColumnResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/room/AmbiguousColumnResolver;

    invoke-direct {v0}, Landroidx/room/AmbiguousColumnResolver;-><init>()V

    sput-object v0, Landroidx/room/AmbiguousColumnResolver;->INSTANCE:Landroidx/room/AmbiguousColumnResolver;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final dfs(Ljava/util/List;Ljava/util/List;ILkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+",
            "Ljava/util/List<",
            "+TT;>;>;",
            "Ljava/util/List<",
            "TT;>;I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "+TT;>;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 185
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ne p3, p0, :cond_0

    .line 186
    check-cast p2, Ljava/lang/Iterable;

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p4, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 189
    :cond_0
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 278
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 190
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroidx/room/AmbiguousColumnResolver;->INSTANCE:Landroidx/room/AmbiguousColumnResolver;

    add-int/lit8 v1, p3, 0x1

    .line 191
    invoke-direct {v0, p1, p2, v1, p4}, Landroidx/room/AmbiguousColumnResolver;->dfs(Ljava/util/List;Ljava/util/List;ILkotlin/jvm/functions/Function1;)V

    .line 192
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->removeLast(Ljava/util/List;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic dfs$default(Landroidx/room/AmbiguousColumnResolver;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    .line 181
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/util/List;

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    const/4 p3, 0x0

    .line 179
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/room/AmbiguousColumnResolver;->dfs(Ljava/util/List;Ljava/util/List;ILkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final rabinKarpSearch(Ljava/util/List;[Ljava/lang/String;Lkotlin/jvm/functions/Function3;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/room/AmbiguousColumnResolver$ResultColumn;",
            ">;[",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/util/List<",
            "Landroidx/room/AmbiguousColumnResolver$ResultColumn;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 160
    array-length p0, p2

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    if-ge v1, p0, :cond_0

    aget-object v3, p2, v1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 162
    :cond_0
    array-length p0, p2

    .line 163
    invoke-interface {p1, v0, p0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move v1, v0

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/room/AmbiguousColumnResolver$ResultColumn;

    invoke-virtual {v3}, Landroidx/room/AmbiguousColumnResolver$ResultColumn;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_1

    :cond_1
    :goto_2
    if-ne v2, v1, :cond_2

    .line 166
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v0, p0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {p3, p2, v3, v4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 p2, v0, 0x1

    add-int/lit8 v3, p0, 0x1

    .line 170
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-le v3, v4, :cond_3

    return-void

    .line 174
    :cond_3
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/room/AmbiguousColumnResolver$ResultColumn;

    invoke-virtual {v0}, Landroidx/room/AmbiguousColumnResolver$ResultColumn;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sub-int/2addr v1, v0

    .line 175
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/room/AmbiguousColumnResolver$ResultColumn;

    invoke-virtual {p0}, Landroidx/room/AmbiguousColumnResolver$ResultColumn;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr v1, p0

    move v0, p2

    move p0, v3

    goto :goto_2
.end method

.method public static final resolve([Ljava/lang/String;[[Ljava/lang/String;)[[I
    .locals 17
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "resultColumns"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "mappings"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const-string v5, "this as java.lang.String).toLowerCase(locale)"

    const-string v6, "US"

    const/4 v7, 0x1

    if-ge v4, v2, :cond_1

    .line 72
    aget-object v8, v0, v4

    .line 73
    invoke-virtual {v8, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x60

    if-ne v9, v10, :cond_0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v10, :cond_0

    .line 74
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v7

    invoke-virtual {v8, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const-string v7, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    :cond_0
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v6, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 79
    :cond_1
    move-object v2, v1

    check-cast v2, [Ljava/lang/Object;

    array-length v4, v2

    move v8, v3

    :goto_1
    if-ge v8, v4, :cond_3

    .line 80
    aget-object v9, v1, v8

    array-length v9, v9

    move v10, v3

    :goto_2
    if-ge v10, v9, :cond_2

    .line 81
    aget-object v11, v1, v8

    aget-object v12, v11, v10

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v13, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v12, v11, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 86
    :cond_3
    invoke-static {}, Lkotlin/collections/SetsKt;->createSetBuilder()Ljava/util/Set;

    move-result-object v1

    .line 255
    array-length v4, v2

    move v5, v3

    :goto_3
    if-ge v5, v4, :cond_4

    aget-object v6, v2, v5

    check-cast v6, [Ljava/lang/String;

    .line 86
    move-object v8, v1

    check-cast v8, Ljava/util/Collection;

    invoke-static {v8, v6}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_4
    invoke-static {v1}, Lkotlin/collections/SetsKt;->build(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 87
    invoke-static {}, Lkotlin/collections/CollectionsKt;->createListBuilder()Ljava/util/List;

    move-result-object v4

    .line 258
    array-length v5, v0

    move v6, v3

    move v8, v6

    :goto_4
    if-ge v6, v5, :cond_6

    aget-object v9, v0, v6

    add-int/lit8 v10, v8, 0x1

    .line 89
    invoke-interface {v1, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 90
    new-instance v11, Landroidx/room/AmbiguousColumnResolver$ResultColumn;

    invoke-direct {v11, v9, v8}, Landroidx/room/AmbiguousColumnResolver$ResultColumn;-><init>(Ljava/lang/String;I)V

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v6, v6, 0x1

    move v8, v10

    goto :goto_4

    .line 87
    :cond_6
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 96
    array-length v1, v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    move v5, v3

    :goto_5
    if-ge v5, v1, :cond_7

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Ljava/util/List;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_7
    move-object v9, v4

    check-cast v9, Ljava/util/List;

    .line 261
    array-length v1, v2

    move v4, v3

    move v5, v4

    :goto_6
    if-ge v4, v1, :cond_d

    aget-object v6, v2, v4

    add-int/lit8 v8, v5, 0x1

    check-cast v6, [Ljava/lang/String;

    sget-object v10, Landroidx/room/AmbiguousColumnResolver;->INSTANCE:Landroidx/room/AmbiguousColumnResolver;

    .line 99
    new-instance v11, Landroidx/room/AmbiguousColumnResolver$resolve$1$1;

    invoke-direct {v11, v6, v9, v5}, Landroidx/room/AmbiguousColumnResolver$resolve$1$1;-><init>([Ljava/lang/String;Ljava/util/List;I)V

    check-cast v11, Lkotlin/jvm/functions/Function3;

    invoke-direct {v10, v0, v6, v11}, Landroidx/room/AmbiguousColumnResolver;->rabinKarpSearch(Ljava/util/List;[Ljava/lang/String;Lkotlin/jvm/functions/Function3;)V

    .line 118
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_c

    .line 262
    new-instance v10, Ljava/util/ArrayList;

    array-length v11, v6

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v10, Ljava/util/Collection;

    .line 263
    array-length v11, v6

    move v12, v3

    :goto_7
    if-ge v12, v11, :cond_b

    aget-object v13, v6, v12

    .line 120
    invoke-static {}, Lkotlin/collections/CollectionsKt;->createListBuilder()Ljava/util/List;

    move-result-object v14

    .line 121
    move-object v15, v0

    check-cast v15, Ljava/lang/Iterable;

    .line 265
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_8
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_9

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroidx/room/AmbiguousColumnResolver$ResultColumn;

    .line 122
    invoke-virtual/range {v16 .. v16}, Landroidx/room/AmbiguousColumnResolver$ResultColumn;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 123
    invoke-virtual/range {v16 .. v16}, Landroidx/room/AmbiguousColumnResolver$ResultColumn;->getIndex()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    const/4 v3, 0x0

    goto :goto_8

    .line 120
    :cond_9
    invoke-static {v14}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 127
    move-object v14, v3

    check-cast v14, Ljava/util/Collection;

    invoke-interface {v14}, Ljava/util/Collection;->isEmpty()Z

    move-result v14

    xor-int/2addr v14, v7

    if-eqz v14, :cond_a

    .line 264
    invoke-interface {v10, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    const/4 v3, 0x0

    goto :goto_7

    .line 127
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Column "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " not found in result"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 267
    :cond_b
    move-object v11, v10

    check-cast v11, Ljava/util/List;

    sget-object v10, Landroidx/room/AmbiguousColumnResolver;->INSTANCE:Landroidx/room/AmbiguousColumnResolver;

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 130
    new-instance v3, Landroidx/room/AmbiguousColumnResolver$resolve$1$2;

    invoke-direct {v3, v9, v5}, Landroidx/room/AmbiguousColumnResolver$resolve$1$2;-><init>(Ljava/util/List;I)V

    move-object v14, v3

    check-cast v14, Lkotlin/jvm/functions/Function1;

    const/4 v15, 0x6

    const/16 v16, 0x0

    invoke-static/range {v10 .. v16}, Landroidx/room/AmbiguousColumnResolver;->dfs$default(Landroidx/room/AmbiguousColumnResolver;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    :cond_c
    add-int/lit8 v4, v4, 0x1

    move v5, v8

    const/4 v3, 0x0

    goto/16 :goto_6

    .line 142
    :cond_d
    move-object v0, v9

    check-cast v0, Ljava/lang/Iterable;

    .line 269
    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_e

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_a

    .line 270
    :cond_e
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 142
    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v7

    if-eqz v1, :cond_f

    goto :goto_9

    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to find matches for all mappings"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_10
    :goto_a
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    sget-object v1, Landroidx/room/AmbiguousColumnResolver$Solution;->Companion:Landroidx/room/AmbiguousColumnResolver$Solution$Companion;

    invoke-virtual {v1}, Landroidx/room/AmbiguousColumnResolver$Solution$Companion;->getNO_SOLUTION()Landroidx/room/AmbiguousColumnResolver$Solution;

    move-result-object v1

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object v8, Landroidx/room/AmbiguousColumnResolver;->INSTANCE:Landroidx/room/AmbiguousColumnResolver;

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 146
    new-instance v1, Landroidx/room/AmbiguousColumnResolver$resolve$4;

    invoke-direct {v1, v0}, Landroidx/room/AmbiguousColumnResolver$resolve$4;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    move-object v12, v1

    check-cast v12, Lkotlin/jvm/functions/Function1;

    const/4 v13, 0x6

    const/4 v14, 0x0

    invoke-static/range {v8 .. v14}, Landroidx/room/AmbiguousColumnResolver;->dfs$default(Landroidx/room/AmbiguousColumnResolver;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 152
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroidx/room/AmbiguousColumnResolver$Solution;

    invoke-virtual {v0}, Landroidx/room/AmbiguousColumnResolver$Solution;->getMatches()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 272
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 273
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 274
    check-cast v2, Landroidx/room/AmbiguousColumnResolver$Match;

    .line 152
    invoke-virtual {v2}, Landroidx/room/AmbiguousColumnResolver$Match;->getResultIndices()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v2

    .line 274
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 275
    :cond_11
    check-cast v1, Ljava/util/List;

    .line 272
    check-cast v1, Ljava/util/Collection;

    const/4 v0, 0x0

    new-array v0, v0, [[I

    .line 277
    invoke-interface {v1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, [[I

    return-object v0
.end method
