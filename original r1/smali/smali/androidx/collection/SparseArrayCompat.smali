.class public Landroidx/collection/SparseArrayCompat;
.super Ljava/lang/Object;
.source "SparseArrayCompat.jvm.kt"

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
    value = "SMAP\nSparseArrayCompat.jvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SparseArrayCompat.jvm.kt\nandroidx/collection/SparseArrayCompat\n+ 2 SparseArrayCompat.kt\nandroidx/collection/SparseArrayCompatKt\n*L\n1#1,278:1\n273#2,9:279\n286#2,5:288\n294#2,5:293\n302#2,8:298\n318#2,9:306\n351#2,40:315\n394#2,2:355\n351#2,47:357\n401#2,3:404\n351#2,40:407\n405#2:447\n410#2,4:448\n417#2:452\n421#2,4:453\n429#2,8:457\n441#2,5:465\n449#2,4:470\n457#2,9:474\n470#2:483\n475#2:484\n457#2,9:485\n480#2,8:494\n491#2,17:502\n511#2,21:519\n*S KotlinDebug\n*F\n+ 1 SparseArrayCompat.jvm.kt\nandroidx/collection/SparseArrayCompat\n*L\n135#1:279,9\n140#1:288,5\n149#1:293,5\n157#1:298,8\n168#1:306,9\n174#1:315,40\n181#1:355,2\n181#1:357,47\n191#1:404,3\n191#1:407,40\n191#1:447\n196#1:448,4\n210#1:452\n217#1:453,4\n223#1:457,8\n229#1:465,5\n239#1:470,4\n251#1:474,9\n254#1:483\n257#1:484\n257#1:485,9\n262#1:494,8\n268#1:502,17\n276#1:519,21\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001a\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0015\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u001f\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0016\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002B\u0011\u0008\u0007\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u001d\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u0016J\u0008\u0010\u0017\u001a\u00020\u0013H\u0016J\u000e\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0000H\u0016J\u0010\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u0004H\u0016J\u0015\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u001bJ\u0010\u0010\u001c\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0004H\u0017J\u0018\u0010\u001d\u001a\u0004\u0018\u00018\u00002\u0006\u0010\u0014\u001a\u00020\u0004H\u0096\u0002\u00a2\u0006\u0002\u0010\u001eJ\u001d\u0010\u001d\u001a\u00028\u00002\u0006\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010 J\u0010\u0010!\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u0004H\u0016J\u0015\u0010\"\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010#J\u0008\u0010\u0008\u001a\u00020\u0007H\u0016J\u0010\u0010$\u001a\u00020\u00042\u0006\u0010%\u001a\u00020\u0004H\u0016J\u001d\u0010&\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u0016J\u0018\u0010\'\u001a\u00020\u00132\u000e\u0010(\u001a\n\u0012\u0006\u0008\u0001\u0012\u00028\u00000\u0000H\u0016J\u001f\u0010)\u001a\u0004\u0018\u00018\u00002\u0006\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010 J\u0010\u0010*\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0004H\u0016J\u001a\u0010*\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u00042\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0010H\u0016J\u0010\u0010+\u001a\u00020\u00132\u0006\u0010%\u001a\u00020\u0004H\u0016J\u0018\u0010,\u001a\u00020\u00132\u0006\u0010%\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u0004H\u0016J\u001f\u0010-\u001a\u0004\u0018\u00018\u00002\u0006\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010 J%\u0010-\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u00042\u0006\u0010.\u001a\u00028\u00002\u0006\u0010/\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u00100J\u001d\u00101\u001a\u00020\u00132\u0006\u0010%\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u0016J\u0008\u0010\r\u001a\u00020\u0004H\u0016J\u0008\u00102\u001a\u000203H\u0016J\u0015\u00104\u001a\u00028\u00002\u0006\u0010%\u001a\u00020\u0004H\u0016\u00a2\u0006\u0002\u0010\u001eR\u0012\u0010\u0006\u001a\u00020\u00078\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0008\u001a\u00020\u00078G\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u0012\u0010\u000b\u001a\u00020\u000c8\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\u00048\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u000e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000f8\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0011\u00a8\u00065"
    }
    d2 = {
        "Landroidx/collection/SparseArrayCompat;",
        "E",
        "",
        "initialCapacity",
        "",
        "(I)V",
        "garbage",
        "",
        "isEmpty",
        "getIsEmpty",
        "()Z",
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
        "value",
        "(ILjava/lang/Object;)V",
        "clear",
        "clone",
        "containsKey",
        "containsValue",
        "(Ljava/lang/Object;)Z",
        "delete",
        "get",
        "(I)Ljava/lang/Object;",
        "defaultValue",
        "(ILjava/lang/Object;)Ljava/lang/Object;",
        "indexOfKey",
        "indexOfValue",
        "(Ljava/lang/Object;)I",
        "keyAt",
        "index",
        "put",
        "putAll",
        "other",
        "putIfAbsent",
        "remove",
        "removeAt",
        "removeAtRange",
        "replace",
        "oldValue",
        "newValue",
        "(ILjava/lang/Object;Ljava/lang/Object;)Z",
        "setValueAt",
        "toString",
        "",
        "valueAt",
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

.field public synthetic keys:[I

.field public synthetic size:I

.field public synthetic values:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Landroidx/collection/SparseArrayCompat;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 87
    sget-object p1, Landroidx/collection/internal/ContainerHelpersKt;->EMPTY_INTS:[I

    iput-object p1, p0, Landroidx/collection/SparseArrayCompat;->keys:[I

    .line 88
    sget-object p1, Landroidx/collection/internal/ContainerHelpersKt;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object p1, p0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    goto :goto_0

    .line 90
    :cond_0
    invoke-static {p1}, Landroidx/collection/internal/ContainerHelpersKt;->idealIntArraySize(I)I

    move-result p1

    .line 91
    new-array v0, p1, [I

    iput-object v0, p0, Landroidx/collection/SparseArrayCompat;->keys:[I

    .line 92
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/16 p1, 0xa

    .line 66
    :cond_0
    invoke-direct {p0, p1}, Landroidx/collection/SparseArrayCompat;-><init>(I)V

    return-void
.end method


# virtual methods
.method public append(ILjava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    iget v0, p0, Landroidx/collection/SparseArrayCompat;->size:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/collection/SparseArrayCompat;->keys:[I

    add-int/lit8 v2, v0, -0x1

    .line 502
    aget v1, v1, v2

    if-gt p1, v1, :cond_0

    .line 503
    invoke-virtual {p0, p1, p2}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Landroidx/collection/SparseArrayCompat;->garbage:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/collection/SparseArrayCompat;->keys:[I

    .line 506
    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 507
    invoke-static {p0}, Landroidx/collection/SparseArrayCompatKt;->access$gc(Landroidx/collection/SparseArrayCompat;)V

    :cond_1
    iget v0, p0, Landroidx/collection/SparseArrayCompat;->size:I

    iget-object v1, p0, Landroidx/collection/SparseArrayCompat;->keys:[I

    .line 510
    array-length v1, v1

    if-lt v0, v1, :cond_2

    add-int/lit8 v1, v0, 0x1

    .line 511
    invoke-static {v1}, Landroidx/collection/internal/ContainerHelpersKt;->idealIntArraySize(I)I

    move-result v1

    iget-object v2, p0, Landroidx/collection/SparseArrayCompat;->keys:[I

    .line 512
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    const-string v3, "copyOf(this, newSize)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Landroidx/collection/SparseArrayCompat;->keys:[I

    iget-object v2, p0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    .line 513
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    :cond_2
    iget-object v1, p0, Landroidx/collection/SparseArrayCompat;->keys:[I

    .line 515
    aput p1, v1, v0

    iget-object p1, p0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    .line 516
    aput-object p2, p1, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/collection/SparseArrayCompat;->size:I

    :goto_0
    return-void
.end method

.method public clear()V
    .locals 5

    iget v0, p0, Landroidx/collection/SparseArrayCompat;->size:I

    iget-object v1, p0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    const/4 v4, 0x0

    .line 497
    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput v2, p0, Landroidx/collection/SparseArrayCompat;->size:I

    iput-boolean v2, p0, Landroidx/collection/SparseArrayCompat;->garbage:Z

    return-void
.end method

.method public clone()Landroidx/collection/SparseArrayCompat;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/SparseArrayCompat<",
            "TE;>;"
        }
    .end annotation

    .line 98
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type androidx.collection.SparseArrayCompat<E of androidx.collection.SparseArrayCompat>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/collection/SparseArrayCompat;

    iget-object v1, p0, Landroidx/collection/SparseArrayCompat;->keys:[I

    .line 99
    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Landroidx/collection/SparseArrayCompat;->keys:[I

    iget-object p0, p0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    .line 100
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    iput-object p0, v0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 60
    invoke-virtual {p0}, Landroidx/collection/SparseArrayCompat;->clone()Landroidx/collection/SparseArrayCompat;

    move-result-object p0

    return-object p0
.end method

.method public containsKey(I)Z
    .locals 0

    .line 483
    invoke-virtual {p0, p1}, Landroidx/collection/SparseArrayCompat;->indexOfKey(I)I

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
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    iget-boolean v0, p0, Landroidx/collection/SparseArrayCompat;->garbage:Z

    if-eqz v0, :cond_0

    .line 486
    invoke-static {p0}, Landroidx/collection/SparseArrayCompatKt;->access$gc(Landroidx/collection/SparseArrayCompat;)V

    :cond_0
    iget v0, p0, Landroidx/collection/SparseArrayCompat;->size:I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    .line 489
    aget-object v3, v3, v2

    if-ne v3, p1, :cond_1

    if-ltz v2, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method public delete(I)V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Alias for remove(int)."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "remove(key)"
            imports = {}
        .end subannotation
    .end annotation

    .line 120
    invoke-virtual {p0, p1}, Landroidx/collection/SparseArrayCompat;->remove(I)V

    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 107
    invoke-static {p0, p1}, Landroidx/collection/SparseArrayCompatKt;->commonGet(Landroidx/collection/SparseArrayCompat;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public get(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 113
    invoke-static {p0, p1, p2}, Landroidx/collection/SparseArrayCompatKt;->commonGet(Landroidx/collection/SparseArrayCompat;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getIsEmpty()Z
    .locals 0

    .line 204
    invoke-virtual {p0}, Landroidx/collection/SparseArrayCompat;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public indexOfKey(I)I
    .locals 1

    iget-boolean v0, p0, Landroidx/collection/SparseArrayCompat;->garbage:Z

    if-eqz v0, :cond_0

    .line 471
    invoke-static {p0}, Landroidx/collection/SparseArrayCompatKt;->access$gc(Landroidx/collection/SparseArrayCompat;)V

    :cond_0
    iget-object v0, p0, Landroidx/collection/SparseArrayCompat;->keys:[I

    iget p0, p0, Landroidx/collection/SparseArrayCompat;->size:I

    .line 473
    invoke-static {v0, p0, p1}, Landroidx/collection/internal/ContainerHelpersKt;->binarySearch([III)I

    move-result p0

    return p0
.end method

.method public indexOfValue(Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    iget-boolean v0, p0, Landroidx/collection/SparseArrayCompat;->garbage:Z

    if-eqz v0, :cond_0

    .line 475
    invoke-static {p0}, Landroidx/collection/SparseArrayCompatKt;->access$gc(Landroidx/collection/SparseArrayCompat;)V

    :cond_0
    iget v0, p0, Landroidx/collection/SparseArrayCompat;->size:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    .line 478
    aget-object v2, v2, v1

    if-ne v2, p1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    :goto_1
    return v1
.end method

.method public isEmpty()Z
    .locals 0

    .line 452
    invoke-virtual {p0}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public keyAt(I)I
    .locals 1

    iget-boolean v0, p0, Landroidx/collection/SparseArrayCompat;->garbage:Z

    if-eqz v0, :cond_0

    .line 454
    invoke-static {p0}, Landroidx/collection/SparseArrayCompatKt;->access$gc(Landroidx/collection/SparseArrayCompat;)V

    :cond_0
    iget-object p0, p0, Landroidx/collection/SparseArrayCompat;->keys:[I

    .line 456
    aget p0, p0, p1

    return p0
.end method

.method public put(ILjava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/collection/SparseArrayCompat;->keys:[I

    iget v1, p0, Landroidx/collection/SparseArrayCompat;->size:I

    .line 315
    invoke-static {v0, v1, p1}, Landroidx/collection/internal/ContainerHelpersKt;->binarySearch([III)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object p0, p0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    .line 317
    aput-object p2, p0, v0

    goto/16 :goto_0

    :cond_0
    not-int v0, v0

    iget v1, p0, Landroidx/collection/SparseArrayCompat;->size:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    .line 320
    aget-object v1, v1, v0

    invoke-static {}, Landroidx/collection/SparseArrayCompatKt;->access$getDELETED$p()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Landroidx/collection/SparseArrayCompat;->keys:[I

    .line 321
    aput p1, v1, v0

    iget-object p0, p0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    .line 322
    aput-object p2, p0, v0

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Landroidx/collection/SparseArrayCompat;->garbage:Z

    if-eqz v1, :cond_2

    iget v1, p0, Landroidx/collection/SparseArrayCompat;->size:I

    iget-object v2, p0, Landroidx/collection/SparseArrayCompat;->keys:[I

    .line 325
    array-length v2, v2

    if-lt v1, v2, :cond_2

    .line 326
    invoke-static {p0}, Landroidx/collection/SparseArrayCompatKt;->access$gc(Landroidx/collection/SparseArrayCompat;)V

    iget-object v0, p0, Landroidx/collection/SparseArrayCompat;->keys:[I

    iget v1, p0, Landroidx/collection/SparseArrayCompat;->size:I

    .line 329
    invoke-static {v0, v1, p1}, Landroidx/collection/internal/ContainerHelpersKt;->binarySearch([III)I

    move-result v0

    not-int v0, v0

    :cond_2
    iget v1, p0, Landroidx/collection/SparseArrayCompat;->size:I

    iget-object v2, p0, Landroidx/collection/SparseArrayCompat;->keys:[I

    .line 331
    array-length v2, v2

    if-lt v1, v2, :cond_3

    add-int/lit8 v1, v1, 0x1

    .line 332
    invoke-static {v1}, Landroidx/collection/internal/ContainerHelpersKt;->idealIntArraySize(I)I

    move-result v1

    iget-object v2, p0, Landroidx/collection/SparseArrayCompat;->keys:[I

    .line 333
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    const-string v3, "copyOf(this, newSize)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Landroidx/collection/SparseArrayCompat;->keys:[I

    iget-object v2, p0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    .line 334
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    :cond_3
    iget v1, p0, Landroidx/collection/SparseArrayCompat;->size:I

    sub-int v2, v1, v0

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroidx/collection/SparseArrayCompat;->keys:[I

    add-int/lit8 v3, v0, 0x1

    .line 337
    invoke-static {v2, v2, v3, v0, v1}, Lkotlin/collections/ArraysKt;->copyInto([I[IIII)[I

    iget-object v1, p0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    iget v2, p0, Landroidx/collection/SparseArrayCompat;->size:I

    .line 343
    invoke-static {v1, v1, v3, v0, v2}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    :cond_4
    iget-object v1, p0, Landroidx/collection/SparseArrayCompat;->keys:[I

    .line 350
    aput p1, v1, v0

    iget-object p1, p0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    .line 351
    aput-object p2, p1, v0

    iget p1, p0, Landroidx/collection/SparseArrayCompat;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/collection/SparseArrayCompat;->size:I

    :goto_0
    return-void
.end method

.method public putAll(Landroidx/collection/SparseArrayCompat;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/SparseArrayCompat<",
            "+TE;>;)V"
        }
    .end annotation

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 355
    invoke-virtual {p1}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    .line 356
    invoke-virtual {p1, v1}, Landroidx/collection/SparseArrayCompat;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v1}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Landroidx/collection/SparseArrayCompat;->keys:[I

    iget v5, p0, Landroidx/collection/SparseArrayCompat;->size:I

    .line 357
    invoke-static {v4, v5, v2}, Landroidx/collection/internal/ContainerHelpersKt;->binarySearch([III)I

    move-result v4

    if-ltz v4, :cond_0

    iget-object v2, p0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    .line 359
    aput-object v3, v2, v4

    goto/16 :goto_1

    :cond_0
    not-int v4, v4

    iget v5, p0, Landroidx/collection/SparseArrayCompat;->size:I

    if-ge v4, v5, :cond_1

    iget-object v5, p0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    .line 362
    aget-object v5, v5, v4

    invoke-static {}, Landroidx/collection/SparseArrayCompatKt;->access$getDELETED$p()Ljava/lang/Object;

    move-result-object v6

    if-ne v5, v6, :cond_1

    iget-object v5, p0, Landroidx/collection/SparseArrayCompat;->keys:[I

    .line 363
    aput v2, v5, v4

    iget-object v2, p0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    .line 364
    aput-object v3, v2, v4

    goto :goto_1

    :cond_1
    iget-boolean v5, p0, Landroidx/collection/SparseArrayCompat;->garbage:Z

    if-eqz v5, :cond_2

    iget v5, p0, Landroidx/collection/SparseArrayCompat;->size:I

    iget-object v6, p0, Landroidx/collection/SparseArrayCompat;->keys:[I

    .line 367
    array-length v6, v6

    if-lt v5, v6, :cond_2

    .line 368
    invoke-static {p0}, Landroidx/collection/SparseArrayCompatKt;->access$gc(Landroidx/collection/SparseArrayCompat;)V

    iget-object v4, p0, Landroidx/collection/SparseArrayCompat;->keys:[I

    iget v5, p0, Landroidx/collection/SparseArrayCompat;->size:I

    .line 371
    invoke-static {v4, v5, v2}, Landroidx/collection/internal/ContainerHelpersKt;->binarySearch([III)I

    move-result v4

    not-int v4, v4

    :cond_2
    iget v5, p0, Landroidx/collection/SparseArrayCompat;->size:I

    iget-object v6, p0, Landroidx/collection/SparseArrayCompat;->keys:[I

    .line 373
    array-length v6, v6

    if-lt v5, v6, :cond_3

    add-int/lit8 v5, v5, 0x1

    .line 374
    invoke-static {v5}, Landroidx/collection/internal/ContainerHelpersKt;->idealIntArraySize(I)I

    move-result v5

    iget-object v6, p0, Landroidx/collection/SparseArrayCompat;->keys:[I

    .line 375
    invoke-static {v6, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v6

    const-string v7, "copyOf(this, newSize)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v6, p0, Landroidx/collection/SparseArrayCompat;->keys:[I

    iget-object v6, p0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    .line 376
    invoke-static {v6, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v5, p0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    :cond_3
    iget v5, p0, Landroidx/collection/SparseArrayCompat;->size:I

    sub-int v6, v5, v4

    if-eqz v6, :cond_4

    iget-object v6, p0, Landroidx/collection/SparseArrayCompat;->keys:[I

    add-int/lit8 v7, v4, 0x1

    .line 379
    invoke-static {v6, v6, v7, v4, v5}, Lkotlin/collections/ArraysKt;->copyInto([I[IIII)[I

    iget-object v5, p0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    iget v6, p0, Landroidx/collection/SparseArrayCompat;->size:I

    .line 385
    invoke-static {v5, v5, v7, v4, v6}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    :cond_4
    iget-object v5, p0, Landroidx/collection/SparseArrayCompat;->keys:[I

    .line 392
    aput v2, v5, v4

    iget-object v2, p0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    .line 393
    aput-object v3, v2, v4

    iget v2, p0, Landroidx/collection/SparseArrayCompat;->size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroidx/collection/SparseArrayCompat;->size:I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public putIfAbsent(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 404
    invoke-static {p0, p1}, Landroidx/collection/SparseArrayCompatKt;->commonGet(Landroidx/collection/SparseArrayCompat;I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v1, p0, Landroidx/collection/SparseArrayCompat;->keys:[I

    iget v2, p0, Landroidx/collection/SparseArrayCompat;->size:I

    .line 407
    invoke-static {v1, v2, p1}, Landroidx/collection/internal/ContainerHelpersKt;->binarySearch([III)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object p0, p0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    .line 409
    aput-object p2, p0, v1

    goto/16 :goto_0

    :cond_0
    not-int v1, v1

    iget v2, p0, Landroidx/collection/SparseArrayCompat;->size:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    .line 412
    aget-object v2, v2, v1

    invoke-static {}, Landroidx/collection/SparseArrayCompatKt;->access$getDELETED$p()Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Landroidx/collection/SparseArrayCompat;->keys:[I

    .line 413
    aput p1, v2, v1

    iget-object p0, p0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    .line 414
    aput-object p2, p0, v1

    goto :goto_0

    :cond_1
    iget-boolean v2, p0, Landroidx/collection/SparseArrayCompat;->garbage:Z

    if-eqz v2, :cond_2

    iget v2, p0, Landroidx/collection/SparseArrayCompat;->size:I

    iget-object v3, p0, Landroidx/collection/SparseArrayCompat;->keys:[I

    .line 417
    array-length v3, v3

    if-lt v2, v3, :cond_2

    .line 418
    invoke-static {p0}, Landroidx/collection/SparseArrayCompatKt;->access$gc(Landroidx/collection/SparseArrayCompat;)V

    iget-object v1, p0, Landroidx/collection/SparseArrayCompat;->keys:[I

    iget v2, p0, Landroidx/collection/SparseArrayCompat;->size:I

    .line 421
    invoke-static {v1, v2, p1}, Landroidx/collection/internal/ContainerHelpersKt;->binarySearch([III)I

    move-result v1

    not-int v1, v1

    :cond_2
    iget v2, p0, Landroidx/collection/SparseArrayCompat;->size:I

    iget-object v3, p0, Landroidx/collection/SparseArrayCompat;->keys:[I

    .line 423
    array-length v3, v3

    if-lt v2, v3, :cond_3

    add-int/lit8 v2, v2, 0x1

    .line 424
    invoke-static {v2}, Landroidx/collection/internal/ContainerHelpersKt;->idealIntArraySize(I)I

    move-result v2

    iget-object v3, p0, Landroidx/collection/SparseArrayCompat;->keys:[I

    .line 425
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    const-string v4, "copyOf(this, newSize)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, p0, Landroidx/collection/SparseArrayCompat;->keys:[I

    iget-object v3, p0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    .line 426
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    :cond_3
    iget v2, p0, Landroidx/collection/SparseArrayCompat;->size:I

    sub-int v3, v2, v1

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroidx/collection/SparseArrayCompat;->keys:[I

    add-int/lit8 v4, v1, 0x1

    .line 429
    invoke-static {v3, v3, v4, v1, v2}, Lkotlin/collections/ArraysKt;->copyInto([I[IIII)[I

    iget-object v2, p0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    iget v3, p0, Landroidx/collection/SparseArrayCompat;->size:I

    .line 435
    invoke-static {v2, v2, v4, v1, v3}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    :cond_4
    iget-object v2, p0, Landroidx/collection/SparseArrayCompat;->keys:[I

    .line 442
    aput p1, v2, v1

    iget-object p1, p0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    .line 443
    aput-object p2, p1, v1

    iget p1, p0, Landroidx/collection/SparseArrayCompat;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/collection/SparseArrayCompat;->size:I

    :cond_5
    :goto_0
    return-object v0
.end method

.method public remove(I)V
    .locals 0

    .line 126
    invoke-static {p0, p1}, Landroidx/collection/SparseArrayCompatKt;->commonRemove(Landroidx/collection/SparseArrayCompat;I)V

    return-void
.end method

.method public remove(ILjava/lang/Object;)Z
    .locals 1

    .line 279
    invoke-virtual {p0, p1}, Landroidx/collection/SparseArrayCompat;->indexOfKey(I)I

    move-result p1

    if-ltz p1, :cond_0

    .line 281
    invoke-virtual {p0, p1}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 282
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 283
    invoke-virtual {p0, p1}, Landroidx/collection/SparseArrayCompat;->removeAt(I)V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public removeAt(I)V
    .locals 2

    iget-object v0, p0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    .line 288
    aget-object v0, v0, p1

    invoke-static {}, Landroidx/collection/SparseArrayCompatKt;->access$getDELETED$p()Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    .line 289
    invoke-static {}, Landroidx/collection/SparseArrayCompatKt;->access$getDELETED$p()Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, p1

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/collection/SparseArrayCompat;->garbage:Z

    :cond_0
    return-void
.end method

.method public removeAtRange(II)V
    .locals 1

    add-int v0, p1, p2

    .line 293
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    :goto_0
    if-ge p1, p2, :cond_0

    .line 295
    invoke-virtual {p0, p1}, Landroidx/collection/SparseArrayCompat;->removeAt(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public replace(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 298
    invoke-virtual {p0, p1}, Landroidx/collection/SparseArrayCompat;->indexOfKey(I)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object p0, p0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    .line 301
    aget-object v0, p0, p1

    .line 302
    aput-object p2, p0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public replace(ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;TE;)Z"
        }
    .end annotation

    .line 306
    invoke-virtual {p0, p1}, Landroidx/collection/SparseArrayCompat;->indexOfKey(I)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object v0, p0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    .line 308
    aget-object v0, v0, p1

    .line 309
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    .line 310
    aput-object p3, p0, p1

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setValueAt(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    iget-boolean v0, p0, Landroidx/collection/SparseArrayCompat;->garbage:Z

    if-eqz v0, :cond_0

    .line 466
    invoke-static {p0}, Landroidx/collection/SparseArrayCompatKt;->access$gc(Landroidx/collection/SparseArrayCompat;)V

    :cond_0
    iget-object p0, p0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    .line 468
    aput-object p2, p0, p1

    return-void
.end method

.method public size()I
    .locals 1

    iget-boolean v0, p0, Landroidx/collection/SparseArrayCompat;->garbage:Z

    if-eqz v0, :cond_0

    .line 449
    invoke-static {p0}, Landroidx/collection/SparseArrayCompatKt;->access$gc(Landroidx/collection/SparseArrayCompat;)V

    :cond_0
    iget p0, p0, Landroidx/collection/SparseArrayCompat;->size:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 519
    invoke-virtual {p0}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v0

    if-gtz v0, :cond_0

    const-string/jumbo p0, "{}"

    goto :goto_2

    .line 522
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/collection/SparseArrayCompat;->size:I

    mul-int/lit8 v1, v1, 0x1c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    .line 523
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/collection/SparseArrayCompat;->size:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    if-lez v2, :cond_1

    const-string v3, ", "

    .line 526
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    :cond_1
    invoke-virtual {p0, v2}, Landroidx/collection/SparseArrayCompat;->keyAt(I)I

    move-result v3

    .line 529
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x3d

    .line 530
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 531
    invoke-virtual {p0, v2}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, p0, :cond_2

    .line 533
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v3, "(this Map)"

    .line 535
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/16 p0, 0x7d

    .line 538
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 539
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "buffer.toString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    return-object p0
.end method

.method public valueAt(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-boolean v0, p0, Landroidx/collection/SparseArrayCompat;->garbage:Z

    if-eqz v0, :cond_0

    .line 458
    invoke-static {p0}, Landroidx/collection/SparseArrayCompatKt;->access$gc(Landroidx/collection/SparseArrayCompat;)V

    :cond_0
    iget-object p0, p0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    .line 464
    aget-object p0, p0, p1

    return-object p0
.end method
