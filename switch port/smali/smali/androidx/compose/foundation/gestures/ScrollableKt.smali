.class public final Landroidx/compose/foundation/gestures/ScrollableKt;
.super Ljava/lang/Object;
.source "Scrollable.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScrollable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Scrollable.kt\nandroidx/compose/foundation/gestures/ScrollableKt\n+ 2 InspectableValue.kt\nandroidx/compose/ui/platform/InspectableValueKt\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,637:1\n135#2:638\n25#3:639\n36#3:646\n25#3:653\n36#3:660\n50#3:667\n49#3:668\n1097#4,6:640\n1097#4,6:647\n1097#4,6:654\n1097#4,6:661\n1097#4,6:669\n*S KotlinDebug\n*F\n+ 1 Scrollable.kt\nandroidx/compose/foundation/gestures/ScrollableKt\n*L\n152#1:638\n258#1:639\n269#1:646\n272#1:653\n282#1:660\n284#1:667\n284#1:668\n258#1:640,6\n269#1:647,6\n272#1:654,6\n282#1:661,6\n284#1:669,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0090\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001a\u001e\u0010\u0019\u001a\u00020\u001a2\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u001c2\u0006\u0010\u001e\u001a\u00020\u0008H\u0002\u001a\u0015\u0010\u001f\u001a\u00020 *\u00020!H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\"\u001aO\u0010#\u001a\u00020$*\u00020$2\u0008\u0010%\u001a\u0004\u0018\u00010&2\u0006\u0010\'\u001a\u00020(2\u0006\u0010)\u001a\u00020\u00082\u0006\u0010*\u001a\u00020+2\u0008\u0010,\u001a\u0004\u0018\u00010-2\u0008\u0010.\u001a\u0004\u0018\u00010/2\u0006\u0010\u001e\u001a\u00020\u0008H\u0003\u00a2\u0006\u0002\u00100\u001aR\u00101\u001a\u00020$*\u00020$2\u0006\u00102\u001a\u00020+2\u0006\u0010\'\u001a\u00020(2\u0008\u0010.\u001a\u0004\u0018\u00010/2\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u00082\u0008\u0008\u0002\u0010)\u001a\u00020\u00082\n\u0008\u0002\u0010,\u001a\u0004\u0018\u00010-2\n\u0008\u0002\u0010%\u001a\u0004\u0018\u00010&H\u0007\u001aF\u00101\u001a\u00020$*\u00020$2\u0006\u00102\u001a\u00020+2\u0006\u0010\'\u001a\u00020(2\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u00082\u0008\u0008\u0002\u0010)\u001a\u00020\u00082\n\u0008\u0002\u0010,\u001a\u0004\u0018\u00010-2\n\u0008\u0002\u0010%\u001a\u0004\u0018\u00010&\"\u0014\u0010\u0000\u001a\u00020\u0001X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0003\"\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\"\u001a\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\"L\u0010\u000b\u001a8\u0008\u0001\u0012\u0004\u0012\u00020\r\u0012\u0013\u0012\u00110\u000e\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u0011\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00130\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u00140\u000c\u00a2\u0006\u0002\u0008\u0015X\u0082\u0004\u00f8\u0001\u0000\u00f8\u0001\u0000\u00a2\u0006\u0004\n\u0002\u0010\u0016\"\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u00063"
    }
    d2 = {
        "DefaultScrollMotionDurationScale",
        "Landroidx/compose/ui/MotionDurationScale;",
        "getDefaultScrollMotionDurationScale",
        "()Landroidx/compose/ui/MotionDurationScale;",
        "DefaultScrollMotionDurationScaleFactor",
        "",
        "ModifierLocalScrollableContainer",
        "Landroidx/compose/ui/modifier/ProvidableModifierLocal;",
        "",
        "getModifierLocalScrollableContainer",
        "()Landroidx/compose/ui/modifier/ProvidableModifierLocal;",
        "NoOpOnDragStarted",
        "Lkotlin/Function3;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Landroidx/compose/ui/geometry/Offset;",
        "Lkotlin/ParameterName;",
        "name",
        "startedPosition",
        "Lkotlin/coroutines/Continuation;",
        "",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "Lkotlin/jvm/functions/Function3;",
        "NoOpScrollScope",
        "Landroidx/compose/foundation/gestures/ScrollScope;",
        "scrollableNestedScrollConnection",
        "Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;",
        "scrollLogic",
        "Landroidx/compose/runtime/State;",
        "Landroidx/compose/foundation/gestures/ScrollingLogic;",
        "enabled",
        "awaitScrollEvent",
        "Landroidx/compose/ui/input/pointer/PointerEvent;",
        "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
        "(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "pointerScrollable",
        "Landroidx/compose/ui/Modifier;",
        "interactionSource",
        "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
        "orientation",
        "Landroidx/compose/foundation/gestures/Orientation;",
        "reverseDirection",
        "controller",
        "Landroidx/compose/foundation/gestures/ScrollableState;",
        "flingBehavior",
        "Landroidx/compose/foundation/gestures/FlingBehavior;",
        "overscrollEffect",
        "Landroidx/compose/foundation/OverscrollEffect;",
        "(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/OverscrollEffect;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;",
        "scrollable",
        "state",
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
.field private static final DefaultScrollMotionDurationScale:Landroidx/compose/ui/MotionDurationScale;

.field private static final DefaultScrollMotionDurationScaleFactor:F = 1.0f

.field private static final ModifierLocalScrollableContainer:Landroidx/compose/ui/modifier/ProvidableModifierLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/ui/modifier/ProvidableModifierLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final NoOpOnDragStarted:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Landroidx/compose/ui/geometry/Offset;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final NoOpScrollScope:Landroidx/compose/foundation/gestures/ScrollScope;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 296
    new-instance v0, Landroidx/compose/foundation/gestures/ScrollableKt$NoOpOnDragStarted$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/foundation/gestures/ScrollableKt$NoOpOnDragStarted$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function3;

    sput-object v0, Landroidx/compose/foundation/gestures/ScrollableKt;->NoOpOnDragStarted:Lkotlin/jvm/functions/Function3;

    .line 543
    new-instance v0, Landroidx/compose/foundation/gestures/ScrollableKt$NoOpScrollScope$1;

    invoke-direct {v0}, Landroidx/compose/foundation/gestures/ScrollableKt$NoOpScrollScope$1;-><init>()V

    check-cast v0, Landroidx/compose/foundation/gestures/ScrollScope;

    sput-object v0, Landroidx/compose/foundation/gestures/ScrollableKt;->NoOpScrollScope:Landroidx/compose/foundation/gestures/ScrollScope;

    .line 625
    sget-object v0, Landroidx/compose/foundation/gestures/ScrollableKt$ModifierLocalScrollableContainer$1;->INSTANCE:Landroidx/compose/foundation/gestures/ScrollableKt$ModifierLocalScrollableContainer$1;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Landroidx/compose/ui/modifier/ModifierLocalKt;->modifierLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/foundation/gestures/ScrollableKt;->ModifierLocalScrollableContainer:Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    .line 634
    new-instance v0, Landroidx/compose/foundation/gestures/ScrollableKt$DefaultScrollMotionDurationScale$1;

    invoke-direct {v0}, Landroidx/compose/foundation/gestures/ScrollableKt$DefaultScrollMotionDurationScale$1;-><init>()V

    check-cast v0, Landroidx/compose/ui/MotionDurationScale;

    sput-object v0, Landroidx/compose/foundation/gestures/ScrollableKt;->DefaultScrollMotionDurationScale:Landroidx/compose/ui/MotionDurationScale;

    return-void
.end method

.method public static final synthetic access$awaitScrollEvent(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/foundation/gestures/ScrollableKt;->awaitScrollEvent(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getNoOpScrollScope$p()Landroidx/compose/foundation/gestures/ScrollScope;
    .locals 1

    sget-object v0, Landroidx/compose/foundation/gestures/ScrollableKt;->NoOpScrollScope:Landroidx/compose/foundation/gestures/ScrollScope;

    return-object v0
.end method

.method public static final synthetic access$pointerScrollable(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/OverscrollEffect;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p9}, Landroidx/compose/foundation/gestures/ScrollableKt;->pointerScrollable(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/OverscrollEffect;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$scrollableNestedScrollConnection(Landroidx/compose/runtime/State;Z)Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/foundation/gestures/ScrollableKt;->scrollableNestedScrollConnection(Landroidx/compose/runtime/State;Z)Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    move-result-object p0

    return-object p0
.end method

.method private static final awaitScrollEvent(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerEvent;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Landroidx/compose/foundation/gestures/ScrollableKt$awaitScrollEvent$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/gestures/ScrollableKt$awaitScrollEvent$1;

    iget v1, v0, Landroidx/compose/foundation/gestures/ScrollableKt$awaitScrollEvent$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Landroidx/compose/foundation/gestures/ScrollableKt$awaitScrollEvent$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Landroidx/compose/foundation/gestures/ScrollableKt$awaitScrollEvent$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/ScrollableKt$awaitScrollEvent$1;

    invoke-direct {v0, p1}, Landroidx/compose/foundation/gestures/ScrollableKt$awaitScrollEvent$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Landroidx/compose/foundation/gestures/ScrollableKt$awaitScrollEvent$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 368
    iget v2, v0, Landroidx/compose/foundation/gestures/ScrollableKt$awaitScrollEvent$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Landroidx/compose/foundation/gestures/ScrollableKt$awaitScrollEvent$1;->L$0:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 371
    :cond_3
    iput-object p0, v0, Landroidx/compose/foundation/gestures/ScrollableKt$awaitScrollEvent$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Landroidx/compose/foundation/gestures/ScrollableKt$awaitScrollEvent$1;->label:I

    const/4 p1, 0x0

    invoke-static {p0, p1, v0, v3, p1}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->awaitPointerEvent$default(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    .line 368
    :cond_4
    :goto_1
    check-cast p1, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 372
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getType-7fucELk()I

    move-result v2

    sget-object v4, Landroidx/compose/ui/input/pointer/PointerEventType;->Companion:Landroidx/compose/ui/input/pointer/PointerEventType$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/input/pointer/PointerEventType$Companion;->getScroll-7fucELk()I

    move-result v4

    invoke-static {v2, v4}, Landroidx/compose/ui/input/pointer/PointerEventType;->equals-impl0(II)Z

    move-result v2

    if-eqz v2, :cond_3

    return-object p1
.end method

.method public static final getDefaultScrollMotionDurationScale()Landroidx/compose/ui/MotionDurationScale;
    .locals 1

    sget-object v0, Landroidx/compose/foundation/gestures/ScrollableKt;->DefaultScrollMotionDurationScale:Landroidx/compose/ui/MotionDurationScale;

    return-object v0
.end method

.method public static final getModifierLocalScrollableContainer()Landroidx/compose/ui/modifier/ProvidableModifierLocal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/ui/modifier/ProvidableModifierLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroidx/compose/foundation/gestures/ScrollableKt;->ModifierLocalScrollableContainer:Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    return-object v0
.end method

.method private static final pointerScrollable(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/OverscrollEffect;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
    .locals 22

    move-object/from16 v0, p8

    const v1, -0x77ed10cc

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "C(pointerScrollable)P(3,4,6!1,2,5)257@10957L53,258@11033L224,268@11291L88,271@11405L46,272@11475L22,281@11777L47,283@11901L176:Scrollable.kt#8bwon0"

    invoke-static {v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, -0x1

    const-string v3, "androidx.compose.foundation.gestures.pointerScrollable (Scrollable.kt:247)"

    move/from16 v4, p9

    .line 256
    invoke-static {v1, v4, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    const v1, -0x67208ae2

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "256@10908L15"

    invoke-static {v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    if-nez p5, :cond_1

    .line 257
    sget-object v1, Landroidx/compose/foundation/gestures/ScrollableDefaults;->INSTANCE:Landroidx/compose/foundation/gestures/ScrollableDefaults;

    const/4 v2, 0x6

    invoke-virtual {v1, v0, v2}, Landroidx/compose/foundation/gestures/ScrollableDefaults;->flingBehavior(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/gestures/FlingBehavior;

    move-result-object v1

    move-object v7, v1

    goto :goto_0

    :cond_1
    move-object/from16 v7, p5

    :goto_0
    invoke-interface/range {p8 .. p8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const v1, -0x1d58f75c

    .line 258
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v9, "CC(remember):Composables.kt#9igjgp"

    invoke-static {v0, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 640
    invoke-interface/range {p8 .. p8}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    .line 641
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    const/4 v10, 0x0

    if-ne v2, v3, :cond_2

    .line 258
    new-instance v2, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    invoke-direct {v2}, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;-><init>()V

    const/4 v3, 0x2

    invoke-static {v2, v10, v3, v10}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    .line 643
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 639
    :cond_2
    invoke-interface/range {p8 .. p8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 258
    move-object v11, v2

    check-cast v11, Landroidx/compose/runtime/MutableState;

    .line 260
    new-instance v12, Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 263
    move-object v5, v11

    check-cast v5, Landroidx/compose/runtime/State;

    move-object v2, v12

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v6, p4

    move-object/from16 v8, p6

    .line 260
    invoke-direct/range {v2 .. v8}, Landroidx/compose/foundation/gestures/ScrollingLogic;-><init>(Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/runtime/State;Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/OverscrollEffect;)V

    const/4 v2, 0x0

    .line 259
    invoke-static {v12, v0, v2}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v3

    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const v5, 0x44faf204

    .line 269
    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v6, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {v0, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 646
    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    .line 647
    invoke-interface/range {p8 .. p8}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    if-nez v4, :cond_4

    .line 648
    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v7, v4, :cond_3

    goto :goto_1

    :cond_3
    move/from16 v4, p7

    goto :goto_2

    :cond_4
    :goto_1
    move/from16 v4, p7

    .line 270
    invoke-static {v3, v4}, Landroidx/compose/foundation/gestures/ScrollableKt;->access$scrollableNestedScrollConnection(Landroidx/compose/runtime/State;Z)Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    move-result-object v7

    .line 650
    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 646
    :goto_2
    invoke-interface/range {p8 .. p8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 269
    check-cast v7, Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    .line 272
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v0, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 654
    invoke-interface/range {p8 .. p8}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .line 655
    sget-object v8, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v8}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v8

    if-ne v1, v8, :cond_5

    .line 272
    new-instance v1, Landroidx/compose/foundation/gestures/ScrollDraggableState;

    invoke-direct {v1, v3}, Landroidx/compose/foundation/gestures/ScrollDraggableState;-><init>(Landroidx/compose/runtime/State;)V

    .line 657
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 653
    :cond_5
    invoke-interface/range {p8 .. p8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 272
    check-cast v1, Landroidx/compose/foundation/gestures/ScrollDraggableState;

    .line 273
    invoke-static {v0, v2}, Landroidx/compose/foundation/gestures/AndroidScrollable_androidKt;->platformScrollConfig(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/gestures/ScrollConfig;

    move-result-object v2

    sget-object v19, Landroidx/compose/foundation/gestures/ScrollableKt;->NoOpOnDragStarted:Lkotlin/jvm/functions/Function3;

    .line 277
    move-object v13, v1

    check-cast v13, Landroidx/compose/foundation/gestures/DraggableState;

    .line 276
    sget-object v1, Landroidx/compose/foundation/gestures/ScrollableKt$pointerScrollable$1;->INSTANCE:Landroidx/compose/foundation/gestures/ScrollableKt$pointerScrollable$1;

    move-object v14, v1

    check-cast v14, Lkotlin/jvm/functions/Function1;

    .line 282
    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v0, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 660
    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    .line 661
    invoke-interface/range {p8 .. p8}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v1, :cond_6

    .line 662
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v5, v1, :cond_7

    .line 282
    :cond_6
    new-instance v1, Landroidx/compose/foundation/gestures/ScrollableKt$pointerScrollable$2$1;

    invoke-direct {v1, v3}, Landroidx/compose/foundation/gestures/ScrollableKt$pointerScrollable$2$1;-><init>(Landroidx/compose/runtime/State;)V

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 664
    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 660
    :cond_7
    invoke-interface/range {p8 .. p8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    move-object/from16 v18, v5

    check-cast v18, Lkotlin/jvm/functions/Function0;

    const v1, 0x1e7b2b64

    .line 284
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "CC(remember)P(1,2):Composables.kt#9igjgp"

    invoke-static {v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 667
    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v1, v5

    .line 669
    invoke-interface/range {p8 .. p8}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v1, :cond_8

    .line 670
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v5, v1, :cond_9

    .line 284
    :cond_8
    new-instance v1, Landroidx/compose/foundation/gestures/ScrollableKt$pointerScrollable$3$1;

    invoke-direct {v1, v11, v3, v10}, Landroidx/compose/foundation/gestures/ScrollableKt$pointerScrollable$3$1;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Lkotlin/coroutines/Continuation;)V

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function3;

    .line 672
    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 668
    :cond_9
    invoke-interface/range {p8 .. p8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    move-object/from16 v20, v5

    check-cast v20, Lkotlin/jvm/functions/Function3;

    const/16 v21, 0x0

    .line 276
    new-instance v1, Landroidx/compose/foundation/gestures/DraggableElement;

    move-object v12, v1

    move-object/from16 v15, p2

    move/from16 v16, p7

    move-object/from16 v17, p1

    invoke-direct/range {v12 .. v21}, Landroidx/compose/foundation/gestures/DraggableElement;-><init>(Landroidx/compose/foundation/gestures/DraggableState;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Z)V

    check-cast v1, Landroidx/compose/ui/Modifier;

    move-object/from16 v4, p0

    invoke-interface {v4, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 291
    new-instance v4, Landroidx/compose/foundation/gestures/MouseWheelScrollElement;

    invoke-direct {v4, v3, v2}, Landroidx/compose/foundation/gestures/MouseWheelScrollElement;-><init>(Landroidx/compose/runtime/State;Landroidx/compose/foundation/gestures/ScrollConfig;)V

    check-cast v4, Landroidx/compose/ui/Modifier;

    invoke-interface {v1, v4}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 292
    invoke-interface {v11}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    invoke-static {v1, v7, v2}, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierKt;->nestedScroll(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_a
    invoke-interface/range {p8 .. p8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v1
.end method

.method public static final scrollable(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/OverscrollEffect;ZZLandroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/interaction/MutableInteractionSource;)Landroidx/compose/ui/Modifier;
    .locals 13

    move-object v0, p0

    const-string v1, "<this>"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "state"

    move-object v10, p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "orientation"

    move-object v11, p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 638
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroidx/compose/foundation/gestures/ScrollableKt$scrollable$$inlined$debugInspectorInfo$1;

    move-object v2, v1

    move-object v3, p2

    move-object v4, p1

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v2 .. v9}, Landroidx/compose/foundation/gestures/ScrollableKt$scrollable$$inlined$debugInspectorInfo$1;-><init>(Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/OverscrollEffect;ZZLandroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/interaction/MutableInteractionSource;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    .line 151
    :goto_0
    new-instance v12, Landroidx/compose/foundation/gestures/ScrollableKt$scrollable$2;

    move-object v2, v12

    move-object v3, p2

    move-object v4, p1

    move/from16 v5, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p6

    move-object/from16 v8, p3

    move/from16 v9, p4

    invoke-direct/range {v2 .. v9}, Landroidx/compose/foundation/gestures/ScrollableKt$scrollable$2;-><init>(Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/gestures/ScrollableState;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/OverscrollEffect;Z)V

    check-cast v12, Lkotlin/jvm/functions/Function3;

    invoke-static {p0, v1, v12}, Landroidx/compose/ui/ComposedModifierKt;->composed(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    return-object v0
.end method

.method public static final scrollable(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/gestures/Orientation;ZZLandroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/interaction/MutableInteractionSource;)Landroidx/compose/ui/Modifier;
    .locals 9

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "orientation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    move-object v8, p6

    .line 102
    invoke-static/range {v1 .. v8}, Landroidx/compose/foundation/gestures/ScrollableKt;->scrollable(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/OverscrollEffect;ZZLandroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/interaction/MutableInteractionSource;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic scrollable$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/OverscrollEffect;ZZLandroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/interaction/MutableInteractionSource;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 9

    and-int/lit8 v0, p8, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move v5, v0

    goto :goto_0

    :cond_0
    move v5, p4

    :goto_0
    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v6, v0

    goto :goto_1

    :cond_1
    move v6, p5

    :goto_1
    and-int/lit8 v0, p8, 0x20

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move-object v7, v1

    goto :goto_2

    :cond_2
    move-object v7, p6

    :goto_2
    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_3

    move-object v8, v1

    goto :goto_3

    :cond_3
    move-object/from16 v8, p7

    :goto_3
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 143
    invoke-static/range {v1 .. v8}, Landroidx/compose/foundation/gestures/ScrollableKt;->scrollable(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/OverscrollEffect;ZZLandroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/interaction/MutableInteractionSource;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic scrollable$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/gestures/Orientation;ZZLandroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/interaction/MutableInteractionSource;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 7

    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_0

    const/4 p3, 0x1

    :cond_0
    move v3, p3

    and-int/lit8 p3, p7, 0x8

    if-eqz p3, :cond_1

    const/4 p4, 0x0

    :cond_1
    move v4, p4

    and-int/lit8 p3, p7, 0x10

    const/4 p4, 0x0

    if-eqz p3, :cond_2

    move-object v5, p4

    goto :goto_0

    :cond_2
    move-object v5, p5

    :goto_0
    and-int/lit8 p3, p7, 0x20

    if-eqz p3, :cond_3

    move-object v6, p4

    goto :goto_1

    :cond_3
    move-object v6, p6

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 95
    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/gestures/ScrollableKt;->scrollable(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/gestures/Orientation;ZZLandroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/interaction/MutableInteractionSource;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method private static final scrollableNestedScrollConnection(Landroidx/compose/runtime/State;Z)Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/foundation/gestures/ScrollingLogic;",
            ">;Z)",
            "Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;"
        }
    .end annotation

    .line 550
    new-instance v0, Landroidx/compose/foundation/gestures/ScrollableKt$scrollableNestedScrollConnection$1;

    invoke-direct {v0, p0, p1}, Landroidx/compose/foundation/gestures/ScrollableKt$scrollableNestedScrollConnection$1;-><init>(Landroidx/compose/runtime/State;Z)V

    check-cast v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    return-object v0
.end method
