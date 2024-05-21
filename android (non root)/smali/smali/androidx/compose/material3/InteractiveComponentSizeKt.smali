.class public final Landroidx/compose/material3/InteractiveComponentSizeKt;
.super Ljava/lang/Object;
.source "InteractiveComponentSize.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInteractiveComponentSize.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InteractiveComponentSize.kt\nandroidx/compose/material3/InteractiveComponentSizeKt\n+ 2 InspectableValue.kt\nandroidx/compose/ui/platform/InspectableValueKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,128:1\n135#2:129\n154#3:130\n*S KotlinDebug\n*F\n+ 1 InteractiveComponentSize.kt\nandroidx/compose/material3/InteractiveComponentSizeKt\n*L\n48#1:129\n127#1:130\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\n\u001a\u00020\r*\u00020\r\"\"\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00018GX\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\"\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00018GX\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0008\u0010\u0004\u001a\u0004\u0008\t\u0010\u0006\"\u0013\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00f8\u0001\u0000\u00a2\u0006\u0004\n\u0002\u0010\u000c\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u000e"
    }
    d2 = {
        "LocalMinimumInteractiveComponentEnforcement",
        "Landroidx/compose/runtime/ProvidableCompositionLocal;",
        "",
        "getLocalMinimumInteractiveComponentEnforcement$annotations",
        "()V",
        "getLocalMinimumInteractiveComponentEnforcement",
        "()Landroidx/compose/runtime/ProvidableCompositionLocal;",
        "LocalMinimumTouchTargetEnforcement",
        "getLocalMinimumTouchTargetEnforcement$annotations",
        "getLocalMinimumTouchTargetEnforcement",
        "minimumInteractiveComponentSize",
        "Landroidx/compose/ui/unit/DpSize;",
        "J",
        "Landroidx/compose/ui/Modifier;",
        "material3_release"
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
.field private static final LocalMinimumInteractiveComponentEnforcement:Landroidx/compose/runtime/ProvidableCompositionLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/ProvidableCompositionLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final LocalMinimumTouchTargetEnforcement:Landroidx/compose/runtime/ProvidableCompositionLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/ProvidableCompositionLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final minimumInteractiveComponentSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 75
    sget-object v0, Landroidx/compose/material3/InteractiveComponentSizeKt$LocalMinimumInteractiveComponentEnforcement$1;->INSTANCE:Landroidx/compose/material3/InteractiveComponentSizeKt$LocalMinimumInteractiveComponentEnforcement$1;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->staticCompositionLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/InteractiveComponentSizeKt;->LocalMinimumInteractiveComponentEnforcement:Landroidx/compose/runtime/ProvidableCompositionLocal;

    sput-object v0, Landroidx/compose/material3/InteractiveComponentSizeKt;->LocalMinimumTouchTargetEnforcement:Landroidx/compose/runtime/ProvidableCompositionLocal;

    const/16 v0, 0x30

    int-to-float v0, v0

    .line 130
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 127
    invoke-static {v1, v0}, Landroidx/compose/ui/unit/DpKt;->DpSize-YgX7TsA(FF)J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/material3/InteractiveComponentSizeKt;->minimumInteractiveComponentSize:J

    return-void
.end method

.method public static final synthetic access$getMinimumInteractiveComponentSize$p()J
    .locals 2

    sget-wide v0, Landroidx/compose/material3/InteractiveComponentSizeKt;->minimumInteractiveComponentSize:J

    return-wide v0
.end method

.method public static final getLocalMinimumInteractiveComponentEnforcement()Landroidx/compose/runtime/ProvidableCompositionLocal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/ProvidableCompositionLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroidx/compose/material3/InteractiveComponentSizeKt;->LocalMinimumInteractiveComponentEnforcement:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-object v0
.end method

.method public static synthetic getLocalMinimumInteractiveComponentEnforcement$annotations()V
    .locals 0

    return-void
.end method

.method public static final getLocalMinimumTouchTargetEnforcement()Landroidx/compose/runtime/ProvidableCompositionLocal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/ProvidableCompositionLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroidx/compose/material3/InteractiveComponentSizeKt;->LocalMinimumTouchTargetEnforcement:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-object v0
.end method

.method public static synthetic getLocalMinimumTouchTargetEnforcement$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->WARNING:Lkotlin/DeprecationLevel;
        message = "Use LocalMinimumInteractiveComponentEnforcement instead."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "LocalMinimumInteractiveComponentEnforcement"
            imports = {}
        .end subannotation
    .end annotation

    return-void
.end method

.method public static final minimumInteractiveComponentSize(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/compose/material3/InteractiveComponentSizeKt$minimumInteractiveComponentSize$$inlined$debugInspectorInfo$1;

    invoke-direct {v0}, Landroidx/compose/material3/InteractiveComponentSizeKt$minimumInteractiveComponentSize$$inlined$debugInspectorInfo$1;-><init>()V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    .line 47
    :goto_0
    sget-object v1, Landroidx/compose/material3/InteractiveComponentSizeKt$minimumInteractiveComponentSize$2;->INSTANCE:Landroidx/compose/material3/InteractiveComponentSizeKt$minimumInteractiveComponentSize$2;

    check-cast v1, Lkotlin/jvm/functions/Function3;

    invoke-static {p0, v0, v1}, Landroidx/compose/ui/ComposedModifierKt;->composed(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method
