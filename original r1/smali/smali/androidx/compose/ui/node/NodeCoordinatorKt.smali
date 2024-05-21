.class public final Landroidx/compose/ui/node/NodeCoordinatorKt;
.super Ljava/lang/Object;
.source "NodeCoordinator.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001a3\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u00022\n\u0010\u0003\u001a\u0006\u0012\u0002\u0008\u00030\u00042\n\u0010\u0005\u001a\u0006\u0012\u0002\u0008\u00030\u0004H\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006\u0008"
    }
    d2 = {
        "nextUntil",
        "Landroidx/compose/ui/Modifier$Node;",
        "Landroidx/compose/ui/node/DelegatableNode;",
        "type",
        "Landroidx/compose/ui/node/NodeKind;",
        "stopType",
        "nextUntil-hw7D004",
        "(Landroidx/compose/ui/node/DelegatableNode;II)Landroidx/compose/ui/Modifier$Node;",
        "ui_release"
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
.method public static final synthetic access$nextUntil-hw7D004(Landroidx/compose/ui/node/DelegatableNode;II)Landroidx/compose/ui/Modifier$Node;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/node/NodeCoordinatorKt;->nextUntil-hw7D004(Landroidx/compose/ui/node/DelegatableNode;II)Landroidx/compose/ui/Modifier$Node;

    move-result-object p0

    return-object p0
.end method

.method private static final nextUntil-hw7D004(Landroidx/compose/ui/node/DelegatableNode;II)Landroidx/compose/ui/Modifier$Node;
    .locals 3

    .line 1338
    invoke-interface {p0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1339
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v1

    and-int/2addr v1, p1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    :goto_0
    if-eqz p0, :cond_4

    .line 1342
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v1

    and-int v2, v1, p2

    if-eqz v2, :cond_2

    return-object v0

    :cond_2
    and-int/2addr v1, p1

    if-eqz v1, :cond_3

    return-object p0

    .line 1347
    :cond_3
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object p0

    goto :goto_0

    :cond_4
    return-object v0
.end method
