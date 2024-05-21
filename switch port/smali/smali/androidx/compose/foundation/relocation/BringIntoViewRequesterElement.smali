.class final Landroidx/compose/foundation/relocation/BringIntoViewRequesterElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "BringIntoViewRequester.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Landroidx/compose/foundation/relocation/BringIntoViewRequesterNode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u0006\u001a\u00020\u0002H\u0016J\u0013\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0096\u0002J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0002H\u0016J\u000c\u0010\u0010\u001a\u00020\u000e*\u00020\u0011H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Landroidx/compose/foundation/relocation/BringIntoViewRequesterElement;",
        "Landroidx/compose/ui/node/ModifierNodeElement;",
        "Landroidx/compose/foundation/relocation/BringIntoViewRequesterNode;",
        "requester",
        "Landroidx/compose/foundation/relocation/BringIntoViewRequester;",
        "(Landroidx/compose/foundation/relocation/BringIntoViewRequester;)V",
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
.field private final requester:Landroidx/compose/foundation/relocation/BringIntoViewRequester;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/relocation/BringIntoViewRequester;)V
    .locals 1

    const-string v0, "requester"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/relocation/BringIntoViewRequesterElement;->requester:Landroidx/compose/foundation/relocation/BringIntoViewRequester;

    return-void
.end method


# virtual methods
.method public create()Landroidx/compose/foundation/relocation/BringIntoViewRequesterNode;
    .locals 1

    .line 120
    new-instance v0, Landroidx/compose/foundation/relocation/BringIntoViewRequesterNode;

    iget-object p0, p0, Landroidx/compose/foundation/relocation/BringIntoViewRequesterElement;->requester:Landroidx/compose/foundation/relocation/BringIntoViewRequester;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/relocation/BringIntoViewRequesterNode;-><init>(Landroidx/compose/foundation/relocation/BringIntoViewRequester;)V

    return-object v0
.end method

.method public bridge synthetic create()Landroidx/compose/ui/Modifier$Node;
    .locals 0

    .line 115
    invoke-virtual {p0}, Landroidx/compose/foundation/relocation/BringIntoViewRequesterElement;->create()Landroidx/compose/foundation/relocation/BringIntoViewRequesterNode;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/Modifier$Node;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    .line 134
    instance-of v0, p1, Landroidx/compose/foundation/relocation/BringIntoViewRequesterElement;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/compose/foundation/relocation/BringIntoViewRequesterElement;->requester:Landroidx/compose/foundation/relocation/BringIntoViewRequester;

    check-cast p1, Landroidx/compose/foundation/relocation/BringIntoViewRequesterElement;

    iget-object p1, p1, Landroidx/compose/foundation/relocation/BringIntoViewRequesterElement;->requester:Landroidx/compose/foundation/relocation/BringIntoViewRequester;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/relocation/BringIntoViewRequesterElement;->requester:Landroidx/compose/foundation/relocation/BringIntoViewRequester;

    .line 138
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public inspectableProperties(Landroidx/compose/ui/platform/InspectorInfo;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bringIntoViewRequester"

    .line 128
    invoke-virtual {p1, v0}, Landroidx/compose/ui/platform/InspectorInfo;->setName(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object p1

    iget-object p0, p0, Landroidx/compose/foundation/relocation/BringIntoViewRequesterElement;->requester:Landroidx/compose/foundation/relocation/BringIntoViewRequester;

    invoke-virtual {p1, v0, p0}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public update(Landroidx/compose/foundation/relocation/BringIntoViewRequesterNode;)V
    .locals 1

    const-string v0, "node"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/foundation/relocation/BringIntoViewRequesterElement;->requester:Landroidx/compose/foundation/relocation/BringIntoViewRequester;

    .line 124
    invoke-virtual {p1, p0}, Landroidx/compose/foundation/relocation/BringIntoViewRequesterNode;->updateRequester(Landroidx/compose/foundation/relocation/BringIntoViewRequester;)V

    return-void
.end method

.method public bridge synthetic update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 0

    .line 115
    check-cast p1, Landroidx/compose/foundation/relocation/BringIntoViewRequesterNode;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/relocation/BringIntoViewRequesterElement;->update(Landroidx/compose/foundation/relocation/BringIntoViewRequesterNode;)V

    return-void
.end method
