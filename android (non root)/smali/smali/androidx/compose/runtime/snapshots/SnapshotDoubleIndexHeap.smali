.class public final Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;
.super Ljava/lang/Object;
.source "SnapshotDoubleIndexHeap.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0002\u0008\u000e\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\r\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u0004J\u0008\u0010\u000f\u001a\u00020\u0004H\u0002J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0004H\u0002J\u0010\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u0004H\u0002J\u0010\u0010\u0015\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0004J\u000e\u0010\u0017\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u0004J\u0010\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0007\u001a\u00020\u0004H\u0002J\u0010\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u0007\u001a\u00020\u0004H\u0002J\u0018\u0010\u001a\u001a\u00020\u00112\u0006\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u0004H\u0002J\u0006\u0010\u001d\u001a\u00020\u0011J\u0016\u0010\u001e\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\t\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0004@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u000e\u0010\u000c\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;",
        "",
        "()V",
        "firstFreeHandle",
        "",
        "handles",
        "",
        "index",
        "<set-?>",
        "size",
        "getSize",
        "()I",
        "values",
        "add",
        "value",
        "allocateHandle",
        "ensure",
        "",
        "atLeast",
        "freeHandle",
        "handle",
        "lowestOrDefault",
        "default",
        "remove",
        "shiftDown",
        "shiftUp",
        "swap",
        "a",
        "b",
        "validate",
        "validateHandle",
        "runtime_release"
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
.field private firstFreeHandle:I

.field private handles:[I

.field private index:[I

.field private size:I

.field private values:[I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->values:[I

    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->index:[I

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    add-int/lit8 v3, v2, 0x1

    .line 50
    aput v3, v1, v2

    move v2, v3

    goto :goto_0

    :cond_0
    iput-object v1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->handles:[I

    return-void
.end method

.method private final allocateHandle()I
    .locals 9

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->handles:[I

    .line 189
    array-length v0, v0

    iget v1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->firstFreeHandle:I

    if-lt v1, v0, :cond_1

    mul-int/lit8 v0, v0, 0x2

    .line 191
    new-array v8, v0, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    add-int/lit8 v2, v1, 0x1

    aput v2, v8, v1

    move v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->handles:[I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    move-object v2, v8

    .line 192
    invoke-static/range {v1 .. v7}, Lkotlin/collections/ArraysKt;->copyInto$default([I[IIIIILjava/lang/Object;)[I

    iput-object v8, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->handles:[I

    :cond_1
    iget v0, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->firstFreeHandle:I

    iget-object v1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->handles:[I

    .line 196
    aget v1, v1, v0

    iput v1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->firstFreeHandle:I

    return v0
.end method

.method private final ensure(I)V
    .locals 10

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->values:[I

    .line 174
    array-length v1, v0

    if-gt p1, v1, :cond_0

    return-void

    :cond_0
    mul-int/lit8 v1, v1, 0x2

    .line 177
    new-array p1, v1, [I

    .line 178
    new-array v9, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    move-object v1, p1

    .line 179
    invoke-static/range {v0 .. v6}, Lkotlin/collections/ArraysKt;->copyInto$default([I[IIIIILjava/lang/Object;)[I

    iget-object v2, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->index:[I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xe

    const/4 v8, 0x0

    move-object v3, v9

    .line 180
    invoke-static/range {v2 .. v8}, Lkotlin/collections/ArraysKt;->copyInto$default([I[IIIIILjava/lang/Object;)[I

    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->values:[I

    iput-object v9, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->index:[I

    return-void
.end method

.method private final freeHandle(I)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->handles:[I

    iget v1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->firstFreeHandle:I

    .line 205
    aput v1, v0, p1

    iput p1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->firstFreeHandle:I

    return-void
.end method

.method public static synthetic lowestOrDefault$default(Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;IILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 55
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->lowestOrDefault(I)I

    move-result p0

    return p0
.end method

.method private final shiftDown(I)V
    .locals 6

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->values:[I

    iget v1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->size:I

    shr-int/lit8 v1, v1, 0x1

    :goto_0
    if-ge p1, v1, :cond_2

    add-int/lit8 v2, p1, 0x1

    shl-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v2, -0x1

    iget v4, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->size:I

    if-ge v2, v4, :cond_1

    .line 137
    aget v4, v0, v2

    aget v5, v0, v3

    if-ge v4, v5, :cond_1

    .line 138
    aget v3, v0, p1

    if-ge v4, v3, :cond_0

    .line 139
    invoke-direct {p0, v2, p1}, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->swap(II)V

    move p1, v2

    goto :goto_0

    :cond_0
    return-void

    .line 143
    :cond_1
    aget v2, v0, v3

    aget v4, v0, p1

    if-ge v2, v4, :cond_2

    .line 144
    invoke-direct {p0, v3, p1}, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->swap(II)V

    move p1, v3

    goto :goto_0

    :cond_2
    return-void
.end method

.method private final shiftUp(I)V
    .locals 4

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->values:[I

    .line 113
    aget v1, v0, p1

    :goto_0
    if-lez p1, :cond_0

    add-int/lit8 v2, p1, 0x1

    shr-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, -0x1

    .line 117
    aget v3, v0, v2

    if-le v3, v1, :cond_0

    .line 118
    invoke-direct {p0, v2, p1}, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->swap(II)V

    move p1, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final swap(II)V
    .locals 4

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->values:[I

    iget-object v1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->index:[I

    iget-object p0, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->handles:[I

    .line 160
    aget v2, v0, p1

    .line 161
    aget v3, v0, p2

    aput v3, v0, p1

    .line 162
    aput v2, v0, p2

    .line 163
    aget v0, v1, p1

    .line 164
    aget v2, v1, p2

    aput v2, v1, p1

    .line 165
    aput v0, v1, p2

    .line 166
    aget v0, v1, p1

    aput p1, p0, v0

    .line 167
    aget p1, v1, p2

    aput p2, p0, p1

    return-void
.end method


# virtual methods
.method public final add(I)I
    .locals 3

    iget v0, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->size:I

    add-int/lit8 v0, v0, 0x1

    .line 62
    invoke-direct {p0, v0}, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->ensure(I)V

    iget v0, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->size:I

    .line 64
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->allocateHandle()I

    move-result v1

    iget-object v2, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->values:[I

    .line 65
    aput p1, v2, v0

    iget-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->index:[I

    .line 66
    aput v1, p1, v0

    iget-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->handles:[I

    .line 67
    aput v0, p1, v1

    .line 68
    invoke-direct {p0, v0}, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->shiftUp(I)V

    return v1
.end method

.method public final getSize()I
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->size:I

    return p0
.end method

.method public final lowestOrDefault(I)I
    .locals 1

    iget v0, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->size:I

    if-lez v0, :cond_0

    iget-object p0, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->values:[I

    const/4 p1, 0x0

    .line 55
    aget p1, p0, p1

    :cond_0
    return p1
.end method

.method public final remove(I)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->handles:[I

    .line 78
    aget v0, v0, p1

    iget v1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->size:I

    add-int/lit8 v1, v1, -0x1

    .line 79
    invoke-direct {p0, v0, v1}, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->swap(II)V

    iget v1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->size:I

    .line 81
    invoke-direct {p0, v0}, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->shiftUp(I)V

    .line 82
    invoke-direct {p0, v0}, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->shiftDown(I)V

    .line 83
    invoke-direct {p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->freeHandle(I)V

    return-void
.end method

.method public final validate()V
    .locals 6

    iget v0, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->size:I

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    add-int/lit8 v3, v2, 0x1

    shr-int/lit8 v4, v3, 0x1

    sub-int/2addr v4, v1

    iget-object v5, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->values:[I

    .line 93
    aget v4, v5, v4

    aget v5, v5, v2

    if-gt v4, v5, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Index "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is out of place"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method

.method public final validateHandle(II)V
    .locals 4

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->handles:[I

    .line 102
    aget v0, v0, p1

    iget-object v1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->index:[I

    .line 103
    aget v1, v1, v0

    if-ne v1, p1, :cond_1

    iget-object v1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->values:[I

    .line 104
    aget v1, v1, v0

    if-ne v1, p2, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Value for handle "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " was "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->values:[I

    aget p0, p0, v0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " but was supposed to be "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 103
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Index for handle "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " is corrupted"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
