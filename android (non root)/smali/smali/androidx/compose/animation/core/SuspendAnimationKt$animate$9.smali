.class final Landroidx/compose/animation/core/SuspendAnimationKt$animate$9;
.super Lkotlin/jvm/internal/Lambda;
.source "SuspendAnimation.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/animation/core/SuspendAnimationKt;->animate(Landroidx/compose/animation/core/AnimationState;Landroidx/compose/animation/core/Animation;JLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Long;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0008\u0008\u0001\u0010\u0003*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "V",
        "Landroidx/compose/animation/core/AnimationVector;",
        "it",
        "",
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
.field final synthetic $animation:Landroidx/compose/animation/core/Animation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/Animation<",
            "TT;TV;>;"
        }
    .end annotation
.end field

.field final synthetic $block:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/animation/core/AnimationScope<",
            "TT;TV;>;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $durationScale:F

.field final synthetic $lateInitScope:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroidx/compose/animation/core/AnimationScope<",
            "TT;TV;>;>;"
        }
    .end annotation
.end field

.field final synthetic $this_animate:Landroidx/compose/animation/core/AnimationState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/AnimationState<",
            "TT;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;FLandroidx/compose/animation/core/Animation;Landroidx/compose/animation/core/AnimationState;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroidx/compose/animation/core/AnimationScope<",
            "TT;TV;>;>;F",
            "Landroidx/compose/animation/core/Animation<",
            "TT;TV;>;",
            "Landroidx/compose/animation/core/AnimationState<",
            "TT;TV;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/animation/core/AnimationScope<",
            "TT;TV;>;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/animation/core/SuspendAnimationKt$animate$9;->$lateInitScope:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput p2, p0, Landroidx/compose/animation/core/SuspendAnimationKt$animate$9;->$durationScale:F

    iput-object p3, p0, Landroidx/compose/animation/core/SuspendAnimationKt$animate$9;->$animation:Landroidx/compose/animation/core/Animation;

    iput-object p4, p0, Landroidx/compose/animation/core/SuspendAnimationKt$animate$9;->$this_animate:Landroidx/compose/animation/core/AnimationState;

    iput-object p5, p0, Landroidx/compose/animation/core/SuspendAnimationKt$animate$9;->$block:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 278
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/animation/core/SuspendAnimationKt$animate$9;->invoke(J)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(J)V
    .locals 8

    iget-object v0, p0, Landroidx/compose/animation/core/SuspendAnimationKt$animate$9;->$lateInitScope:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 279
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v1, v0

    check-cast v1, Landroidx/compose/animation/core/AnimationScope;

    iget v4, p0, Landroidx/compose/animation/core/SuspendAnimationKt$animate$9;->$durationScale:F

    iget-object v5, p0, Landroidx/compose/animation/core/SuspendAnimationKt$animate$9;->$animation:Landroidx/compose/animation/core/Animation;

    iget-object v6, p0, Landroidx/compose/animation/core/SuspendAnimationKt$animate$9;->$this_animate:Landroidx/compose/animation/core/AnimationState;

    iget-object v7, p0, Landroidx/compose/animation/core/SuspendAnimationKt$animate$9;->$block:Lkotlin/jvm/functions/Function1;

    move-wide v2, p1

    invoke-static/range {v1 .. v7}, Landroidx/compose/animation/core/SuspendAnimationKt;->access$doAnimationFrameWithScale(Landroidx/compose/animation/core/AnimationScope;JFLandroidx/compose/animation/core/Animation;Landroidx/compose/animation/core/AnimationState;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
