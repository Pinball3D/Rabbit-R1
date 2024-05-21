.class public final Landroidx/compose/ui/graphics/Float16Kt;
.super Ljava/lang/Object;
.source "Float16.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u001a%\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0000\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u001a%\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0000\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0007\u0010\u0005\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006\u0008"
    }
    d2 = {
        "max",
        "Landroidx/compose/ui/graphics/Float16;",
        "x",
        "y",
        "max-AoSsdG0",
        "(SS)S",
        "min",
        "min-AoSsdG0",
        "ui-graphics_release"
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
.method public static final max-AoSsdG0(SS)S
    .locals 1

    .line 734
    invoke-static {p0}, Landroidx/compose/ui/graphics/Float16;->isNaN-impl(S)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Landroidx/compose/ui/graphics/Float16;->isNaN-impl(S)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 737
    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Float16;->compareTo-41bOqos(SS)I

    move-result v0

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    move p0, p1

    :goto_0
    return p0

    .line 735
    :cond_2
    :goto_1
    sget-object p0, Landroidx/compose/ui/graphics/Float16;->Companion:Landroidx/compose/ui/graphics/Float16$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/Float16$Companion;->getNaN-slo4al4()S

    move-result p0

    return p0
.end method

.method public static final min-AoSsdG0(SS)S
    .locals 1

    .line 714
    invoke-static {p0}, Landroidx/compose/ui/graphics/Float16;->isNaN-impl(S)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Landroidx/compose/ui/graphics/Float16;->isNaN-impl(S)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 718
    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Float16;->compareTo-41bOqos(SS)I

    move-result v0

    if-gtz v0, :cond_1

    goto :goto_0

    :cond_1
    move p0, p1

    :goto_0
    return p0

    .line 715
    :cond_2
    :goto_1
    sget-object p0, Landroidx/compose/ui/graphics/Float16;->Companion:Landroidx/compose/ui/graphics/Float16$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/Float16$Companion;->getNaN-slo4al4()S

    move-result p0

    return p0
.end method
