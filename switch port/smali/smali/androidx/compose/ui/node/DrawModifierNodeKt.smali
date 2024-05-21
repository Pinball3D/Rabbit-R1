.class public final Landroidx/compose/ui/node/DrawModifierNodeKt;
.super Ljava/lang/Object;
.source "DrawModifierNode.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDrawModifierNode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DrawModifierNode.kt\nandroidx/compose/ui/node/DrawModifierNodeKt\n+ 2 NodeKind.kt\nandroidx/compose/ui/node/Nodes\n*L\n1#1,44:1\n70#2:45\n*S KotlinDebug\n*F\n+ 1 DrawModifierNode.kt\nandroidx/compose/ui/node/DrawModifierNodeKt\n*L\n41#1:45\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "invalidateDraw",
        "",
        "Landroidx/compose/ui/node/DrawModifierNode;",
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
.method public static final invalidateDraw(Landroidx/compose/ui/node/DrawModifierNode;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-interface {p0}, Landroidx/compose/ui/node/DrawModifierNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    check-cast p0, Landroidx/compose/ui/node/DelegatableNode;

    const/4 v0, 0x1

    .line 45
    invoke-static {v0}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v0

    .line 41
    invoke-static {p0, v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireCoordinator-64DMado(Landroidx/compose/ui/node/DelegatableNode;I)Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->invalidateLayer()V

    :cond_0
    return-void
.end method
