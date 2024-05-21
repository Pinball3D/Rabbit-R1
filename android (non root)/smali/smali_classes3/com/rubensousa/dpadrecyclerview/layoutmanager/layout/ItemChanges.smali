.class public final Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemChanges;
.super Ljava/lang/Object;
.source "ItemChanges.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0017\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J(\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u0004H\u0002J\u0016\u0010!\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u0004J(\u0010\"\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u0004H\u0002J\u0006\u0010#\u001a\u00020\u001cJ\u0006\u0010$\u001a\u00020%J\u0008\u0010&\u001a\u00020\'H\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001a\u0010\u000c\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u0006\"\u0004\u0008\u000e\u0010\u0008R\u001a\u0010\u000f\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0006\"\u0004\u0008\u0011\u0010\u0008R\u001a\u0010\u0012\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0006\"\u0004\u0008\u0014\u0010\u0008R\u001a\u0010\u0015\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0006\"\u0004\u0008\u0017\u0010\u0008R\u001a\u0010\u0018\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u0006\"\u0004\u0008\u001a\u0010\u0008\u00a8\u0006("
    }
    d2 = {
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemChanges;",
        "",
        "()V",
        "insertionItemCount",
        "",
        "getInsertionItemCount",
        "()I",
        "setInsertionItemCount",
        "(I)V",
        "insertionPosition",
        "getInsertionPosition",
        "setInsertionPosition",
        "moveFromPosition",
        "getMoveFromPosition",
        "setMoveFromPosition",
        "moveItemCount",
        "getMoveItemCount",
        "setMoveItemCount",
        "moveToPosition",
        "getMoveToPosition",
        "setMoveToPosition",
        "removalItemCount",
        "getRemovalItemCount",
        "setRemovalItemCount",
        "removalPosition",
        "getRemovalPosition",
        "setRemovalPosition",
        "isInsertionOutOfBounds",
        "",
        "positionStart",
        "itemCount",
        "firstPos",
        "lastPos",
        "isOutOfBounds",
        "isRangeOutOfBounds",
        "isValid",
        "reset",
        "",
        "toString",
        "",
        "dpadrecyclerview_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private insertionItemCount:I

.field private insertionPosition:I

.field private moveFromPosition:I

.field private moveItemCount:I

.field private moveToPosition:I

.field private removalItemCount:I

.field private removalPosition:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemChanges;->insertionPosition:I

    iput v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemChanges;->removalPosition:I

    iput v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemChanges;->moveFromPosition:I

    iput v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemChanges;->moveToPosition:I

    return-void
.end method

.method private final isInsertionOutOfBounds(IIII)Z
    .locals 1

    add-int/lit8 p0, p3, -0x1

    const/4 v0, 0x0

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    add-int/lit8 p0, p4, 0x1

    if-ne p1, p0, :cond_1

    return v0

    :cond_1
    add-int/2addr p2, p1

    if-lt p2, p3, :cond_2

    if-le p1, p4, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method private final isRangeOutOfBounds(IIII)Z
    .locals 0

    add-int/2addr p2, p1

    if-lt p2, p3, :cond_1

    if-le p1, p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public final getInsertionItemCount()I
    .locals 0

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemChanges;->insertionItemCount:I

    return p0
.end method

.method public final getInsertionPosition()I
    .locals 0

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemChanges;->insertionPosition:I

    return p0
.end method

.method public final getMoveFromPosition()I
    .locals 0

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemChanges;->moveFromPosition:I

    return p0
.end method

.method public final getMoveItemCount()I
    .locals 0

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemChanges;->moveItemCount:I

    return p0
.end method

.method public final getMoveToPosition()I
    .locals 0

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemChanges;->moveToPosition:I

    return p0
.end method

.method public final getRemovalItemCount()I
    .locals 0

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemChanges;->removalItemCount:I

    return p0
.end method

.method public final getRemovalPosition()I
    .locals 0

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemChanges;->removalPosition:I

    return p0
.end method

.method public final isOutOfBounds(II)Z
    .locals 4

    iget v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemChanges;->insertionPosition:I

    iget v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemChanges;->insertionItemCount:I

    .line 41
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemChanges;->isInsertionOutOfBounds(IIII)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemChanges;->removalPosition:I

    iget v2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemChanges;->removalItemCount:I

    .line 44
    invoke-direct {p0, v0, v2, p1, p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemChanges;->isRangeOutOfBounds(IIII)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemChanges;->moveFromPosition:I

    iget v2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemChanges;->moveItemCount:I

    .line 47
    invoke-direct {p0, v0, v2, p1, p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemChanges;->isRangeOutOfBounds(IIII)Z

    move-result v0

    iget v2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemChanges;->moveToPosition:I

    iget v3, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemChanges;->moveItemCount:I

    .line 50
    invoke-direct {p0, v2, v3, p1, p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemChanges;->isRangeOutOfBounds(IIII)Z

    move-result p0

    if-nez v0, :cond_2

    if-nez p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public final isValid()Z
    .locals 6

    iget v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemChanges;->insertionPosition:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemChanges;->insertionItemCount:I

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget v4, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemChanges;->removalPosition:I

    if-eq v4, v3, :cond_1

    if-lez v4, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    iget v5, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemChanges;->moveFromPosition:I

    if-eq v5, v3, :cond_2

    iget v5, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemChanges;->moveToPosition:I

    if-eq v5, v3, :cond_2

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemChanges;->moveItemCount:I

    if-lez p0, :cond_2

    move p0, v1

    goto :goto_2

    :cond_2
    move p0, v2

    :goto_2
    if-nez v0, :cond_4

    if-nez v4, :cond_4

    if-eqz p0, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :cond_4
    :goto_3
    return v1
.end method

.method public final reset()V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemChanges;->insertionPosition:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemChanges;->insertionItemCount:I

    iput v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemChanges;->removalPosition:I

    iput v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemChanges;->removalItemCount:I

    iput v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemChanges;->moveFromPosition:I

    iput v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemChanges;->moveToPosition:I

    iput v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemChanges;->moveItemCount:I

    return-void
.end method

.method public final setInsertionItemCount(I)V
    .locals 0

    iput p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemChanges;->insertionItemCount:I

    return-void
.end method

.method public final setInsertionPosition(I)V
    .locals 0

    iput p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemChanges;->insertionPosition:I

    return-void
.end method

.method public final setMoveFromPosition(I)V
    .locals 0

    iput p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemChanges;->moveFromPosition:I

    return-void
.end method

.method public final setMoveItemCount(I)V
    .locals 0

    iput p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemChanges;->moveItemCount:I

    return-void
.end method

.method public final setMoveToPosition(I)V
    .locals 0

    iput p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemChanges;->moveToPosition:I

    return-void
.end method

.method public final setRemovalItemCount(I)V
    .locals 0

    iput p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemChanges;->removalItemCount:I

    return-void
.end method

.method public final setRemovalPosition(I)V
    .locals 0

    iput p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemChanges;->removalPosition:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ItemChanges(insertionPosition="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemChanges;->insertionPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", insertionItemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemChanges;->insertionItemCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", removalPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemChanges;->removalPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", removalItemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemChanges;->removalItemCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", moveFromPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemChanges;->moveFromPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", moveToPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemChanges;->moveToPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", moveItemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemChanges;->moveItemCount:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
