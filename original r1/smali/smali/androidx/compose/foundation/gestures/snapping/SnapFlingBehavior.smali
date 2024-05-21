.class public final Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;
.super Ljava/lang/Object;
.source "SnapFlingBehavior.kt"

# interfaces
.implements Landroidx/compose/foundation/gestures/FlingBehavior;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSnapFlingBehavior.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SnapFlingBehavior.kt\nandroidx/compose/foundation/gestures/snapping/SnapFlingBehavior\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 SnapFlingBehavior.kt\nandroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt\n*L\n1#1,531:1\n1#2:532\n528#3,4:533\n528#3,4:537\n528#3,4:541\n528#3,4:545\n528#3,4:549\n528#3,4:553\n*S KotlinDebug\n*F\n+ 1 SnapFlingBehavior.kt\nandroidx/compose/foundation/gestures/snapping/SnapFlingBehavior\n*L\n119#1:533,4\n147#1:537,4\n170#1:541,4\n187#1:545,4\n210#1:549,4\n213#1:553,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u0007\u0018\u00002\u00020\u0001BL\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0008\u0012\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000eJ\u0013\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0096\u0002J\u0008\u0010\u001b\u001a\u00020\u001cH\u0016J\u0018\u0010\u001d\u001a\u00020\u00182\u0006\u0010\u001e\u001a\u00020\u00062\u0006\u0010\u001f\u001a\u00020\u0006H\u0002J=\u0010 \u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\"0!*\u00020#2\u0006\u0010$\u001a\u00020\u00062\u0012\u0010%\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\'0&H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010(JL\u0010)\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\"0!*\u00020#2\u0006\u0010$\u001a\u00020\u00062!\u0010*\u001a\u001d\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u0008+\u0012\u0008\u0008,\u0012\u0004\u0008\u0008(-\u0012\u0004\u0012\u00020\'0&H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010(J\u001d\u0010.\u001a\u00020\u0006*\u00020#2\u0006\u0010$\u001a\u00020\u0006H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010/J1\u0010.\u001a\u00020\u0006*\u00020#2\u0006\u0010$\u001a\u00020\u00062\u0012\u00100\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\'0&H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010(JT\u00101\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\"0!*\u00020#2\u0006\u00102\u001a\u00020\u00062\u0006\u0010$\u001a\u00020\u00062!\u0010*\u001a\u001d\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u0008+\u0012\u0008\u0008,\u0012\u0004\u0008\u0008(3\u0012\u0004\u0012\u00020\'0&H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u00104J=\u00105\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\"0!*\u00020#2\u0006\u0010\u001f\u001a\u00020\u00062\u0012\u0010%\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\'0&H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010(R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000f\u001a\u00020\u0010X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u0019\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\n\u0002\u0010\u0015R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u00066"
    }
    d2 = {
        "Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;",
        "Landroidx/compose/foundation/gestures/FlingBehavior;",
        "snapLayoutInfoProvider",
        "Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;",
        "lowVelocityAnimationSpec",
        "Landroidx/compose/animation/core/AnimationSpec;",
        "",
        "highVelocityAnimationSpec",
        "Landroidx/compose/animation/core/DecayAnimationSpec;",
        "snapAnimationSpec",
        "density",
        "Landroidx/compose/ui/unit/Density;",
        "shortSnapVelocityThreshold",
        "Landroidx/compose/ui/unit/Dp;",
        "(Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/DecayAnimationSpec;Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/ui/unit/Density;FLkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "motionScaleDuration",
        "Landroidx/compose/ui/MotionDurationScale;",
        "getMotionScaleDuration$foundation_release",
        "()Landroidx/compose/ui/MotionDurationScale;",
        "setMotionScaleDuration$foundation_release",
        "(Landroidx/compose/ui/MotionDurationScale;)V",
        "F",
        "velocityThreshold",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "isDecayApproachPossible",
        "offset",
        "velocity",
        "fling",
        "Landroidx/compose/foundation/gestures/snapping/AnimationResult;",
        "Landroidx/compose/animation/core/AnimationVector1D;",
        "Landroidx/compose/foundation/gestures/ScrollScope;",
        "initialVelocity",
        "onRemainingScrollOffsetUpdate",
        "Lkotlin/Function1;",
        "",
        "(Landroidx/compose/foundation/gestures/ScrollScope;FLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "longSnap",
        "onAnimationStep",
        "Lkotlin/ParameterName;",
        "name",
        "remainingScrollOffset",
        "performFling",
        "(Landroidx/compose/foundation/gestures/ScrollScope;FLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "onSettlingDistanceUpdated",
        "runApproach",
        "initialTargetOffset",
        "delta",
        "(Landroidx/compose/foundation/gestures/ScrollScope;FFLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "shortSnap",
        "foundation_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private final density:Landroidx/compose/ui/unit/Density;

.field private final highVelocityAnimationSpec:Landroidx/compose/animation/core/DecayAnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/DecayAnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final lowVelocityAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private motionScaleDuration:Landroidx/compose/ui/MotionDurationScale;

.field private final shortSnapVelocityThreshold:F

.field private final snapAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final snapLayoutInfoProvider:Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;

.field private final velocityThreshold:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/DecayAnimationSpec;Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/ui/unit/Density;F)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/animation/core/DecayAnimationSpec<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/ui/unit/Density;",
            "F)V"
        }
    .end annotation

    const-string/jumbo v0, "snapLayoutInfoProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lowVelocityAnimationSpec"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "highVelocityAnimationSpec"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "snapAnimationSpec"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "density"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->snapLayoutInfoProvider:Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->lowVelocityAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;

    iput-object p3, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->highVelocityAnimationSpec:Landroidx/compose/animation/core/DecayAnimationSpec;

    iput-object p4, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->snapAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;

    iput-object p5, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->density:Landroidx/compose/ui/unit/Density;

    iput p6, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->shortSnapVelocityThreshold:F

    .line 92
    invoke-interface {p5, p6}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result p1

    iput p1, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->velocityThreshold:F

    .line 93
    invoke-static {}, Landroidx/compose/foundation/gestures/ScrollableKt;->getDefaultScrollMotionDurationScale()Landroidx/compose/ui/MotionDurationScale;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->motionScaleDuration:Landroidx/compose/ui/MotionDurationScale;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/DecayAnimationSpec;Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/ui/unit/Density;FILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_0

    .line 89
    invoke-static {}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt;->getMinFlingVelocityDp()F

    move-result v0

    move v7, v0

    goto :goto_0

    :cond_0
    move v7, p6

    :goto_0
    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 83
    invoke-direct/range {v1 .. v8}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;-><init>(Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/DecayAnimationSpec;Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/ui/unit/Density;FLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/DecayAnimationSpec;Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/ui/unit/Density;FLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;-><init>(Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/DecayAnimationSpec;Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/ui/unit/Density;F)V

    return-void
.end method

.method public static final synthetic access$fling(Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;Landroidx/compose/foundation/gestures/ScrollScope;FLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->fling(Landroidx/compose/foundation/gestures/ScrollScope;FLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getVelocityThreshold$p(Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;)F
    .locals 0

    .line 82
    iget p0, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->velocityThreshold:F

    return p0
.end method

.method public static final synthetic access$longSnap(Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;Landroidx/compose/foundation/gestures/ScrollScope;FLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->longSnap(Landroidx/compose/foundation/gestures/ScrollScope;FLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$runApproach(Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;Landroidx/compose/foundation/gestures/ScrollScope;FFLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 82
    invoke-direct/range {p0 .. p5}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->runApproach(Landroidx/compose/foundation/gestures/ScrollScope;FFLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$shortSnap(Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;Landroidx/compose/foundation/gestures/ScrollScope;FLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->shortSnap(Landroidx/compose/foundation/gestures/ScrollScope;FLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final fling(Landroidx/compose/foundation/gestures/ScrollScope;FLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/gestures/ScrollScope;",
            "F",
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

    instance-of v0, p4, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$1;

    iget v1, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p4, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$1;->label:I

    sub-int/2addr p4, v2

    iput p4, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$1;

    invoke-direct {v0, p0, p4}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$1;-><init>(Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 126
    iget v2, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$1;->L$0:Ljava/lang/Object;

    move-object p3, p0

    check-cast p3, Lkotlin/jvm/functions/Function1;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p4, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->motionScaleDuration:Landroidx/compose/ui/MotionDurationScale;

    .line 131
    check-cast p4, Lkotlin/coroutines/CoroutineContext;

    new-instance v2, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;

    const/4 v9, 0x0

    move-object v4, v2

    move v5, p2

    move-object v6, p0

    move-object v7, p1

    move-object v8, p3

    invoke-direct/range {v4 .. v9}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;-><init>(FLandroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;Landroidx/compose/foundation/gestures/ScrollScope;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    iput-object p3, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$1;->label:I

    invoke-static {p4, v2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_3

    return-object v1

    .line 126
    :cond_3
    :goto_1
    check-cast p4, Landroidx/compose/foundation/gestures/snapping/AnimationResult;

    const/4 p0, 0x0

    .line 139
    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object p0

    invoke-interface {p3, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p4
.end method

.method private final isDecayApproachPossible(FF)Z
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->highVelocityAnimationSpec:Landroidx/compose/animation/core/DecayAnimationSpec;

    const/4 v1, 0x0

    .line 238
    invoke-static {v0, v1, p2}, Landroidx/compose/animation/core/DecayAnimationSpecKt;->calculateTargetValue(Landroidx/compose/animation/core/DecayAnimationSpec;FF)F

    move-result p2

    iget-object v0, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->snapLayoutInfoProvider:Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;

    iget-object p0, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->density:Landroidx/compose/ui/unit/Density;

    .line 239
    invoke-interface {v0, p0}, Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;->calculateSnapStepSize(Landroidx/compose/ui/unit/Density;)F

    move-result p0

    .line 240
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    add-float/2addr p1, p0

    cmpl-float p0, p2, p1

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final longSnap(Landroidx/compose/foundation/gestures/ScrollScope;FLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/gestures/ScrollScope;",
            "F",
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

    move-object/from16 v6, p0

    move-object/from16 v7, p3

    move-object/from16 v0, p4

    instance-of v1, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$longSnap$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$longSnap$1;

    iget v2, v1, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$longSnap$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$longSnap$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$longSnap$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$longSnap$1;

    invoke-direct {v1, v6, v0}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$longSnap$1;-><init>(Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v8, v1

    iget-object v0, v8, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$longSnap$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v9

    .line 166
    iget v1, v8, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$longSnap$1;->label:I

    const/4 v10, 0x2

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v2, :cond_2

    if-ne v1, v10, :cond_1

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v1, v8, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$longSnap$1;->L$3:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/Ref$FloatRef;

    iget-object v2, v8, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$longSnap$1;->L$2:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    iget-object v3, v8, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$longSnap$1;->L$1:Ljava/lang/Object;

    check-cast v3, Landroidx/compose/foundation/gestures/ScrollScope;

    iget-object v4, v8, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$longSnap$1;->L$0:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v12, v3

    goto :goto_1

    :cond_3
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v0, v6, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->snapLayoutInfoProvider:Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;

    iget-object v1, v6, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->density:Landroidx/compose/ui/unit/Density;

    move/from16 v3, p2

    .line 172
    invoke-interface {v0, v1, v3}, Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;->calculateApproachOffset(Landroidx/compose/ui/unit/Density;F)F

    move-result v0

    .line 173
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->signum(F)F

    move-result v1

    mul-float v4, v0, v1

    .line 175
    new-instance v11, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v11}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    iput v4, v11, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 177
    iget v0, v11, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v7, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    new-instance v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$longSnap$3;

    invoke-direct {v0, v11, v7}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$longSnap$3;-><init>(Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/functions/Function1;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function1;

    iput-object v6, v8, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$longSnap$1;->L$0:Ljava/lang/Object;

    move-object/from16 v12, p1

    iput-object v12, v8, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$longSnap$1;->L$1:Ljava/lang/Object;

    iput-object v7, v8, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$longSnap$1;->L$2:Ljava/lang/Object;

    iput-object v11, v8, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$longSnap$1;->L$3:Ljava/lang/Object;

    iput v2, v8, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$longSnap$1;->label:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v4

    move-object v4, v5

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->runApproach(Landroidx/compose/foundation/gestures/ScrollScope;FFLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_4

    return-object v9

    :cond_4
    move-object v4, v6

    move-object v2, v7

    move-object v1, v11

    :goto_1
    check-cast v0, Landroidx/compose/foundation/gestures/snapping/AnimationResult;

    invoke-virtual {v0}, Landroidx/compose/foundation/gestures/snapping/AnimationResult;->component1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v5

    invoke-virtual {v0}, Landroidx/compose/foundation/gestures/snapping/AnimationResult;->component2()Landroidx/compose/animation/core/AnimationState;

    move-result-object v13

    .line 189
    iput v5, v1, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1e

    const/16 v22, 0x0

    .line 194
    invoke-static/range {v13 .. v22}, Landroidx/compose/animation/core/AnimationStateKt;->copy$default(Landroidx/compose/animation/core/AnimationState;FFJJZILjava/lang/Object;)Landroidx/compose/animation/core/AnimationState;

    move-result-object v0

    .line 195
    iget-object v6, v4, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->snapAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;

    .line 191
    new-instance v3, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$longSnap$5;

    invoke-direct {v3, v1, v2}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$longSnap$5;-><init>(Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/functions/Function1;)V

    move-object v7, v3

    check-cast v7, Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x0

    iput-object v1, v8, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$longSnap$1;->L$0:Ljava/lang/Object;

    iput-object v1, v8, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$longSnap$1;->L$1:Ljava/lang/Object;

    iput-object v1, v8, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$longSnap$1;->L$2:Ljava/lang/Object;

    iput-object v1, v8, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$longSnap$1;->L$3:Ljava/lang/Object;

    iput v10, v8, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$longSnap$1;->label:I

    move-object v2, v12

    move v3, v5

    move v4, v5

    move-object v5, v0

    invoke-static/range {v2 .. v8}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt;->access$animateSnap(Landroidx/compose/foundation/gestures/ScrollScope;FFLandroidx/compose/animation/core/AnimationState;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_5

    return-object v9

    :cond_5
    :goto_2
    return-object v0
.end method

.method private final runApproach(Landroidx/compose/foundation/gestures/ScrollScope;FFLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/gestures/ScrollScope;",
            "FF",
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

    .line 209
    invoke-direct {p0, p2, p3}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->isDecayApproachPossible(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    new-instance v0, Landroidx/compose/foundation/gestures/snapping/HighVelocityApproachAnimation;

    iget-object v1, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->highVelocityAnimationSpec:Landroidx/compose/animation/core/DecayAnimationSpec;

    invoke-direct {v0, v1}, Landroidx/compose/foundation/gestures/snapping/HighVelocityApproachAnimation;-><init>(Landroidx/compose/animation/core/DecayAnimationSpec;)V

    check-cast v0, Landroidx/compose/foundation/gestures/snapping/ApproachAnimation;

    goto :goto_0

    .line 214
    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/snapping/LowVelocityApproachAnimation;

    iget-object v1, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->lowVelocityAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;

    iget-object v2, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->snapLayoutInfoProvider:Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;

    iget-object v3, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->density:Landroidx/compose/ui/unit/Density;

    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/foundation/gestures/snapping/LowVelocityApproachAnimation;-><init>(Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;Landroidx/compose/ui/unit/Density;)V

    check-cast v0, Landroidx/compose/foundation/gestures/snapping/ApproachAnimation;

    :goto_0
    move-object v4, v0

    iget-object v5, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->snapLayoutInfoProvider:Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;

    iget-object v6, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->density:Landroidx/compose/ui/unit/Density;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v7, p4

    move-object v8, p5

    .line 221
    invoke-static/range {v1 .. v8}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt;->access$approach(Landroidx/compose/foundation/gestures/ScrollScope;FFLandroidx/compose/foundation/gestures/snapping/ApproachAnimation;Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;Landroidx/compose/ui/unit/Density;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final shortSnap(Landroidx/compose/foundation/gestures/ScrollScope;FLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/gestures/ScrollScope;",
            "F",
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

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->snapLayoutInfoProvider:Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;

    iget-object v2, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->density:Landroidx/compose/ui/unit/Density;

    const/4 v3, 0x0

    .line 149
    invoke-interface {v1, v2, v3}, Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;->calculateSnappingOffset(Landroidx/compose/ui/unit/Density;F)F

    move-result v6

    .line 152
    new-instance v1, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    iput v6, v1, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    const/4 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x1c

    const/4 v15, 0x0

    move/from16 v8, p2

    .line 154
    invoke-static/range {v7 .. v15}, Landroidx/compose/animation/core/AnimationStateKt;->AnimationState$default(FFJJZILjava/lang/Object;)Landroidx/compose/animation/core/AnimationState;

    move-result-object v7

    iget-object v8, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->snapAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;

    .line 155
    new-instance v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$shortSnap$3;

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$shortSnap$3;-><init>(Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/functions/Function1;)V

    move-object v9, v0

    check-cast v9, Lkotlin/jvm/functions/Function1;

    move-object/from16 v4, p1

    move v5, v6

    move-object/from16 v10, p4

    invoke-static/range {v4 .. v10}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt;->access$animateSnap(Landroidx/compose/foundation/gestures/ScrollScope;FFLandroidx/compose/animation/core/AnimationState;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 244
    instance-of v0, p1, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 245
    check-cast p1, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;

    iget-object v0, p1, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->snapAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;

    iget-object v2, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->snapAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p1, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->highVelocityAnimationSpec:Landroidx/compose/animation/core/DecayAnimationSpec;

    iget-object v2, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->highVelocityAnimationSpec:Landroidx/compose/animation/core/DecayAnimationSpec;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p1, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->lowVelocityAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;

    iget-object v2, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->lowVelocityAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p1, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->snapLayoutInfoProvider:Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;

    iget-object v2, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->snapLayoutInfoProvider:Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p1, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->density:Landroidx/compose/ui/unit/Density;

    iget-object v2, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->density:Landroidx/compose/ui/unit/Density;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    iget p1, p1, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->shortSnapVelocityThreshold:F

    iget p0, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->shortSnapVelocityThreshold:F

    invoke-static {p1, p0}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final getMotionScaleDuration$foundation_release()Landroidx/compose/ui/MotionDurationScale;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->motionScaleDuration:Landroidx/compose/ui/MotionDurationScale;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->snapAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;

    .line 257
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->highVelocityAnimationSpec:Landroidx/compose/animation/core/DecayAnimationSpec;

    .line 258
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->lowVelocityAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;

    .line 259
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->snapLayoutInfoProvider:Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;

    .line 260
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->density:Landroidx/compose/ui/unit/Density;

    .line 261
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->shortSnapVelocityThreshold:F

    .line 262
    invoke-static {p0}, Landroidx/compose/ui/unit/Dp;->hashCode-impl(F)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public performFling(Landroidx/compose/foundation/gestures/ScrollScope;FLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/gestures/ScrollScope;",
            "F",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Float;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 96
    sget-object v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$performFling$2;->INSTANCE:Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$performFling$2;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, p1, p2, v0, p3}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->performFling(Landroidx/compose/foundation/gestures/ScrollScope;FLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final performFling(Landroidx/compose/foundation/gestures/ScrollScope;FLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/gestures/ScrollScope;",
            "F",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Float;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$performFling$3;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$performFling$3;

    iget v1, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$performFling$3;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p4, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$performFling$3;->label:I

    sub-int/2addr p4, v2

    iput p4, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$performFling$3;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$performFling$3;

    invoke-direct {v0, p0, p4}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$performFling$3;-><init>(Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$performFling$3;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 113
    iget v2, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$performFling$3;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 117
    iput v3, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$performFling$3;->label:I

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->fling(Landroidx/compose/foundation/gestures/ScrollScope;FLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p4, Landroidx/compose/foundation/gestures/snapping/AnimationResult;

    invoke-virtual {p4}, Landroidx/compose/foundation/gestures/snapping/AnimationResult;->component1()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-virtual {p4}, Landroidx/compose/foundation/gestures/snapping/AnimationResult;->component2()Landroidx/compose/animation/core/AnimationState;

    move-result-object p1

    const/4 p2, 0x0

    cmpg-float p0, p0, p2

    if-nez p0, :cond_4

    goto :goto_2

    .line 123
    :cond_4
    invoke-virtual {p1}, Landroidx/compose/animation/core/AnimationState;->getVelocity()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p2

    :goto_2
    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public final setMotionScaleDuration$foundation_release(Landroidx/compose/ui/MotionDurationScale;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->motionScaleDuration:Landroidx/compose/ui/MotionDurationScale;

    return-void
.end method
