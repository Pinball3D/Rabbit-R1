.class public final Landroidx/compose/ui/graphics/PathOperationKt;
.super Ljava/lang/Object;
.source "PathOperation.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0011\"!\u0010\u0000\u001a\u00020\u0001*\u00020\u00028FX\u0087\u0004\u00f8\u0001\u0000\u00a2\u0006\u000c\u0012\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"!\u0010\u0007\u001a\u00020\u0001*\u00020\u00028FX\u0087\u0004\u00f8\u0001\u0000\u00a2\u0006\u000c\u0012\u0004\u0008\u0008\u0010\u0004\u001a\u0004\u0008\t\u0010\u0006\"!\u0010\n\u001a\u00020\u0001*\u00020\u00028FX\u0087\u0004\u00f8\u0001\u0000\u00a2\u0006\u000c\u0012\u0004\u0008\u000b\u0010\u0004\u001a\u0004\u0008\u000c\u0010\u0006\"!\u0010\r\u001a\u00020\u0001*\u00020\u00028FX\u0087\u0004\u00f8\u0001\u0000\u00a2\u0006\u000c\u0012\u0004\u0008\u000e\u0010\u0004\u001a\u0004\u0008\u000f\u0010\u0006\"!\u0010\u0010\u001a\u00020\u0001*\u00020\u00028FX\u0087\u0004\u00f8\u0001\u0000\u00a2\u0006\u000c\u0012\u0004\u0008\u0011\u0010\u0004\u001a\u0004\u0008\u0012\u0010\u0006\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0013"
    }
    d2 = {
        "difference",
        "Landroidx/compose/ui/graphics/PathOperation;",
        "Landroidx/compose/ui/graphics/PathOperation$Companion;",
        "getDifference$annotations",
        "(Landroidx/compose/ui/graphics/PathOperation$Companion;)V",
        "getDifference",
        "(Landroidx/compose/ui/graphics/PathOperation$Companion;)I",
        "intersect",
        "getIntersect$annotations",
        "getIntersect",
        "reverseDifference",
        "getReverseDifference$annotations",
        "getReverseDifference",
        "union",
        "getUnion$annotations",
        "getUnion",
        "xor",
        "getXor$annotations",
        "getXor",
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
.method public static final getDifference(Landroidx/compose/ui/graphics/PathOperation$Companion;)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/PathOperation$Companion;->getDifference-b3I0S0c()I

    move-result p0

    return p0
.end method

.method public static synthetic getDifference$annotations(Landroidx/compose/ui/graphics/PathOperation$Companion;)V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Use PathOperation.Difference instead"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "PathOperation.Difference"
            imports = {
                "androidx.compose.ui.graphics.PathOperation.Difference"
            }
        .end subannotation
    .end annotation

    return-void
.end method

.method public static final getIntersect(Landroidx/compose/ui/graphics/PathOperation$Companion;)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/PathOperation$Companion;->getIntersect-b3I0S0c()I

    move-result p0

    return p0
.end method

.method public static synthetic getIntersect$annotations(Landroidx/compose/ui/graphics/PathOperation$Companion;)V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Use PathOperation.Intersect instead"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "PathOperation.Intersect"
            imports = {
                "androidx.compose.ui.graphics.PathOperation.Intersect"
            }
        .end subannotation
    .end annotation

    return-void
.end method

.method public static final getReverseDifference(Landroidx/compose/ui/graphics/PathOperation$Companion;)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/PathOperation$Companion;->getReverseDifference-b3I0S0c()I

    move-result p0

    return p0
.end method

.method public static synthetic getReverseDifference$annotations(Landroidx/compose/ui/graphics/PathOperation$Companion;)V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Use PathOperation.ReverseDifference instead"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "PathOperation.ReverseDifference"
            imports = {
                "androidx.compose.ui.graphics.PathOperation.ReverseDifference"
            }
        .end subannotation
    .end annotation

    return-void
.end method

.method public static final getUnion(Landroidx/compose/ui/graphics/PathOperation$Companion;)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/PathOperation$Companion;->getUnion-b3I0S0c()I

    move-result p0

    return p0
.end method

.method public static synthetic getUnion$annotations(Landroidx/compose/ui/graphics/PathOperation$Companion;)V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Use PathOperation.Union instead"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "PathOperation.Union"
            imports = {
                "androidx.compose.ui.graphics.PathOperation.Union"
            }
        .end subannotation
    .end annotation

    return-void
.end method

.method public static final getXor(Landroidx/compose/ui/graphics/PathOperation$Companion;)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/PathOperation$Companion;->getXor-b3I0S0c()I

    move-result p0

    return p0
.end method

.method public static synthetic getXor$annotations(Landroidx/compose/ui/graphics/PathOperation$Companion;)V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Use PathOperation.Xor instead"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "PathOperation.Xor"
            imports = {
                "androidx.compose.ui.graphics.PathOperation.Xor"
            }
        .end subannotation
    .end annotation

    return-void
.end method
