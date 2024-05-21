.class final Landroidx/compose/runtime/DataIterator;
.super Ljava/lang/Object;
.source "SlotTable.kt"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/util/Iterator<",
        "Ljava/lang/Object;",
        ">;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSlotTable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SlotTable.kt\nandroidx/compose/runtime/DataIterator\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,3471:1\n1#2:3472\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u001c\n\u0002\u0010\u0000\n\u0002\u0010(\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000e\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u0002\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0003B\u0015\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u0015\u001a\u00020\u0016H\u0096\u0002J\u0011\u0010\u0017\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0003H\u0096\u0002J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0002H\u0096\u0002R\u0011\u0010\t\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u000bR\u001a\u0010\r\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000b\"\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0011\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0019"
    }
    d2 = {
        "Landroidx/compose/runtime/DataIterator;",
        "",
        "",
        "",
        "table",
        "Landroidx/compose/runtime/SlotTable;",
        "group",
        "",
        "(Landroidx/compose/runtime/SlotTable;I)V",
        "end",
        "getEnd",
        "()I",
        "getGroup",
        "index",
        "getIndex",
        "setIndex",
        "(I)V",
        "start",
        "getStart",
        "getTable",
        "()Landroidx/compose/runtime/SlotTable;",
        "hasNext",
        "",
        "iterator",
        "next",
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
.field private final end:I

.field private final group:I

.field private index:I

.field private final start:I

.field private final table:Landroidx/compose/runtime/SlotTable;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/SlotTable;I)V
    .locals 3

    const-string/jumbo v0, "table"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/DataIterator;->table:Landroidx/compose/runtime/SlotTable;

    iput p2, p0, Landroidx/compose/runtime/DataIterator;->group:I

    .line 3118
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotTable;->getGroups()[I

    move-result-object v0

    invoke-static {v0, p2}, Landroidx/compose/runtime/SlotTableKt;->access$dataAnchor([II)I

    move-result v0

    iput v0, p0, Landroidx/compose/runtime/DataIterator;->start:I

    add-int/lit8 v1, p2, 0x1

    .line 3119
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotTable;->getGroupsSize()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3120
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotTable;->getGroups()[I

    move-result-object p1

    add-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Landroidx/compose/runtime/SlotTableKt;->access$dataAnchor([II)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotTable;->getSlotsSize()I

    move-result p1

    :goto_0
    iput p1, p0, Landroidx/compose/runtime/DataIterator;->end:I

    iput v0, p0, Landroidx/compose/runtime/DataIterator;->index:I

    return-void
.end method


# virtual methods
.method public final getEnd()I
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/DataIterator;->end:I

    return p0
.end method

.method public final getGroup()I
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/DataIterator;->group:I

    return p0
.end method

.method public final getIndex()I
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/DataIterator;->index:I

    return p0
.end method

.method public final getStart()I
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/DataIterator;->start:I

    return p0
.end method

.method public final getTable()Landroidx/compose/runtime/SlotTable;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/DataIterator;->table:Landroidx/compose/runtime/SlotTable;

    return-object p0
.end method

.method public hasNext()Z
    .locals 1

    iget v0, p0, Landroidx/compose/runtime/DataIterator;->index:I

    iget p0, p0, Landroidx/compose/runtime/DataIterator;->end:I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 3122
    check-cast p0, Ljava/util/Iterator;

    return-object p0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Landroidx/compose/runtime/DataIterator;->index:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Landroidx/compose/runtime/DataIterator;->table:Landroidx/compose/runtime/SlotTable;

    .line 3125
    invoke-virtual {v1}, Landroidx/compose/runtime/SlotTable;->getSlots()[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/DataIterator;->table:Landroidx/compose/runtime/SlotTable;

    .line 3126
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->getSlots()[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Landroidx/compose/runtime/DataIterator;->index:I

    aget-object v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroidx/compose/runtime/DataIterator;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/compose/runtime/DataIterator;->index:I

    return-object v0
.end method

.method public remove()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setIndex(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/runtime/DataIterator;->index:I

    return-void
.end method
