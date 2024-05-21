.class public final Landroidx/compose/ui/node/NestedVectorStack;
.super Ljava/lang/Object;
.source "NestedVectorStack.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNestedVectorStack.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NestedVectorStack.kt\nandroidx/compose/ui/node/NestedVectorStack\n+ 2 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n+ 3 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n*L\n1#1,57:1\n1182#2:58\n1161#2,2:59\n523#3:61\n523#3:62\n*S KotlinDebug\n*F\n+ 1 NestedVectorStack.kt\nandroidx/compose/ui/node/NestedVectorStack\n*L\n26#1:58\n26#1:59,2\n41#1:61\n47#1:62\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0006\u0010\u000b\u001a\u00020\u000cJ\u000b\u0010\r\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u000eJ\u0014\u0010\u000f\u001a\u00020\u00102\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00028\u00000\nJ\u0010\u0010\u0012\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0005H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\n0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Landroidx/compose/ui/node/NestedVectorStack;",
        "T",
        "",
        "()V",
        "current",
        "",
        "indexes",
        "",
        "lastIndex",
        "vectors",
        "Landroidx/compose/runtime/collection/MutableVector;",
        "isNotEmpty",
        "",
        "pop",
        "()Ljava/lang/Object;",
        "push",
        "",
        "vector",
        "pushIndex",
        "value",
        "ui_release"
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
.field private current:I

.field private indexes:[I

.field private lastIndex:I

.field private final vectors:Landroidx/compose/runtime/collection/MutableVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/runtime/collection/MutableVector<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/compose/ui/node/NestedVectorStack;->current:I

    const/16 v0, 0x10

    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/compose/ui/node/NestedVectorStack;->indexes:[I

    .line 60
    new-instance v1, Landroidx/compose/runtime/collection/MutableVector;

    new-array v0, v0, [Landroidx/compose/runtime/collection/MutableVector;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    iput-object v1, p0, Landroidx/compose/ui/node/NestedVectorStack;->vectors:Landroidx/compose/runtime/collection/MutableVector;

    return-void
.end method

.method private final pushIndex(I)V
    .locals 3

    iget v0, p0, Landroidx/compose/ui/node/NestedVectorStack;->lastIndex:I

    iget-object v1, p0, Landroidx/compose/ui/node/NestedVectorStack;->indexes:[I

    .line 28
    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 29
    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    const-string v1, "copyOf(this, newSize)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/compose/ui/node/NestedVectorStack;->indexes:[I

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/NestedVectorStack;->indexes:[I

    iget v1, p0, Landroidx/compose/ui/node/NestedVectorStack;->lastIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/compose/ui/node/NestedVectorStack;->lastIndex:I

    .line 31
    aput p1, v0, v1

    return-void
.end method


# virtual methods
.method public final isNotEmpty()Z
    .locals 1

    iget v0, p0, Landroidx/compose/ui/node/NestedVectorStack;->current:I

    if-ltz v0, :cond_0

    iget-object p0, p0, Landroidx/compose/ui/node/NestedVectorStack;->indexes:[I

    .line 35
    aget p0, p0, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final pop()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget v0, p0, Landroidx/compose/ui/node/NestedVectorStack;->current:I

    iget-object v1, p0, Landroidx/compose/ui/node/NestedVectorStack;->indexes:[I

    .line 40
    aget v1, v1, v0

    iget-object v2, p0, Landroidx/compose/ui/node/NestedVectorStack;->vectors:Landroidx/compose/runtime/collection/MutableVector;

    .line 61
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v2

    aget-object v2, v2, v0

    .line 41
    check-cast v2, Landroidx/compose/runtime/collection/MutableVector;

    if-lez v1, :cond_0

    iget-object p0, p0, Landroidx/compose/ui/node/NestedVectorStack;->indexes:[I

    .line 42
    aget v3, p0, v0

    add-int/lit8 v3, v3, -0x1

    aput v3, p0, v0

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    iget-object v3, p0, Landroidx/compose/ui/node/NestedVectorStack;->vectors:Landroidx/compose/runtime/collection/MutableVector;

    .line 44
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    iget v0, p0, Landroidx/compose/ui/node/NestedVectorStack;->current:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/compose/ui/node/NestedVectorStack;->current:I

    .line 62
    :cond_1
    :goto_0
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object p0

    aget-object p0, p0, v1

    return-object p0
.end method

.method public final push(Landroidx/compose/runtime/collection/MutableVector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/collection/MutableVector<",
            "TT;>;)V"
        }
    .end annotation

    const-string/jumbo v0, "vector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p1}, Landroidx/compose/runtime/collection/MutableVector;->isNotEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/node/NestedVectorStack;->vectors:Landroidx/compose/runtime/collection/MutableVector;

    .line 52
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 53
    invoke-virtual {p1}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-direct {p0, p1}, Landroidx/compose/ui/node/NestedVectorStack;->pushIndex(I)V

    iget p1, p0, Landroidx/compose/ui/node/NestedVectorStack;->current:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/compose/ui/node/NestedVectorStack;->current:I

    :cond_0
    return-void
.end method
