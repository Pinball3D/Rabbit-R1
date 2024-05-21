.class final Landroidx/compose/foundation/ScrollingLayoutElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "Scroll.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Landroidx/compose/foundation/ScrollingLayoutNode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\u000c\u001a\u00020\u0002H\u0016J\u0013\u0010\r\u001a\u00020\u00062\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0002H\u0016J\u000c\u0010\u0015\u001a\u00020\u0013*\u00020\u0016H\u0016R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\tR\u0011\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\tR\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0017"
    }
    d2 = {
        "Landroidx/compose/foundation/ScrollingLayoutElement;",
        "Landroidx/compose/ui/node/ModifierNodeElement;",
        "Landroidx/compose/foundation/ScrollingLayoutNode;",
        "scrollState",
        "Landroidx/compose/foundation/ScrollState;",
        "isReversed",
        "",
        "isVertical",
        "(Landroidx/compose/foundation/ScrollState;ZZ)V",
        "()Z",
        "getScrollState",
        "()Landroidx/compose/foundation/ScrollState;",
        "create",
        "equals",
        "other",
        "",
        "hashCode",
        "",
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
.field private final isReversed:Z

.field private final isVertical:Z

.field private final scrollState:Landroidx/compose/foundation/ScrollState;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/ScrollState;ZZ)V
    .locals 1

    const-string/jumbo v0, "scrollState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 334
    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/ScrollingLayoutElement;->scrollState:Landroidx/compose/foundation/ScrollState;

    iput-boolean p2, p0, Landroidx/compose/foundation/ScrollingLayoutElement;->isReversed:Z

    iput-boolean p3, p0, Landroidx/compose/foundation/ScrollingLayoutElement;->isVertical:Z

    return-void
.end method


# virtual methods
.method public create()Landroidx/compose/foundation/ScrollingLayoutNode;
    .locals 3

    .line 336
    new-instance v0, Landroidx/compose/foundation/ScrollingLayoutNode;

    iget-object v1, p0, Landroidx/compose/foundation/ScrollingLayoutElement;->scrollState:Landroidx/compose/foundation/ScrollState;

    iget-boolean v2, p0, Landroidx/compose/foundation/ScrollingLayoutElement;->isReversed:Z

    iget-boolean p0, p0, Landroidx/compose/foundation/ScrollingLayoutElement;->isVertical:Z

    invoke-direct {v0, v1, v2, p0}, Landroidx/compose/foundation/ScrollingLayoutNode;-><init>(Landroidx/compose/foundation/ScrollState;ZZ)V

    return-object v0
.end method

.method public bridge synthetic create()Landroidx/compose/ui/Modifier$Node;
    .locals 0

    .line 330
    invoke-virtual {p0}, Landroidx/compose/foundation/ScrollingLayoutElement;->create()Landroidx/compose/foundation/ScrollingLayoutNode;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/Modifier$Node;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 357
    instance-of v0, p1, Landroidx/compose/foundation/ScrollingLayoutElement;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/ScrollingLayoutElement;->scrollState:Landroidx/compose/foundation/ScrollState;

    .line 358
    check-cast p1, Landroidx/compose/foundation/ScrollingLayoutElement;

    iget-object v2, p1, Landroidx/compose/foundation/ScrollingLayoutElement;->scrollState:Landroidx/compose/foundation/ScrollState;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/compose/foundation/ScrollingLayoutElement;->isReversed:Z

    .line 359
    iget-boolean v2, p1, Landroidx/compose/foundation/ScrollingLayoutElement;->isReversed:Z

    if-ne v0, v2, :cond_1

    iget-boolean p0, p0, Landroidx/compose/foundation/ScrollingLayoutElement;->isVertical:Z

    .line 360
    iget-boolean p1, p1, Landroidx/compose/foundation/ScrollingLayoutElement;->isVertical:Z

    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final getScrollState()Landroidx/compose/foundation/ScrollState;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/ScrollingLayoutElement;->scrollState:Landroidx/compose/foundation/ScrollState;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/ScrollingLayoutElement;->scrollState:Landroidx/compose/foundation/ScrollState;

    .line 350
    invoke-virtual {v0}, Landroidx/compose/foundation/ScrollState;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroidx/compose/foundation/ScrollingLayoutElement;->isReversed:Z

    .line 351
    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Landroidx/compose/foundation/ScrollingLayoutElement;->isVertical:Z

    .line 352
    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public inspectableProperties(Landroidx/compose/ui/platform/InspectorInfo;)V
    .locals 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutInScroll"

    .line 364
    invoke-virtual {p1, v0}, Landroidx/compose/ui/platform/InspectorInfo;->setName(Ljava/lang/String;)V

    .line 365
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v0

    const-string/jumbo v1, "state"

    iget-object v2, p0, Landroidx/compose/foundation/ScrollingLayoutElement;->scrollState:Landroidx/compose/foundation/ScrollState;

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 366
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/compose/foundation/ScrollingLayoutElement;->isReversed:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isReversed"

    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 367
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object p1

    iget-boolean p0, p0, Landroidx/compose/foundation/ScrollingLayoutElement;->isVertical:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v0, "isVertical"

    invoke-virtual {p1, v0, p0}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final isReversed()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/foundation/ScrollingLayoutElement;->isReversed:Z

    return p0
.end method

.method public final isVertical()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/foundation/ScrollingLayoutElement;->isVertical:Z

    return p0
.end method

.method public update(Landroidx/compose/foundation/ScrollingLayoutNode;)V
    .locals 1

    const-string v0, "node"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/foundation/ScrollingLayoutElement;->scrollState:Landroidx/compose/foundation/ScrollState;

    .line 344
    invoke-virtual {p1, v0}, Landroidx/compose/foundation/ScrollingLayoutNode;->setScrollerState(Landroidx/compose/foundation/ScrollState;)V

    iget-boolean v0, p0, Landroidx/compose/foundation/ScrollingLayoutElement;->isReversed:Z

    .line 345
    invoke-virtual {p1, v0}, Landroidx/compose/foundation/ScrollingLayoutNode;->setReversed(Z)V

    iget-boolean p0, p0, Landroidx/compose/foundation/ScrollingLayoutElement;->isVertical:Z

    .line 346
    invoke-virtual {p1, p0}, Landroidx/compose/foundation/ScrollingLayoutNode;->setVertical(Z)V

    return-void
.end method

.method public bridge synthetic update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 0

    .line 330
    check-cast p1, Landroidx/compose/foundation/ScrollingLayoutNode;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/ScrollingLayoutElement;->update(Landroidx/compose/foundation/ScrollingLayoutNode;)V

    return-void
.end method
