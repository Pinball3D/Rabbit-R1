.class public abstract Landroidx/compose/runtime/AbstractApplier;
.super Ljava/lang/Object;
.source "Applier.kt"

# interfaces
.implements Landroidx/compose/runtime/Applier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/compose/runtime/Applier<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010!\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\'\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u000e\u001a\u00020\u000fJ\u0015\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0012\u001a\u00020\u000fH$J\u0008\u0010\u0013\u001a\u00020\u000fH\u0016J*\u0010\u0014\u001a\u00020\u000f*\u0008\u0012\u0004\u0012\u00028\u00000\r2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0016H\u0004J\"\u0010\u0019\u001a\u00020\u000f*\u0008\u0012\u0004\u0012\u00028\u00000\r2\u0006\u0010\u001a\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0016H\u0004R&\u0010\u0006\u001a\u00028\u00002\u0006\u0010\u0005\u001a\u00028\u0000@TX\u0096\u000e\u00a2\u0006\u0010\n\u0002\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\u0004R\u0013\u0010\u0003\u001a\u00028\u0000\u00a2\u0006\n\n\u0002\u0010\n\u001a\u0004\u0008\u000b\u0010\u0008R\u0014\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00028\u00000\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Landroidx/compose/runtime/AbstractApplier;",
        "T",
        "Landroidx/compose/runtime/Applier;",
        "root",
        "(Ljava/lang/Object;)V",
        "<set-?>",
        "current",
        "getCurrent",
        "()Ljava/lang/Object;",
        "setCurrent",
        "Ljava/lang/Object;",
        "getRoot",
        "stack",
        "",
        "clear",
        "",
        "down",
        "node",
        "onClear",
        "up",
        "move",
        "from",
        "",
        "to",
        "count",
        "remove",
        "index",
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


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private current:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final root:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final stack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/AbstractApplier;->root:Ljava/lang/Object;

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroidx/compose/runtime/AbstractApplier;->stack:Ljava/util/List;

    iput-object p1, p0, Landroidx/compose/runtime/AbstractApplier;->current:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/AbstractApplier;->stack:Ljava/util/List;

    .line 211
    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Landroidx/compose/runtime/AbstractApplier;->root:Ljava/lang/Object;

    .line 212
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/AbstractApplier;->setCurrent(Ljava/lang/Object;)V

    .line 213
    invoke-virtual {p0}, Landroidx/compose/runtime/AbstractApplier;->onClear()V

    return-void
.end method

.method public down(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/runtime/AbstractApplier;->stack:Ljava/util/List;

    .line 201
    invoke-virtual {p0}, Landroidx/compose/runtime/AbstractApplier;->getCurrent()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/AbstractApplier;->setCurrent(Ljava/lang/Object;)V

    return-void
.end method

.method public getCurrent()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/runtime/AbstractApplier;->current:Ljava/lang/Object;

    return-object p0
.end method

.method public final getRoot()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/runtime/AbstractApplier;->root:Ljava/lang/Object;

    return-object p0
.end method

.method protected final move(Ljava/util/List;III)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;III)V"
        }
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-le p2, p3, :cond_0

    move p0, p3

    goto :goto_0

    :cond_0
    sub-int p0, p3, p4

    :goto_0
    const/4 v0, 0x1

    if-ne p4, v0, :cond_3

    add-int/lit8 p4, p3, 0x1

    if-eq p2, p4, :cond_2

    add-int/lit8 p4, p3, -0x1

    if-ne p2, p4, :cond_1

    goto :goto_1

    .line 238
    :cond_1
    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p2

    .line 239
    invoke-interface {p1, p0, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 234
    :cond_2
    :goto_1
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 235
    invoke-interface {p1, p3, p0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 236
    invoke-interface {p1, p2, p0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    add-int/2addr p4, p2

    .line 242
    invoke-interface {p1, p2, p4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    .line 243
    move-object p3, p2

    check-cast p3, Ljava/util/Collection;

    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p3

    .line 244
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 245
    check-cast p3, Ljava/util/Collection;

    invoke-interface {p1, p0, p3}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    :goto_2
    return-void
.end method

.method protected abstract onClear()V
.end method

.method protected final remove(Ljava/util/List;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;II)V"
        }
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    if-ne p3, p0, :cond_0

    .line 223
    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    add-int/2addr p3, p2

    .line 225
    invoke-interface {p1, p2, p3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :goto_0
    return-void
.end method

.method protected setCurrent(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/runtime/AbstractApplier;->current:Ljava/lang/Object;

    return-void
.end method

.method public up()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/AbstractApplier;->stack:Ljava/util/List;

    .line 206
    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/AbstractApplier;->stack:Ljava/util/List;

    .line 207
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/AbstractApplier;->setCurrent(Ljava/lang/Object;)V

    return-void

    .line 206
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Check failed."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
