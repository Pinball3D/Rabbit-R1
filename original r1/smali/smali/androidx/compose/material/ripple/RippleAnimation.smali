.class public final Landroidx/compose/material/ripple/RippleAnimation;
.super Ljava/lang/Object;
.source "RippleAnimation.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRippleAnimation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RippleAnimation.kt\nandroidx/compose/material/ripple/RippleAnimation\n+ 2 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 DrawScope.kt\nandroidx/compose/ui/graphics/drawscope/DrawScopeKt\n*L\n1#1,194:1\n81#2:195\n107#2,2:196\n81#2:198\n107#2,2:199\n137#3:201\n214#4,8:202\n261#4,11:210\n*S KotlinDebug\n*F\n+ 1 RippleAnimation.kt\nandroidx/compose/material/ripple/RippleAnimation\n*L\n76#1:195\n76#1:196,2\n77#1:198\n77#1:199,2\n130#1:201\n158#1:202,8\n158#1:210,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001B\"\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0008J\u0011\u0010#\u001a\u00020\u0019H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010$J\u0011\u0010%\u001a\u00020\u0019H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010$J\u0011\u0010&\u001a\u00020\u0019H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010$J\u0006\u0010\'\u001a\u00020\u0019J\u001f\u0010(\u001a\u00020\u0019*\u00020)2\u0006\u0010*\u001a\u00020+\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008,\u0010-R\u001a\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000c0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000c0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000c0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R+\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u00078B@BX\u0082\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000R+\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u00078B@BX\u0082\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u001d\u0010\u0016\u001a\u0004\u0008\u001b\u0010\u0012\"\u0004\u0008\u001c\u0010\u0014R\u0019\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0002\n\u0000R\u0019\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\n\u0002\u0010\u001eR\u0012\u0010\u001f\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010 R\u0019\u0010!\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0002\n\u0000R\u0012\u0010\"\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010 \u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006."
    }
    d2 = {
        "Landroidx/compose/material/ripple/RippleAnimation;",
        "",
        "origin",
        "Landroidx/compose/ui/geometry/Offset;",
        "radius",
        "Landroidx/compose/ui/unit/Dp;",
        "bounded",
        "",
        "(Landroidx/compose/ui/geometry/Offset;FZLkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "animatedAlpha",
        "Landroidx/compose/animation/core/Animatable;",
        "",
        "Landroidx/compose/animation/core/AnimationVector1D;",
        "animatedCenterPercent",
        "animatedRadiusPercent",
        "<set-?>",
        "finishRequested",
        "getFinishRequested",
        "()Z",
        "setFinishRequested",
        "(Z)V",
        "finishRequested$delegate",
        "Landroidx/compose/runtime/MutableState;",
        "finishSignalDeferred",
        "Lkotlinx/coroutines/CompletableDeferred;",
        "",
        "finishedFadingIn",
        "getFinishedFadingIn",
        "setFinishedFadingIn",
        "finishedFadingIn$delegate",
        "F",
        "startRadius",
        "Ljava/lang/Float;",
        "targetCenter",
        "targetRadius",
        "animate",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "fadeIn",
        "fadeOut",
        "finish",
        "draw",
        "Landroidx/compose/ui/graphics/drawscope/DrawScope;",
        "color",
        "Landroidx/compose/ui/graphics/Color;",
        "draw-4WTKRHQ",
        "(Landroidx/compose/ui/graphics/drawscope/DrawScope;J)V",
        "material-ripple_release"
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
.field private final animatedAlpha:Landroidx/compose/animation/core/Animatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/Animatable<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;"
        }
    .end annotation
.end field

.field private final animatedCenterPercent:Landroidx/compose/animation/core/Animatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/Animatable<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;"
        }
    .end annotation
.end field

.field private final animatedRadiusPercent:Landroidx/compose/animation/core/Animatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/Animatable<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;"
        }
    .end annotation
.end field

.field private final bounded:Z

.field private final finishRequested$delegate:Landroidx/compose/runtime/MutableState;

.field private final finishSignalDeferred:Lkotlinx/coroutines/CompletableDeferred;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CompletableDeferred<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final finishedFadingIn$delegate:Landroidx/compose/runtime/MutableState;

.field private origin:Landroidx/compose/ui/geometry/Offset;

.field private final radius:F

.field private startRadius:Ljava/lang/Float;

.field private targetCenter:Landroidx/compose/ui/geometry/Offset;

.field private targetRadius:Ljava/lang/Float;


# direct methods
.method private constructor <init>(Landroidx/compose/ui/geometry/Offset;FZ)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material/ripple/RippleAnimation;->origin:Landroidx/compose/ui/geometry/Offset;

    iput p2, p0, Landroidx/compose/material/ripple/RippleAnimation;->radius:F

    iput-boolean p3, p0, Landroidx/compose/material/ripple/RippleAnimation;->bounded:Z

    const/4 p1, 0x0

    const/4 p2, 0x2

    const/4 p3, 0x0

    .line 70
    invoke-static {p1, p1, p2, p3}, Landroidx/compose/animation/core/AnimatableKt;->Animatable$default(FFILjava/lang/Object;)Landroidx/compose/animation/core/Animatable;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/material/ripple/RippleAnimation;->animatedAlpha:Landroidx/compose/animation/core/Animatable;

    .line 71
    invoke-static {p1, p1, p2, p3}, Landroidx/compose/animation/core/AnimatableKt;->Animatable$default(FFILjava/lang/Object;)Landroidx/compose/animation/core/Animatable;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/material/ripple/RippleAnimation;->animatedRadiusPercent:Landroidx/compose/animation/core/Animatable;

    .line 72
    invoke-static {p1, p1, p2, p3}, Landroidx/compose/animation/core/AnimatableKt;->Animatable$default(FFILjava/lang/Object;)Landroidx/compose/animation/core/Animatable;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material/ripple/RippleAnimation;->animatedCenterPercent:Landroidx/compose/animation/core/Animatable;

    .line 74
    invoke-static {p3}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred(Lkotlinx/coroutines/Job;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material/ripple/RippleAnimation;->finishSignalDeferred:Lkotlinx/coroutines/CompletableDeferred;

    const/4 p1, 0x0

    .line 76
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1, p3, p2, p3}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/material/ripple/RippleAnimation;->finishedFadingIn$delegate:Landroidx/compose/runtime/MutableState;

    .line 77
    invoke-static {p1, p3, p2, p3}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material/ripple/RippleAnimation;->finishRequested$delegate:Landroidx/compose/runtime/MutableState;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/geometry/Offset;FZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/material/ripple/RippleAnimation;-><init>(Landroidx/compose/ui/geometry/Offset;FZ)V

    return-void
.end method

.method public static final synthetic access$fadeIn(Landroidx/compose/material/ripple/RippleAnimation;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Landroidx/compose/material/ripple/RippleAnimation;->fadeIn(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$fadeOut(Landroidx/compose/material/ripple/RippleAnimation;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Landroidx/compose/material/ripple/RippleAnimation;->fadeOut(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getAnimatedAlpha$p(Landroidx/compose/material/ripple/RippleAnimation;)Landroidx/compose/animation/core/Animatable;
    .locals 0

    .line 60
    iget-object p0, p0, Landroidx/compose/material/ripple/RippleAnimation;->animatedAlpha:Landroidx/compose/animation/core/Animatable;

    return-object p0
.end method

.method public static final synthetic access$getAnimatedCenterPercent$p(Landroidx/compose/material/ripple/RippleAnimation;)Landroidx/compose/animation/core/Animatable;
    .locals 0

    .line 60
    iget-object p0, p0, Landroidx/compose/material/ripple/RippleAnimation;->animatedCenterPercent:Landroidx/compose/animation/core/Animatable;

    return-object p0
.end method

.method public static final synthetic access$getAnimatedRadiusPercent$p(Landroidx/compose/material/ripple/RippleAnimation;)Landroidx/compose/animation/core/Animatable;
    .locals 0

    .line 60
    iget-object p0, p0, Landroidx/compose/material/ripple/RippleAnimation;->animatedRadiusPercent:Landroidx/compose/animation/core/Animatable;

    return-object p0
.end method

.method private final fadeIn(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 87
    new-instance v0, Landroidx/compose/material/ripple/RippleAnimation$fadeIn$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/compose/material/ripple/RippleAnimation$fadeIn$2;-><init>(Landroidx/compose/material/ripple/RippleAnimation;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, p1}, Lkotlinx/coroutines/CoroutineScopeKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final fadeOut(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 110
    new-instance v0, Landroidx/compose/material/ripple/RippleAnimation$fadeOut$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/compose/material/ripple/RippleAnimation$fadeOut$2;-><init>(Landroidx/compose/material/ripple/RippleAnimation;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, p1}, Lkotlinx/coroutines/CoroutineScopeKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final getFinishRequested()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/material/ripple/RippleAnimation;->finishRequested$delegate:Landroidx/compose/runtime/MutableState;

    .line 77
    check-cast p0, Landroidx/compose/runtime/State;

    .line 198
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private final getFinishedFadingIn()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/material/ripple/RippleAnimation;->finishedFadingIn$delegate:Landroidx/compose/runtime/MutableState;

    .line 76
    check-cast p0, Landroidx/compose/runtime/State;

    .line 195
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private final setFinishRequested(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/material/ripple/RippleAnimation;->finishRequested$delegate:Landroidx/compose/runtime/MutableState;

    .line 77
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 199
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final setFinishedFadingIn(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/material/ripple/RippleAnimation;->finishedFadingIn$delegate:Landroidx/compose/runtime/MutableState;

    .line 76
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 196
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final animate(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Landroidx/compose/material/ripple/RippleAnimation$animate$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/compose/material/ripple/RippleAnimation$animate$1;

    iget v1, v0, Landroidx/compose/material/ripple/RippleAnimation$animate$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Landroidx/compose/material/ripple/RippleAnimation$animate$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Landroidx/compose/material/ripple/RippleAnimation$animate$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/material/ripple/RippleAnimation$animate$1;

    invoke-direct {v0, p0, p1}, Landroidx/compose/material/ripple/RippleAnimation$animate$1;-><init>(Landroidx/compose/material/ripple/RippleAnimation;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Landroidx/compose/material/ripple/RippleAnimation$animate$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 79
    iget v2, v0, Landroidx/compose/material/ripple/RippleAnimation$animate$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Landroidx/compose/material/ripple/RippleAnimation$animate$1;->L$0:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/material/ripple/RippleAnimation;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object p0, v0, Landroidx/compose/material/ripple/RippleAnimation$animate$1;->L$0:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/material/ripple/RippleAnimation;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 80
    iput-object p0, v0, Landroidx/compose/material/ripple/RippleAnimation$animate$1;->L$0:Ljava/lang/Object;

    iput v5, v0, Landroidx/compose/material/ripple/RippleAnimation$animate$1;->label:I

    invoke-direct {p0, v0}, Landroidx/compose/material/ripple/RippleAnimation;->fadeIn(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    .line 81
    :cond_5
    :goto_1
    invoke-direct {p0, v5}, Landroidx/compose/material/ripple/RippleAnimation;->setFinishedFadingIn(Z)V

    .line 82
    iget-object p1, p0, Landroidx/compose/material/ripple/RippleAnimation;->finishSignalDeferred:Lkotlinx/coroutines/CompletableDeferred;

    iput-object p0, v0, Landroidx/compose/material/ripple/RippleAnimation$animate$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Landroidx/compose/material/ripple/RippleAnimation$animate$1;->label:I

    invoke-interface {p1, v0}, Lkotlinx/coroutines/CompletableDeferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    :goto_2
    const/4 p1, 0x0

    .line 83
    iput-object p1, v0, Landroidx/compose/material/ripple/RippleAnimation$animate$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Landroidx/compose/material/ripple/RippleAnimation$animate$1;->label:I

    invoke-direct {p0, v0}, Landroidx/compose/material/ripple/RippleAnimation;->fadeOut(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_7

    return-object v1

    .line 84
    :cond_7
    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final draw-4WTKRHQ(Landroidx/compose/ui/graphics/drawscope/DrawScope;J)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "$this$draw"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Landroidx/compose/material/ripple/RippleAnimation;->startRadius:Ljava/lang/Float;

    if-nez v2, :cond_0

    .line 127
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/material/ripple/RippleAnimationKt;->getRippleStartRadius-uvyYCjk(J)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v0, Landroidx/compose/material/ripple/RippleAnimation;->startRadius:Ljava/lang/Float;

    :cond_0
    iget-object v2, v0, Landroidx/compose/material/ripple/RippleAnimation;->targetRadius:Ljava/lang/Float;

    if-nez v2, :cond_2

    iget v2, v0, Landroidx/compose/material/ripple/RippleAnimation;->radius:F

    .line 201
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 131
    move-object v2, v1

    check-cast v2, Landroidx/compose/ui/unit/Density;

    iget-boolean v3, v0, Landroidx/compose/material/ripple/RippleAnimation;->bounded:Z

    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/material/ripple/RippleAnimationKt;->getRippleEndRadius-cSwnlzA(Landroidx/compose/ui/unit/Density;ZJ)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto :goto_0

    :cond_1
    iget v2, v0, Landroidx/compose/material/ripple/RippleAnimation;->radius:F

    .line 133
    invoke-interface {v1, v2}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->toPx-0680j_4(F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    :goto_0
    iput-object v2, v0, Landroidx/compose/material/ripple/RippleAnimation;->targetRadius:Ljava/lang/Float;

    :cond_2
    iget-object v2, v0, Landroidx/compose/material/ripple/RippleAnimation;->origin:Landroidx/compose/ui/geometry/Offset;

    if-nez v2, :cond_3

    .line 137
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getCenter-F1C5BW0()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v2

    iput-object v2, v0, Landroidx/compose/material/ripple/RippleAnimation;->origin:Landroidx/compose/ui/geometry/Offset;

    :cond_3
    iget-object v2, v0, Landroidx/compose/material/ripple/RippleAnimation;->targetCenter:Landroidx/compose/ui/geometry/Offset;

    if-nez v2, :cond_4

    .line 140
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v4

    div-float/2addr v4, v3

    invoke-static {v2, v4}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v2

    iput-object v2, v0, Landroidx/compose/material/ripple/RippleAnimation;->targetCenter:Landroidx/compose/ui/geometry/Offset;

    .line 143
    :cond_4
    invoke-direct/range {p0 .. p0}, Landroidx/compose/material/ripple/RippleAnimation;->getFinishRequested()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct/range {p0 .. p0}, Landroidx/compose/material/ripple/RippleAnimation;->getFinishedFadingIn()Z

    move-result v2

    if-nez v2, :cond_5

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_5
    iget-object v2, v0, Landroidx/compose/material/ripple/RippleAnimation;->animatedAlpha:Landroidx/compose/animation/core/Animatable;

    .line 147
    invoke-virtual {v2}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    :goto_1
    iget-object v3, v0, Landroidx/compose/material/ripple/RippleAnimation;->startRadius:Ljava/lang/Float;

    .line 150
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v4, v0, Landroidx/compose/material/ripple/RippleAnimation;->targetRadius:Ljava/lang/Float;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v5, v0, Landroidx/compose/material/ripple/RippleAnimation;->animatedRadiusPercent:Landroidx/compose/animation/core/Animatable;

    invoke-virtual {v5}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    invoke-static {v3, v4, v5}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v3

    iget-object v4, v0, Landroidx/compose/material/ripple/RippleAnimation;->origin:Landroidx/compose/ui/geometry/Offset;

    .line 152
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v4

    iget-object v5, v0, Landroidx/compose/material/ripple/RippleAnimation;->targetCenter:Landroidx/compose/ui/geometry/Offset;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v5

    iget-object v6, v0, Landroidx/compose/material/ripple/RippleAnimation;->animatedCenterPercent:Landroidx/compose/animation/core/Animatable;

    invoke-virtual {v6}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    invoke-static {v4, v5, v6}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v4

    iget-object v5, v0, Landroidx/compose/material/ripple/RippleAnimation;->origin:Landroidx/compose/ui/geometry/Offset;

    .line 153
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v5

    iget-object v6, v0, Landroidx/compose/material/ripple/RippleAnimation;->targetCenter:Landroidx/compose/ui/geometry/Offset;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v6

    iget-object v7, v0, Landroidx/compose/material/ripple/RippleAnimation;->animatedCenterPercent:Landroidx/compose/animation/core/Animatable;

    invoke-virtual {v7}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    invoke-static {v5, v6, v7}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v5

    .line 151
    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v4

    .line 156
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/graphics/Color;->getAlpha-impl(J)F

    move-result v6

    mul-float v9, v6, v2

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xe

    const/4 v14, 0x0

    move-wide/from16 v7, p2

    invoke-static/range {v7 .. v14}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v6

    iget-boolean v0, v0, Landroidx/compose/material/ripple/RippleAnimation;->bounded:Z

    if-eqz v0, :cond_6

    const/4 v9, 0x0

    .line 205
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v11

    invoke-static {v11, v12}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v11

    .line 206
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v12

    invoke-static {v12, v13}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v12

    .line 207
    sget-object v0, Landroidx/compose/ui/graphics/ClipOp;->Companion:Landroidx/compose/ui/graphics/ClipOp$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/ClipOp$Companion;->getIntersect-rtfAjoo()I

    move-result v13

    .line 210
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object v14

    move/from16 p2, v11

    .line 214
    invoke-interface {v14}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getSize-NH-jbRc()J

    move-result-wide v10

    .line 215
    invoke-interface {v14}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/graphics/Canvas;->save()V

    .line 216
    invoke-interface {v14}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getTransform()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    move-result-object v8

    move-wide v15, v10

    const/4 v0, 0x0

    move v10, v0

    move/from16 v11, p2

    .line 209
    invoke-interface/range {v8 .. v13}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->clipRect-N_I0leg(FFFFI)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x78

    const/4 v13, 0x0

    move-object/from16 v0, p1

    move-wide v1, v6

    move v6, v8

    move-object v7, v9

    move-object v8, v10

    move v9, v11

    move v10, v12

    move-object v11, v13

    .line 159
    invoke-static/range {v0 .. v11}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawCircle-VaOC9Bg$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 218
    invoke-interface {v14}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    move-wide v0, v15

    .line 219
    invoke-interface {v14, v0, v1}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->setSize-uvyYCjk(J)V

    goto :goto_2

    :cond_6
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x78

    const/4 v13, 0x0

    move-object/from16 v0, p1

    move-wide v1, v6

    move v6, v8

    move-object v7, v9

    move-object v8, v10

    move v9, v11

    move v10, v12

    move-object v11, v13

    .line 162
    invoke-static/range {v0 .. v11}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawCircle-VaOC9Bg$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    :goto_2
    return-void
.end method

.method public final finish()V
    .locals 1

    const/4 v0, 0x1

    .line 121
    invoke-direct {p0, v0}, Landroidx/compose/material/ripple/RippleAnimation;->setFinishRequested(Z)V

    iget-object p0, p0, Landroidx/compose/material/ripple/RippleAnimation;->finishSignalDeferred:Lkotlinx/coroutines/CompletableDeferred;

    .line 122
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {p0, v0}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    return-void
.end method
