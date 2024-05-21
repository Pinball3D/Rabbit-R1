.class final Landroidx/compose/foundation/FocusedBoundsObserverElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "FocusedBounds.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Landroidx/compose/foundation/FocusedBoundsObserverNode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u001b\u0012\u0014\u0010\u0003\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\u00060\u0004\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\n\u001a\u00020\u0002H\u0016J\u0013\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J\u0010\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u0002H\u0016J\u000c\u0010\u0013\u001a\u00020\u0006*\u00020\u0014H\u0016R\u001f\u0010\u0003\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\u00060\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0015"
    }
    d2 = {
        "Landroidx/compose/foundation/FocusedBoundsObserverElement;",
        "Landroidx/compose/ui/node/ModifierNodeElement;",
        "Landroidx/compose/foundation/FocusedBoundsObserverNode;",
        "onPositioned",
        "Lkotlin/Function1;",
        "Landroidx/compose/ui/layout/LayoutCoordinates;",
        "",
        "(Lkotlin/jvm/functions/Function1;)V",
        "getOnPositioned",
        "()Lkotlin/jvm/functions/Function1;",
        "create",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "update",
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
.field private final onPositioned:Lkotlin/jvm/functions/Function1;
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

    const-string v0, "onPositioned"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/FocusedBoundsObserverElement;->onPositioned:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public create()Landroidx/compose/foundation/FocusedBoundsObserverNode;
    .locals 1

    .line 51
    new-instance v0, Landroidx/compose/foundation/FocusedBoundsObserverNode;

    iget-object p0, p0, Landroidx/compose/foundation/FocusedBoundsObserverElement;->onPositioned:Lkotlin/jvm/functions/Function1;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/FocusedBoundsObserverNode;-><init>(Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method

.method public bridge synthetic create()Landroidx/compose/ui/Modifier$Node;
    .locals 0

    .line 48
    invoke-virtual {p0}, Landroidx/compose/foundation/FocusedBoundsObserverElement;->create()Landroidx/compose/foundation/FocusedBoundsObserverNode;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/Modifier$Node;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 61
    :cond_0
    instance-of v0, p1, Landroidx/compose/foundation/FocusedBoundsObserverElement;

    if-eqz v0, :cond_1

    check-cast p1, Landroidx/compose/foundation/FocusedBoundsObserverElement;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    iget-object p0, p0, Landroidx/compose/foundation/FocusedBoundsObserverElement;->onPositioned:Lkotlin/jvm/functions/Function1;

    .line 62
    iget-object p1, p1, Landroidx/compose/foundation/FocusedBoundsObserverElement;->onPositioned:Lkotlin/jvm/functions/Function1;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final getOnPositioned()Lkotlin/jvm/functions/Function1;
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

    iget-object p0, p0, Landroidx/compose/foundation/FocusedBoundsObserverElement;->onPositioned:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/FocusedBoundsObserverElement;->onPositioned:Lkotlin/jvm/functions/Function1;

    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public inspectableProperties(Landroidx/compose/ui/platform/InspectorInfo;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onFocusedBoundsChanged"

    .line 66
    invoke-virtual {p1, v0}, Landroidx/compose/ui/platform/InspectorInfo;->setName(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object p1

    const-string v0, "onPositioned"

    iget-object p0, p0, Landroidx/compose/foundation/FocusedBoundsObserverElement;->onPositioned:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1, v0, p0}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public update(Landroidx/compose/foundation/FocusedBoundsObserverNode;)V
    .locals 1

    const-string v0, "node"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/foundation/FocusedBoundsObserverElement;->onPositioned:Lkotlin/jvm/functions/Function1;

    .line 54
    invoke-virtual {p1, p0}, Landroidx/compose/foundation/FocusedBoundsObserverNode;->setOnPositioned(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public bridge synthetic update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 0

    .line 48
    check-cast p1, Landroidx/compose/foundation/FocusedBoundsObserverNode;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/FocusedBoundsObserverElement;->update(Landroidx/compose/foundation/FocusedBoundsObserverNode;)V

    return-void
.end method
