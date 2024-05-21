.class public final Landroidx/compose/runtime/BitwiseOperatorsKt;
.super Ljava/lang/Object;
.source "BitwiseOperators.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0080\u000c\u001a\u0015\u0010\u0003\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0080\u000c\u00a8\u0006\u0004"
    }
    d2 = {
        "rol",
        "",
        "other",
        "ror",
        "runtime_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final rol(II)I
    .locals 0

    .line 26
    invoke-static {p0, p1}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result p0

    return p0
.end method

.method public static final ror(II)I
    .locals 0

    .line 22
    invoke-static {p0, p1}, Ljava/lang/Integer;->rotateRight(II)I

    move-result p0

    return p0
.end method
