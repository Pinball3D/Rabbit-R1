.class public final Landroidx/compose/ui/layout/PinnableContainerKt;
.super Ljava/lang/Object;
.source "PinnableContainer.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0019\u0010\u0000\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "LocalPinnableContainer",
        "Landroidx/compose/runtime/ProvidableCompositionLocal;",
        "Landroidx/compose/ui/layout/PinnableContainer;",
        "getLocalPinnableContainer",
        "()Landroidx/compose/runtime/ProvidableCompositionLocal;",
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


# static fields
.field private static final LocalPinnableContainer:Landroidx/compose/runtime/ProvidableCompositionLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/ProvidableCompositionLocal<",
            "Landroidx/compose/ui/layout/PinnableContainer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 27
    sget-object v0, Landroidx/compose/ui/layout/PinnableContainerKt$LocalPinnableContainer$1;->INSTANCE:Landroidx/compose/ui/layout/PinnableContainerKt$LocalPinnableContainer$1;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v0, v1, v2}, Landroidx/compose/runtime/CompositionLocalKt;->compositionLocalOf$default(Landroidx/compose/runtime/SnapshotMutationPolicy;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/layout/PinnableContainerKt;->LocalPinnableContainer:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-void
.end method

.method public static final getLocalPinnableContainer()Landroidx/compose/runtime/ProvidableCompositionLocal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/ProvidableCompositionLocal<",
            "Landroidx/compose/ui/layout/PinnableContainer;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroidx/compose/ui/layout/PinnableContainerKt;->LocalPinnableContainer:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-object v0
.end method
