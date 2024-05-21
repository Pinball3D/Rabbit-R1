.class public Landroidx/collection/LongSparseArray;
.super Ljava/lang/Object;
.source "LongSparseArray.jvm.kt"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLongSparseArray.jvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LongSparseArray.jvm.kt\nandroidx/collection/LongSparseArray\n+ 2 LongSparseArray.kt\nandroidx/collection/LongSparseArrayKt\n*L\n1#1,257:1\n242#2:258\n255#2,6:259\n247#2,14:265\n266#2,8:279\n266#2,8:287\n277#2,9:295\n290#2,5:304\n298#2,8:309\n314#2,9:317\n348#2,12:326\n327#2,18:338\n362#2,26:356\n391#2,5:382\n399#2,5:387\n408#2,2:392\n327#2,18:394\n411#2:412\n415#2:413\n419#2,6:414\n327#2,18:420\n426#2:438\n431#2,6:439\n327#2,18:445\n440#2:463\n445#2,6:464\n327#2,18:470\n452#2,2:488\n457#2,2:490\n327#2,18:492\n460#2:510\n465#2,2:511\n327#2,18:513\n468#2,6:531\n478#2:537\n483#2:538\n488#2,8:539\n499#2,6:547\n327#2,18:553\n506#2,10:571\n519#2,21:581\n*S KotlinDebug\n*F\n+ 1 LongSparseArray.jvm.kt\nandroidx/collection/LongSparseArray\n*L\n95#1:258\n95#1:259,6\n102#1:265,14\n108#1:279,8\n113#1:287,8\n122#1:295,9\n127#1:304,5\n136#1:309,8\n147#1:317,9\n153#1:326,12\n153#1:338,18\n153#1:356,26\n159#1:382,5\n170#1:387,5\n175#1:392,2\n175#1:394,18\n175#1:412\n182#1:413\n194#1:414,6\n194#1:420,18\n194#1:438\n206#1:439,6\n206#1:445,18\n206#1:463\n214#1:464,6\n214#1:470,18\n214#1:488,2\n221#1:490,2\n221#1:492,18\n221#1:510\n230#1:511,2\n230#1:513,18\n230#1:531,6\n233#1:537\n236#1:538\n241#1:539,8\n247#1:547,6\n247#1:553,18\n247#1:571,10\n255#1:581,21\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001a\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0016\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008 \n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0016\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002B\u0011\u0008\u0007\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u001d\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u0014J\u0008\u0010\u0015\u001a\u00020\u0010H\u0016J\u000e\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0000H\u0016J\u0010\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0015\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u0019J\u0010\u0010\u001a\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0017J\u0018\u0010\u001b\u001a\u0004\u0018\u00018\u00002\u0006\u0010\u0011\u001a\u00020\u0012H\u0096\u0002\u00a2\u0006\u0002\u0010\u001cJ\u001d\u0010\u001b\u001a\u00028\u00002\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u001d\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u001eJ\u0010\u0010\u001f\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0015\u0010 \u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010!J\u0008\u0010\"\u001a\u00020\u0007H\u0016J\u0010\u0010#\u001a\u00020\u00122\u0006\u0010$\u001a\u00020\u0004H\u0016J\u001d\u0010%\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u0014J\u0018\u0010&\u001a\u00020\u00102\u000e\u0010\'\u001a\n\u0012\u0006\u0008\u0001\u0012\u00028\u00000\u0000H\u0016J\u001f\u0010(\u001a\u0004\u0018\u00018\u00002\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u001eJ\u0010\u0010)\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u001d\u0010)\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010*J\u0010\u0010+\u001a\u00020\u00102\u0006\u0010$\u001a\u00020\u0004H\u0016J\u001f\u0010,\u001a\u0004\u0018\u00018\u00002\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u001eJ%\u0010,\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010-\u001a\u00028\u00002\u0006\u0010.\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010/J\u001d\u00100\u001a\u00020\u00102\u0006\u0010$\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u00101J\u0008\u0010\n\u001a\u00020\u0004H\u0016J\u0008\u00102\u001a\u000203H\u0016J\u0015\u00104\u001a\u00028\u00002\u0006\u0010$\u001a\u00020\u0004H\u0016\u00a2\u0006\u0002\u00105R\u0012\u0010\u0006\u001a\u00020\u00078\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\t8\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u00048\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\u000c8\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0004\n\u0002\u0010\u000e\u00a8\u00066"
    }
    d2 = {
        "Landroidx/collection/LongSparseArray;",
        "E",
        "",
        "initialCapacity",
        "",
        "(I)V",
        "garbage",
        "",
        "keys",
        "",
        "size",
        "values",
        "",
        "",
        "[Ljava/lang/Object;",
        "append",
        "",
        "key",
        "",
        "value",
        "(JLjava/lang/Object;)V",
        "clear",
        "clone",
        "containsKey",
        "containsValue",
        "(Ljava/lang/Object;)Z",
        "delete",
        "get",
        "(J)Ljava/lang/Object;",
        "defaultValue",
        "(JLjava/lang/Object;)Ljava/lang/Object;",
        "indexOfKey",
        "indexOfValue",
        "(Ljava/lang/Object;)I",
        "isEmpty",
        "keyAt",
        "index",
        "put",
        "putAll",
        "other",
        "putIfAbsent",
        "remove",
        "(JLjava/lang/Object;)Z",
        "removeAt",
        "replace",
        "oldValue",
        "newValue",
        "(JLjava/lang/Object;Ljava/lang/Object;)Z",
        "setValueAt",
        "(ILjava/lang/Object;)V",
        "toString",
        "",
        "valueAt",
        "(I)Ljava/lang/Object;",
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
.field public synthetic garbage:Z

.field public synthetic keys:[J

.field public synthetic size:I

.field public synthetic values:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Landroidx/collection/LongSparseArray;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 75
    sget-object p1, Landroidx/collection/internal/ContainerHelpersKt;->EMPTY_LONGS:[J

    iput-object p1, p0, Landroidx/collection/LongSparseArray;->keys:[J

    .line 76
    sget-object p1, Landroidx/collection/internal/ContainerHelpersKt;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object p1, p0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    goto :goto_0

    .line 78
    :cond_0
    invoke-static {p1}, Landroidx/collection/internal/ContainerHelpersKt;->idealLongArraySize(I)I

    move-result p1

    .line 79
    new-array v0, p1, [J

    iput-object v0, p0, Landroidx/collection/LongSparseArray;->keys:[J

    .line 80
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/16 p1, 0xa

    .line 56
    :cond_0
    invoke-direct {p0, p1}, Landroidx/collection/LongSparseArray;-><init>(I)V

    return-void
.end method


# virtual methods
.method public append(JLjava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)V"
        }
    .end annotation

    iget v0, p0, Landroidx/collection/LongSparseArray;->size:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/collection/LongSparseArray;->keys:[J

    add-int/lit8 v2, v0, -0x1

    .line 547
    aget-wide v1, v1, v2

    cmp-long v1, p1, v1

    if-gtz v1, :cond_0

    .line 548
    invoke-virtual {p0, p1, p2, p3}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_1

    :cond_0
    iget-boolean v1, p0, Landroidx/collection/LongSparseArray;->garbage:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroidx/collection/LongSparseArray;->keys:[J

    .line 551
    array-length v2, v1

    if-lt v0, v2, :cond_4

    iget-object v2, p0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v0, :cond_3

    .line 558
    aget-object v6, v2, v4

    .line 559
    invoke-static {}, Landroidx/collection/LongSparseArrayKt;->access$getDELETED$p()Ljava/lang/Object;

    move-result-object v7

    if-eq v6, v7, :cond_2

    if-eq v4, v5, :cond_1

    .line 561
    aget-wide v7, v1, v4

    aput-wide v7, v1, v5

    .line 562
    aput-object v6, v2, v5

    const/4 v6, 0x0

    .line 563
    aput-object v6, v2, v4

    :cond_1
    add-int/lit8 v5, v5, 0x1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    iput-boolean v3, p0, Landroidx/collection/LongSparseArray;->garbage:Z

    iput v5, p0, Landroidx/collection/LongSparseArray;->size:I

    :cond_4
    iget v0, p0, Landroidx/collection/LongSparseArray;->size:I

    iget-object v1, p0, Landroidx/collection/LongSparseArray;->keys:[J

    .line 572
    array-length v1, v1

    if-lt v0, v1, :cond_5

    add-int/lit8 v1, v0, 0x1

    .line 573
    invoke-static {v1}, Landroidx/collection/internal/ContainerHelpersKt;->idealLongArraySize(I)I

    move-result v1

    iget-object v2, p0, Landroidx/collection/LongSparseArray;->keys:[J

    .line 574
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v2

    const-string v3, "copyOf(this, newSize)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Landroidx/collection/LongSparseArray;->keys:[J

    iget-object v2, p0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    .line 575
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    :cond_5
    iget-object v1, p0, Landroidx/collection/LongSparseArray;->keys:[J

    .line 577
    aput-wide p1, v1, v0

    iget-object p1, p0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    .line 578
    aput-object p3, p1, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/collection/LongSparseArray;->size:I

    :goto_1
    return-void
.end method

.method public clear()V
    .locals 5

    iget v0, p0, Landroidx/collection/LongSparseArray;->size:I

    iget-object v1, p0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    const/4 v4, 0x0

    .line 542
    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput v2, p0, Landroidx/collection/LongSparseArray;->size:I

    iput-boolean v2, p0, Landroidx/collection/LongSparseArray;->garbage:Z

    return-void
.end method

.method public clone()Landroidx/collection/LongSparseArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/LongSparseArray<",
            "TE;>;"
        }
    .end annotation

    .line 86
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type androidx.collection.LongSparseArray<E of androidx.collection.LongSparseArray>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/collection/LongSparseArray;

    iget-object v1, p0, Landroidx/collection/LongSparseArray;->keys:[J

    .line 87
    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    iput-object v1, v0, Landroidx/collection/LongSparseArray;->keys:[J

    iget-object p0, p0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    .line 88
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    iput-object p0, v0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 51
    invoke-virtual {p0}, Landroidx/collection/LongSparseArray;->clone()Landroidx/collection/LongSparseArray;

    move-result-object p0

    return-object p0
.end method

.method public containsKey(J)Z
    .locals 0

    .line 537
    invoke-virtual {p0, p1, p2}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 538
    invoke-virtual {p0, p1}, Landroidx/collection/LongSparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public delete(J)V
    .locals 2
    .annotation runtime Lkotlin/Deprecated;
        message = "Alias for `remove(key)`."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "remove(key)"
            imports = {}
        .end subannotation
    .end annotation

    iget-object v0, p0, Landroidx/collection/LongSparseArray;->keys:[J

    iget v1, p0, Landroidx/collection/LongSparseArray;->size:I

    .line 279
    invoke-static {v0, v1, p1, p2}, Landroidx/collection/internal/ContainerHelpersKt;->binarySearch([JIJ)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object p2, p0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    .line 281
    aget-object p2, p2, p1

    invoke-static {}, Landroidx/collection/LongSparseArrayKt;->access$getDELETED$p()Ljava/lang/Object;

    move-result-object v0

    if-eq p2, v0, :cond_0

    iget-object p2, p0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    .line 282
    invoke-static {}, Landroidx/collection/LongSparseArrayKt;->access$getDELETED$p()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, p2, p1

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/collection/LongSparseArray;->garbage:Z

    :cond_0
    return-void
.end method

.method public get(J)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TE;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/collection/LongSparseArray;->keys:[J

    iget v1, p0, Landroidx/collection/LongSparseArray;->size:I

    .line 259
    invoke-static {v0, v1, p1, p2}, Landroidx/collection/internal/ContainerHelpersKt;->binarySearch([JIJ)I

    move-result p1

    if-ltz p1, :cond_1

    iget-object p2, p0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    .line 260
    aget-object p2, p2, p1

    invoke-static {}, Landroidx/collection/LongSparseArrayKt;->access$getDELETED$p()Ljava/lang/Object;

    move-result-object v0

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    .line 264
    aget-object p0, p0, p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public get(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)TE;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/collection/LongSparseArray;->keys:[J

    iget v1, p0, Landroidx/collection/LongSparseArray;->size:I

    .line 273
    invoke-static {v0, v1, p1, p2}, Landroidx/collection/internal/ContainerHelpersKt;->binarySearch([JIJ)I

    move-result p1

    if-ltz p1, :cond_1

    iget-object p2, p0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    .line 274
    aget-object p2, p2, p1

    invoke-static {}, Landroidx/collection/LongSparseArrayKt;->access$getDELETED$p()Ljava/lang/Object;

    move-result-object v0

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    .line 278
    aget-object p3, p0, p1

    :cond_1
    :goto_0
    return-object p3
.end method

.method public indexOfKey(J)I
    .locals 9

    iget-boolean v0, p0, Landroidx/collection/LongSparseArray;->garbage:Z

    if-eqz v0, :cond_3

    iget v0, p0, Landroidx/collection/LongSparseArray;->size:I

    iget-object v1, p0, Landroidx/collection/LongSparseArray;->keys:[J

    iget-object v2, p0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v0, :cond_2

    .line 497
    aget-object v6, v2, v4

    .line 498
    invoke-static {}, Landroidx/collection/LongSparseArrayKt;->access$getDELETED$p()Ljava/lang/Object;

    move-result-object v7

    if-eq v6, v7, :cond_1

    if-eq v4, v5, :cond_0

    .line 500
    aget-wide v7, v1, v4

    aput-wide v7, v1, v5

    .line 501
    aput-object v6, v2, v5

    const/4 v6, 0x0

    .line 502
    aput-object v6, v2, v4

    :cond_0
    add-int/lit8 v5, v5, 0x1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iput-boolean v3, p0, Landroidx/collection/LongSparseArray;->garbage:Z

    iput v5, p0, Landroidx/collection/LongSparseArray;->size:I

    :cond_3
    iget-object v0, p0, Landroidx/collection/LongSparseArray;->keys:[J

    iget p0, p0, Landroidx/collection/LongSparseArray;->size:I

    .line 510
    invoke-static {v0, p0, p1, p2}, Landroidx/collection/internal/ContainerHelpersKt;->binarySearch([JIJ)I

    move-result p0

    return p0
.end method

.method public indexOfValue(Ljava/lang/Object;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    iget-boolean v0, p0, Landroidx/collection/LongSparseArray;->garbage:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget v0, p0, Landroidx/collection/LongSparseArray;->size:I

    iget-object v2, p0, Landroidx/collection/LongSparseArray;->keys:[J

    iget-object v3, p0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    move v4, v1

    move v5, v4

    :goto_0
    if-ge v4, v0, :cond_2

    .line 518
    aget-object v6, v3, v4

    .line 519
    invoke-static {}, Landroidx/collection/LongSparseArrayKt;->access$getDELETED$p()Ljava/lang/Object;

    move-result-object v7

    if-eq v6, v7, :cond_1

    if-eq v4, v5, :cond_0

    .line 521
    aget-wide v7, v2, v4

    aput-wide v7, v2, v5

    .line 522
    aput-object v6, v3, v5

    const/4 v6, 0x0

    .line 523
    aput-object v6, v3, v4

    :cond_0
    add-int/lit8 v5, v5, 0x1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iput-boolean v1, p0, Landroidx/collection/LongSparseArray;->garbage:Z

    iput v5, p0, Landroidx/collection/LongSparseArray;->size:I

    :cond_3
    iget v0, p0, Landroidx/collection/LongSparseArray;->size:I

    :goto_1
    if-ge v1, v0, :cond_5

    iget-object v2, p0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    .line 532
    aget-object v2, v2, v1

    if-ne v2, p1, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    const/4 v1, -0x1

    :goto_2
    return v1
.end method

.method public isEmpty()Z
    .locals 0

    .line 413
    invoke-virtual {p0}, Landroidx/collection/LongSparseArray;->size()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public keyAt(I)J
    .locals 9

    if-ltz p1, :cond_4

    iget v0, p0, Landroidx/collection/LongSparseArray;->size:I

    if-ge p1, v0, :cond_4

    iget-boolean v1, p0, Landroidx/collection/LongSparseArray;->garbage:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/collection/LongSparseArray;->keys:[J

    iget-object v2, p0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v0, :cond_2

    .line 425
    aget-object v6, v2, v4

    .line 426
    invoke-static {}, Landroidx/collection/LongSparseArrayKt;->access$getDELETED$p()Ljava/lang/Object;

    move-result-object v7

    if-eq v6, v7, :cond_1

    if-eq v4, v5, :cond_0

    .line 428
    aget-wide v7, v1, v4

    aput-wide v7, v1, v5

    .line 429
    aput-object v6, v2, v5

    const/4 v6, 0x0

    .line 430
    aput-object v6, v2, v4

    :cond_0
    add-int/lit8 v5, v5, 0x1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iput-boolean v3, p0, Landroidx/collection/LongSparseArray;->garbage:Z

    iput v5, p0, Landroidx/collection/LongSparseArray;->size:I

    :cond_3
    iget-object p0, p0, Landroidx/collection/LongSparseArray;->keys:[J

    .line 438
    aget-wide p0, p0, p1

    return-wide p0

    .line 415
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Expected index to be within 0..size()-1, but was "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 414
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public put(JLjava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/collection/LongSparseArray;->keys:[J

    iget v1, p0, Landroidx/collection/LongSparseArray;->size:I

    .line 326
    invoke-static {v0, v1, p1, p2}, Landroidx/collection/internal/ContainerHelpersKt;->binarySearch([JIJ)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object p0, p0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    .line 328
    aput-object p3, p0, v0

    goto/16 :goto_1

    :cond_0
    not-int v0, v0

    iget v1, p0, Landroidx/collection/LongSparseArray;->size:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    .line 331
    aget-object v1, v1, v0

    invoke-static {}, Landroidx/collection/LongSparseArrayKt;->access$getDELETED$p()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Landroidx/collection/LongSparseArray;->keys:[J

    .line 332
    aput-wide p1, v1, v0

    iget-object p0, p0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    .line 333
    aput-object p3, p0, v0

    goto/16 :goto_1

    :cond_1
    iget-boolean v1, p0, Landroidx/collection/LongSparseArray;->garbage:Z

    if-eqz v1, :cond_5

    iget v1, p0, Landroidx/collection/LongSparseArray;->size:I

    iget-object v2, p0, Landroidx/collection/LongSparseArray;->keys:[J

    .line 336
    array-length v3, v2

    if-lt v1, v3, :cond_5

    iget-object v0, p0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v1, :cond_4

    .line 343
    aget-object v6, v0, v4

    .line 344
    invoke-static {}, Landroidx/collection/LongSparseArrayKt;->access$getDELETED$p()Ljava/lang/Object;

    move-result-object v7

    if-eq v6, v7, :cond_3

    if-eq v4, v5, :cond_2

    .line 346
    aget-wide v7, v2, v4

    aput-wide v7, v2, v5

    .line 347
    aput-object v6, v0, v5

    const/4 v6, 0x0

    .line 348
    aput-object v6, v0, v4

    :cond_2
    add-int/lit8 v5, v5, 0x1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    iput-boolean v3, p0, Landroidx/collection/LongSparseArray;->garbage:Z

    iput v5, p0, Landroidx/collection/LongSparseArray;->size:I

    iget-object v0, p0, Landroidx/collection/LongSparseArray;->keys:[J

    .line 356
    invoke-static {v0, v5, p1, p2}, Landroidx/collection/internal/ContainerHelpersKt;->binarySearch([JIJ)I

    move-result v0

    not-int v0, v0

    :cond_5
    iget v1, p0, Landroidx/collection/LongSparseArray;->size:I

    iget-object v2, p0, Landroidx/collection/LongSparseArray;->keys:[J

    .line 358
    array-length v2, v2

    if-lt v1, v2, :cond_6

    add-int/lit8 v1, v1, 0x1

    .line 359
    invoke-static {v1}, Landroidx/collection/internal/ContainerHelpersKt;->idealLongArraySize(I)I

    move-result v1

    iget-object v2, p0, Landroidx/collection/LongSparseArray;->keys:[J

    .line 360
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v2

    const-string v3, "copyOf(this, newSize)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Landroidx/collection/LongSparseArray;->keys:[J

    iget-object v2, p0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    .line 361
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    :cond_6
    iget v1, p0, Landroidx/collection/LongSparseArray;->size:I

    sub-int v2, v1, v0

    if-eqz v2, :cond_7

    iget-object v2, p0, Landroidx/collection/LongSparseArray;->keys:[J

    add-int/lit8 v3, v0, 0x1

    .line 364
    invoke-static {v2, v2, v3, v0, v1}, Lkotlin/collections/ArraysKt;->copyInto([J[JIII)[J

    iget-object v1, p0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    iget v2, p0, Landroidx/collection/LongSparseArray;->size:I

    .line 370
    invoke-static {v1, v1, v3, v0, v2}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    :cond_7
    iget-object v1, p0, Landroidx/collection/LongSparseArray;->keys:[J

    .line 377
    aput-wide p1, v1, v0

    iget-object p1, p0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    .line 378
    aput-object p3, p1, v0

    iget p1, p0, Landroidx/collection/LongSparseArray;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/collection/LongSparseArray;->size:I

    :goto_1
    return-void
.end method

.method public putAll(Landroidx/collection/LongSparseArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/LongSparseArray<",
            "+TE;>;)V"
        }
    .end annotation

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 382
    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 384
    invoke-virtual {p1, v1}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    invoke-virtual {p1, v1}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public putIfAbsent(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)TE;"
        }
    .end annotation

    .line 387
    invoke-virtual {p0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 389
    invoke-virtual {p0, p1, p2, p3}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public remove(J)V
    .locals 2

    iget-object v0, p0, Landroidx/collection/LongSparseArray;->keys:[J

    iget v1, p0, Landroidx/collection/LongSparseArray;->size:I

    .line 287
    invoke-static {v0, v1, p1, p2}, Landroidx/collection/internal/ContainerHelpersKt;->binarySearch([JIJ)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object p2, p0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    .line 289
    aget-object p2, p2, p1

    invoke-static {}, Landroidx/collection/LongSparseArrayKt;->access$getDELETED$p()Ljava/lang/Object;

    move-result-object v0

    if-eq p2, v0, :cond_0

    iget-object p2, p0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    .line 290
    invoke-static {}, Landroidx/collection/LongSparseArrayKt;->access$getDELETED$p()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, p2, p1

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/collection/LongSparseArray;->garbage:Z

    :cond_0
    return-void
.end method

.method public remove(JLjava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)Z"
        }
    .end annotation

    .line 295
    invoke-virtual {p0, p1, p2}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result p1

    if-ltz p1, :cond_0

    .line 297
    invoke-virtual {p0, p1}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    .line 298
    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 299
    invoke-virtual {p0, p1}, Landroidx/collection/LongSparseArray;->removeAt(I)V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public removeAt(I)V
    .locals 2

    iget-object v0, p0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    .line 304
    aget-object v0, v0, p1

    invoke-static {}, Landroidx/collection/LongSparseArrayKt;->access$getDELETED$p()Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    .line 305
    invoke-static {}, Landroidx/collection/LongSparseArrayKt;->access$getDELETED$p()Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, p1

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/collection/LongSparseArray;->garbage:Z

    :cond_0
    return-void
.end method

.method public replace(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)TE;"
        }
    .end annotation

    .line 309
    invoke-virtual {p0, p1, p2}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object p0, p0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    .line 312
    aget-object p2, p0, p1

    .line 313
    aput-object p3, p0, p1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return-object p2
.end method

.method public replace(JLjava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;TE;)Z"
        }
    .end annotation

    .line 317
    invoke-virtual {p0, p1, p2}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object p2, p0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    .line 319
    aget-object p2, p2, p1

    .line 320
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    .line 321
    aput-object p4, p0, p1

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setValueAt(ILjava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    if-ltz p1, :cond_4

    iget v0, p0, Landroidx/collection/LongSparseArray;->size:I

    if-ge p1, v0, :cond_4

    iget-boolean v1, p0, Landroidx/collection/LongSparseArray;->garbage:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/collection/LongSparseArray;->keys:[J

    iget-object v2, p0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v0, :cond_2

    .line 475
    aget-object v6, v2, v4

    .line 476
    invoke-static {}, Landroidx/collection/LongSparseArrayKt;->access$getDELETED$p()Ljava/lang/Object;

    move-result-object v7

    if-eq v6, v7, :cond_1

    if-eq v4, v5, :cond_0

    .line 478
    aget-wide v7, v1, v4

    aput-wide v7, v1, v5

    .line 479
    aput-object v6, v2, v5

    const/4 v6, 0x0

    .line 480
    aput-object v6, v2, v4

    :cond_0
    add-int/lit8 v5, v5, 0x1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iput-boolean v3, p0, Landroidx/collection/LongSparseArray;->garbage:Z

    iput v5, p0, Landroidx/collection/LongSparseArray;->size:I

    :cond_3
    iget-object p0, p0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    .line 488
    aput-object p2, p0, p1

    return-void

    .line 465
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Expected index to be within 0..size()-1, but was "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 464
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public size()I
    .locals 9

    iget-boolean v0, p0, Landroidx/collection/LongSparseArray;->garbage:Z

    if-eqz v0, :cond_3

    iget v0, p0, Landroidx/collection/LongSparseArray;->size:I

    iget-object v1, p0, Landroidx/collection/LongSparseArray;->keys:[J

    iget-object v2, p0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v0, :cond_2

    .line 399
    aget-object v6, v2, v4

    .line 400
    invoke-static {}, Landroidx/collection/LongSparseArrayKt;->access$getDELETED$p()Ljava/lang/Object;

    move-result-object v7

    if-eq v6, v7, :cond_1

    if-eq v4, v5, :cond_0

    .line 402
    aget-wide v7, v1, v4

    aput-wide v7, v1, v5

    .line 403
    aput-object v6, v2, v5

    const/4 v6, 0x0

    .line 404
    aput-object v6, v2, v4

    :cond_0
    add-int/lit8 v5, v5, 0x1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iput-boolean v3, p0, Landroidx/collection/LongSparseArray;->garbage:Z

    iput v5, p0, Landroidx/collection/LongSparseArray;->size:I

    :cond_3
    iget p0, p0, Landroidx/collection/LongSparseArray;->size:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 581
    invoke-virtual {p0}, Landroidx/collection/LongSparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_0

    const-string/jumbo p0, "{}"

    goto :goto_2

    :cond_0
    iget v0, p0, Landroidx/collection/LongSparseArray;->size:I

    mul-int/lit8 v0, v0, 0x1c

    .line 584
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v0, 0x7b

    .line 585
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, p0, Landroidx/collection/LongSparseArray;->size:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    if-lez v2, :cond_1

    const-string v3, ", "

    .line 588
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    :cond_1
    invoke-virtual {p0, v2}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    .line 591
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v3, 0x3d

    .line 592
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 593
    invoke-virtual {p0, v2}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v1, :cond_2

    .line 595
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v3, "(this Map)"

    .line 597
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/16 p0, 0x7d

    .line 600
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 584
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "StringBuilder(capacity).\u2026builderAction).toString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    return-object p0
.end method

.method public valueAt(I)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    if-ltz p1, :cond_4

    iget v0, p0, Landroidx/collection/LongSparseArray;->size:I

    if-ge p1, v0, :cond_4

    iget-boolean v1, p0, Landroidx/collection/LongSparseArray;->garbage:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/collection/LongSparseArray;->keys:[J

    iget-object v2, p0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v0, :cond_2

    .line 450
    aget-object v6, v2, v4

    .line 451
    invoke-static {}, Landroidx/collection/LongSparseArrayKt;->access$getDELETED$p()Ljava/lang/Object;

    move-result-object v7

    if-eq v6, v7, :cond_1

    if-eq v4, v5, :cond_0

    .line 453
    aget-wide v7, v1, v4

    aput-wide v7, v1, v5

    .line 454
    aput-object v6, v2, v5

    const/4 v6, 0x0

    .line 455
    aput-object v6, v2, v4

    :cond_0
    add-int/lit8 v5, v5, 0x1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iput-boolean v3, p0, Landroidx/collection/LongSparseArray;->garbage:Z

    iput v5, p0, Landroidx/collection/LongSparseArray;->size:I

    :cond_3
    iget-object p0, p0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    .line 463
    aget-object p0, p0, p1

    return-object p0

    .line 440
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Expected index to be within 0..size()-1, but was "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 439
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
