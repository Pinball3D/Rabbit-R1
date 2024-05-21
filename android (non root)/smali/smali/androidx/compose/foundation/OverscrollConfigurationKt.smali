.class public final Landroidx/compose/foundation/OverscrollConfigurationKt;
.super Ljava/lang/Object;
.source "OverscrollConfiguration.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\"$\u0010\u0000\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00018GX\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "LocalOverscrollConfiguration",
        "Landroidx/compose/runtime/ProvidableCompositionLocal;",
        "Landroidx/compose/foundation/OverscrollConfiguration;",
        "getLocalOverscrollConfiguration$annotations",
        "()V",
        "getLocalOverscrollConfiguration",
        "()Landroidx/compose/runtime/ProvidableCompositionLocal;",
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


# static fields
.field private static final LocalOverscrollConfiguration:Landroidx/compose/runtime/ProvidableCompositionLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/ProvidableCompositionLocal<",
            "Landroidx/compose/foundation/OverscrollConfiguration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 68
    sget-object v0, Landroidx/compose/foundation/OverscrollConfigurationKt$LocalOverscrollConfiguration$1;->INSTANCE:Landroidx/compose/foundation/OverscrollConfigurationKt$LocalOverscrollConfiguration$1;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v0, v1, v2}, Landroidx/compose/runtime/CompositionLocalKt;->compositionLocalOf$default(Landroidx/compose/runtime/SnapshotMutationPolicy;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/foundation/OverscrollConfigurationKt;->LocalOverscrollConfiguration:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-void
.end method

.method public static final getLocalOverscrollConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/ProvidableCompositionLocal<",
            "Landroidx/compose/foundation/OverscrollConfiguration;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroidx/compose/foundation/OverscrollConfigurationKt;->LocalOverscrollConfiguration:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-object v0
.end method

.method public static synthetic getLocalOverscrollConfiguration$annotations()V
    .locals 0

    return-void
.end method
