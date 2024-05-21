.class public final Landroidx/compose/ui/input/pointer/PointerIconKt;
.super Ljava/lang/Object;
.source "PointerIcon.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPointerIcon.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PointerIcon.kt\nandroidx/compose/ui/input/pointer/PointerIconKt\n+ 2 InspectableValue.kt\nandroidx/compose/ui/platform/InspectableValueKt\n*L\n1#1,242:1\n135#2:243\n*S KotlinDebug\n*F\n+ 1 PointerIcon.kt\nandroidx/compose/ui/input/pointer/PointerIconKt\n*L\n86#1:243\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u001a\u001e\u0010\u0003\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008H\u0007\"\u0016\u0010\u0000\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "ModifierLocalPointerIcon",
        "Landroidx/compose/ui/modifier/ProvidableModifierLocal;",
        "Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;",
        "pointerHoverIcon",
        "Landroidx/compose/ui/Modifier;",
        "icon",
        "Landroidx/compose/ui/input/pointer/PointerIcon;",
        "overrideDescendants",
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


# static fields
.field private static final ModifierLocalPointerIcon:Landroidx/compose/ui/modifier/ProvidableModifierLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/ui/modifier/ProvidableModifierLocal<",
            "Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 242
    sget-object v0, Landroidx/compose/ui/input/pointer/PointerIconKt$ModifierLocalPointerIcon$1;->INSTANCE:Landroidx/compose/ui/input/pointer/PointerIconKt$ModifierLocalPointerIcon$1;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Landroidx/compose/ui/modifier/ModifierLocalKt;->modifierLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/input/pointer/PointerIconKt;->ModifierLocalPointerIcon:Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    return-void
.end method

.method public static final synthetic access$getModifierLocalPointerIcon$p()Landroidx/compose/ui/modifier/ProvidableModifierLocal;
    .locals 1

    sget-object v0, Landroidx/compose/ui/input/pointer/PointerIconKt;->ModifierLocalPointerIcon:Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    return-object v0
.end method

.method public static final pointerHoverIcon(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/input/pointer/PointerIcon;Z)Landroidx/compose/ui/Modifier;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "icon"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/compose/ui/input/pointer/PointerIconKt$pointerHoverIcon$$inlined$debugInspectorInfo$1;

    invoke-direct {v0, p1, p2}, Landroidx/compose/ui/input/pointer/PointerIconKt$pointerHoverIcon$$inlined$debugInspectorInfo$1;-><init>(Landroidx/compose/ui/input/pointer/PointerIcon;Z)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    .line 86
    :goto_0
    new-instance v1, Landroidx/compose/ui/input/pointer/PointerIconKt$pointerHoverIcon$2;

    invoke-direct {v1, p1, p2}, Landroidx/compose/ui/input/pointer/PointerIconKt$pointerHoverIcon$2;-><init>(Landroidx/compose/ui/input/pointer/PointerIcon;Z)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    invoke-static {p0, v0, v1}, Landroidx/compose/ui/ComposedModifierKt;->composed(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic pointerHoverIcon$default(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/input/pointer/PointerIcon;ZILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 85
    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/input/pointer/PointerIconKt;->pointerHoverIcon(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/input/pointer/PointerIcon;Z)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method
