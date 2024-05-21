.class public final Landroidx/compose/ui/state/ToggleableStateKt;
.super Ljava/lang/Object;
.source "ToggleableState.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "ToggleableState",
        "Landroidx/compose/ui/state/ToggleableState;",
        "value",
        "",
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
.method public static final ToggleableState(Z)Landroidx/compose/ui/state/ToggleableState;
    .locals 0

    if-eqz p0, :cond_0

    .line 45
    sget-object p0, Landroidx/compose/ui/state/ToggleableState;->On:Landroidx/compose/ui/state/ToggleableState;

    goto :goto_0

    :cond_0
    sget-object p0, Landroidx/compose/ui/state/ToggleableState;->Off:Landroidx/compose/ui/state/ToggleableState;

    :goto_0
    return-object p0
.end method
