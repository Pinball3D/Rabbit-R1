.class final Landroidx/compose/runtime/collection/MutableVector$VectorListIterator;
.super Ljava/lang/Object;
.source "MutableVector.kt"

# interfaces
.implements Ljava/util/ListIterator;
.implements Lkotlin/jvm/internal/markers/KMutableListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/collection/MutableVector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "VectorListIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator<",
        "TT;>;",
        "Lkotlin/jvm/internal/markers/KMutableListIterator;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010+\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\t\u0008\u0002\u0018\u0000*\u0004\u0008\u0001\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\u001b\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0015\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00028\u0001H\u0016\u00a2\u0006\u0002\u0010\u000bJ\t\u0010\u000c\u001a\u00020\rH\u0096\u0002J\u0008\u0010\u000e\u001a\u00020\rH\u0016J\u000e\u0010\u000f\u001a\u00028\u0001H\u0096\u0002\u00a2\u0006\u0002\u0010\u0010J\u0008\u0010\u0011\u001a\u00020\u0006H\u0016J\r\u0010\u0012\u001a\u00028\u0001H\u0016\u00a2\u0006\u0002\u0010\u0010J\u0008\u0010\u0013\u001a\u00020\u0006H\u0016J\u0008\u0010\u0014\u001a\u00020\tH\u0016J\u0015\u0010\u0015\u001a\u00020\t2\u0006\u0010\n\u001a\u00028\u0001H\u0016\u00a2\u0006\u0002\u0010\u000bR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Landroidx/compose/runtime/collection/MutableVector$VectorListIterator;",
        "T",
        "",
        "list",
        "",
        "index",
        "",
        "(Ljava/util/List;I)V",
        "add",
        "",
        "element",
        "(Ljava/lang/Object;)V",
        "hasNext",
        "",
        "hasPrevious",
        "next",
        "()Ljava/lang/Object;",
        "nextIndex",
        "previous",
        "previousIndex",
        "remove",
        "set",
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
.field private index:I

.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;I)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 883
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/collection/MutableVector$VectorListIterator;->list:Ljava/util/List;

    iput p2, p0, Landroidx/compose/runtime/collection/MutableVector$VectorListIterator;->index:I

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/runtime/collection/MutableVector$VectorListIterator;->list:Ljava/util/List;

    iget v1, p0, Landroidx/compose/runtime/collection/MutableVector$VectorListIterator;->index:I

    .line 919
    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget p1, p0, Landroidx/compose/runtime/collection/MutableVector$VectorListIterator;->index:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/compose/runtime/collection/MutableVector$VectorListIterator;->index:I

    return-void
.end method

.method public hasNext()Z
    .locals 1

    iget v0, p0, Landroidx/compose/runtime/collection/MutableVector$VectorListIterator;->index:I

    iget-object p0, p0, Landroidx/compose/runtime/collection/MutableVector$VectorListIterator;->list:Ljava/util/List;

    .line 889
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasPrevious()Z
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/collection/MutableVector$VectorListIterator;->index:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/runtime/collection/MutableVector$VectorListIterator;->list:Ljava/util/List;

    iget v1, p0, Landroidx/compose/runtime/collection/MutableVector$VectorListIterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/compose/runtime/collection/MutableVector$VectorListIterator;->index:I

    .line 893
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public nextIndex()I
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/collection/MutableVector$VectorListIterator;->index:I

    return p0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget v0, p0, Landroidx/compose/runtime/collection/MutableVector$VectorListIterator;->index:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/compose/runtime/collection/MutableVector$VectorListIterator;->index:I

    iget-object p0, p0, Landroidx/compose/runtime/collection/MutableVector$VectorListIterator;->list:Ljava/util/List;

    .line 911
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public previousIndex()I
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/collection/MutableVector$VectorListIterator;->index:I

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public remove()V
    .locals 1

    iget v0, p0, Landroidx/compose/runtime/collection/MutableVector$VectorListIterator;->index:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/compose/runtime/collection/MutableVector$VectorListIterator;->index:I

    iget-object p0, p0, Landroidx/compose/runtime/collection/MutableVector$VectorListIterator;->list:Ljava/util/List;

    .line 898
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/runtime/collection/MutableVector$VectorListIterator;->list:Ljava/util/List;

    iget p0, p0, Landroidx/compose/runtime/collection/MutableVector$VectorListIterator;->index:I

    .line 924
    invoke-interface {v0, p0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
