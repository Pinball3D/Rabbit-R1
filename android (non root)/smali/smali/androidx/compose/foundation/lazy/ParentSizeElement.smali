.class final Landroidx/compose/foundation/lazy/ParentSizeElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "LazyItemScopeImpl.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Landroidx/compose/foundation/lazy/ParentSizeNode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B9\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0010\u0008\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u0012\u0010\u0008\u0002\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ\u0008\u0010\u0013\u001a\u00020\u0002H\u0016J\u0013\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0096\u0002J\u0008\u0010\u0018\u001a\u00020\u0007H\u0016J\u0010\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u0002H\u0016J\u000c\u0010\u001c\u001a\u00020\u001a*\u00020\u001dH\u0016R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0019\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0019\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u000f\u00a8\u0006\u001e"
    }
    d2 = {
        "Landroidx/compose/foundation/lazy/ParentSizeElement;",
        "Landroidx/compose/ui/node/ModifierNodeElement;",
        "Landroidx/compose/foundation/lazy/ParentSizeNode;",
        "fraction",
        "",
        "widthState",
        "Landroidx/compose/runtime/State;",
        "",
        "heightState",
        "inspectorName",
        "",
        "(FLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;Ljava/lang/String;)V",
        "getFraction",
        "()F",
        "getHeightState",
        "()Landroidx/compose/runtime/State;",
        "getInspectorName",
        "()Ljava/lang/String;",
        "getWidthState",
        "create",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "update",
        "",
        "node",
        "inspectableProperties",
        "Landroidx/compose/ui/platform/InspectorInfo;",
        "foundation_release"
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
.field private final fraction:F

.field private final heightState:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final inspectorName:Ljava/lang/String;

.field private final widthState:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(FLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "inspectorName"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    iput p1, p0, Landroidx/compose/foundation/lazy/ParentSizeElement;->fraction:F

    iput-object p2, p0, Landroidx/compose/foundation/lazy/ParentSizeElement;->widthState:Landroidx/compose/runtime/State;

    iput-object p3, p0, Landroidx/compose/foundation/lazy/ParentSizeElement;->heightState:Landroidx/compose/runtime/State;

    iput-object p4, p0, Landroidx/compose/foundation/lazy/ParentSizeElement;->inspectorName:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(FLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    move-object p3, v0

    .line 78
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/lazy/ParentSizeElement;-><init>(FLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public create()Landroidx/compose/foundation/lazy/ParentSizeNode;
    .locals 3

    .line 85
    new-instance v0, Landroidx/compose/foundation/lazy/ParentSizeNode;

    iget v1, p0, Landroidx/compose/foundation/lazy/ParentSizeElement;->fraction:F

    iget-object v2, p0, Landroidx/compose/foundation/lazy/ParentSizeElement;->widthState:Landroidx/compose/runtime/State;

    iget-object p0, p0, Landroidx/compose/foundation/lazy/ParentSizeElement;->heightState:Landroidx/compose/runtime/State;

    invoke-direct {v0, v1, v2, p0}, Landroidx/compose/foundation/lazy/ParentSizeNode;-><init>(FLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V

    return-object v0
.end method

.method public bridge synthetic create()Landroidx/compose/ui/Modifier$Node;
    .locals 0

    .line 78
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/ParentSizeElement;->create()Landroidx/compose/foundation/lazy/ParentSizeNode;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/Modifier$Node;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 100
    :cond_0
    instance-of v1, p1, Landroidx/compose/foundation/lazy/ParentSizeNode;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget v1, p0, Landroidx/compose/foundation/lazy/ParentSizeElement;->fraction:F

    .line 101
    check-cast p1, Landroidx/compose/foundation/lazy/ParentSizeNode;

    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/ParentSizeNode;->getFraction()F

    move-result v3

    cmpg-float v1, v1, v3

    if-nez v1, :cond_2

    iget-object v1, p0, Landroidx/compose/foundation/lazy/ParentSizeElement;->widthState:Landroidx/compose/runtime/State;

    .line 102
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/ParentSizeNode;->getWidthState()Landroidx/compose/runtime/State;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Landroidx/compose/foundation/lazy/ParentSizeElement;->heightState:Landroidx/compose/runtime/State;

    .line 103
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/ParentSizeNode;->getHeightState()Landroidx/compose/runtime/State;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final getFraction()F
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/lazy/ParentSizeElement;->fraction:F

    return p0
.end method

.method public final getHeightState()Landroidx/compose/runtime/State;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/foundation/lazy/ParentSizeElement;->heightState:Landroidx/compose/runtime/State;

    return-object p0
.end method

.method public final getInspectorName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/ParentSizeElement;->inspectorName:Ljava/lang/String;

    return-object p0
.end method

.method public final getWidthState()Landroidx/compose/runtime/State;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/foundation/lazy/ParentSizeElement;->widthState:Landroidx/compose/runtime/State;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Landroidx/compose/foundation/lazy/ParentSizeElement;->widthState:Landroidx/compose/runtime/State;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Landroidx/compose/foundation/lazy/ParentSizeElement;->heightState:Landroidx/compose/runtime/State;

    if-eqz v2, :cond_1

    .line 108
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Landroidx/compose/foundation/lazy/ParentSizeElement;->fraction:F

    .line 109
    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public inspectableProperties(Landroidx/compose/ui/platform/InspectorInfo;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/foundation/lazy/ParentSizeElement;->inspectorName:Ljava/lang/String;

    .line 114
    invoke-virtual {p1, v0}, Landroidx/compose/ui/platform/InspectorInfo;->setName(Ljava/lang/String;)V

    iget p0, p0, Landroidx/compose/foundation/lazy/ParentSizeElement;->fraction:F

    .line 115
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/compose/ui/platform/InspectorInfo;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public update(Landroidx/compose/foundation/lazy/ParentSizeNode;)V
    .locals 1

    const-string v0, "node"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Landroidx/compose/foundation/lazy/ParentSizeElement;->fraction:F

    .line 93
    invoke-virtual {p1, v0}, Landroidx/compose/foundation/lazy/ParentSizeNode;->setFraction(F)V

    iget-object v0, p0, Landroidx/compose/foundation/lazy/ParentSizeElement;->widthState:Landroidx/compose/runtime/State;

    .line 94
    invoke-virtual {p1, v0}, Landroidx/compose/foundation/lazy/ParentSizeNode;->setWidthState(Landroidx/compose/runtime/State;)V

    iget-object p0, p0, Landroidx/compose/foundation/lazy/ParentSizeElement;->heightState:Landroidx/compose/runtime/State;

    .line 95
    invoke-virtual {p1, p0}, Landroidx/compose/foundation/lazy/ParentSizeNode;->setHeightState(Landroidx/compose/runtime/State;)V

    return-void
.end method

.method public bridge synthetic update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 0

    .line 78
    check-cast p1, Landroidx/compose/foundation/lazy/ParentSizeNode;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/lazy/ParentSizeElement;->update(Landroidx/compose/foundation/lazy/ParentSizeNode;)V

    return-void
.end method
