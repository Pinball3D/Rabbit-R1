.class public final Landroidx/compose/ui/focus/FocusTargetModifierNodeKt;
.super Ljava/lang/Object;
.source "FocusTargetModifierNode.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0006\u0010\u0000\u001a\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "FocusTargetModifierNode",
        "Landroidx/compose/ui/focus/FocusTargetModifierNode;",
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
.method public static final FocusTargetModifierNode()Landroidx/compose/ui/focus/FocusTargetModifierNode;
    .locals 1

    .line 39
    new-instance v0, Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-direct {v0}, Landroidx/compose/ui/focus/FocusTargetNode;-><init>()V

    check-cast v0, Landroidx/compose/ui/focus/FocusTargetModifierNode;

    return-object v0
.end method
