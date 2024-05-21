.class final Landroidx/compose/ui/layout/OnPlacedElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "OnPlacedModifier.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Landroidx/compose/ui/layout/OnPlacedNode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\u0082\u0008\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0019\u0012\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004\u00a2\u0006\u0002\u0010\u0007J\u0015\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004H\u00c6\u0003J\u001f\u0010\u000b\u001a\u00020\u00002\u0014\u0008\u0002\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004H\u00c6\u0001J\u0008\u0010\u000c\u001a\u00020\u0002H\u0016J\u0013\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u00d6\u0003J\t\u0010\u0011\u001a\u00020\u0012H\u00d6\u0001J\t\u0010\u0013\u001a\u00020\u0014H\u00d6\u0001J\u0010\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0002H\u0016J\u000c\u0010\u0017\u001a\u00020\u0006*\u00020\u0018H\u0016R\u001d\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0019"
    }
    d2 = {
        "Landroidx/compose/ui/layout/OnPlacedElement;",
        "Landroidx/compose/ui/node/ModifierNodeElement;",
        "Landroidx/compose/ui/layout/OnPlacedNode;",
        "onPlaced",
        "Lkotlin/Function1;",
        "Landroidx/compose/ui/layout/LayoutCoordinates;",
        "",
        "(Lkotlin/jvm/functions/Function1;)V",
        "getOnPlaced",
        "()Lkotlin/jvm/functions/Function1;",
        "component1",
        "copy",
        "create",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
        "update",
        "node",
        "inspectableProperties",
        "Landroidx/compose/ui/platform/InspectorInfo;",
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
.field private final onPlaced:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/layout/LayoutCoordinates;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/layout/LayoutCoordinates;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onPlaced"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/layout/OnPlacedElement;->onPlaced:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static synthetic copy$default(Landroidx/compose/ui/layout/OnPlacedElement;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/OnPlacedElement;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Landroidx/compose/ui/layout/OnPlacedElement;->onPlaced:Lkotlin/jvm/functions/Function1;

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/ui/layout/OnPlacedElement;->copy(Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/OnPlacedElement;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/layout/LayoutCoordinates;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/ui/layout/OnPlacedElement;->onPlaced:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final copy(Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/OnPlacedElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/layout/LayoutCoordinates;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/compose/ui/layout/OnPlacedElement;"
        }
    .end annotation

    const-string p0, "onPlaced"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Landroidx/compose/ui/layout/OnPlacedElement;

    invoke-direct {p0, p1}, Landroidx/compose/ui/layout/OnPlacedElement;-><init>(Lkotlin/jvm/functions/Function1;)V

    return-object p0
.end method

.method public bridge synthetic create()Landroidx/compose/ui/Modifier$Node;
    .locals 0

    .line 38
    invoke-virtual {p0}, Landroidx/compose/ui/layout/OnPlacedElement;->create()Landroidx/compose/ui/layout/OnPlacedNode;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/Modifier$Node;

    return-object p0
.end method

.method public create()Landroidx/compose/ui/layout/OnPlacedNode;
    .locals 1

    .line 41
    new-instance v0, Landroidx/compose/ui/layout/OnPlacedNode;

    iget-object p0, p0, Landroidx/compose/ui/layout/OnPlacedElement;->onPlaced:Lkotlin/jvm/functions/Function1;

    invoke-direct {v0, p0}, Landroidx/compose/ui/layout/OnPlacedNode;-><init>(Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/layout/OnPlacedElement;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/ui/layout/OnPlacedElement;

    iget-object p0, p0, Landroidx/compose/ui/layout/OnPlacedElement;->onPlaced:Lkotlin/jvm/functions/Function1;

    iget-object p1, p1, Landroidx/compose/ui/layout/OnPlacedElement;->onPlaced:Lkotlin/jvm/functions/Function1;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getOnPlaced()Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/layout/LayoutCoordinates;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/ui/layout/OnPlacedElement;->onPlaced:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/layout/OnPlacedElement;->onPlaced:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public inspectableProperties(Landroidx/compose/ui/platform/InspectorInfo;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onPlaced"

    .line 48
    invoke-virtual {p1, v0}, Landroidx/compose/ui/platform/InspectorInfo;->setName(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object p1

    iget-object p0, p0, Landroidx/compose/ui/layout/OnPlacedElement;->onPlaced:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1, v0, p0}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OnPlacedElement(onPlaced="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/layout/OnPlacedElement;->onPlaced:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 0

    .line 38
    check-cast p1, Landroidx/compose/ui/layout/OnPlacedNode;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/layout/OnPlacedElement;->update(Landroidx/compose/ui/layout/OnPlacedNode;)V

    return-void
.end method

.method public update(Landroidx/compose/ui/layout/OnPlacedNode;)V
    .locals 1

    const-string v0, "node"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/layout/OnPlacedElement;->onPlaced:Lkotlin/jvm/functions/Function1;

    .line 44
    invoke-virtual {p1, p0}, Landroidx/compose/ui/layout/OnPlacedNode;->setCallback(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
