.class final Landroidx/compose/material3/TimePickerKt$clockDial$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TimePicker.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/TimePickerKt;->clockDial(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/TimePickerState;Z)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Landroidx/compose/ui/Modifier;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Landroidx/compose/ui/Modifier;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTimePicker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TimePicker.kt\nandroidx/compose/material3/TimePickerKt$clockDial$2\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 Effects.kt\nandroidx/compose/runtime/EffectsKt\n+ 5 Effects.kt\nandroidx/compose/runtime/EffectsKt$rememberCoroutineScope$1\n+ 6 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 7 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 8 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,1673:1\n25#2:1674\n25#2:1681\n25#2:1688\n25#2:1699\n36#2:1712\n1114#3,6:1675\n1114#3,6:1682\n1114#3,6:1689\n1114#3,3:1700\n1117#3,3:1706\n1114#3,6:1713\n474#4,4:1695\n478#4,2:1703\n482#4:1709\n474#5:1705\n76#6:1710\n1#7:1711\n76#8:1719\n102#8,2:1720\n76#8:1722\n102#8,2:1723\n76#8:1725\n*S KotlinDebug\n*F\n+ 1 TimePicker.kt\nandroidx/compose/material3/TimePickerKt$clockDial$2\n*L\n1246#1:1674\n1247#1:1681\n1248#1:1688\n1249#1:1699\n1253#1:1712\n1246#1:1675,6\n1247#1:1682,6\n1248#1:1689,6\n1249#1:1700,3\n1249#1:1706,3\n1253#1:1713,6\n1249#1:1695,4\n1249#1:1703,2\n1249#1:1709\n1249#1:1705\n1250#1:1710\n1246#1:1719\n1246#1:1720,2\n1247#1:1722\n1247#1:1723,2\n1248#1:1725\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0001H\u000b\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/compose/ui/Modifier;",
        "invoke",
        "(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $autoSwitchToMinute:Z

.field final synthetic $state:Landroidx/compose/material3/TimePickerState;


# direct methods
.method constructor <init>(Landroidx/compose/material3/TimePickerState;Z)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/TimePickerKt$clockDial$2;->$state:Landroidx/compose/material3/TimePickerState;

    iput-boolean p2, p0, Landroidx/compose/material3/TimePickerKt$clockDial$2;->$autoSwitchToMinute:Z

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public static final synthetic access$invoke$lambda$1(Landroidx/compose/runtime/MutableState;)F
    .locals 0

    .line 1242
    invoke-static {p0}, Landroidx/compose/material3/TimePickerKt$clockDial$2;->invoke$lambda$1(Landroidx/compose/runtime/MutableState;)F

    move-result p0

    return p0
.end method

.method public static final synthetic access$invoke$lambda$2(Landroidx/compose/runtime/MutableState;F)V
    .locals 0

    .line 1242
    invoke-static {p0, p1}, Landroidx/compose/material3/TimePickerKt$clockDial$2;->invoke$lambda$2(Landroidx/compose/runtime/MutableState;F)V

    return-void
.end method

.method public static final synthetic access$invoke$lambda$4(Landroidx/compose/runtime/MutableState;)F
    .locals 0

    .line 1242
    invoke-static {p0}, Landroidx/compose/material3/TimePickerKt$clockDial$2;->invoke$lambda$4(Landroidx/compose/runtime/MutableState;)F

    move-result p0

    return p0
.end method

.method public static final synthetic access$invoke$lambda$5(Landroidx/compose/runtime/MutableState;F)V
    .locals 0

    .line 1242
    invoke-static {p0, p1}, Landroidx/compose/material3/TimePickerKt$clockDial$2;->invoke$lambda$5(Landroidx/compose/runtime/MutableState;F)V

    return-void
.end method

.method private static final invoke$lambda$1(Landroidx/compose/runtime/MutableState;)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Float;",
            ">;)F"
        }
    .end annotation

    .line 1246
    check-cast p0, Landroidx/compose/runtime/State;

    .line 1719
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method private static final invoke$lambda$2(Landroidx/compose/runtime/MutableState;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Float;",
            ">;F)V"
        }
    .end annotation

    .line 1246
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 1720
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private static final invoke$lambda$4(Landroidx/compose/runtime/MutableState;)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Float;",
            ">;)F"
        }
    .end annotation

    .line 1247
    check-cast p0, Landroidx/compose/runtime/State;

    .line 1722
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method private static final invoke$lambda$5(Landroidx/compose/runtime/MutableState;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Float;",
            ">;F)V"
        }
    .end annotation

    .line 1247
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 1723
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private static final invoke$lambda$7(Landroidx/compose/runtime/MutableState;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/ui/unit/IntOffset;",
            ">;)J"
        }
    .end annotation

    .line 1248
    check-cast p0, Landroidx/compose/runtime/State;

    .line 1725
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/unit/IntOffset;

    invoke-virtual {p0}, Landroidx/compose/ui/unit/IntOffset;->unbox-impl()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final invoke(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "$this$composed"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, -0x620e1528

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v3, "C1245@47844L31,1246@47895L31,1247@47945L43,1248@48005L24,*1249@48066L7,1252@48143L28:TimePicker.kt#uh7d8r"

    invoke-static {v1, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, -0x1

    const-string v4, "androidx.compose.material3.clockDial.<anonymous> (TimePicker.kt:1244)"

    move/from16 v5, p3

    .line 1246
    invoke-static {v2, v5, v3, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    const v2, -0x1d58f75c

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v3, "CC(remember):Composables.kt#9igjgp"

    invoke-static {v1, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1675
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .line 1676
    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-ne v4, v5, :cond_1

    .line 1246
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v4, v8, v7, v8}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v4

    .line 1678
    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1674
    :cond_1
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1246
    check-cast v4, Landroidx/compose/runtime/MutableState;

    .line 1247
    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v1, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1682
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .line 1683
    sget-object v9, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v9}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v9

    if-ne v5, v9, :cond_2

    .line 1247
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v5, v8, v7, v8}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v5

    .line 1685
    invoke-interface {v1, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1681
    :cond_2
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1247
    check-cast v5, Landroidx/compose/runtime/MutableState;

    .line 1248
    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v1, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1689
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    .line 1690
    sget-object v9, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v9}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v9

    if-ne v6, v9, :cond_3

    .line 1248
    sget-object v6, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/unit/IntOffset$Companion;->getZero-nOcc-ac()J

    move-result-wide v9

    invoke-static {v9, v10}, Landroidx/compose/ui/unit/IntOffset;->box-impl(J)Landroidx/compose/ui/unit/IntOffset;

    move-result-object v6

    invoke-static {v6, v8, v7, v8}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v6

    .line 1692
    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1688
    :cond_3
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1248
    check-cast v6, Landroidx/compose/runtime/MutableState;

    const v7, 0x2e20b340

    .line 1249
    invoke-interface {v1, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v7, "CC(rememberCoroutineScope)476@19869L144:Effects.kt#9igjgp"

    invoke-static {v1, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1698
    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v1, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1700
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    .line 1701
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_4

    .line 1705
    sget-object v2, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 1704
    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v2, v1}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    .line 1703
    new-instance v3, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    invoke-direct {v3, v2}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;-><init>(Lkotlinx/coroutines/CoroutineScope;)V

    .line 1706
    invoke-interface {v1, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v2, v3

    .line 1699
    :cond_4
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1698
    check-cast v2, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    .line 1709
    invoke-virtual {v2}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1250
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v3

    check-cast v3, Landroidx/compose/runtime/CompositionLocal;

    const v7, 0x789c5f52

    const-string v8, "CC:CompositionLocal.kt#9igjgp"

    .line 1710
    invoke-static {v1, v7, v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v1, v3}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 1250
    check-cast v3, Landroidx/compose/ui/unit/Density;

    invoke-static {}, Landroidx/compose/material3/TimePickerKt;->access$getMaxDistance$p()F

    move-result v7

    invoke-interface {v3, v7}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v3

    .line 1252
    sget-object v7, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v7, Landroidx/compose/ui/Modifier;

    iget-object v8, v0, Landroidx/compose/material3/TimePickerKt$clockDial$2;->$state:Landroidx/compose/material3/TimePickerState;

    const v9, 0x44faf204

    .line 1253
    invoke-interface {v1, v9}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v9, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {v1, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1712
    invoke-interface {v1, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    .line 1713
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    if-nez v9, :cond_5

    .line 1714
    sget-object v9, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v9}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v9

    if-ne v10, v9, :cond_6

    .line 1253
    :cond_5
    new-instance v9, Landroidx/compose/material3/TimePickerKt$clockDial$2$1$1;

    invoke-direct {v9, v8}, Landroidx/compose/material3/TimePickerKt$clockDial$2$1$1;-><init>(Landroidx/compose/material3/TimePickerState;)V

    move-object v10, v9

    check-cast v10, Lkotlin/jvm/functions/Function1;

    .line 1716
    invoke-interface {v1, v10}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1712
    :cond_6
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v10, Lkotlin/jvm/functions/Function1;

    .line 1253
    invoke-static {v7, v10}, Landroidx/compose/ui/layout/OnRemeasuredModifierKt;->onSizeChanged(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    iget-object v8, v0, Landroidx/compose/material3/TimePickerKt$clockDial$2;->$state:Landroidx/compose/material3/TimePickerState;

    .line 1254
    invoke-static {v6}, Landroidx/compose/material3/TimePickerKt$clockDial$2;->invoke$lambda$7(Landroidx/compose/runtime/MutableState;)J

    move-result-wide v9

    invoke-static {v9, v10}, Landroidx/compose/ui/unit/IntOffset;->box-impl(J)Landroidx/compose/ui/unit/IntOffset;

    move-result-object v9

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    filled-new-array {v8, v9, v10}, [Ljava/lang/Object;

    move-result-object v8

    new-instance v17, Landroidx/compose/material3/TimePickerKt$clockDial$2$2;

    iget-object v13, v0, Landroidx/compose/material3/TimePickerKt$clockDial$2;->$state:Landroidx/compose/material3/TimePickerState;

    iget-boolean v15, v0, Landroidx/compose/material3/TimePickerKt$clockDial$2;->$autoSwitchToMinute:Z

    const/16 v16, 0x0

    move-object/from16 v9, v17

    move-object v10, v4

    move-object v11, v5

    move-object v12, v2

    move v14, v3

    invoke-direct/range {v9 .. v16}, Landroidx/compose/material3/TimePickerKt$clockDial$2$2;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/material3/TimePickerState;FZLkotlin/coroutines/Continuation;)V

    move-object/from16 v9, v17

    check-cast v9, Lkotlin/jvm/functions/Function2;

    invoke-static {v7, v8, v9}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;[Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    iget-object v8, v0, Landroidx/compose/material3/TimePickerKt$clockDial$2;->$state:Landroidx/compose/material3/TimePickerState;

    .line 1265
    invoke-static {v6}, Landroidx/compose/material3/TimePickerKt$clockDial$2;->invoke$lambda$7(Landroidx/compose/runtime/MutableState;)J

    move-result-wide v9

    invoke-static {v9, v10}, Landroidx/compose/ui/unit/IntOffset;->box-impl(J)Landroidx/compose/ui/unit/IntOffset;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    filled-new-array {v8, v6, v9}, [Ljava/lang/Object;

    move-result-object v6

    new-instance v8, Landroidx/compose/material3/TimePickerKt$clockDial$2$3;

    iget-object v11, v0, Landroidx/compose/material3/TimePickerKt$clockDial$2;->$state:Landroidx/compose/material3/TimePickerState;

    iget-boolean v12, v0, Landroidx/compose/material3/TimePickerKt$clockDial$2;->$autoSwitchToMinute:Z

    move-object v9, v8

    move-object v10, v2

    move v13, v3

    move-object v14, v4

    move-object v15, v5

    invoke-direct/range {v9 .. v16}, Landroidx/compose/material3/TimePickerKt$clockDial$2$3;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/material3/TimePickerState;ZFLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    check-cast v8, Lkotlin/jvm/functions/Function2;

    invoke-static {v7, v6, v8}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;[Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_7
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1242
    check-cast p1, Landroidx/compose/ui/Modifier;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/material3/TimePickerKt$clockDial$2;->invoke(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method
