.class public final Landroidx/compose/runtime/Stack;
.super Ljava/lang/Object;
.source "Stack.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0010\u0011\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0006\u0010\u000b\u001a\u00020\u000cJ\u0006\u0010\r\u001a\u00020\u000eJ\u0006\u0010\u000f\u001a\u00020\u000eJ\u000b\u0010\u0010\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u0011J\u0013\u0010\u0010\u001a\u00028\u00002\u0006\u0010\u0012\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\u0013J\u000b\u0010\u0014\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u0011J\u0013\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u0017J\u0011\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0019\u00a2\u0006\u0002\u0010\u001aR\u001e\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00028\u00000\u0005j\u0008\u0012\u0004\u0012\u00028\u0000`\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0007\u001a\u00020\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u001b"
    }
    d2 = {
        "Landroidx/compose/runtime/Stack;",
        "T",
        "",
        "()V",
        "backing",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "size",
        "",
        "getSize",
        "()I",
        "clear",
        "",
        "isEmpty",
        "",
        "isNotEmpty",
        "peek",
        "()Ljava/lang/Object;",
        "index",
        "(I)Ljava/lang/Object;",
        "pop",
        "push",
        "value",
        "(Ljava/lang/Object;)Z",
        "toArray",
        "",
        "()[Ljava/lang/Object;",
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
.field private final backing:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/Stack;->backing:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/Stack;->backing:Ljava/util/ArrayList;

    .line 31
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final getSize()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/Stack;->backing:Ljava/util/ArrayList;

    .line 23
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final isEmpty()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/Stack;->backing:Ljava/util/ArrayList;

    .line 29
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public final isNotEmpty()Z
    .locals 0

    .line 30
    invoke-virtual {p0}, Landroidx/compose/runtime/Stack;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final peek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/runtime/Stack;->backing:Ljava/util/ArrayList;

    .line 27
    invoke-virtual {p0}, Landroidx/compose/runtime/Stack;->getSize()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final peek(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/runtime/Stack;->backing:Ljava/util/ArrayList;

    .line 28
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final pop()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/runtime/Stack;->backing:Ljava/util/ArrayList;

    .line 26
    invoke-virtual {p0}, Landroidx/compose/runtime/Stack;->getSize()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final push(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/runtime/Stack;->backing:Ljava/util/ArrayList;

    .line 25
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/runtime/Stack;->backing:Ljava/util/ArrayList;

    .line 33
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Landroidx/compose/runtime/Stack;->backing:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
