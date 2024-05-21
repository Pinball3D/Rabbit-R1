.class public final Landroidx/compose/material3/SheetDefaultsKt;
.super Ljava/lang/Object;
.source "SheetDefaults.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSheetDefaults.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SheetDefaults.kt\nandroidx/compose/material3/SheetDefaultsKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,429:1\n83#2,3:430\n1114#3,6:433\n154#4:439\n154#4:440\n*S KotlinDebug\n*F\n+ 1 SheetDefaults.kt\nandroidx/compose/material3/SheetDefaultsKt\n*L\n423#1:430,3\n423#1:433,6\n428#1:439\n429#1:440\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001a;\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2!\u0010\u000c\u001a\u001d\u0012\u0013\u0012\u00110\u000e\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u0011\u0012\u0004\u0012\u00020\u00120\rH\u0000\u001aA\u0010\u0013\u001a\u00020\t2\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00152\u0014\u0008\u0002\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00150\r2\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00172\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0015H\u0001\u00a2\u0006\u0002\u0010\u001a\"\u0019\u0010\u0000\u001a\u00020\u0001X\u0080\u0004\u00f8\u0001\u0000\u00a2\u0006\n\n\u0002\u0010\u0004\u001a\u0004\u0008\u0002\u0010\u0003\"\u0013\u0010\u0005\u001a\u00020\u0001X\u0082\u0004\u00f8\u0001\u0000\u00a2\u0006\u0004\n\u0002\u0010\u0004\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u001b"
    }
    d2 = {
        "BottomSheetMaxWidth",
        "Landroidx/compose/ui/unit/Dp;",
        "getBottomSheetMaxWidth",
        "()F",
        "F",
        "DragHandleVerticalPadding",
        "ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection",
        "Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;",
        "sheetState",
        "Landroidx/compose/material3/SheetState;",
        "orientation",
        "Landroidx/compose/foundation/gestures/Orientation;",
        "onFling",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "velocity",
        "",
        "rememberSheetState",
        "skipPartiallyExpanded",
        "",
        "confirmValueChange",
        "Landroidx/compose/material3/SheetValue;",
        "initialValue",
        "skipHiddenState",
        "(ZLkotlin/jvm/functions/Function1;Landroidx/compose/material3/SheetValue;ZLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/SheetState;",
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
.field private static final BottomSheetMaxWidth:F

.field private static final DragHandleVerticalPadding:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x16

    int-to-float v0, v0

    .line 439
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/SheetDefaultsKt;->DragHandleVerticalPadding:F

    const/16 v0, 0x280

    int-to-float v0, v0

    .line 440
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/SheetDefaultsKt;->BottomSheetMaxWidth:F

    return-void
.end method

.method public static final ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection(Landroidx/compose/material3/SheetState;Landroidx/compose/foundation/gestures/Orientation;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/SheetState;",
            "Landroidx/compose/foundation/gestures/Orientation;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;"
        }
    .end annotation

    const-string/jumbo v0, "sheetState"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "orientation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onFling"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 358
    new-instance v0, Landroidx/compose/material3/SheetDefaultsKt$ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection$1;

    invoke-direct {v0, p0, p2, p1}, Landroidx/compose/material3/SheetDefaultsKt$ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection$1;-><init>(Landroidx/compose/material3/SheetState;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/gestures/Orientation;)V

    check-cast v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    return-object v0
.end method

.method public static final synthetic access$getDragHandleVerticalPadding$p()F
    .locals 1

    sget v0, Landroidx/compose/material3/SheetDefaultsKt;->DragHandleVerticalPadding:F

    return v0
.end method

.method public static final getBottomSheetMaxWidth()F
    .locals 1

    sget v0, Landroidx/compose/material3/SheetDefaultsKt;->BottomSheetMaxWidth:F

    return v0
.end method

.method public static final rememberSheetState(ZLkotlin/jvm/functions/Function1;Landroidx/compose/material3/SheetValue;ZLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/SheetState;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/material3/SheetValue;",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/material3/SheetValue;",
            "Z",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/material3/SheetState;"
        }
    .end annotation

    move-object/from16 v7, p4

    const v0, 0x3d8f0948

    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(rememberSheetState)P(3)422@15342L100,416@15112L330:SheetDefaults.kt#uh7d8r"

    invoke-static {v7, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, p6, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, p0

    :goto_0
    and-int/lit8 v3, p6, 0x2

    if-eqz v3, :cond_1

    .line 413
    sget-object v3, Landroidx/compose/material3/SheetDefaultsKt$rememberSheetState$1;->INSTANCE:Landroidx/compose/material3/SheetDefaultsKt$rememberSheetState$1;

    check-cast v3, Lkotlin/jvm/functions/Function1;

    goto :goto_1

    :cond_1
    move-object v3, p1

    :goto_1
    and-int/lit8 v4, p6, 0x4

    if-eqz v4, :cond_2

    .line 414
    sget-object v4, Landroidx/compose/material3/SheetValue;->Hidden:Landroidx/compose/material3/SheetValue;

    goto :goto_2

    :cond_2
    move-object v4, p2

    :goto_2
    and-int/lit8 v5, p6, 0x8

    if-eqz v5, :cond_3

    move v5, v2

    goto :goto_3

    :cond_3
    move v5, p3

    .line 415
    :goto_3
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, -0x1

    const-string v8, "androidx.compose.material3.rememberSheetState (SheetDefaults.kt:410)"

    move/from16 v9, p5

    .line 416
    invoke-static {v0, v9, v6, v8}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 418
    :cond_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 419
    sget-object v6, Landroidx/compose/material3/SheetState;->Companion:Landroidx/compose/material3/SheetState$Companion;

    invoke-virtual {v6, v1, v3}, Landroidx/compose/material3/SheetState$Companion;->Saver(ZLkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v6

    const/4 v8, 0x0

    .line 423
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    filled-new-array {v9, v4, v3, v10}, [Ljava/lang/Object;

    move-result-object v9

    const v10, -0x21de6e89

    invoke-interface {v7, v10}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v10, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {v7, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move v10, v2

    :goto_4
    const/4 v11, 0x4

    if-ge v2, v11, :cond_5

    .line 431
    aget-object v11, v9, v2

    invoke-interface {v7, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v10, v11

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 433
    :cond_5
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v10, :cond_6

    .line 434
    sget-object v9, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v9}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v9

    if-ne v2, v9, :cond_7

    .line 423
    :cond_6
    new-instance v2, Landroidx/compose/material3/SheetDefaultsKt$rememberSheetState$2$1;

    invoke-direct {v2, v1, v4, v3, v5}, Landroidx/compose/material3/SheetDefaultsKt$rememberSheetState$2$1;-><init>(ZLandroidx/compose/material3/SheetValue;Lkotlin/jvm/functions/Function1;Z)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    .line 436
    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 432
    :cond_7
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    move-object v3, v2

    check-cast v3, Lkotlin/jvm/functions/Function0;

    const/16 v5, 0x48

    const/4 v9, 0x4

    move-object v1, v6

    move-object v2, v8

    move-object/from16 v4, p4

    move v6, v9

    .line 417
    invoke-static/range {v0 .. v6}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/material3/SheetState;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_8
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v0
.end method
