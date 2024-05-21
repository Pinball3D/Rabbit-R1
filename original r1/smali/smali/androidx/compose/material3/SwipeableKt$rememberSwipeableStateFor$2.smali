.class final Landroidx/compose/material3/SwipeableKt$rememberSwipeableStateFor$2;
.super Lkotlin/jvm/internal/Lambda;
.source "Swipeable.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/SwipeableKt;->rememberSwipeableStateFor(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material3/SwipeableState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/runtime/DisposableEffectScope;",
        "Landroidx/compose/runtime/DisposableEffectResult;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSwipeable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Swipeable.kt\nandroidx/compose/material3/SwipeableKt$rememberSwipeableStateFor$2\n+ 2 Effects.kt\nandroidx/compose/runtime/DisposableEffectScope\n*L\n1#1,886:1\n62#2,5:887\n*S KotlinDebug\n*F\n+ 1 Swipeable.kt\nandroidx/compose/material3/SwipeableKt$rememberSwipeableStateFor$2\n*L\n520#1:887,5\n*E\n"
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


# instance fields
.field final synthetic $forceAnimationCheck:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onValueChange:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "TT;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $swipeableState:Landroidx/compose/material3/SwipeableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/material3/SwipeableState<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic $value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Landroidx/compose/material3/SwipeableState;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroidx/compose/material3/SwipeableState<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/SwipeableKt$rememberSwipeableStateFor$2;->$value:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/material3/SwipeableKt$rememberSwipeableStateFor$2;->$swipeableState:Landroidx/compose/material3/SwipeableState;

    iput-object p3, p0, Landroidx/compose/material3/SwipeableKt$rememberSwipeableStateFor$2;->$onValueChange:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Landroidx/compose/material3/SwipeableKt$rememberSwipeableStateFor$2;->$forceAnimationCheck:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;
    .locals 1

    const-string v0, "$this$DisposableEffect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/compose/material3/SwipeableKt$rememberSwipeableStateFor$2;->$value:Ljava/lang/Object;

    iget-object v0, p0, Landroidx/compose/material3/SwipeableKt$rememberSwipeableStateFor$2;->$swipeableState:Landroidx/compose/material3/SwipeableState;

    .line 516
    invoke-virtual {v0}, Landroidx/compose/material3/SwipeableState;->getCurrentValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/compose/material3/SwipeableKt$rememberSwipeableStateFor$2;->$onValueChange:Lkotlin/jvm/functions/Function1;

    iget-object v0, p0, Landroidx/compose/material3/SwipeableKt$rememberSwipeableStateFor$2;->$swipeableState:Landroidx/compose/material3/SwipeableState;

    .line 517
    invoke-virtual {v0}, Landroidx/compose/material3/SwipeableState;->getCurrentValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Landroidx/compose/material3/SwipeableKt$rememberSwipeableStateFor$2;->$forceAnimationCheck:Landroidx/compose/runtime/MutableState;

    .line 518
    invoke-interface {p0}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 887
    :cond_0
    new-instance p0, Landroidx/compose/material3/SwipeableKt$rememberSwipeableStateFor$2$invoke$$inlined$onDispose$1;

    invoke-direct {p0}, Landroidx/compose/material3/SwipeableKt$rememberSwipeableStateFor$2$invoke$$inlined$onDispose$1;-><init>()V

    check-cast p0, Landroidx/compose/runtime/DisposableEffectResult;

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 515
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/SwipeableKt$rememberSwipeableStateFor$2;->invoke(Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;

    move-result-object p0

    return-object p0
.end method
