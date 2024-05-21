.class final Landroidx/compose/runtime/SlotTableGroup;
.super Ljava/lang/Object;
.source "SlotTable.kt"

# interfaces
.implements Landroidx/compose/runtime/tooling/CompositionGroup;
.implements Ljava/lang/Iterable;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/compose/runtime/tooling/CompositionGroup;",
        "Ljava/lang/Iterable<",
        "Landroidx/compose/runtime/tooling/CompositionGroup;",
        ">;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSlotTable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SlotTable.kt\nandroidx/compose/runtime/SlotTableGroup\n+ 2 SlotTable.kt\nandroidx/compose/runtime/SlotTable\n*L\n1#1,3471:1\n146#2,8:3472\n*S KotlinDebug\n*F\n+ 1 SlotTable.kt\nandroidx/compose/runtime/SlotTableGroup\n*L\n3044#1:3472,8\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u001c\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u0000\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010(\n\u0000\n\u0002\u0010\u0002\n\u0000\u0008\u0002\u0018\u00002\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00010\u0002B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0008J\u0012\u0010&\u001a\u0004\u0018\u00010\u00012\u0006\u0010\'\u001a\u00020\rH\u0016J\u000f\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u00010)H\u0096\u0002J\u0008\u0010*\u001a\u00020+H\u0002R\u001a\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00028VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u001c\u0010\u000c\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\u00028VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0011\u001a\u00020\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0010R\u0014\u0010\u0013\u001a\u00020\r8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0016\u001a\u00020\u00178VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0018R\u0014\u0010\u0019\u001a\u00020\r8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u0015R\u0016\u0010\u001b\u001a\u0004\u0018\u00010\r8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u0015R\u0014\u0010\u001d\u001a\u00020\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u0010R\u0016\u0010\u001f\u001a\u0004\u0018\u00010 8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\"R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010$R\u0011\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010\u0010\u00a8\u0006,"
    }
    d2 = {
        "Landroidx/compose/runtime/SlotTableGroup;",
        "Landroidx/compose/runtime/tooling/CompositionGroup;",
        "",
        "table",
        "Landroidx/compose/runtime/SlotTable;",
        "group",
        "",
        "version",
        "(Landroidx/compose/runtime/SlotTable;II)V",
        "compositionGroups",
        "getCompositionGroups",
        "()Ljava/lang/Iterable;",
        "data",
        "",
        "getData",
        "getGroup",
        "()I",
        "groupSize",
        "getGroupSize",
        "identity",
        "getIdentity",
        "()Ljava/lang/Object;",
        "isEmpty",
        "",
        "()Z",
        "key",
        "getKey",
        "node",
        "getNode",
        "slotsSize",
        "getSlotsSize",
        "sourceInfo",
        "",
        "getSourceInfo",
        "()Ljava/lang/String;",
        "getTable",
        "()Landroidx/compose/runtime/SlotTable;",
        "getVersion",
        "find",
        "identityToFind",
        "iterator",
        "",
        "validateRead",
        "",
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
.field private final group:I

.field private final table:Landroidx/compose/runtime/SlotTable;

.field private final version:I


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/SlotTable;II)V
    .locals 1

    const-string/jumbo v0, "table"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3017
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/SlotTableGroup;->table:Landroidx/compose/runtime/SlotTable;

    iput p2, p0, Landroidx/compose/runtime/SlotTableGroup;->group:I

    iput p3, p0, Landroidx/compose/runtime/SlotTableGroup;->version:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/runtime/SlotTable;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 3020
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotTable;->getVersion$runtime_release()I

    move-result p3

    .line 3017
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/runtime/SlotTableGroup;-><init>(Landroidx/compose/runtime/SlotTable;II)V

    return-void
.end method

.method private final validateRead()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/SlotTableGroup;->table:Landroidx/compose/runtime/SlotTable;

    .line 3069
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->getVersion$runtime_release()I

    move-result v0

    iget p0, p0, Landroidx/compose/runtime/SlotTableGroup;->version:I

    if-ne v0, p0, :cond_0

    return-void

    .line 3070
    :cond_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method


# virtual methods
.method public find(Ljava/lang/Object;)Landroidx/compose/runtime/tooling/CompositionGroup;
    .locals 4

    const-string v0, "identityToFind"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3075
    instance-of v0, p1, Landroidx/compose/runtime/Anchor;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/compose/runtime/Anchor;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroidx/compose/runtime/SlotTableGroup;->table:Landroidx/compose/runtime/SlotTable;

    .line 3076
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SlotTable;->ownsAnchor(Landroidx/compose/runtime/Anchor;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/compose/runtime/SlotTableGroup;->table:Landroidx/compose/runtime/SlotTable;

    .line 3077
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SlotTable;->anchorIndex(Landroidx/compose/runtime/Anchor;)I

    move-result p1

    iget v0, p0, Landroidx/compose/runtime/SlotTableGroup;->group:I

    if-lt p1, v0, :cond_1

    sub-int v0, p1, v0

    iget-object v2, p0, Landroidx/compose/runtime/SlotTableGroup;->table:Landroidx/compose/runtime/SlotTable;

    .line 3078
    invoke-virtual {v2}, Landroidx/compose/runtime/SlotTable;->getGroups()[I

    move-result-object v2

    iget v3, p0, Landroidx/compose/runtime/SlotTableGroup;->group:I

    invoke-static {v2, v3}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 3079
    new-instance v0, Landroidx/compose/runtime/SlotTableGroup;

    iget-object v1, p0, Landroidx/compose/runtime/SlotTableGroup;->table:Landroidx/compose/runtime/SlotTable;

    iget p0, p0, Landroidx/compose/runtime/SlotTableGroup;->version:I

    invoke-direct {v0, v1, p1, p0}, Landroidx/compose/runtime/SlotTableGroup;-><init>(Landroidx/compose/runtime/SlotTable;II)V

    move-object v1, v0

    .line 3075
    :cond_1
    check-cast v1, Landroidx/compose/runtime/tooling/CompositionGroup;

    return-object v1
.end method

.method public getCompositionGroups()Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Landroidx/compose/runtime/tooling/CompositionGroup;",
            ">;"
        }
    .end annotation

    .line 3047
    check-cast p0, Ljava/lang/Iterable;

    return-object p0
.end method

.method public getData()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 3039
    new-instance v0, Landroidx/compose/runtime/DataIterator;

    iget-object v1, p0, Landroidx/compose/runtime/SlotTableGroup;->table:Landroidx/compose/runtime/SlotTable;

    iget p0, p0, Landroidx/compose/runtime/SlotTableGroup;->group:I

    invoke-direct {v0, v1, p0}, Landroidx/compose/runtime/DataIterator;-><init>(Landroidx/compose/runtime/SlotTable;I)V

    check-cast v0, Ljava/lang/Iterable;

    return-object v0
.end method

.method public final getGroup()I
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/SlotTableGroup;->group:I

    return p0
.end method

.method public getGroupSize()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/SlotTableGroup;->table:Landroidx/compose/runtime/SlotTable;

    .line 3058
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->getGroups()[I

    move-result-object v0

    iget p0, p0, Landroidx/compose/runtime/SlotTableGroup;->group:I

    invoke-static {v0, p0}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    move-result p0

    return p0
.end method

.method public getIdentity()Ljava/lang/Object;
    .locals 1

    .line 3043
    invoke-direct {p0}, Landroidx/compose/runtime/SlotTableGroup;->validateRead()V

    iget-object v0, p0, Landroidx/compose/runtime/SlotTableGroup;->table:Landroidx/compose/runtime/SlotTable;

    .line 3472
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->openReader()Landroidx/compose/runtime/SlotReader;

    move-result-object v0

    :try_start_0
    iget p0, p0, Landroidx/compose/runtime/SlotTableGroup;->group:I

    .line 3044
    invoke-virtual {v0, p0}, Landroidx/compose/runtime/SlotReader;->anchor(I)Landroidx/compose/runtime/Anchor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3477
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->close()V

    throw p0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/SlotTableGroup;->table:Landroidx/compose/runtime/SlotTable;

    .line 3025
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->getGroups()[I

    move-result-object v0

    iget v1, p0, Landroidx/compose/runtime/SlotTableGroup;->group:I

    invoke-static {v0, v1}, Landroidx/compose/runtime/SlotTableKt;->access$hasObjectKey([II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/SlotTableGroup;->table:Landroidx/compose/runtime/SlotTable;

    .line 3026
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->getSlots()[Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/runtime/SlotTableGroup;->table:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v1}, Landroidx/compose/runtime/SlotTable;->getGroups()[I

    move-result-object v1

    iget p0, p0, Landroidx/compose/runtime/SlotTableGroup;->group:I

    invoke-static {v1, p0}, Landroidx/compose/runtime/SlotTableKt;->access$objectKeyIndex([II)I

    move-result p0

    aget-object p0, v0, p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/SlotTableGroup;->table:Landroidx/compose/runtime/SlotTable;

    .line 3027
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->getGroups()[I

    move-result-object v0

    iget p0, p0, Landroidx/compose/runtime/SlotTableGroup;->group:I

    invoke-static {v0, p0}, Landroidx/compose/runtime/SlotTableKt;->access$key([II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getNode()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/SlotTableGroup;->table:Landroidx/compose/runtime/SlotTable;

    .line 3035
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->getGroups()[I

    move-result-object v0

    iget v1, p0, Landroidx/compose/runtime/SlotTableGroup;->group:I

    invoke-static {v0, v1}, Landroidx/compose/runtime/SlotTableKt;->access$isNode([II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/SlotTableGroup;->table:Landroidx/compose/runtime/SlotTable;

    .line 3036
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->getSlots()[Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/runtime/SlotTableGroup;->table:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v1}, Landroidx/compose/runtime/SlotTable;->getGroups()[I

    move-result-object v1

    iget p0, p0, Landroidx/compose/runtime/SlotTableGroup;->group:I

    invoke-static {v1, p0}, Landroidx/compose/runtime/SlotTableKt;->access$nodeIndex([II)I

    move-result p0

    aget-object p0, v0, p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getSlotsSize()I
    .locals 2

    iget v0, p0, Landroidx/compose/runtime/SlotTableGroup;->group:I

    .line 3062
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotTableGroup;->getGroupSize()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroidx/compose/runtime/SlotTableGroup;->table:Landroidx/compose/runtime/SlotTable;

    .line 3063
    invoke-virtual {v1}, Landroidx/compose/runtime/SlotTable;->getGroupsSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/compose/runtime/SlotTableGroup;->table:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v1}, Landroidx/compose/runtime/SlotTable;->getGroups()[I

    move-result-object v1

    invoke-static {v1, v0}, Landroidx/compose/runtime/SlotTableKt;->access$dataAnchor([II)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/SlotTableGroup;->table:Landroidx/compose/runtime/SlotTable;

    .line 3064
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->getSlotsSize()I

    move-result v0

    :goto_0
    iget-object v1, p0, Landroidx/compose/runtime/SlotTableGroup;->table:Landroidx/compose/runtime/SlotTable;

    .line 3065
    invoke-virtual {v1}, Landroidx/compose/runtime/SlotTable;->getGroups()[I

    move-result-object v1

    iget p0, p0, Landroidx/compose/runtime/SlotTableGroup;->group:I

    invoke-static {v1, p0}, Landroidx/compose/runtime/SlotTableKt;->access$dataAnchor([II)I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public getSourceInfo()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Landroidx/compose/runtime/SlotTableGroup;->table:Landroidx/compose/runtime/SlotTable;

    .line 3030
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->getGroups()[I

    move-result-object v0

    iget v1, p0, Landroidx/compose/runtime/SlotTableGroup;->group:I

    invoke-static {v0, v1}, Landroidx/compose/runtime/SlotTableKt;->access$hasAux([II)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/SlotTableGroup;->table:Landroidx/compose/runtime/SlotTable;

    .line 3031
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->getSlots()[Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Landroidx/compose/runtime/SlotTableGroup;->table:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v2}, Landroidx/compose/runtime/SlotTable;->getGroups()[I

    move-result-object v2

    iget p0, p0, Landroidx/compose/runtime/SlotTableGroup;->group:I

    invoke-static {v2, p0}, Landroidx/compose/runtime/SlotTableKt;->access$auxIndex([II)I

    move-result p0

    aget-object p0, v0, p0

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    :cond_0
    return-object v1
.end method

.method public final getTable()Landroidx/compose/runtime/SlotTable;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/SlotTableGroup;->table:Landroidx/compose/runtime/SlotTable;

    return-object p0
.end method

.method public final getVersion()I
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/SlotTableGroup;->version:I

    return p0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/SlotTableGroup;->table:Landroidx/compose/runtime/SlotTable;

    .line 3022
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->getGroups()[I

    move-result-object v0

    iget p0, p0, Landroidx/compose/runtime/SlotTableGroup;->group:I

    invoke-static {v0, p0}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Landroidx/compose/runtime/tooling/CompositionGroup;",
            ">;"
        }
    .end annotation

    .line 3050
    invoke-direct {p0}, Landroidx/compose/runtime/SlotTableGroup;->validateRead()V

    .line 3051
    new-instance v0, Landroidx/compose/runtime/GroupIterator;

    iget-object v1, p0, Landroidx/compose/runtime/SlotTableGroup;->table:Landroidx/compose/runtime/SlotTable;

    iget v2, p0, Landroidx/compose/runtime/SlotTableGroup;->group:I

    add-int/lit8 v3, v2, 0x1

    .line 3054
    invoke-virtual {v1}, Landroidx/compose/runtime/SlotTable;->getGroups()[I

    move-result-object v4

    iget p0, p0, Landroidx/compose/runtime/SlotTableGroup;->group:I

    invoke-static {v4, p0}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    move-result p0

    add-int/2addr v2, p0

    .line 3051
    invoke-direct {v0, v1, v3, v2}, Landroidx/compose/runtime/GroupIterator;-><init>(Landroidx/compose/runtime/SlotTable;II)V

    check-cast v0, Ljava/util/Iterator;

    return-object v0
.end method
