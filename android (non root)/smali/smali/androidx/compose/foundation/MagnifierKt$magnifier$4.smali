.class final Landroidx/compose/foundation/MagnifierKt$magnifier$4;
.super Lkotlin/jvm/internal/Lambda;
.source "Magnifier.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/MagnifierKt;->magnifier(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;FLandroidx/compose/foundation/MagnifierStyle;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/PlatformMagnifierFactory;)Landroidx/compose/ui/Modifier;
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
    value = "SMAP\nMagnifier.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Magnifier.kt\nandroidx/compose/foundation/MagnifierKt$magnifier$4\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 5 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,392:1\n76#2:393\n76#2:394\n25#3:395\n25#3:402\n25#3:409\n25#3:416\n36#3:423\n36#3:430\n1097#4,6:396\n1097#4,6:403\n1097#4,6:410\n1097#4,6:417\n1097#4,6:424\n1097#4,6:431\n81#5:437\n107#5,2:438\n81#5:440\n81#5:441\n81#5:442\n81#5:443\n81#5:444\n81#5:445\n*S KotlinDebug\n*F\n+ 1 Magnifier.kt\nandroidx/compose/foundation/MagnifierKt$magnifier$4\n*L\n272#1:393\n273#1:394\n274#1:395\n279#1:402\n289#1:409\n294#1:416\n372#1:423\n384#1:430\n274#1:396,6\n279#1:403,6\n289#1:410,6\n294#1:417,6\n372#1:424,6\n384#1:431,6\n274#1:437\n274#1:438,2\n275#1:440\n276#1:441\n277#1:442\n278#1:443\n279#1:444\n289#1:445\n*E\n"
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
.field final synthetic $magnifierCenter:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onSizeChanged:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/unit/DpSize;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $platformMagnifierFactory:Landroidx/compose/foundation/PlatformMagnifierFactory;

.field final synthetic $sourceCenter:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $style:Landroidx/compose/foundation/MagnifierStyle;

.field final synthetic $zoom:F


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;FLkotlin/jvm/functions/Function1;Landroidx/compose/foundation/PlatformMagnifierFactory;Landroidx/compose/foundation/MagnifierStyle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;F",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/unit/DpSize;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/foundation/PlatformMagnifierFactory;",
            "Landroidx/compose/foundation/MagnifierStyle;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/MagnifierKt$magnifier$4;->$sourceCenter:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Landroidx/compose/foundation/MagnifierKt$magnifier$4;->$magnifierCenter:Lkotlin/jvm/functions/Function1;

    iput p3, p0, Landroidx/compose/foundation/MagnifierKt$magnifier$4;->$zoom:F

    iput-object p4, p0, Landroidx/compose/foundation/MagnifierKt$magnifier$4;->$onSizeChanged:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Landroidx/compose/foundation/MagnifierKt$magnifier$4;->$platformMagnifierFactory:Landroidx/compose/foundation/PlatformMagnifierFactory;

    iput-object p6, p0, Landroidx/compose/foundation/MagnifierKt$magnifier$4;->$style:Landroidx/compose/foundation/MagnifierStyle;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public static final synthetic access$invoke$lambda$1(Landroidx/compose/runtime/MutableState;)J
    .locals 2

    .line 271
    invoke-static {p0}, Landroidx/compose/foundation/MagnifierKt$magnifier$4;->invoke$lambda$1(Landroidx/compose/runtime/MutableState;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$invoke$lambda$10(Landroidx/compose/runtime/State;)Z
    .locals 0

    .line 271
    invoke-static {p0}, Landroidx/compose/foundation/MagnifierKt$magnifier$4;->invoke$lambda$10(Landroidx/compose/runtime/State;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$invoke$lambda$2(Landroidx/compose/runtime/MutableState;J)V
    .locals 0

    .line 271
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/MagnifierKt$magnifier$4;->invoke$lambda$2(Landroidx/compose/runtime/MutableState;J)V

    return-void
.end method

.method public static final synthetic access$invoke$lambda$3(Landroidx/compose/runtime/State;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 271
    invoke-static {p0}, Landroidx/compose/foundation/MagnifierKt$magnifier$4;->invoke$lambda$3(Landroidx/compose/runtime/State;)Lkotlin/jvm/functions/Function1;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$invoke$lambda$4(Landroidx/compose/runtime/State;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 271
    invoke-static {p0}, Landroidx/compose/foundation/MagnifierKt$magnifier$4;->invoke$lambda$4(Landroidx/compose/runtime/State;)Lkotlin/jvm/functions/Function1;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$invoke$lambda$5(Landroidx/compose/runtime/State;)F
    .locals 0

    .line 271
    invoke-static {p0}, Landroidx/compose/foundation/MagnifierKt$magnifier$4;->invoke$lambda$5(Landroidx/compose/runtime/State;)F

    move-result p0

    return p0
.end method

.method public static final synthetic access$invoke$lambda$6(Landroidx/compose/runtime/State;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 271
    invoke-static {p0}, Landroidx/compose/foundation/MagnifierKt$magnifier$4;->invoke$lambda$6(Landroidx/compose/runtime/State;)Lkotlin/jvm/functions/Function1;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$invoke$lambda$8(Landroidx/compose/runtime/State;)J
    .locals 2

    .line 271
    invoke-static {p0}, Landroidx/compose/foundation/MagnifierKt$magnifier$4;->invoke$lambda$8(Landroidx/compose/runtime/State;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static final invoke$lambda$1(Landroidx/compose/runtime/MutableState;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;)J"
        }
    .end annotation

    .line 274
    check-cast p0, Landroidx/compose/runtime/State;

    .line 437
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/geometry/Offset;

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v0

    return-wide v0
.end method

.method private static final invoke$lambda$10(Landroidx/compose/runtime/State;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 445
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final invoke$lambda$2(Landroidx/compose/runtime/MutableState;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;J)V"
        }
    .end annotation

    .line 274
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object p1

    .line 438
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private static final invoke$lambda$3(Landroidx/compose/runtime/State;)Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;>;)",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;"
        }
    .end annotation

    .line 440
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method private static final invoke$lambda$4(Landroidx/compose/runtime/State;)Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;>;)",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;"
        }
    .end annotation

    .line 441
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method private static final invoke$lambda$5(Landroidx/compose/runtime/State;)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;)F"
        }
    .end annotation

    .line 442
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method private static final invoke$lambda$6(Landroidx/compose/runtime/State;)Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/unit/DpSize;",
            "Lkotlin/Unit;",
            ">;>;)",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/unit/DpSize;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 443
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method private static final invoke$lambda$8(Landroidx/compose/runtime/State;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;)J"
        }
    .end annotation

    .line 444
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/geometry/Offset;

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final invoke(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "$this$composed"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, -0x1b1cdf4b

    invoke-interface {v2, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v4, "C271@11563L7,272@11602L7,273@11650L47,274@11729L34,275@11798L37,276@11859L26,277@11918L35,278@11984L331,288@12344L62,293@12536L107,305@13220L2602,371@15879L344,383@16592L78:Magnifier.kt#71ulvw"

    invoke-static {v2, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, -0x1

    const-string v5, "androidx.compose.foundation.magnifier.<anonymous> (Magnifier.kt:270)"

    move/from16 v6, p3

    .line 272
    invoke-static {v3, v6, v4, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->getLocalView()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v3

    check-cast v3, Landroidx/compose/runtime/CompositionLocal;

    const v4, 0x789c5f52

    const-string v5, "CC:CompositionLocal.kt#9igjgp"

    .line 393
    invoke-static {v2, v4, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v2, v3}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 272
    move-object v9, v3

    check-cast v9, Landroid/view/View;

    .line 273
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v3

    check-cast v3, Landroidx/compose/runtime/CompositionLocal;

    .line 394
    invoke-static {v2, v4, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v2, v3}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 273
    move-object v10, v3

    check-cast v10, Landroidx/compose/ui/unit/Density;

    const v3, -0x1d58f75c

    .line 274
    invoke-interface {v2, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v4, "CC(remember):Composables.kt#9igjgp"

    invoke-static {v2, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 396
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .line 397
    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x2

    const/4 v15, 0x0

    if-ne v5, v6, :cond_1

    .line 274
    sget-object v5, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v5

    invoke-static {v5, v15, v7, v15}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v5

    .line 399
    invoke-interface {v2, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 395
    :cond_1
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 274
    check-cast v5, Landroidx/compose/runtime/MutableState;

    iget-object v6, v0, Landroidx/compose/foundation/MagnifierKt$magnifier$4;->$sourceCenter:Lkotlin/jvm/functions/Function1;

    const/4 v14, 0x0

    .line 275
    invoke-static {v6, v2, v14}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v6

    iget-object v8, v0, Landroidx/compose/foundation/MagnifierKt$magnifier$4;->$magnifierCenter:Lkotlin/jvm/functions/Function1;

    .line 276
    invoke-static {v8, v2, v14}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v16

    iget v8, v0, Landroidx/compose/foundation/MagnifierKt$magnifier$4;->$zoom:F

    .line 277
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-static {v8, v2, v14}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v18

    iget-object v8, v0, Landroidx/compose/foundation/MagnifierKt$magnifier$4;->$onSizeChanged:Lkotlin/jvm/functions/Function1;

    .line 278
    invoke-static {v8, v2, v14}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v13

    .line 279
    invoke-interface {v2, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v2, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 403
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    .line 404
    sget-object v11, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v11}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v11

    if-ne v8, v11, :cond_2

    .line 280
    new-instance v8, Landroidx/compose/foundation/MagnifierKt$magnifier$4$sourceCenterInRoot$2$1;

    invoke-direct {v8, v10, v6, v5}, Landroidx/compose/foundation/MagnifierKt$magnifier$4$sourceCenterInRoot$2$1;-><init>(Landroidx/compose/ui/unit/Density;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;)V

    check-cast v8, Lkotlin/jvm/functions/Function0;

    invoke-static {v8}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object v8

    .line 406
    invoke-interface {v2, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 402
    :cond_2
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 279
    move-object v12, v8

    check-cast v12, Landroidx/compose/runtime/State;

    .line 289
    invoke-interface {v2, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v2, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 410
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    .line 411
    sget-object v8, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v8}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v8

    if-ne v6, v8, :cond_3

    .line 289
    new-instance v6, Landroidx/compose/foundation/MagnifierKt$magnifier$4$isMagnifierShown$2$1;

    invoke-direct {v6, v12}, Landroidx/compose/foundation/MagnifierKt$magnifier$4$isMagnifierShown$2$1;-><init>(Landroidx/compose/runtime/State;)V

    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-static {v6}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object v6

    .line 413
    invoke-interface {v2, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 409
    :cond_3
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 289
    move-object/from16 v17, v6

    check-cast v17, Landroidx/compose/runtime/State;

    .line 294
    invoke-interface {v2, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v2, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 417
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    .line 418
    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    const/4 v11, 0x1

    if-ne v3, v4, :cond_4

    .line 295
    sget-object v3, Lkotlinx/coroutines/channels/BufferOverflow;->DROP_OLDEST:Lkotlinx/coroutines/channels/BufferOverflow;

    invoke-static {v11, v14, v3, v7, v15}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;ILjava/lang/Object;)Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object v3

    .line 420
    invoke-interface {v2, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 416
    :cond_4
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 294
    check-cast v3, Lkotlinx/coroutines/flow/MutableSharedFlow;

    iget-object v4, v0, Landroidx/compose/foundation/MagnifierKt$magnifier$4;->$platformMagnifierFactory:Landroidx/compose/foundation/PlatformMagnifierFactory;

    .line 302
    invoke-interface {v4}, Landroidx/compose/foundation/PlatformMagnifierFactory;->getCanUpdateZoom()Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x0

    goto :goto_0

    :cond_5
    iget v4, v0, Landroidx/compose/foundation/MagnifierKt$magnifier$4;->$zoom:F

    .line 309
    :goto_0
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iget-object v6, v0, Landroidx/compose/foundation/MagnifierKt$magnifier$4;->$style:Landroidx/compose/foundation/MagnifierStyle;

    .line 314
    sget-object v7, Landroidx/compose/foundation/MagnifierStyle;->Companion:Landroidx/compose/foundation/MagnifierStyle$Companion;

    invoke-virtual {v7}, Landroidx/compose/foundation/MagnifierStyle$Companion;->getTextDefault()Landroidx/compose/foundation/MagnifierStyle;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    filled-new-array {v9, v10, v4, v6, v7}, [Ljava/lang/Object;

    move-result-object v4

    .line 306
    new-instance v20, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;

    iget-object v7, v0, Landroidx/compose/foundation/MagnifierKt$magnifier$4;->$platformMagnifierFactory:Landroidx/compose/foundation/PlatformMagnifierFactory;

    iget-object v8, v0, Landroidx/compose/foundation/MagnifierKt$magnifier$4;->$style:Landroidx/compose/foundation/MagnifierStyle;

    iget v0, v0, Landroidx/compose/foundation/MagnifierKt$magnifier$4;->$zoom:F

    const/16 v19, 0x0

    move-object/from16 v6, v20

    move v11, v0

    move-object v0, v12

    move-object v12, v3

    move-object/from16 v14, v17

    move-object v15, v0

    move-object/from16 v17, v5

    invoke-direct/range {v6 .. v19}, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;-><init>(Landroidx/compose/foundation/PlatformMagnifierFactory;Landroidx/compose/foundation/MagnifierStyle;Landroid/view/View;Landroidx/compose/ui/unit/Density;FLkotlinx/coroutines/flow/MutableSharedFlow;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v6, v20

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/16 v7, 0x48

    invoke-static {v4, v6, v2, v7}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect([Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    const v4, 0x44faf204

    .line 372
    invoke-interface {v2, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v6, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {v2, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 423
    invoke-interface {v2, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    .line 424
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    if-nez v7, :cond_6

    .line 425
    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v8, v7, :cond_7

    .line 372
    :cond_6
    new-instance v7, Landroidx/compose/foundation/MagnifierKt$magnifier$4$2$1;

    invoke-direct {v7, v5}, Landroidx/compose/foundation/MagnifierKt$magnifier$4$2$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    move-object v8, v7

    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 427
    invoke-interface {v2, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 423
    :cond_7
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 372
    invoke-static {v1, v8}, Landroidx/compose/ui/layout/OnGloballyPositionedModifierKt;->onGloballyPositioned(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 378
    new-instance v5, Landroidx/compose/foundation/MagnifierKt$magnifier$4$3;

    invoke-direct {v5, v3}, Landroidx/compose/foundation/MagnifierKt$magnifier$4$3;-><init>(Lkotlinx/coroutines/flow/MutableSharedFlow;)V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v5}, Landroidx/compose/ui/draw/DrawModifierKt;->drawBehind(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 384
    invoke-interface {v2, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v2, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 430
    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    .line 431
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_8

    .line 432
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v4, v3, :cond_9

    .line 384
    :cond_8
    new-instance v3, Landroidx/compose/foundation/MagnifierKt$magnifier$4$4$1;

    invoke-direct {v3, v0}, Landroidx/compose/foundation/MagnifierKt$magnifier$4$4$1;-><init>(Landroidx/compose/runtime/State;)V

    move-object v4, v3

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 434
    invoke-interface {v2, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 430
    :cond_9
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 384
    invoke-static {v1, v5, v4, v0, v3}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_a
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 271
    check-cast p1, Landroidx/compose/ui/Modifier;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/MagnifierKt$magnifier$4;->invoke(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method
