.class final Landroidx/compose/foundation/layout/UnspecifiedConstraintsElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "Size.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Landroidx/compose/foundation/layout/UnspecifiedConstraintsNode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u001c\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u000b\u001a\u00020\u0002H\u0016J\u0013\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0002H\u0016J\u000c\u0010\u0015\u001a\u00020\u0013*\u00020\u0016H\u0016R\u001c\u0010\u0005\u001a\u00020\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\n\n\u0002\u0010\t\u001a\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\u0003\u001a\u00020\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\n\n\u0002\u0010\t\u001a\u0004\u0008\n\u0010\u0008\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006\u0017"
    }
    d2 = {
        "Landroidx/compose/foundation/layout/UnspecifiedConstraintsElement;",
        "Landroidx/compose/ui/node/ModifierNodeElement;",
        "Landroidx/compose/foundation/layout/UnspecifiedConstraintsNode;",
        "minWidth",
        "Landroidx/compose/ui/unit/Dp;",
        "minHeight",
        "(FFLkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "getMinHeight-D9Ej5fM",
        "()F",
        "F",
        "getMinWidth-D9Ej5fM",
        "create",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "update",
        "",
        "node",
        "inspectableProperties",
        "Landroidx/compose/ui/platform/InspectorInfo;",
        "foundation-layout_release"
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
.field private final minHeight:F

.field private final minWidth:F


# direct methods
.method private constructor <init>(FF)V
    .locals 0

    .line 1025
    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    iput p1, p0, Landroidx/compose/foundation/layout/UnspecifiedConstraintsElement;->minWidth:F

    iput p2, p0, Landroidx/compose/foundation/layout/UnspecifiedConstraintsElement;->minHeight:F

    return-void
.end method

.method public synthetic constructor <init>(FFILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 1023
    sget-object p1, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    move-result p1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 1024
    sget-object p2, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {p2}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    move-result p2

    :cond_1
    const/4 p3, 0x0

    .line 1022
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/layout/UnspecifiedConstraintsElement;-><init>(FFLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(FFLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/layout/UnspecifiedConstraintsElement;-><init>(FF)V

    return-void
.end method


# virtual methods
.method public create()Landroidx/compose/foundation/layout/UnspecifiedConstraintsNode;
    .locals 3

    .line 1026
    new-instance v0, Landroidx/compose/foundation/layout/UnspecifiedConstraintsNode;

    iget v1, p0, Landroidx/compose/foundation/layout/UnspecifiedConstraintsElement;->minWidth:F

    iget p0, p0, Landroidx/compose/foundation/layout/UnspecifiedConstraintsElement;->minHeight:F

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroidx/compose/foundation/layout/UnspecifiedConstraintsNode;-><init>(FFLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public bridge synthetic create()Landroidx/compose/ui/Modifier$Node;
    .locals 0

    .line 1022
    invoke-virtual {p0}, Landroidx/compose/foundation/layout/UnspecifiedConstraintsElement;->create()Landroidx/compose/foundation/layout/UnspecifiedConstraintsNode;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/Modifier$Node;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1043
    instance-of v0, p1, Landroidx/compose/foundation/layout/UnspecifiedConstraintsElement;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Landroidx/compose/foundation/layout/UnspecifiedConstraintsElement;->minWidth:F

    .line 1044
    check-cast p1, Landroidx/compose/foundation/layout/UnspecifiedConstraintsElement;

    iget v2, p1, Landroidx/compose/foundation/layout/UnspecifiedConstraintsElement;->minWidth:F

    invoke-static {v0, v2}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    iget p0, p0, Landroidx/compose/foundation/layout/UnspecifiedConstraintsElement;->minHeight:F

    iget p1, p1, Landroidx/compose/foundation/layout/UnspecifiedConstraintsElement;->minHeight:F

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final getMinHeight-D9Ej5fM()F
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/UnspecifiedConstraintsElement;->minHeight:F

    return p0
.end method

.method public final getMinWidth-D9Ej5fM()F
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/UnspecifiedConstraintsElement;->minWidth:F

    return p0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/layout/UnspecifiedConstraintsElement;->minWidth:F

    .line 1047
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->hashCode-impl(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Landroidx/compose/foundation/layout/UnspecifiedConstraintsElement;->minHeight:F

    invoke-static {p0}, Landroidx/compose/ui/unit/Dp;->hashCode-impl(F)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public inspectableProperties(Landroidx/compose/ui/platform/InspectorInfo;)V
    .locals 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultMinSize"

    .line 1037
    invoke-virtual {p1, v0}, Landroidx/compose/ui/platform/InspectorInfo;->setName(Ljava/lang/String;)V

    .line 1038
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v0

    iget v1, p0, Landroidx/compose/foundation/layout/UnspecifiedConstraintsElement;->minWidth:F

    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object v1

    const-string v2, "minWidth"

    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1039
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object p1

    iget p0, p0, Landroidx/compose/foundation/layout/UnspecifiedConstraintsElement;->minHeight:F

    invoke-static {p0}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object p0

    const-string v0, "minHeight"

    invoke-virtual {p1, v0, p0}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public update(Landroidx/compose/foundation/layout/UnspecifiedConstraintsNode;)V
    .locals 1

    const-string v0, "node"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Landroidx/compose/foundation/layout/UnspecifiedConstraintsElement;->minWidth:F

    .line 1032
    invoke-virtual {p1, v0}, Landroidx/compose/foundation/layout/UnspecifiedConstraintsNode;->setMinWidth-0680j_4(F)V

    iget p0, p0, Landroidx/compose/foundation/layout/UnspecifiedConstraintsElement;->minHeight:F

    .line 1033
    invoke-virtual {p1, p0}, Landroidx/compose/foundation/layout/UnspecifiedConstraintsNode;->setMinHeight-0680j_4(F)V

    return-void
.end method

.method public bridge synthetic update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 0

    .line 1022
    check-cast p1, Landroidx/compose/foundation/layout/UnspecifiedConstraintsNode;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/layout/UnspecifiedConstraintsElement;->update(Landroidx/compose/foundation/layout/UnspecifiedConstraintsNode;)V

    return-void
.end method
