.class public final Landroidx/collection/ArraySet;
.super Ljava/lang/Object;
.source "ArraySet.jvm.kt"

# interfaces
.implements Ljava/util/Collection;
.implements Ljava/util/Set;
.implements Lkotlin/jvm/internal/markers/KMutableCollection;
.implements Lkotlin/jvm/internal/markers/KMutableSet;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/collection/ArraySet$ElementIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Collection<",
        "TE;>;",
        "Ljava/util/Set<",
        "TE;>;",
        "Lkotlin/jvm/internal/markers/KMutableCollection;",
        "Lkotlin/jvm/internal/markers/KMutableSet;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nArraySet.jvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ArraySet.jvm.kt\nandroidx/collection/ArraySet\n+ 2 ArraySet.kt\nandroidx/collection/ArraySetKt\n*L\n1#1,303:1\n304#2,10:304\n317#2,14:314\n334#2:328\n339#2:329\n345#2:330\n350#2:331\n355#2,61:332\n420#2,17:393\n440#2,6:410\n450#2,60:416\n518#2,9:476\n531#2,22:485\n557#2,7:507\n568#2,19:514\n591#2,6:533\n601#2,6:539\n611#2,5:545\n620#2,8:550\n*S KotlinDebug\n*F\n+ 1 ArraySet.jvm.kt\nandroidx/collection/ArraySet\n*L\n101#1:304,10\n111#1:314,14\n121#1:328\n131#1:329\n141#1:330\n148#1:331\n160#1:332,61\n170#1:393,17\n180#1:410,6\n191#1:416,60\n200#1:476,9\n227#1:485,22\n234#1:507,7\n243#1:514,19\n270#1:533,6\n279#1:539,6\n289#1:545,5\n300#1:550,8\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001f\n\u0002\u0010#\n\u0002\u0008\u0002\n\u0002\u0010\u001e\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0000\n\u0002\u0008\u0005\n\u0002\u0010\u0015\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\r\n\u0002\u0010)\n\u0002\u0008\n\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003:\u0001?B\u0019\u0008\u0016\u0012\u0010\u0010\u0004\u001a\u000c\u0012\u0006\u0008\u0001\u0012\u00028\u0000\u0018\u00010\u0000\u00a2\u0006\u0002\u0010\u0005B\u0017\u0008\u0016\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007B\u0019\u0008\u0016\u0012\u0010\u0010\u0008\u001a\u000c\u0012\u0006\u0008\u0001\u0012\u00028\u0000\u0018\u00010\t\u00a2\u0006\u0002\u0010\nB\u0011\u0008\u0007\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0002\u0010\rJ\u0015\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\"J\u0016\u0010#\u001a\u00020$2\u000e\u0010\u0008\u001a\n\u0012\u0006\u0008\u0001\u0012\u00028\u00000\u0000J\u0016\u0010#\u001a\u00020 2\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006H\u0016J\u0008\u0010&\u001a\u00020$H\u0016J\u0016\u0010\'\u001a\u00020 2\u0006\u0010!\u001a\u00028\u0000H\u0096\u0002\u00a2\u0006\u0002\u0010\"J\u0016\u0010(\u001a\u00020 2\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006H\u0016J\u000e\u0010)\u001a\u00020$2\u0006\u0010*\u001a\u00020\u000cJ\u0013\u0010+\u001a\u00020 2\u0008\u0010,\u001a\u0004\u0018\u00010\u0012H\u0096\u0002J\u0008\u0010-\u001a\u00020\u000cH\u0016J\u0010\u0010.\u001a\u00020\u000c2\u0008\u0010/\u001a\u0004\u0018\u00010\u0012J\u0008\u00100\u001a\u00020 H\u0016J\u000f\u00101\u001a\u0008\u0012\u0004\u0012\u00028\u000002H\u0096\u0002J\u0015\u00103\u001a\u00020 2\u0006\u0010!\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\"J\u0016\u00104\u001a\u00020 2\u000e\u0010\u0008\u001a\n\u0012\u0006\u0008\u0001\u0012\u00028\u00000\u0000J\u0016\u00104\u001a\u00020 2\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006H\u0016J\u0013\u00105\u001a\u00028\u00002\u0006\u00106\u001a\u00020\u000c\u00a2\u0006\u0002\u00107J\u0016\u00108\u001a\u00020 2\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006H\u0016J\u0013\u00109\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\t\u00a2\u0006\u0002\u0010\u0014J%\u00109\u001a\u0008\u0012\u0004\u0012\u0002H:0\t\"\u0004\u0008\u0001\u0010:2\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u0002H:0\t\u00a2\u0006\u0002\u0010;J\u0008\u0010<\u001a\u00020=H\u0016J\u0013\u0010>\u001a\u00028\u00002\u0006\u00106\u001a\u00020\u000c\u00a2\u0006\u0002\u00107R\u001a\u0010\u000e\u001a\u00020\u000cX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\rR$\u0010\u0008\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\tX\u0080\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0016\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\nR\u001a\u0010\u0017\u001a\u00020\u0018X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\u0014\u0010\u001d\u001a\u00020\u000c8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u0010\u00a8\u0006@"
    }
    d2 = {
        "Landroidx/collection/ArraySet;",
        "E",
        "",
        "",
        "set",
        "(Landroidx/collection/ArraySet;)V",
        "",
        "(Ljava/util/Collection;)V",
        "array",
        "",
        "([Ljava/lang/Object;)V",
        "capacity",
        "",
        "(I)V",
        "_size",
        "get_size$collection",
        "()I",
        "set_size$collection",
        "",
        "getArray$collection",
        "()[Ljava/lang/Object;",
        "setArray$collection",
        "[Ljava/lang/Object;",
        "hashes",
        "",
        "getHashes$collection",
        "()[I",
        "setHashes$collection",
        "([I)V",
        "size",
        "getSize",
        "add",
        "",
        "element",
        "(Ljava/lang/Object;)Z",
        "addAll",
        "",
        "elements",
        "clear",
        "contains",
        "containsAll",
        "ensureCapacity",
        "minimumCapacity",
        "equals",
        "other",
        "hashCode",
        "indexOf",
        "key",
        "isEmpty",
        "iterator",
        "",
        "remove",
        "removeAll",
        "removeAt",
        "index",
        "(I)Ljava/lang/Object;",
        "retainAll",
        "toArray",
        "T",
        "([Ljava/lang/Object;)[Ljava/lang/Object;",
        "toString",
        "",
        "valueAt",
        "ElementIterator",
        "collection"
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

.field private array:[Ljava/lang/Object;

.field private hashes:[I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Landroidx/collection/ArraySet;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    sget-object v0, Landroidx/collection/internal/ContainerHelpersKt;->EMPTY_INTS:[I

    iput-object v0, p0, Landroidx/collection/ArraySet;->hashes:[I

    .line 54
    sget-object v0, Landroidx/collection/internal/ContainerHelpersKt;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v0, p0, Landroidx/collection/ArraySet;->array:[Ljava/lang/Object;

    if-lez p1, :cond_0

    .line 91
    invoke-static {p0, p1}, Landroidx/collection/ArraySetKt;->allocArrays(Landroidx/collection/ArraySet;I)V

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 52
    :cond_0
    invoke-direct {p0, p1}, Landroidx/collection/ArraySet;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Landroidx/collection/ArraySet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArraySet<",
            "+TE;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, v0}, Landroidx/collection/ArraySet;-><init>(I)V

    if-eqz p1, :cond_0

    .line 65
    invoke-virtual {p0, p1}, Landroidx/collection/ArraySet;->addAll(Landroidx/collection/ArraySet;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, v0}, Landroidx/collection/ArraySet;-><init>(I)V

    if-eqz p1, :cond_0

    .line 74
    invoke-virtual {p0, p1}, Landroidx/collection/ArraySet;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, v0}, Landroidx/collection/ArraySet;-><init>(I)V

    if-eqz p1, :cond_0

    .line 83
    invoke-static {p1}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 84
    invoke-virtual {p0, v0}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 332
    invoke-virtual/range {p0 .. p0}, Landroidx/collection/ArraySet;->get_size$collection()I

    move-result v2

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 337
    invoke-static/range {p0 .. p0}, Landroidx/collection/ArraySetKt;->indexOfNull(Landroidx/collection/ArraySet;)I

    move-result v4

    move v5, v3

    goto :goto_0

    .line 339
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    .line 340
    invoke-static {v0, v1, v4}, Landroidx/collection/ArraySetKt;->indexOf(Landroidx/collection/ArraySet;Ljava/lang/Object;I)I

    move-result v5

    move/from16 v16, v5

    move v5, v4

    move/from16 v4, v16

    :goto_0
    if-ltz v4, :cond_1

    goto/16 :goto_3

    :cond_1
    not-int v4, v4

    .line 348
    invoke-virtual/range {p0 .. p0}, Landroidx/collection/ArraySet;->getHashes$collection()[I

    move-result-object v6

    array-length v6, v6

    const/4 v7, 0x1

    if-lt v2, v6, :cond_6

    const/16 v6, 0x8

    if-lt v2, v6, :cond_2

    shr-int/lit8 v6, v2, 0x1

    add-int/2addr v6, v2

    goto :goto_1

    :cond_2
    const/4 v8, 0x4

    if-lt v2, v8, :cond_3

    goto :goto_1

    :cond_3
    move v6, v8

    .line 356
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroidx/collection/ArraySet;->getHashes$collection()[I

    move-result-object v8

    .line 357
    invoke-virtual/range {p0 .. p0}, Landroidx/collection/ArraySet;->getArray$collection()[Ljava/lang/Object;

    move-result-object v15

    .line 358
    invoke-static {v0, v6}, Landroidx/collection/ArraySetKt;->allocArrays(Landroidx/collection/ArraySet;I)V

    .line 360
    invoke-virtual/range {p0 .. p0}, Landroidx/collection/ArraySet;->get_size$collection()I

    move-result v6

    if-ne v2, v6, :cond_5

    .line 364
    invoke-virtual/range {p0 .. p0}, Landroidx/collection/ArraySet;->getHashes$collection()[I

    move-result-object v6

    array-length v6, v6

    if-nez v6, :cond_4

    move v3, v7

    :cond_4
    xor-int/2addr v3, v7

    if-eqz v3, :cond_6

    .line 365
    invoke-virtual/range {p0 .. p0}, Landroidx/collection/ArraySet;->getHashes$collection()[I

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    array-length v12, v8

    const/4 v13, 0x6

    const/4 v14, 0x0

    invoke-static/range {v8 .. v14}, Lkotlin/collections/ArraysKt;->copyInto$default([I[IIIIILjava/lang/Object;)[I

    .line 366
    invoke-virtual/range {p0 .. p0}, Landroidx/collection/ArraySet;->getArray$collection()[Ljava/lang/Object;

    move-result-object v10

    const/4 v12, 0x0

    array-length v13, v15

    const/4 v14, 0x6

    const/4 v3, 0x0

    move-object v9, v15

    move-object v15, v3

    invoke-static/range {v9 .. v15}, Lkotlin/collections/ArraysKt;->copyInto$default([Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/lang/Object;)[Ljava/lang/Object;

    goto :goto_2

    .line 361
    :cond_5
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_6
    :goto_2
    if-ge v4, v2, :cond_7

    .line 371
    invoke-virtual/range {p0 .. p0}, Landroidx/collection/ArraySet;->getHashes$collection()[I

    move-result-object v3

    .line 372
    invoke-virtual/range {p0 .. p0}, Landroidx/collection/ArraySet;->getHashes$collection()[I

    move-result-object v6

    add-int/lit8 v8, v4, 0x1

    .line 371
    invoke-static {v3, v6, v8, v4, v2}, Lkotlin/collections/ArraysKt;->copyInto([I[IIII)[I

    .line 377
    invoke-virtual/range {p0 .. p0}, Landroidx/collection/ArraySet;->getArray$collection()[Ljava/lang/Object;

    move-result-object v3

    .line 378
    invoke-virtual/range {p0 .. p0}, Landroidx/collection/ArraySet;->getArray$collection()[Ljava/lang/Object;

    move-result-object v6

    .line 377
    invoke-static {v3, v6, v8, v4, v2}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 385
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroidx/collection/ArraySet;->get_size$collection()I

    move-result v3

    if-ne v2, v3, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroidx/collection/ArraySet;->getHashes$collection()[I

    move-result-object v2

    array-length v2, v2

    if-ge v4, v2, :cond_8

    .line 389
    invoke-virtual/range {p0 .. p0}, Landroidx/collection/ArraySet;->getHashes$collection()[I

    move-result-object v2

    aput v5, v2, v4

    .line 390
    invoke-virtual/range {p0 .. p0}, Landroidx/collection/ArraySet;->getArray$collection()[Ljava/lang/Object;

    move-result-object v2

    aput-object v1, v2, v4

    .line 391
    invoke-virtual/range {p0 .. p0}, Landroidx/collection/ArraySet;->get_size$collection()I

    move-result v1

    add-int/2addr v1, v7

    invoke-virtual {v0, v1}, Landroidx/collection/ArraySet;->set_size$collection(I)V

    move v3, v7

    :goto_3
    return v3

    .line 386
    :cond_8
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public final addAll(Landroidx/collection/ArraySet;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArraySet<",
            "+TE;>;)V"
        }
    .end annotation

    const-string v0, "array"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 393
    invoke-virtual {p1}, Landroidx/collection/ArraySet;->get_size$collection()I

    move-result v0

    .line 394
    invoke-virtual {p0}, Landroidx/collection/ArraySet;->get_size$collection()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Landroidx/collection/ArraySet;->ensureCapacity(I)V

    .line 395
    invoke-virtual {p0}, Landroidx/collection/ArraySet;->get_size$collection()I

    move-result v1

    if-nez v1, :cond_1

    if-lez v0, :cond_2

    .line 397
    invoke-virtual {p1}, Landroidx/collection/ArraySet;->getHashes$collection()[I

    move-result-object v1

    invoke-virtual {p0}, Landroidx/collection/ArraySet;->getHashes$collection()[I

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move v5, v0

    invoke-static/range {v1 .. v7}, Lkotlin/collections/ArraysKt;->copyInto$default([I[IIIIILjava/lang/Object;)[I

    .line 398
    invoke-virtual {p1}, Landroidx/collection/ArraySet;->getArray$collection()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/collection/ArraySet;->getArray$collection()[Ljava/lang/Object;

    move-result-object v2

    invoke-static/range {v1 .. v7}, Lkotlin/collections/ArraysKt;->copyInto$default([Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/lang/Object;)[Ljava/lang/Object;

    .line 399
    invoke-virtual {p0}, Landroidx/collection/ArraySet;->get_size$collection()I

    move-result p1

    if-nez p1, :cond_0

    .line 402
    invoke-virtual {p0, v0}, Landroidx/collection/ArraySet;->set_size$collection(I)V

    goto :goto_1

    .line 400
    :cond_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 406
    invoke-virtual {p1, v1}, Landroidx/collection/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 539
    invoke-virtual {p0}, Landroidx/collection/ArraySet;->get_size$collection()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroidx/collection/ArraySet;->ensureCapacity(I)V

    .line 541
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 542
    invoke-virtual {p0, v1}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public clear()V
    .locals 1

    .line 304
    invoke-virtual {p0}, Landroidx/collection/ArraySet;->get_size$collection()I

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    sget-object v0, Landroidx/collection/internal/ContainerHelpersKt;->EMPTY_INTS:[I

    invoke-virtual {p0, v0}, Landroidx/collection/ArraySet;->setHashes$collection([I)V

    .line 306
    sget-object v0, Landroidx/collection/internal/ContainerHelpersKt;->EMPTY_OBJECTS:[Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroidx/collection/ArraySet;->setArray$collection([Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 307
    invoke-virtual {p0, v0}, Landroidx/collection/ArraySet;->set_size$collection(I)V

    .line 310
    :cond_0
    invoke-virtual {p0}, Landroidx/collection/ArraySet;->get_size$collection()I

    move-result p0

    if-nez p0, :cond_1

    return-void

    .line 311
    :cond_1
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0

    .line 328
    invoke-virtual {p0, p1}, Landroidx/collection/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 533
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 534
    invoke-virtual {p0, v0}, Landroidx/collection/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public final ensureCapacity(I)V
    .locals 10

    .line 314
    invoke-virtual {p0}, Landroidx/collection/ArraySet;->get_size$collection()I

    move-result v0

    .line 315
    invoke-virtual {p0}, Landroidx/collection/ArraySet;->getHashes$collection()[I

    move-result-object v1

    array-length v1, v1

    if-ge v1, p1, :cond_0

    .line 316
    invoke-virtual {p0}, Landroidx/collection/ArraySet;->getHashes$collection()[I

    move-result-object v2

    .line 317
    invoke-virtual {p0}, Landroidx/collection/ArraySet;->getArray$collection()[Ljava/lang/Object;

    move-result-object v1

    .line 318
    invoke-static {p0, p1}, Landroidx/collection/ArraySetKt;->allocArrays(Landroidx/collection/ArraySet;I)V

    .line 319
    invoke-virtual {p0}, Landroidx/collection/ArraySet;->get_size$collection()I

    move-result p1

    if-lez p1, :cond_0

    .line 320
    invoke-virtual {p0}, Landroidx/collection/ArraySet;->getHashes$collection()[I

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroidx/collection/ArraySet;->get_size$collection()I

    move-result v6

    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lkotlin/collections/ArraysKt;->copyInto$default([I[IIIIILjava/lang/Object;)[I

    .line 321
    invoke-virtual {p0}, Landroidx/collection/ArraySet;->getArray$collection()[Ljava/lang/Object;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroidx/collection/ArraySet;->get_size$collection()I

    move-result v7

    const/4 v8, 0x6

    const/4 v9, 0x0

    move-object v3, v1

    invoke-static/range {v3 .. v9}, Lkotlin/collections/ArraysKt;->copyInto$default([Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/lang/Object;)[Ljava/lang/Object;

    .line 324
    :cond_0
    invoke-virtual {p0}, Landroidx/collection/ArraySet;->get_size$collection()I

    move-result p0

    if-ne p0, v0, :cond_1

    return-void

    .line 325
    :cond_1
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_2

    .line 488
    :cond_0
    instance-of v1, p1, Ljava/util/Set;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 489
    invoke-virtual {p0}, Landroidx/collection/ArraySet;->size()I

    move-result v1

    move-object v3, p1

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-eq v1, v3, :cond_1

    goto :goto_1

    .line 493
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroidx/collection/ArraySet;->get_size$collection()I

    move-result v1

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    .line 494
    invoke-virtual {p0, v3}, Landroidx/collection/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 495
    move-object v5, p1

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    :cond_3
    :goto_1
    move v0, v2

    :cond_4
    :goto_2
    return v0
.end method

.method public final getArray$collection()[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/collection/ArraySet;->array:[Ljava/lang/Object;

    return-object p0
.end method

.method public final getHashes$collection()[I
    .locals 0

    iget-object p0, p0, Landroidx/collection/ArraySet;->hashes:[I

    return-object p0
.end method

.method public getSize()I
    .locals 0

    iget p0, p0, Landroidx/collection/ArraySet;->_size:I

    return p0
.end method

.method public final get_size$collection()I
    .locals 0

    iget p0, p0, Landroidx/collection/ArraySet;->_size:I

    return p0
.end method

.method public hashCode()I
    .locals 4

    .line 507
    invoke-virtual {p0}, Landroidx/collection/ArraySet;->getHashes$collection()[I

    move-result-object v0

    .line 508
    invoke-virtual {p0}, Landroidx/collection/ArraySet;->get_size$collection()I

    move-result p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, p0, :cond_0

    .line 511
    aget v3, v0, v1

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 1

    if-nez p1, :cond_0

    .line 329
    invoke-static {p0}, Landroidx/collection/ArraySetKt;->indexOfNull(Landroidx/collection/ArraySet;)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroidx/collection/ArraySetKt;->indexOf(Landroidx/collection/ArraySet;Ljava/lang/Object;I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public isEmpty()Z
    .locals 0

    .line 331
    invoke-virtual {p0}, Landroidx/collection/ArraySet;->get_size$collection()I

    move-result p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 252
    new-instance v0, Landroidx/collection/ArraySet$ElementIterator;

    invoke-direct {v0, p0}, Landroidx/collection/ArraySet$ElementIterator;-><init>(Landroidx/collection/ArraySet;)V

    check-cast v0, Ljava/util/Iterator;

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 0

    .line 410
    invoke-virtual {p0, p1}, Landroidx/collection/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 412
    invoke-virtual {p0, p1}, Landroidx/collection/ArraySet;->removeAt(I)Ljava/lang/Object;

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final removeAll(Landroidx/collection/ArraySet;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArraySet<",
            "+TE;>;)Z"
        }
    .end annotation

    const-string v0, "array"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 476
    invoke-virtual {p1}, Landroidx/collection/ArraySet;->get_size$collection()I

    move-result v0

    .line 480
    invoke-virtual {p0}, Landroidx/collection/ArraySet;->get_size$collection()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 482
    invoke-virtual {p1, v3}, Landroidx/collection/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroidx/collection/ArraySet;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 484
    :cond_0
    invoke-virtual {p0}, Landroidx/collection/ArraySet;->get_size$collection()I

    move-result p0

    if-eq v1, p0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 546
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 547
    invoke-virtual {p0, v1}, Landroidx/collection/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final removeAt(I)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 416
    invoke-virtual {p0}, Landroidx/collection/ArraySet;->get_size$collection()I

    move-result v0

    .line 417
    invoke-virtual {p0}, Landroidx/collection/ArraySet;->getArray$collection()[Ljava/lang/Object;

    move-result-object v1

    aget-object v1, v1, p1

    const/4 v2, 0x1

    if-gt v0, v2, :cond_0

    .line 420
    invoke-virtual {p0}, Landroidx/collection/ArraySet;->clear()V

    goto/16 :goto_1

    :cond_0
    add-int/lit8 v3, v0, -0x1

    .line 423
    invoke-virtual {p0}, Landroidx/collection/ArraySet;->getHashes$collection()[I

    move-result-object v4

    array-length v4, v4

    const/16 v5, 0x8

    if-le v4, v5, :cond_3

    invoke-virtual {p0}, Landroidx/collection/ArraySet;->get_size$collection()I

    move-result v4

    invoke-virtual {p0}, Landroidx/collection/ArraySet;->getHashes$collection()[I

    move-result-object v6

    array-length v6, v6

    div-int/lit8 v6, v6, 0x3

    if-ge v4, v6, :cond_3

    .line 428
    invoke-virtual {p0}, Landroidx/collection/ArraySet;->get_size$collection()I

    move-result v4

    if-le v4, v5, :cond_1

    invoke-virtual {p0}, Landroidx/collection/ArraySet;->get_size$collection()I

    move-result v4

    invoke-virtual {p0}, Landroidx/collection/ArraySet;->get_size$collection()I

    move-result v5

    shr-int/lit8 v2, v5, 0x1

    add-int v5, v4, v2

    .line 431
    :cond_1
    invoke-virtual {p0}, Landroidx/collection/ArraySet;->getHashes$collection()[I

    move-result-object v2

    .line 432
    invoke-virtual {p0}, Landroidx/collection/ArraySet;->getArray$collection()[Ljava/lang/Object;

    move-result-object v4

    .line 433
    invoke-static {p0, v5}, Landroidx/collection/ArraySetKt;->allocArrays(Landroidx/collection/ArraySet;I)V

    if-lez p1, :cond_2

    .line 435
    invoke-virtual {p0}, Landroidx/collection/ArraySet;->getHashes$collection()[I

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x0

    move-object v6, v2

    move v10, p1

    invoke-static/range {v6 .. v12}, Lkotlin/collections/ArraysKt;->copyInto$default([I[IIIIILjava/lang/Object;)[I

    .line 436
    invoke-virtual {p0}, Landroidx/collection/ArraySet;->getArray$collection()[Ljava/lang/Object;

    move-result-object v7

    move-object v6, v4

    invoke-static/range {v6 .. v12}, Lkotlin/collections/ArraysKt;->copyInto$default([Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/lang/Object;)[Ljava/lang/Object;

    :cond_2
    if-ge p1, v3, :cond_5

    .line 440
    invoke-virtual {p0}, Landroidx/collection/ArraySet;->getHashes$collection()[I

    move-result-object v5

    add-int/lit8 v6, p1, 0x1

    .line 439
    invoke-static {v2, v5, p1, v6, v0}, Lkotlin/collections/ArraysKt;->copyInto([I[IIII)[I

    .line 446
    invoke-virtual {p0}, Landroidx/collection/ArraySet;->getArray$collection()[Ljava/lang/Object;

    move-result-object v2

    .line 445
    invoke-static {v4, v2, p1, v6, v0}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    goto :goto_0

    :cond_3
    if-ge p1, v3, :cond_4

    .line 454
    invoke-virtual {p0}, Landroidx/collection/ArraySet;->getHashes$collection()[I

    move-result-object v2

    .line 455
    invoke-virtual {p0}, Landroidx/collection/ArraySet;->getHashes$collection()[I

    move-result-object v4

    add-int/lit8 v5, p1, 0x1

    .line 454
    invoke-static {v2, v4, p1, v5, v0}, Lkotlin/collections/ArraysKt;->copyInto([I[IIII)[I

    .line 460
    invoke-virtual {p0}, Landroidx/collection/ArraySet;->getArray$collection()[Ljava/lang/Object;

    move-result-object v2

    .line 461
    invoke-virtual {p0}, Landroidx/collection/ArraySet;->getArray$collection()[Ljava/lang/Object;

    move-result-object v4

    .line 460
    invoke-static {v2, v4, p1, v5, v0}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 467
    :cond_4
    invoke-virtual {p0}, Landroidx/collection/ArraySet;->getArray$collection()[Ljava/lang/Object;

    move-result-object p1

    const/4 v2, 0x0

    aput-object v2, p1, v3

    .line 469
    :cond_5
    :goto_0
    invoke-virtual {p0}, Landroidx/collection/ArraySet;->get_size$collection()I

    move-result p1

    if-ne v0, p1, :cond_6

    .line 472
    invoke-virtual {p0, v3}, Landroidx/collection/ArraySet;->set_size$collection(I)V

    :goto_1
    return-object v1

    .line 470
    :cond_6
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 551
    invoke-virtual {p0}, Landroidx/collection/ArraySet;->get_size$collection()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, -0x1

    if-ge v3, v0, :cond_1

    .line 552
    move-object v3, p1

    check-cast v3, Ljava/lang/Iterable;

    invoke-virtual {p0}, Landroidx/collection/ArraySet;->getArray$collection()[Ljava/lang/Object;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 553
    invoke-virtual {p0, v0}, Landroidx/collection/ArraySet;->removeAt(I)Ljava/lang/Object;

    move v2, v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public final setArray$collection([Ljava/lang/Object;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/collection/ArraySet;->array:[Ljava/lang/Object;

    return-void
.end method

.method public final setHashes$collection([I)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/collection/ArraySet;->hashes:[I

    return-void
.end method

.method public final set_size$collection(I)V
    .locals 0

    iput p1, p0, Landroidx/collection/ArraySet;->_size:I

    return-void
.end method

.method public final bridge size()I
    .locals 0

    .line 46
    invoke-virtual {p0}, Landroidx/collection/ArraySet;->getSize()I

    move-result p0

    return p0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/collection/ArraySet;->array:[Ljava/lang/Object;

    const/4 v1, 0x0

    iget p0, p0, Landroidx/collection/ArraySet;->_size:I

    .line 205
    invoke-static {v0, v1, p0}, Lkotlin/collections/ArraysKt;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    const-string v0, "array"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Landroidx/collection/ArraySet;->_size:I

    .line 210
    invoke-static {p1, v0}, Landroidx/collection/ArraySetJvmUtil;->resizeForToArray([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Landroidx/collection/ArraySet;->array:[Ljava/lang/Object;

    const/4 v1, 0x0

    iget p0, p0, Landroidx/collection/ArraySet;->_size:I

    .line 213
    invoke-static {v0, p1, v1, v1, p0}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    const-string p0, "result"

    .line 214
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 514
    invoke-virtual {p0}, Landroidx/collection/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo p0, "{}"

    goto :goto_2

    .line 518
    :cond_0
    invoke-virtual {p0}, Landroidx/collection/ArraySet;->get_size$collection()I

    move-result v0

    mul-int/lit8 v0, v0, 0xe

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v0, 0x7b

    .line 519
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 520
    invoke-virtual {p0}, Landroidx/collection/ArraySet;->get_size$collection()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    if-lez v2, :cond_1

    const-string v3, ", "

    .line 522
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    :cond_1
    invoke-virtual {p0, v2}, Landroidx/collection/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, p0, :cond_2

    .line 526
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v3, "(this Set)"

    .line 528
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/16 p0, 0x7d

    .line 531
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 518
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "StringBuilder(capacity).\u2026builderAction).toString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    return-object p0
.end method

.method public final valueAt(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 330
    invoke-virtual {p0}, Landroidx/collection/ArraySet;->getArray$collection()[Ljava/lang/Object;

    move-result-object p0

    aget-object p0, p0, p1

    return-object p0
.end method
