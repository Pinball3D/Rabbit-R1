.class public final Landroidx/compose/material3/TouchExplorationStateProvider_androidKt;
.super Ljava/lang/Object;
.source "TouchExplorationStateProvider.android.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTouchExplorationStateProvider.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TouchExplorationStateProvider.android.kt\nandroidx/compose/material3/TouchExplorationStateProvider_androidKt\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,107:1\n76#2:108\n76#2:123\n25#3:109\n25#3:116\n25#3:124\n1114#4,6:110\n1114#4,6:117\n1114#4,6:125\n*S KotlinDebug\n*F\n+ 1 TouchExplorationStateProvider.android.kt\nandroidx/compose/material3/TouchExplorationStateProvider_androidKt\n*L\n42#1:108\n49#1:123\n43#1:109\n47#1:116\n60#1:124\n43#1:110,6\n47#1:117,6\n60#1:125,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u0013\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001H\u0001\u00a2\u0006\u0002\u0010\u0003\u001a7\u0010\u0004\u001a\u00020\u0005*\u00020\u00062\u0014\u0008\u0002\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00050\u00082\u000e\u0008\u0002\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u000bH\u0003\u00a2\u0006\u0002\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "touchExplorationState",
        "Landroidx/compose/runtime/State;",
        "",
        "(Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;",
        "ObserveState",
        "",
        "Landroidx/lifecycle/Lifecycle;",
        "handleEvent",
        "Lkotlin/Function1;",
        "Landroidx/lifecycle/Lifecycle$Event;",
        "onDispose",
        "Lkotlin/Function0;",
        "(Landroidx/lifecycle/Lifecycle;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V",
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


# direct methods
.method private static final ObserveState(Landroidx/lifecycle/Lifecycle;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/Lifecycle;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/lifecycle/Lifecycle$Event;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    const v0, -0x658d80f4

    .line 67
    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p3

    const-string v1, "C(ObserveState)67@2396L288:TouchExplorationStateProvider.android.kt#uh7d8r"

    invoke-static {p3, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, p5, 0x1

    if-eqz v1, :cond_0

    .line 65
    sget-object p1, Landroidx/compose/material3/TouchExplorationStateProvider_androidKt$ObserveState$1;->INSTANCE:Landroidx/compose/material3/TouchExplorationStateProvider_androidKt$ObserveState$1;

    check-cast p1, Lkotlin/jvm/functions/Function1;

    :cond_0
    move-object v3, p1

    and-int/lit8 p1, p5, 0x2

    if-eqz p1, :cond_1

    .line 66
    sget-object p1, Landroidx/compose/material3/TouchExplorationStateProvider_androidKt$ObserveState$2;->INSTANCE:Landroidx/compose/material3/TouchExplorationStateProvider_androidKt$ObserveState$2;

    move-object p2, p1

    check-cast p2, Lkotlin/jvm/functions/Function0;

    :cond_1
    move-object v4, p2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, -0x1

    const-string p2, "androidx.compose.material3.ObserveState (TouchExplorationStateProvider.android.kt:63)"

    .line 67
    invoke-static {v0, p4, p1, p2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 68
    :cond_2
    new-instance p1, Landroidx/compose/material3/TouchExplorationStateProvider_androidKt$ObserveState$3;

    invoke-direct {p1, p0, v3, v4}, Landroidx/compose/material3/TouchExplorationStateProvider_androidKt$ObserveState$3;-><init>(Landroidx/lifecycle/Lifecycle;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    check-cast p1, Lkotlin/jvm/functions/Function1;

    const/16 p2, 0x8

    invoke-static {p0, p1, p3, p2}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    new-instance p2, Landroidx/compose/material3/TouchExplorationStateProvider_androidKt$ObserveState$4;

    move-object v1, p2

    move-object v2, p0

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Landroidx/compose/material3/TouchExplorationStateProvider_androidKt$ObserveState$4;-><init>(Landroidx/lifecycle/Lifecycle;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;II)V

    check-cast p2, Lkotlin/jvm/functions/Function2;

    invoke-interface {p1, p2}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_0
    return-void
.end method

.method public static final synthetic access$ObserveState(Landroidx/lifecycle/Lifecycle;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Landroidx/compose/material3/TouchExplorationStateProvider_androidKt;->ObserveState(Landroidx/lifecycle/Lifecycle;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    return-void
.end method

.method public static final touchExplorationState(Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const v0, -0x3602de9c    # -2073644.5f

    invoke-interface {p0, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(touchExplorationState)41@1687L7,42@1726L104,46@1851L23,48@1900L7,48@1918L273,59@2204L52:TouchExplorationStateProvider.android.kt#uh7d8r"

    invoke-static {p0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "androidx.compose.material3.touchExplorationState (TouchExplorationStateProvider.android.kt:40)"

    .line 41
    invoke-static {v0, p1, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 42
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->getLocalContext()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object p1

    check-cast p1, Landroidx/compose/runtime/CompositionLocal;

    const v0, 0x789c5f52

    const-string v1, "CC:CompositionLocal.kt#9igjgp"

    .line 108
    invoke-static {p0, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {p0, p1}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 42
    check-cast p1, Landroid/content/Context;

    const v2, -0x1d58f75c

    .line 43
    invoke-interface {p0, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v3, "CC(remember):Composables.kt#9igjgp"

    invoke-static {p0, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 110
    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .line 111
    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v4, v5, :cond_1

    const-string v4, "accessibility"

    .line 44
    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v4, "null cannot be cast to non-null type android.view.accessibility.AccessibilityManager"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, p1

    check-cast v4, Landroid/view/accessibility/AccessibilityManager;

    .line 113
    invoke-interface {p0, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 109
    :cond_1
    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 43
    check-cast v4, Landroid/view/accessibility/AccessibilityManager;

    .line 47
    invoke-interface {p0, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {p0, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 117
    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object p1

    .line 118
    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne p1, v5, :cond_2

    .line 47
    new-instance p1, Landroidx/compose/material3/Listener;

    invoke-direct {p1}, Landroidx/compose/material3/Listener;-><init>()V

    .line 120
    invoke-interface {p0, p1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 116
    :cond_2
    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 47
    check-cast p1, Landroidx/compose/material3/Listener;

    .line 49
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->getLocalLifecycleOwner()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v5

    check-cast v5, Landroidx/compose/runtime/CompositionLocal;

    .line 123
    invoke-static {p0, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {p0, v5}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    .line 49
    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v5

    new-instance v0, Landroidx/compose/material3/TouchExplorationStateProvider_androidKt$touchExplorationState$1;

    invoke-direct {v0, p1, v4}, Landroidx/compose/material3/TouchExplorationStateProvider_androidKt$touchExplorationState$1;-><init>(Landroidx/compose/material3/Listener;Landroid/view/accessibility/AccessibilityManager;)V

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function1;

    new-instance v0, Landroidx/compose/material3/TouchExplorationStateProvider_androidKt$touchExplorationState$2;

    invoke-direct {v0, p1, v4}, Landroidx/compose/material3/TouchExplorationStateProvider_androidKt$touchExplorationState$2;-><init>(Landroidx/compose/material3/Listener;Landroid/view/accessibility/AccessibilityManager;)V

    move-object v7, v0

    check-cast v7, Lkotlin/jvm/functions/Function0;

    const/16 v9, 0x8

    const/4 v10, 0x0

    move-object v8, p0

    invoke-static/range {v5 .. v10}, Landroidx/compose/material3/TouchExplorationStateProvider_androidKt;->ObserveState(Landroidx/lifecycle/Lifecycle;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    .line 60
    invoke-interface {p0, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {p0, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 125
    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .line 126
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_3

    .line 60
    new-instance v0, Landroidx/compose/material3/TouchExplorationStateProvider_androidKt$touchExplorationState$3$1;

    invoke-direct {v0, p1}, Landroidx/compose/material3/TouchExplorationStateProvider_androidKt$touchExplorationState$3$1;-><init>(Landroidx/compose/material3/Listener;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object v0

    .line 128
    invoke-interface {p0, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 124
    :cond_3
    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 60
    check-cast v0, Landroidx/compose/runtime/State;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_4
    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v0
.end method
