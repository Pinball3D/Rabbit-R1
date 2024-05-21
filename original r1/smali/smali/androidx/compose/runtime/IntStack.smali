.class public final Landroidx/compose/runtime/IntStack;
.super Ljava/lang/Object;
.source "Stack.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0015\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0008\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010\u000c\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u0004J\u0006\u0010\u000e\u001a\u00020\u000fJ\u0006\u0010\u0010\u001a\u00020\u000fJ\u0006\u0010\u0011\u001a\u00020\u0004J\u000e\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0004J\u000e\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u0004J\u0006\u0010\u0015\u001a\u00020\u0004J\u000e\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u0004R\u0011\u0010\u0003\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Landroidx/compose/runtime/IntStack;",
        "",
        "()V",
        "size",
        "",
        "getSize",
        "()I",
        "slots",
        "",
        "tos",
        "clear",
        "",
        "indexOf",
        "value",
        "isEmpty",
        "",
        "isNotEmpty",
        "peek",
        "index",
        "peekOr",
        "default",
        "pop",
        "push",
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
.field private slots:[I

.field private tos:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/compose/runtime/IntStack;->slots:[I

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/runtime/IntStack;->tos:I

    return-void
.end method

.method public final getSize()I
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/IntStack;->tos:I

    return p0
.end method

.method public final indexOf(I)I
    .locals 3

    iget v0, p0, Landroidx/compose/runtime/IntStack;->tos:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroidx/compose/runtime/IntStack;->slots:[I

    .line 58
    aget v2, v2, v1

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public final isEmpty()Z
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/IntStack;->tos:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isNotEmpty()Z
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/IntStack;->tos:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final peek()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/IntStack;->slots:[I

    iget p0, p0, Landroidx/compose/runtime/IntStack;->tos:I

    add-int/lit8 p0, p0, -0x1

    .line 51
    aget p0, v0, p0

    return p0
.end method

.method public final peek(I)I
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/IntStack;->slots:[I

    .line 52
    aget p0, p0, p1

    return p0
.end method

.method public final peekOr(I)I
    .locals 1

    iget v0, p0, Landroidx/compose/runtime/IntStack;->tos:I

    if-lez v0, :cond_0

    .line 50
    invoke-virtual {p0}, Landroidx/compose/runtime/IntStack;->peek()I

    move-result p1

    :cond_0
    return p1
.end method

.method public final pop()I
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/IntStack;->slots:[I

    iget v1, p0, Landroidx/compose/runtime/IntStack;->tos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroidx/compose/runtime/IntStack;->tos:I

    .line 49
    aget p0, v0, v1

    return p0
.end method

.method public final push(I)V
    .locals 3

    iget v0, p0, Landroidx/compose/runtime/IntStack;->tos:I

    iget-object v1, p0, Landroidx/compose/runtime/IntStack;->slots:[I

    .line 43
    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 44
    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    const-string v1, "copyOf(this, newSize)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/compose/runtime/IntStack;->slots:[I

    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/IntStack;->slots:[I

    iget v1, p0, Landroidx/compose/runtime/IntStack;->tos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/compose/runtime/IntStack;->tos:I

    .line 46
    aput p1, v0, v1

    return-void
.end method
