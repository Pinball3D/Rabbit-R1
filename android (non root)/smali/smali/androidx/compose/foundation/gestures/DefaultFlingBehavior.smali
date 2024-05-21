.class public final Landroidx/compose/foundation/gestures/DefaultFlingBehavior;
.super Ljava/lang/Object;
.source "Scrollable.kt"

# interfaces
.implements Landroidx/compose/foundation/gestures/FlingBehavior;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u001d\u0010\u000e\u001a\u00020\u0004*\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0004H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0011R\u0014\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0008\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0012"
    }
    d2 = {
        "Landroidx/compose/foundation/gestures/DefaultFlingBehavior;",
        "Landroidx/compose/foundation/gestures/FlingBehavior;",
        "flingDecay",
        "Landroidx/compose/animation/core/DecayAnimationSpec;",
        "",
        "motionDurationScale",
        "Landroidx/compose/ui/MotionDurationScale;",
        "(Landroidx/compose/animation/core/DecayAnimationSpec;Landroidx/compose/ui/MotionDurationScale;)V",
        "lastAnimationCycleCount",
        "",
        "getLastAnimationCycleCount",
        "()I",
        "setLastAnimationCycleCount",
        "(I)V",
        "performFling",
        "Landroidx/compose/foundation/gestures/ScrollScope;",
        "initialVelocity",
        "(Landroidx/compose/foundation/gestures/ScrollScope;FLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field private final flingDecay:Landroidx/compose/animation/core/DecayAnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/DecayAnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private lastAnimationCycleCount:I

.field private final motionDurationScale:Landroidx/compose/ui/MotionDurationScale;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/DecayAnimationSpec;Landroidx/compose/ui/MotionDurationScale;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/DecayAnimationSpec<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/ui/MotionDurationScale;",
            ")V"
        }
    .end annotation

    const-string v0, "flingDecay"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "motionDurationScale"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 585
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/gestures/DefaultFlingBehavior;->flingDecay:Landroidx/compose/animation/core/DecayAnimationSpec;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/DefaultFlingBehavior;->motionDurationScale:Landroidx/compose/ui/MotionDurationScale;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/animation/core/DecayAnimationSpec;Landroidx/compose/ui/MotionDurationScale;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 587
    invoke-static {}, Landroidx/compose/foundation/gestures/ScrollableKt;->getDefaultScrollMotionDurationScale()Landroidx/compose/ui/MotionDurationScale;

    move-result-object p2

    .line 585
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/gestures/DefaultFlingBehavior;-><init>(Landroidx/compose/animation/core/DecayAnimationSpec;Landroidx/compose/ui/MotionDurationScale;)V

    return-void
.end method

.method public static final synthetic access$getFlingDecay$p(Landroidx/compose/foundation/gestures/DefaultFlingBehavior;)Landroidx/compose/animation/core/DecayAnimationSpec;
    .locals 0

    .line 585
    iget-object p0, p0, Landroidx/compose/foundation/gestures/DefaultFlingBehavior;->flingDecay:Landroidx/compose/animation/core/DecayAnimationSpec;

    return-object p0
.end method


# virtual methods
.method public final getLastAnimationCycleCount()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/gestures/DefaultFlingBehavior;->lastAnimationCycleCount:I

    return p0
.end method

.method public performFling(Landroidx/compose/foundation/gestures/ScrollScope;FLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
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

    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/foundation/gestures/DefaultFlingBehavior;->lastAnimationCycleCount:I

    iget-object v0, p0, Landroidx/compose/foundation/gestures/DefaultFlingBehavior;->motionDurationScale:Landroidx/compose/ui/MotionDurationScale;

    .line 596
    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$2;

    const/4 v2, 0x0

    invoke-direct {v1, p2, p0, p1, v2}, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$2;-><init>(FLandroidx/compose/foundation/gestures/DefaultFlingBehavior;Landroidx/compose/foundation/gestures/ScrollScope;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final setLastAnimationCycleCount(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/gestures/DefaultFlingBehavior;->lastAnimationCycleCount:I

    return-void
.end method
