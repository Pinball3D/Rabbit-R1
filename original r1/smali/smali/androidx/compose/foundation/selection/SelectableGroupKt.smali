.class public final Landroidx/compose/foundation/selection/SelectableGroupKt;
.super Ljava/lang/Object;
.source "SelectableGroup.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "selectableGroup",
        "Landroidx/compose/ui/Modifier;",
        "foundation_release"
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
.method public static final selectableGroup(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    sget-object v0, Landroidx/compose/foundation/selection/SelectableGroupKt$selectableGroup$1;->INSTANCE:Landroidx/compose/foundation/selection/SelectableGroupKt$selectableGroup$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v3, v0, v1, v2}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method
