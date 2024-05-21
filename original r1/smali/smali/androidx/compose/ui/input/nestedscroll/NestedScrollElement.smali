.class final Landroidx/compose/ui/input/nestedscroll/NestedScrollElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "NestedScrollModifier.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\u000c\u001a\u00020\u0002H\u0016J\u0013\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0002H\u0016J\u000c\u0010\u0016\u001a\u00020\u0014*\u00020\u0017H\u0016R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0018"
    }
    d2 = {
        "Landroidx/compose/ui/input/nestedscroll/NestedScrollElement;",
        "Landroidx/compose/ui/node/ModifierNodeElement;",
        "Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;",
        "connection",
        "Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;",
        "dispatcher",
        "Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;",
        "(Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;)V",
        "getConnection",
        "()Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;",
        "getDispatcher",
        "()Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;",
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
.field private final connection:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

.field private final dispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;)V
    .locals 1

    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 342
    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollElement;->connection:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    iput-object p2, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollElement;->dispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    return-void
.end method


# virtual methods
.method public bridge synthetic create()Landroidx/compose/ui/Modifier$Node;
    .locals 0

    .line 339
    invoke-virtual {p0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollElement;->create()Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/Modifier$Node;

    return-object p0
.end method

.method public create()Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;
    .locals 2

    .line 344
    new-instance v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;

    iget-object v1, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollElement;->connection:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    iget-object p0, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollElement;->dispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    invoke-direct {v0, v1, p0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;-><init>(Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 358
    instance-of v0, p1, Landroidx/compose/ui/input/nestedscroll/NestedScrollElement;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 359
    :cond_0
    check-cast p1, Landroidx/compose/ui/input/nestedscroll/NestedScrollElement;

    iget-object v0, p1, Landroidx/compose/ui/input/nestedscroll/NestedScrollElement;->connection:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    iget-object v2, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollElement;->connection:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 360
    :cond_1
    iget-object p1, p1, Landroidx/compose/ui/input/nestedscroll/NestedScrollElement;->dispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    iget-object p0, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollElement;->dispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public final getConnection()Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollElement;->connection:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    return-object p0
.end method

.method public final getDispatcher()Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollElement;->dispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollElement;->connection:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    .line 352
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollElement;->dispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    if-eqz p0, :cond_0

    .line 353
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public inspectableProperties(Landroidx/compose/ui/platform/InspectorInfo;)V
    .locals 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nestedScroll"

    .line 365
    invoke-virtual {p1, v0}, Landroidx/compose/ui/platform/InspectorInfo;->setName(Ljava/lang/String;)V

    .line 366
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v0

    const-string v1, "connection"

    iget-object v2, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollElement;->connection:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 367
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object p1

    const-string v0, "dispatcher"

    iget-object p0, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollElement;->dispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    invoke-virtual {p1, v0, p0}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 0

    .line 339
    check-cast p1, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/input/nestedscroll/NestedScrollElement;->update(Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;)V

    return-void
.end method

.method public update(Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;)V
    .locals 1

    const-string v0, "node"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollElement;->connection:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    iget-object p0, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollElement;->dispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    .line 348
    invoke-virtual {p1, v0, p0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->updateNode$ui_release(Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;)V

    return-void
.end method
