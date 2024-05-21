.class final Landroidx/compose/animation/core/InfiniteTransitionKt$animateValue$1;
.super Lkotlin/jvm/internal/Lambda;
.source "InfiniteTransition.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/animation/core/InfiniteTransitionKt;->animateValue(Landroidx/compose/animation/core/InfiniteTransition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/animation/core/InfiniteRepeatableSpec;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0008\u0008\u0001\u0010\u0003*\u00020\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "V",
        "Landroidx/compose/animation/core/AnimationVector;",
        "invoke"
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
.field final synthetic $animationSpec:Landroidx/compose/animation/core/InfiniteRepeatableSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/InfiniteRepeatableSpec<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic $initialValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic $targetValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic $transitionAnimation:Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState<",
            "TT;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;Ljava/lang/Object;Landroidx/compose/animation/core/InfiniteRepeatableSpec;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState<",
            "TT;TV;>;TT;",
            "Landroidx/compose/animation/core/InfiniteRepeatableSpec<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/animation/core/InfiniteTransitionKt$animateValue$1;->$initialValue:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/animation/core/InfiniteTransitionKt$animateValue$1;->$transitionAnimation:Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;

    iput-object p3, p0, Landroidx/compose/animation/core/InfiniteTransitionKt$animateValue$1;->$targetValue:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/compose/animation/core/InfiniteTransitionKt$animateValue$1;->$animationSpec:Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 269
    invoke-virtual {p0}, Landroidx/compose/animation/core/InfiniteTransitionKt$animateValue$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 3

    iget-object v0, p0, Landroidx/compose/animation/core/InfiniteTransitionKt$animateValue$1;->$initialValue:Ljava/lang/Object;

    iget-object v1, p0, Landroidx/compose/animation/core/InfiniteTransitionKt$animateValue$1;->$transitionAnimation:Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;

    .line 270
    invoke-virtual {v1}, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->getInitialValue$animation_core_release()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/animation/core/InfiniteTransitionKt$animateValue$1;->$targetValue:Ljava/lang/Object;

    iget-object v1, p0, Landroidx/compose/animation/core/InfiniteTransitionKt$animateValue$1;->$transitionAnimation:Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;

    .line 271
    invoke-virtual {v1}, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->getTargetValue$animation_core_release()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroidx/compose/animation/core/InfiniteTransitionKt$animateValue$1;->$transitionAnimation:Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;

    iget-object v1, p0, Landroidx/compose/animation/core/InfiniteTransitionKt$animateValue$1;->$initialValue:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/compose/animation/core/InfiniteTransitionKt$animateValue$1;->$targetValue:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/compose/animation/core/InfiniteTransitionKt$animateValue$1;->$animationSpec:Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    .line 276
    check-cast p0, Landroidx/compose/animation/core/AnimationSpec;

    .line 273
    invoke-virtual {v0, v1, v2, p0}, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->updateValues$animation_core_release(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;)V

    :cond_1
    return-void
.end method
