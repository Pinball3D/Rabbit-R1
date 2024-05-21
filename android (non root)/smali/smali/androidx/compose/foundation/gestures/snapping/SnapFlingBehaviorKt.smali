.class public final Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt;
.super Ljava/lang/Object;
.source "SnapFlingBehavior.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSnapFlingBehavior.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SnapFlingBehavior.kt\nandroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 5 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,531:1\n528#1,4:543\n528#1,4:547\n76#2:532\n67#3,3:533\n66#3:536\n1097#4,6:537\n154#5:551\n*S KotlinDebug\n*F\n+ 1 SnapFlingBehavior.kt\nandroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt\n*L\n379#1:543,4\n503#1:547,4\n274#1:532\n276#1:533,3\n276#1:536\n276#1:537,6\n493#1:551\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0080\u0001\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a \u0010\n\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u0008H\u0000\u001a\u0017\u0010\u000e\u001a\u00020\u000f2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011H\u0082\u0008\u001a\u0015\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0007\u00a2\u0006\u0002\u0010\u0017\u001an\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u001a0\u0019*\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u00082\u0012\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u001a0\u001e2\u000c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00080 2!\u0010!\u001a\u001d\u0012\u0013\u0012\u00110\u0008\u00a2\u0006\u000c\u0008#\u0012\u0008\u0008$\u0012\u0004\u0008\u0008(%\u0012\u0004\u0012\u00020\u000f0\"H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010&\u001av\u0010\'\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u001a0\u0019*\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u00082\u0006\u0010(\u001a\u00020\u00082\u0012\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u001a0\u001e2\u000c\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\u00080*2!\u0010!\u001a\u001d\u0012\u0013\u0012\u00110\u0008\u00a2\u0006\u000c\u0008#\u0012\u0008\u0008$\u0012\u0004\u0008\u0008(%\u0012\u0004\u0012\u00020\u000f0\"H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010+\u001ax\u0010,\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u001a0\u0019*\u00020\u001b2\u0006\u0010-\u001a\u00020\u00082\u0006\u0010.\u001a\u00020\u00082\u0012\u0010/\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u001a002\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u00101\u001a\u0002022!\u0010!\u001a\u001d\u0012\u0013\u0012\u00110\u0008\u00a2\u0006\u000c\u0008#\u0012\u0008\u0008$\u0012\u0004\u0008\u0008(%\u0012\u0004\u0012\u00020\u000f0\"H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u00103\u001a\u0014\u00104\u001a\u00020\u0008*\u00020\u00082\u0006\u00105\u001a\u00020\u0008H\u0002\u001a(\u00106\u001a\u0002H7\"\u000e\u0008\u0000\u00107*\u0008\u0012\u0004\u0012\u0002H708*\u0008\u0012\u0004\u0012\u0002H709H\u0082\u0002\u00a2\u0006\u0002\u0010:\u001a(\u0010;\u001a\u0002H7\"\u000e\u0008\u0000\u00107*\u0008\u0012\u0004\u0012\u0002H708*\u0008\u0012\u0004\u0012\u0002H709H\u0082\u0002\u00a2\u0006\u0002\u0010:\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u0019\u0010\u0002\u001a\u00020\u0003X\u0080\u0004\u00f8\u0001\u0000\u00a2\u0006\n\n\u0002\u0010\u0006\u001a\u0004\u0008\u0004\u0010\u0005\"\u000e\u0010\u0007\u001a\u00020\u0008X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\t\u001a\u00020\u0008X\u0080T\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006<"
    }
    d2 = {
        "DEBUG",
        "",
        "MinFlingVelocityDp",
        "Landroidx/compose/ui/unit/Dp;",
        "getMinFlingVelocityDp",
        "()F",
        "F",
        "NoDistance",
        "",
        "NoVelocity",
        "calculateFinalOffset",
        "velocity",
        "lowerBound",
        "upperBound",
        "debugLog",
        "",
        "generateMsg",
        "Lkotlin/Function0;",
        "",
        "rememberSnapFlingBehavior",
        "Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;",
        "snapLayoutInfoProvider",
        "Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;",
        "(Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;",
        "animateDecay",
        "Landroidx/compose/foundation/gestures/snapping/AnimationResult;",
        "Landroidx/compose/animation/core/AnimationVector1D;",
        "Landroidx/compose/foundation/gestures/ScrollScope;",
        "targetOffset",
        "animationState",
        "Landroidx/compose/animation/core/AnimationState;",
        "decayAnimationSpec",
        "Landroidx/compose/animation/core/DecayAnimationSpec;",
        "onAnimationStep",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "delta",
        "(Landroidx/compose/foundation/gestures/ScrollScope;FLandroidx/compose/animation/core/AnimationState;Landroidx/compose/animation/core/DecayAnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "animateSnap",
        "cancelOffset",
        "snapAnimationSpec",
        "Landroidx/compose/animation/core/AnimationSpec;",
        "(Landroidx/compose/foundation/gestures/ScrollScope;FFLandroidx/compose/animation/core/AnimationState;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "approach",
        "initialTargetOffset",
        "initialVelocity",
        "animation",
        "Landroidx/compose/foundation/gestures/snapping/ApproachAnimation;",
        "density",
        "Landroidx/compose/ui/unit/Density;",
        "(Landroidx/compose/foundation/gestures/ScrollScope;FFLandroidx/compose/foundation/gestures/snapping/ApproachAnimation;Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;Landroidx/compose/ui/unit/Density;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "coerceToTarget",
        "target",
        "component1",
        "T",
        "",
        "Lkotlin/ranges/ClosedFloatingPointRange;",
        "(Lkotlin/ranges/ClosedFloatingPointRange;)Ljava/lang/Comparable;",
        "component2",
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
.field private static final DEBUG:Z = false

.field private static final MinFlingVelocityDp:F

.field public static final NoDistance:F

.field public static final NoVelocity:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x190

    int-to-float v0, v0

    .line 551
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt;->MinFlingVelocityDp:F

    return-void
.end method

.method public static final synthetic access$animateDecay(Landroidx/compose/foundation/gestures/ScrollScope;FLandroidx/compose/animation/core/AnimationState;Landroidx/compose/animation/core/DecayAnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt;->animateDecay(Landroidx/compose/foundation/gestures/ScrollScope;FLandroidx/compose/animation/core/AnimationState;Landroidx/compose/animation/core/DecayAnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$animateDecay$consumeDelta(Landroidx/compose/animation/core/AnimationScope;Landroidx/compose/foundation/gestures/ScrollScope;Lkotlin/jvm/functions/Function1;F)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt;->animateDecay$consumeDelta(Landroidx/compose/animation/core/AnimationScope;Landroidx/compose/foundation/gestures/ScrollScope;Lkotlin/jvm/functions/Function1;F)V

    return-void
.end method

.method public static final synthetic access$animateSnap(Landroidx/compose/foundation/gestures/ScrollScope;FFLandroidx/compose/animation/core/AnimationState;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt;->animateSnap(Landroidx/compose/foundation/gestures/ScrollScope;FFLandroidx/compose/animation/core/AnimationState;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$approach(Landroidx/compose/foundation/gestures/ScrollScope;FFLandroidx/compose/foundation/gestures/snapping/ApproachAnimation;Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;Landroidx/compose/ui/unit/Density;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p7}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt;->approach(Landroidx/compose/foundation/gestures/ScrollScope;FFLandroidx/compose/foundation/gestures/snapping/ApproachAnimation;Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;Landroidx/compose/ui/unit/Density;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$coerceToTarget(FF)F
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt;->coerceToTarget(FF)F

    move-result p0

    return p0
.end method

.method private static final animateDecay(Landroidx/compose/foundation/gestures/ScrollScope;FLandroidx/compose/animation/core/AnimationState;Landroidx/compose/animation/core/DecayAnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/gestures/ScrollScope;",
            "F",
            "Landroidx/compose/animation/core/AnimationState<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;",
            "Landroidx/compose/animation/core/DecayAnimationSpec<",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/foundation/gestures/snapping/AnimationResult<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p5, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$animateDecay$1;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$animateDecay$1;

    iget v1, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$animateDecay$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p5, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$animateDecay$1;->label:I

    sub-int/2addr p5, v2

    iput p5, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$animateDecay$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$animateDecay$1;

    invoke-direct {v0, p5}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$animateDecay$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p5, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$animateDecay$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 348
    iget v2, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$animateDecay$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget p1, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$animateDecay$1;->F$0:F

    iget-object p0, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$animateDecay$1;->L$1:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/internal/Ref$FloatRef;

    iget-object p2, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$animateDecay$1;->L$0:Ljava/lang/Object;

    check-cast p2, Landroidx/compose/animation/core/AnimationState;

    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 354
    new-instance p5, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {p5}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    .line 364
    invoke-virtual {p2}, Landroidx/compose/animation/core/AnimationState;->getVelocity()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    const/4 v4, 0x0

    cmpg-float v2, v2, v4

    if-nez v2, :cond_3

    move v2, v3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    xor-int/2addr v2, v3

    .line 362
    new-instance v4, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$animateDecay$2;

    invoke-direct {v4, p1, p5, p0, p4}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$animateDecay$2;-><init>(FLkotlin/jvm/internal/Ref$FloatRef;Landroidx/compose/foundation/gestures/ScrollScope;Lkotlin/jvm/functions/Function1;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    iput-object p2, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$animateDecay$1;->L$0:Ljava/lang/Object;

    iput-object p5, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$animateDecay$1;->L$1:Ljava/lang/Object;

    iput p1, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$animateDecay$1;->F$0:F

    iput v3, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$animateDecay$1;->label:I

    invoke-static {p2, p3, v2, v4, v0}, Landroidx/compose/animation/core/SuspendAnimationKt;->animateDecay(Landroidx/compose/animation/core/AnimationState;Landroidx/compose/animation/core/DecayAnimationSpec;ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_4

    return-object v1

    :cond_4
    move-object p0, p5

    .line 382
    :goto_2
    new-instance p3, Landroidx/compose/foundation/gestures/snapping/AnimationResult;

    .line 383
    iget p0, p0, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    sub-float/2addr p1, p0

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object p0

    .line 382
    invoke-direct {p3, p0, p2}, Landroidx/compose/foundation/gestures/snapping/AnimationResult;-><init>(Ljava/lang/Object;Landroidx/compose/animation/core/AnimationState;)V

    return-object p3
.end method

.method private static final animateDecay$consumeDelta(Landroidx/compose/animation/core/AnimationScope;Landroidx/compose/foundation/gestures/ScrollScope;Lkotlin/jvm/functions/Function1;F)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/AnimationScope<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;",
            "Landroidx/compose/foundation/gestures/ScrollScope;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;F)V"
        }
    .end annotation

    .line 357
    invoke-interface {p1, p3}, Landroidx/compose/foundation/gestures/ScrollScope;->scrollBy(F)F

    move-result p1

    .line 358
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sub-float/2addr p3, p1

    .line 359
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x3f000000    # 0.5f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    invoke-virtual {p0}, Landroidx/compose/animation/core/AnimationScope;->cancelAnimation()V

    :cond_0
    return-void
.end method

.method private static final animateSnap(Landroidx/compose/foundation/gestures/ScrollScope;FFLandroidx/compose/animation/core/AnimationState;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/gestures/ScrollScope;",
            "FF",
            "Landroidx/compose/animation/core/AnimationState<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/foundation/gestures/snapping/AnimationResult<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p6

    instance-of v1, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$animateSnap$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$animateSnap$1;

    iget v2, v1, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$animateSnap$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$animateSnap$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$animateSnap$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$animateSnap$1;

    invoke-direct {v1, v0}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$animateSnap$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v7, v1

    iget-object v0, v7, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$animateSnap$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 398
    iget v2, v7, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$animateSnap$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget v1, v7, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$animateSnap$1;->F$1:F

    iget v2, v7, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$animateSnap$1;->F$0:F

    iget-object v3, v7, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$animateSnap$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lkotlin/jvm/internal/Ref$FloatRef;

    iget-object v4, v7, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$animateSnap$1;->L$0:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/animation/core/AnimationState;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v10, v2

    move-object v0, v4

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 405
    new-instance v0, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    .line 406
    invoke-virtual {p3}, Landroidx/compose/animation/core/AnimationState;->getVelocity()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v8

    .line 408
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v4

    .line 410
    invoke-virtual {p3}, Landroidx/compose/animation/core/AnimationState;->getVelocity()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    const/4 v5, 0x0

    cmpg-float v2, v2, v5

    if-nez v2, :cond_3

    move v2, v3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    xor-int/lit8 v5, v2, 0x1

    .line 407
    new-instance v2, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$animateSnap$2;

    move-object v6, p0

    move v9, p2

    move-object/from16 v10, p5

    invoke-direct {v2, p2, v0, p0, v10}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$animateSnap$2;-><init>(FLkotlin/jvm/internal/Ref$FloatRef;Landroidx/compose/foundation/gestures/ScrollScope;Lkotlin/jvm/functions/Function1;)V

    move-object v6, v2

    check-cast v6, Lkotlin/jvm/functions/Function1;

    move-object v9, p3

    iput-object v9, v7, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$animateSnap$1;->L$0:Ljava/lang/Object;

    iput-object v0, v7, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$animateSnap$1;->L$1:Ljava/lang/Object;

    move v10, p1

    iput v10, v7, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$animateSnap$1;->F$0:F

    iput v8, v7, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$animateSnap$1;->F$1:F

    iput v3, v7, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$animateSnap$1;->label:I

    move-object v2, p3

    move-object v3, v4

    move-object/from16 v4, p4

    invoke-static/range {v2 .. v7}, Landroidx/compose/animation/core/SuspendAnimationKt;->animateTo(Landroidx/compose/animation/core/AnimationState;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v3, v0

    move v1, v8

    move-object v0, v9

    .line 424
    :goto_2
    invoke-virtual {v0}, Landroidx/compose/animation/core/AnimationState;->getVelocity()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    invoke-static {v2, v1}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt;->coerceToTarget(FF)F

    move-result v2

    .line 425
    new-instance v11, Landroidx/compose/foundation/gestures/snapping/AnimationResult;

    .line 426
    iget v1, v3, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    sub-float/2addr v10, v1

    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v10

    const/4 v1, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1d

    const/4 v9, 0x0

    .line 427
    invoke-static/range {v0 .. v9}, Landroidx/compose/animation/core/AnimationStateKt;->copy$default(Landroidx/compose/animation/core/AnimationState;FFJJZILjava/lang/Object;)Landroidx/compose/animation/core/AnimationState;

    move-result-object v0

    .line 425
    invoke-direct {v11, v10, v0}, Landroidx/compose/foundation/gestures/snapping/AnimationResult;-><init>(Ljava/lang/Object;Landroidx/compose/animation/core/AnimationState;)V

    return-object v11
.end method

.method private static final approach(Landroidx/compose/foundation/gestures/ScrollScope;FFLandroidx/compose/foundation/gestures/snapping/ApproachAnimation;Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;Landroidx/compose/ui/unit/Density;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/gestures/ScrollScope;",
            "FF",
            "Landroidx/compose/foundation/gestures/snapping/ApproachAnimation<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;",
            "Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;",
            "Landroidx/compose/ui/unit/Density;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/foundation/gestures/snapping/AnimationResult<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p7, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$approach$1;

    if-eqz v0, :cond_0

    move-object v0, p7

    check-cast v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$approach$1;

    iget v1, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$approach$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p7, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$approach$1;->label:I

    sub-int/2addr p7, v2

    iput p7, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$approach$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$approach$1;

    invoke-direct {v0, p7}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$approach$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v6, v0

    iget-object p7, v6, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$approach$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 303
    iget v1, v6, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$approach$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p0, v6, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$approach$1;->L$1:Ljava/lang/Object;

    move-object p5, p0

    check-cast p5, Landroidx/compose/ui/unit/Density;

    iget-object p0, v6, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$approach$1;->L$0:Ljava/lang/Object;

    move-object p4, p0

    check-cast p4, Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;

    invoke-static {p7}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p7}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 314
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v3

    .line 315
    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v4

    .line 312
    iput-object p4, v6, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$approach$1;->L$0:Ljava/lang/Object;

    iput-object p5, v6, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$approach$1;->L$1:Ljava/lang/Object;

    iput v2, v6, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$approach$1;->label:I

    move-object v1, p3

    move-object v2, p0

    move-object v5, p6

    invoke-interface/range {v1 .. v6}, Landroidx/compose/foundation/gestures/snapping/ApproachAnimation;->approachAnimation(Landroidx/compose/foundation/gestures/ScrollScope;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p7

    if-ne p7, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    check-cast p7, Landroidx/compose/foundation/gestures/snapping/AnimationResult;

    invoke-virtual {p7}, Landroidx/compose/foundation/gestures/snapping/AnimationResult;->component2()Landroidx/compose/animation/core/AnimationState;

    move-result-object p0

    .line 320
    invoke-virtual {p0}, Landroidx/compose/animation/core/AnimationState;->getVelocity()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-interface {p4, p5, p1}, Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;->calculateSnappingOffset(Landroidx/compose/ui/unit/Density;F)F

    move-result p1

    .line 324
    new-instance p2, Landroidx/compose/foundation/gestures/snapping/AnimationResult;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroidx/compose/foundation/gestures/snapping/AnimationResult;-><init>(Ljava/lang/Object;Landroidx/compose/animation/core/AnimationState;)V

    return-object p2
.end method

.method public static final calculateFinalOffset(FFF)F
    .locals 2

    .line 505
    invoke-static {p0}, Ljava/lang/Math;->signum(F)F

    move-result p0

    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    if-nez v1, :cond_0

    .line 507
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float p0, p0, v1

    if-gtz p0, :cond_3

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, p0, v1

    if-nez v1, :cond_1

    :goto_0
    move p1, p2

    goto :goto_1

    :cond_1
    const/high16 p2, -0x40800000    # -1.0f

    cmpg-float p0, p0, p2

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    move p1, v0

    .line 519
    :cond_3
    :goto_1
    invoke-static {p1}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt;->calculateFinalOffset$isValidDistance(F)Z

    move-result p0

    if-eqz p0, :cond_4

    move v0, p1

    :cond_4
    return v0
.end method

.method private static final calculateFinalOffset$isValidDistance(F)Z
    .locals 1

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpg-float v0, p0, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    cmpg-float p0, p0, v0

    if-nez p0, :cond_1

    :goto_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static final coerceToTarget(FF)F
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-nez v1, :cond_0

    return v0

    :cond_0
    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 433
    invoke-static {p0, p1}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result p0

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result p0

    :goto_0
    return p0
.end method

.method private static final component1(Lkotlin/ranges/ClosedFloatingPointRange;)Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>(",
            "Lkotlin/ranges/ClosedFloatingPointRange<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 335
    invoke-interface {p0}, Lkotlin/ranges/ClosedFloatingPointRange;->getStart()Ljava/lang/Comparable;

    move-result-object p0

    return-object p0
.end method

.method private static final component2(Lkotlin/ranges/ClosedFloatingPointRange;)Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>(",
            "Lkotlin/ranges/ClosedFloatingPointRange<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 337
    invoke-interface {p0}, Lkotlin/ranges/ClosedFloatingPointRange;->getEndInclusive()Ljava/lang/Comparable;

    move-result-object p0

    return-object p0
.end method

.method private static final debugLog(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public static final getMinFlingVelocityDp()F
    .locals 1

    sget v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt;->MinFlingVelocityDp:F

    return v0
.end method

.method public static final rememberSnapFlingBehavior(Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;
    .locals 10

    const-string/jumbo v0, "snapLayoutInfoProvider"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x1c406e28

    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(rememberSnapFlingBehavior)273@11475L7,274@11545L26,275@11583L447:SnapFlingBehavior.kt#ppz6w6"

    invoke-static {p1, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "androidx.compose.foundation.gestures.snapping.rememberSnapFlingBehavior (SnapFlingBehavior.kt:270)"

    .line 273
    invoke-static {v0, p2, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 274
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object p2

    check-cast p2, Landroidx/compose/runtime/CompositionLocal;

    const v0, 0x789c5f52

    const-string v1, "CC:CompositionLocal.kt#9igjgp"

    .line 532
    invoke-static {p1, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 274
    move-object v5, p2

    check-cast v5, Landroidx/compose/ui/unit/Density;

    const/4 p2, 0x0

    .line 275
    invoke-static {p1, p2}, Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec_androidKt;->rememberSplineBasedDecay(Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/DecayAnimationSpec;

    move-result-object v3

    const v0, 0x607fb4c4

    .line 276
    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "CC(remember)P(1,2,3):Composables.kt#9igjgp"

    invoke-static {p1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 533
    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    .line 534
    invoke-interface {p1, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 535
    invoke-interface {p1, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 537
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_1

    .line 538
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v1, v0, :cond_2

    .line 281
    :cond_1
    new-instance v9, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;

    .line 283
    invoke-static {}, Landroidx/compose/animation/core/EasingKt;->getLinearEasing()Landroidx/compose/animation/core/Easing;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {p2, p2, v0, v1, v2}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;ILjava/lang/Object;)Landroidx/compose/animation/core/TweenSpec;

    move-result-object p2

    check-cast p2, Landroidx/compose/animation/core/AnimationSpec;

    const/high16 v0, 0x43c80000    # 400.0f

    const/4 v1, 0x5

    const/4 v4, 0x0

    .line 285
    invoke-static {v4, v0, v2, v1, v2}, Landroidx/compose/animation/core/AnimationSpecKt;->spring$default(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroidx/compose/animation/core/AnimationSpec;

    const/4 v6, 0x0

    const/16 v7, 0x20

    const/4 v8, 0x0

    move-object v0, v9

    move-object v1, p0

    move-object v2, p2

    .line 281
    invoke-direct/range {v0 .. v8}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;-><init>(Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/DecayAnimationSpec;Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/ui/unit/Density;FILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 540
    invoke-interface {p1, v9}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v1, v9

    .line 536
    :cond_2
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 276
    check-cast v1, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v1
.end method
