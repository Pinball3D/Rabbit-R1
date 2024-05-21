.class public final Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorIterator;
.super Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/AbstractListIterator;
.source "PersistentVectorIterator.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/AbstractListIterator<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B;\u0012\u000e\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\n\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\u000bJ\u000e\u0010\u000f\u001a\u00028\u0000H\u0096\u0002\u00a2\u0006\u0002\u0010\u0010J\r\u0010\u0011\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u0010R\u0016\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004X\u0088\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000cR\u0014\u0010\r\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorIterator;",
        "T",
        "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/AbstractListIterator;",
        "root",
        "",
        "",
        "tail",
        "index",
        "",
        "size",
        "trieHeight",
        "([Ljava/lang/Object;[Ljava/lang/Object;III)V",
        "[Ljava/lang/Object;",
        "trieIterator",
        "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/TrieIterator;",
        "next",
        "()Ljava/lang/Object;",
        "previous",
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
.field private final tail:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private final trieIterator:Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/TrieIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/TrieIterator<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/lang/Object;[Ljava/lang/Object;III)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "[TT;III)V"
        }
    .end annotation

    const-string v0, "root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "tail"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0, p3, p4}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/AbstractListIterator;-><init>(II)V

    iput-object p2, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorIterator;->tail:[Ljava/lang/Object;

    .line 16
    invoke-static {p4}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/UtilsKt;->rootSize(I)I

    move-result p2

    .line 17
    invoke-static {p3, p2}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result p3

    .line 18
    new-instance p4, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/TrieIterator;

    invoke-direct {p4, p1, p3, p2, p5}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/TrieIterator;-><init>([Ljava/lang/Object;III)V

    iput-object p4, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorIterator;->trieIterator:Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/TrieIterator;

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 22
    invoke-virtual {p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorIterator;->checkHasNext$runtime_release()V

    iget-object v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorIterator;->trieIterator:Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/TrieIterator;

    .line 23
    invoke-virtual {v0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/TrieIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorIterator;->getIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorIterator;->setIndex(I)V

    iget-object p0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorIterator;->trieIterator:Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/TrieIterator;

    .line 25
    invoke-virtual {p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/TrieIterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorIterator;->tail:[Ljava/lang/Object;

    .line 27
    invoke-virtual {p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorIterator;->getIndex()I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorIterator;->setIndex(I)V

    iget-object p0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorIterator;->trieIterator:Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/TrieIterator;

    invoke-virtual {p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/TrieIterator;->getSize()I

    move-result p0

    sub-int/2addr v1, p0

    aget-object p0, v0, v1

    return-object p0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 31
    invoke-virtual {p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorIterator;->checkHasPrevious$runtime_release()V

    .line 32
    invoke-virtual {p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorIterator;->getIndex()I

    move-result v0

    iget-object v1, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorIterator;->trieIterator:Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/TrieIterator;

    invoke-virtual {v1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/TrieIterator;->getSize()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorIterator;->tail:[Ljava/lang/Object;

    .line 33
    invoke-virtual {p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorIterator;->getIndex()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorIterator;->setIndex(I)V

    invoke-virtual {p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorIterator;->getIndex()I

    move-result v1

    iget-object p0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorIterator;->trieIterator:Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/TrieIterator;

    invoke-virtual {p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/TrieIterator;->getSize()I

    move-result p0

    sub-int/2addr v1, p0

    aget-object p0, v0, v1

    return-object p0

    .line 35
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorIterator;->getIndex()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorIterator;->setIndex(I)V

    iget-object p0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorIterator;->trieIterator:Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/TrieIterator;

    .line 36
    invoke-virtual {p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/TrieIterator;->previous()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
