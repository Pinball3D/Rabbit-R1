.class abstract Landroidx/compose/foundation/layout/InsetsConsumingModifier;
.super Landroidx/compose/ui/platform/InspectorValueInfo;
.source "WindowInsetsPadding.kt"

# interfaces
.implements Landroidx/compose/ui/modifier/ModifierLocalConsumer;
.implements Landroidx/compose/ui/modifier/ModifierLocalProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/platform/InspectorValueInfo;",
        "Landroidx/compose/ui/modifier/ModifierLocalConsumer;",
        "Landroidx/compose/ui/modifier/ModifierLocalProvider<",
        "Landroidx/compose/foundation/layout/WindowInsets;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWindowInsetsPadding.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WindowInsetsPadding.kt\nandroidx/compose/foundation/layout/InsetsConsumingModifier\n+ 2 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,305:1\n81#2:306\n107#2,2:307\n*S KotlinDebug\n*F\n+ 1 WindowInsetsPadding.kt\nandroidx/compose/foundation/layout/InsetsConsumingModifier\n*L\n215#1:306\n215#1:307,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00083\u0018\u00002\u00020\u00012\u00020\u00022\u0008\u0012\u0004\u0012\u00020\u00040\u0003B \u0008\u0004\u0012\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006\u00a2\u0006\u0002\u0008\t\u00a2\u0006\u0002\u0010\nJ\u0010\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u0004H&J\u0010\u0010\u001b\u001a\u00020\u00082\u0006\u0010\u001c\u001a\u00020\u001dH\u0016R+\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00048B@BX\u0082\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00148VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u0017\u001a\u00020\u00048VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u000e\u0082\u0001\u0002\u001e\u001f\u00a8\u0006 "
    }
    d2 = {
        "Landroidx/compose/foundation/layout/InsetsConsumingModifier;",
        "Landroidx/compose/ui/platform/InspectorValueInfo;",
        "Landroidx/compose/ui/modifier/ModifierLocalConsumer;",
        "Landroidx/compose/ui/modifier/ModifierLocalProvider;",
        "Landroidx/compose/foundation/layout/WindowInsets;",
        "inspectorInfo",
        "Lkotlin/Function1;",
        "Landroidx/compose/ui/platform/InspectorInfo;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "(Lkotlin/jvm/functions/Function1;)V",
        "<set-?>",
        "consumedInsets",
        "getConsumedInsets",
        "()Landroidx/compose/foundation/layout/WindowInsets;",
        "setConsumedInsets",
        "(Landroidx/compose/foundation/layout/WindowInsets;)V",
        "consumedInsets$delegate",
        "Landroidx/compose/runtime/MutableState;",
        "key",
        "Landroidx/compose/ui/modifier/ProvidableModifierLocal;",
        "getKey",
        "()Landroidx/compose/ui/modifier/ProvidableModifierLocal;",
        "value",
        "getValue",
        "calculateInsets",
        "modifierLocalInsets",
        "onModifierLocalsUpdated",
        "scope",
        "Landroidx/compose/ui/modifier/ModifierLocalReadScope;",
        "Landroidx/compose/foundation/layout/PaddingValuesConsumingModifier;",
        "Landroidx/compose/foundation/layout/UnionInsetsConsumingModifier;",
        "foundation-layout_release"
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
.field private final consumedInsets$delegate:Landroidx/compose/runtime/MutableState;


# direct methods
.method private constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/platform/InspectorInfo;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 214
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/InspectorValueInfo;-><init>(Lkotlin/jvm/functions/Function1;)V

    const/4 p1, 0x0

    .line 215
    invoke-static {p1, p1, p1, p1}, Landroidx/compose/foundation/layout/WindowInsetsKt;->WindowInsets(IIII)Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p1, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/layout/InsetsConsumingModifier;->consumedInsets$delegate:Landroidx/compose/runtime/MutableState;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/compose/foundation/layout/InsetsConsumingModifier;-><init>(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final getConsumedInsets()Landroidx/compose/foundation/layout/WindowInsets;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/InsetsConsumingModifier;->consumedInsets$delegate:Landroidx/compose/runtime/MutableState;

    .line 215
    check-cast p0, Landroidx/compose/runtime/State;

    .line 306
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/layout/WindowInsets;

    return-object p0
.end method

.method private final setConsumedInsets(Landroidx/compose/foundation/layout/WindowInsets;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/InsetsConsumingModifier;->consumedInsets$delegate:Landroidx/compose/runtime/MutableState;

    .line 307
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public abstract calculateInsets(Landroidx/compose/foundation/layout/WindowInsets;)Landroidx/compose/foundation/layout/WindowInsets;
.end method

.method public getKey()Landroidx/compose/ui/modifier/ProvidableModifierLocal;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/ui/modifier/ProvidableModifierLocal<",
            "Landroidx/compose/foundation/layout/WindowInsets;",
            ">;"
        }
    .end annotation

    .line 227
    invoke-static {}, Landroidx/compose/foundation/layout/WindowInsetsPaddingKt;->getModifierLocalConsumedWindowInsets()Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    move-result-object p0

    return-object p0
.end method

.method public getValue()Landroidx/compose/foundation/layout/WindowInsets;
    .locals 0

    .line 230
    invoke-direct {p0}, Landroidx/compose/foundation/layout/InsetsConsumingModifier;->getConsumedInsets()Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 0

    .line 211
    invoke-virtual {p0}, Landroidx/compose/foundation/layout/InsetsConsumingModifier;->getValue()Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public onModifierLocalsUpdated(Landroidx/compose/ui/modifier/ModifierLocalReadScope;)V
    .locals 1

    const-string/jumbo v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    invoke-static {}, Landroidx/compose/foundation/layout/WindowInsetsPaddingKt;->getModifierLocalConsumedWindowInsets()Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/modifier/ModifierLocal;

    invoke-interface {p1, v0}, Landroidx/compose/ui/modifier/ModifierLocalReadScope;->getCurrent(Landroidx/compose/ui/modifier/ModifierLocal;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/layout/WindowInsets;

    .line 222
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/layout/InsetsConsumingModifier;->calculateInsets(Landroidx/compose/foundation/layout/WindowInsets;)Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/compose/foundation/layout/InsetsConsumingModifier;->setConsumedInsets(Landroidx/compose/foundation/layout/WindowInsets;)V

    return-void
.end method
