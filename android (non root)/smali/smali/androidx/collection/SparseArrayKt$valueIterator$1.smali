.class public final Landroidx/collection/SparseArrayKt$valueIterator$1;
.super Ljava/lang/Object;
.source "SparseArray.kt"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/collection/SparseArrayKt;->valueIterator(Landroidx/collection/SparseArrayCompat;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0010(\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J\t\u0010\u0008\u001a\u00020\tH\u0096\u0002J\u000e\u0010\n\u001a\u00028\u0000H\u0096\u0002\u00a2\u0006\u0002\u0010\u000bR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0004\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000c"
    }
    d2 = {
        "androidx/collection/SparseArrayKt$valueIterator$1",
        "",
        "index",
        "",
        "getIndex",
        "()I",
        "setIndex",
        "(I)V",
        "hasNext",
        "",
        "next",
        "()Ljava/lang/Object;",
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
.field final synthetic $this_valueIterator:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "TT;>;"
        }
    .end annotation
.end field

.field private index:I


# direct methods
.method constructor <init>(Landroidx/collection/SparseArrayCompat;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/SparseArrayCompat<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/collection/SparseArrayKt$valueIterator$1;->$this_valueIterator:Landroidx/collection/SparseArrayCompat;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getIndex()I
    .locals 0

    iget p0, p0, Landroidx/collection/SparseArrayKt$valueIterator$1;->index:I

    return p0
.end method

.method public hasNext()Z
    .locals 1

    iget v0, p0, Landroidx/collection/SparseArrayKt$valueIterator$1;->index:I

    iget-object p0, p0, Landroidx/collection/SparseArrayKt$valueIterator$1;->$this_valueIterator:Landroidx/collection/SparseArrayCompat;

    .line 77
    invoke-virtual {p0}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result p0

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

    iget-object v0, p0, Landroidx/collection/SparseArrayKt$valueIterator$1;->$this_valueIterator:Landroidx/collection/SparseArrayCompat;

    iget v1, p0, Landroidx/collection/SparseArrayKt$valueIterator$1;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/collection/SparseArrayKt$valueIterator$1;->index:I

    .line 78
    invoke-virtual {v0, v1}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
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

    iput p1, p0, Landroidx/collection/SparseArrayKt$valueIterator$1;->index:I

    return-void
.end method
