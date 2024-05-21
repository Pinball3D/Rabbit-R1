.class public abstract Landroidx/collection/IndexBasedArrayIterator;
.super Ljava/lang/Object;
.source "IndexBasedArrayIterator.kt"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMutableIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;",
        "Lkotlin/jvm/internal/markers/KMutableIterator;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIndexBasedArrayIterator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IndexBasedArrayIterator.kt\nandroidx/collection/IndexBasedArrayIterator\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,48:1\n1#2:49\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010)\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008 \u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0015\u0010\n\u001a\u00028\u00002\u0006\u0010\u0008\u001a\u00020\u0004H$\u00a2\u0006\u0002\u0010\u000bJ\t\u0010\u000c\u001a\u00020\u0007H\u0096\u0002J\u000e\u0010\r\u001a\u00028\u0000H\u0096\u0002\u00a2\u0006\u0002\u0010\u000eJ\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J\u0010\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0008\u001a\u00020\u0004H$R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Landroidx/collection/IndexBasedArrayIterator;",
        "T",
        "",
        "startingSize",
        "",
        "(I)V",
        "canRemove",
        "",
        "index",
        "size",
        "elementAt",
        "(I)Ljava/lang/Object;",
        "hasNext",
        "next",
        "()Ljava/lang/Object;",
        "remove",
        "",
        "removeAt",
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
.field private canRemove:Z

.field private index:I

.field private size:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/collection/IndexBasedArrayIterator;->size:I

    return-void
.end method


# virtual methods
.method protected abstract elementAt(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

.method public hasNext()Z
    .locals 1

    iget v0, p0, Landroidx/collection/IndexBasedArrayIterator;->index:I

    iget p0, p0, Landroidx/collection/IndexBasedArrayIterator;->size:I

    if-ge v0, p0, :cond_0

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

    .line 30
    invoke-virtual {p0}, Landroidx/collection/IndexBasedArrayIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/collection/IndexBasedArrayIterator;->index:I

    .line 34
    invoke-virtual {p0, v0}, Landroidx/collection/IndexBasedArrayIterator;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Landroidx/collection/IndexBasedArrayIterator;->index:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Landroidx/collection/IndexBasedArrayIterator;->index:I

    iput-boolean v2, p0, Landroidx/collection/IndexBasedArrayIterator;->canRemove:Z

    return-object v0

    .line 31
    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public remove()V
    .locals 1

    iget-boolean v0, p0, Landroidx/collection/IndexBasedArrayIterator;->canRemove:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/collection/IndexBasedArrayIterator;->index:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/collection/IndexBasedArrayIterator;->index:I

    .line 43
    invoke-virtual {p0, v0}, Landroidx/collection/IndexBasedArrayIterator;->removeAt(I)V

    iget v0, p0, Landroidx/collection/IndexBasedArrayIterator;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/collection/IndexBasedArrayIterator;->size:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/collection/IndexBasedArrayIterator;->canRemove:Z

    return-void

    .line 41
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Call next() before removing an element."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected abstract removeAt(I)V
.end method
