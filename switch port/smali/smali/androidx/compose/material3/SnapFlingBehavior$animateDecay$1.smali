.class final Landroidx/compose/material3/SnapFlingBehavior$animateDecay$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SnapFlingBehavior.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/SnapFlingBehavior;->animateDecay(Landroidx/compose/foundation/gestures/ScrollScope;FLandroidx/compose/animation/core/AnimationState;Landroidx/compose/animation/core/DecayAnimationSpec;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.compose.material3.SnapFlingBehavior"
    f = "SnapFlingBehavior.kt"
    i = {
        0x0,
        0x0,
        0x0
    }
    l = {
        0x105
    }
    m = "animateDecay"
    n = {
        "animationState",
        "previousValue",
        "targetOffset"
    }
    s = {
        "L$0",
        "L$1",
        "F$0"
    }
.end annotation


# instance fields
.field F$0:F

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Landroidx/compose/material3/SnapFlingBehavior;


# direct methods
.method constructor <init>(Landroidx/compose/material3/SnapFlingBehavior;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/SnapFlingBehavior;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/material3/SnapFlingBehavior$animateDecay$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/SnapFlingBehavior$animateDecay$1;->this$0:Landroidx/compose/material3/SnapFlingBehavior;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iput-object p1, p0, Landroidx/compose/material3/SnapFlingBehavior$animateDecay$1;->result:Ljava/lang/Object;

    iget p1, p0, Landroidx/compose/material3/SnapFlingBehavior$animateDecay$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/compose/material3/SnapFlingBehavior$animateDecay$1;->label:I

    iget-object v0, p0, Landroidx/compose/material3/SnapFlingBehavior$animateDecay$1;->this$0:Landroidx/compose/material3/SnapFlingBehavior;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    invoke-static/range {v0 .. v5}, Landroidx/compose/material3/SnapFlingBehavior;->access$animateDecay(Landroidx/compose/material3/SnapFlingBehavior;Landroidx/compose/foundation/gestures/ScrollScope;FLandroidx/compose/animation/core/AnimationState;Landroidx/compose/animation/core/DecayAnimationSpec;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
