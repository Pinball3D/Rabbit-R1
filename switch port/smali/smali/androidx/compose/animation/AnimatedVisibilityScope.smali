.class public interface abstract Landroidx/compose/animation/AnimatedVisibilityScope;
.super Ljava/lang/Object;
.source "AnimatedVisibility.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/animation/AnimatedVisibilityScope$DefaultImpls;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAnimatedVisibility.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnimatedVisibility.kt\nandroidx/compose/animation/AnimatedVisibilityScope\n+ 2 InspectableValue.kt\nandroidx/compose/ui/platform/InspectableValueKt\n*L\n1#1,863:1\n135#2:864\n*S KotlinDebug\n*F\n+ 1 AnimatedVisibility.kt\nandroidx/compose/animation/AnimatedVisibilityScope\n*L\n666#1:864\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008f\u0018\u00002\u00020\u0001J*\u0010\t\u001a\u00020\n*\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0010H\u0017R \u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00038gX\u00a7\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0005\u0010\u0006\u001a\u0004\u0008\u0007\u0010\u0008\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u0011\u00c0\u0006\u0003"
    }
    d2 = {
        "Landroidx/compose/animation/AnimatedVisibilityScope;",
        "",
        "transition",
        "Landroidx/compose/animation/core/Transition;",
        "Landroidx/compose/animation/EnterExitState;",
        "getTransition$annotations",
        "()V",
        "getTransition",
        "()Landroidx/compose/animation/core/Transition;",
        "animateEnterExit",
        "Landroidx/compose/ui/Modifier;",
        "enter",
        "Landroidx/compose/animation/EnterTransition;",
        "exit",
        "Landroidx/compose/animation/ExitTransition;",
        "label",
        "",
        "animation_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic access$animateEnterExit$jd(Landroidx/compose/animation/AnimatedVisibilityScope;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;)Landroidx/compose/ui/Modifier;
    .locals 0

    .line 623
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/compose/animation/AnimatedVisibilityScope;->animateEnterExit(Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic animateEnterExit$default(Landroidx/compose/animation/AnimatedVisibilityScope;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 9

    if-nez p6, :cond_3

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p6, :cond_0

    .line 662
    invoke-static {v2, v1, v0, v2}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeIn$default(Landroidx/compose/animation/core/FiniteAnimationSpec;FILjava/lang/Object;)Landroidx/compose/animation/EnterTransition;

    move-result-object p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xf

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Landroidx/compose/animation/EnterExitTransitionKt;->expandIn$default(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/animation/EnterTransition;

    move-result-object p6

    invoke-virtual {p2, p6}, Landroidx/compose/animation/EnterTransition;->plus(Landroidx/compose/animation/EnterTransition;)Landroidx/compose/animation/EnterTransition;

    move-result-object p2

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    .line 663
    invoke-static {v2, v1, v0, v2}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeOut$default(Landroidx/compose/animation/core/FiniteAnimationSpec;FILjava/lang/Object;)Landroidx/compose/animation/ExitTransition;

    move-result-object p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xf

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroidx/compose/animation/EnterExitTransitionKt;->shrinkOut$default(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/animation/ExitTransition;

    move-result-object p6

    invoke-virtual {p3, p6}, Landroidx/compose/animation/ExitTransition;->plus(Landroidx/compose/animation/ExitTransition;)Landroidx/compose/animation/ExitTransition;

    move-result-object p3

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    const-string p4, "animateEnterExit"

    .line 661
    :cond_2
    invoke-interface {p0, p1, p2, p3, p4}, Landroidx/compose/animation/AnimatedVisibilityScope;->animateEnterExit(Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: animateEnterExit"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public animateEnterExit(Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;)Landroidx/compose/ui/Modifier;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "enter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exit"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "label"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 864
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/compose/animation/AnimatedVisibilityScope$animateEnterExit$$inlined$debugInspectorInfo$1;

    invoke-direct {v0, p2, p3, p4}, Landroidx/compose/animation/AnimatedVisibilityScope$animateEnterExit$$inlined$debugInspectorInfo$1;-><init>(Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    .line 665
    :goto_0
    new-instance v1, Landroidx/compose/animation/AnimatedVisibilityScope$animateEnterExit$2;

    invoke-direct {v1, p0, p2, p3, p4}, Landroidx/compose/animation/AnimatedVisibilityScope$animateEnterExit$2;-><init>(Landroidx/compose/animation/AnimatedVisibilityScope;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    invoke-static {p1, v0, v1}, Landroidx/compose/ui/ComposedModifierKt;->composed(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public abstract getTransition()Landroidx/compose/animation/core/Transition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/animation/core/Transition<",
            "Landroidx/compose/animation/EnterExitState;",
            ">;"
        }
    .end annotation
.end method
