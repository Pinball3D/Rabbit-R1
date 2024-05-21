.class final Landroidx/compose/foundation/gestures/snapping/LowVelocityApproachAnimation;
.super Ljava/lang/Object;
.source "SnapFlingBehavior.kt"

# interfaces
.implements Landroidx/compose/foundation/gestures/snapping/ApproachAnimation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/compose/foundation/gestures/snapping/ApproachAnimation<",
        "Ljava/lang/Float;",
        "Landroidx/compose/animation/core/AnimationVector1D;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSnapFlingBehavior.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SnapFlingBehavior.kt\nandroidx/compose/foundation/gestures/snapping/LowVelocityApproachAnimation\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,531:1\n1#2:532\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B#\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJX\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u00022!\u0010\u0011\u001a\u001d\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008\u0013\u0012\u0008\u0008\u0014\u0012\u0004\u0008\u0008(\u0015\u0012\u0004\u0012\u00020\u00160\u0012H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0017R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0018"
    }
    d2 = {
        "Landroidx/compose/foundation/gestures/snapping/LowVelocityApproachAnimation;",
        "Landroidx/compose/foundation/gestures/snapping/ApproachAnimation;",
        "",
        "Landroidx/compose/animation/core/AnimationVector1D;",
        "lowVelocityAnimationSpec",
        "Landroidx/compose/animation/core/AnimationSpec;",
        "layoutInfoProvider",
        "Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;",
        "density",
        "Landroidx/compose/ui/unit/Density;",
        "(Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;Landroidx/compose/ui/unit/Density;)V",
        "approachAnimation",
        "Landroidx/compose/foundation/gestures/snapping/AnimationResult;",
        "scope",
        "Landroidx/compose/foundation/gestures/ScrollScope;",
        "offset",
        "velocity",
        "onAnimationStep",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "delta",
        "",
        "(Landroidx/compose/foundation/gestures/ScrollScope;FFLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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


# instance fields
.field private final density:Landroidx/compose/ui/unit/Density;

.field private final layoutInfoProvider:Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;

.field private final lowVelocityAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;Landroidx/compose/ui/unit/Density;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;",
            "Landroidx/compose/ui/unit/Density;",
            ")V"
        }
    .end annotation

    const-string v0, "lowVelocityAnimationSpec"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutInfoProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "density"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 448
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/gestures/snapping/LowVelocityApproachAnimation;->lowVelocityAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/snapping/LowVelocityApproachAnimation;->layoutInfoProvider:Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;

    iput-object p3, p0, Landroidx/compose/foundation/gestures/snapping/LowVelocityApproachAnimation;->density:Landroidx/compose/ui/unit/Density;

    return-void
.end method


# virtual methods
.method public approachAnimation(Landroidx/compose/foundation/gestures/ScrollScope;FFLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17
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

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1c

    const/4 v9, 0x0

    move/from16 v2, p3

    .line 460
    invoke-static/range {v1 .. v9}, Landroidx/compose/animation/core/AnimationStateKt;->AnimationState$default(FFJJZILjava/lang/Object;)Landroidx/compose/animation/core/AnimationState;

    move-result-object v13

    .line 462
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v2, v0, Landroidx/compose/foundation/gestures/snapping/LowVelocityApproachAnimation;->layoutInfoProvider:Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;

    iget-object v3, v0, Landroidx/compose/foundation/gestures/snapping/LowVelocityApproachAnimation;->density:Landroidx/compose/ui/unit/Density;

    invoke-interface {v2, v3}, Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;->calculateSnapStepSize(Landroidx/compose/ui/unit/Density;)F

    move-result v2

    add-float/2addr v1, v2

    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->signum(F)F

    move-result v2

    mul-float v11, v1, v2

    iget-object v14, v0, Landroidx/compose/foundation/gestures/snapping/LowVelocityApproachAnimation;->lowVelocityAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;

    move-object/from16 v10, p1

    move/from16 v12, p2

    move-object/from16 v15, p4

    move-object/from16 v16, p5

    .line 466
    invoke-static/range {v10 .. v16}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt;->access$animateSnap(Landroidx/compose/foundation/gestures/ScrollScope;FFLandroidx/compose/animation/core/AnimationState;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    check-cast v0, Landroidx/compose/foundation/gestures/snapping/AnimationResult;

    return-object v0
.end method

.method public bridge synthetic approachAnimation(Landroidx/compose/foundation/gestures/ScrollScope;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    .line 448
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/compose/foundation/gestures/snapping/LowVelocityApproachAnimation;->approachAnimation(Landroidx/compose/foundation/gestures/ScrollScope;FFLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
