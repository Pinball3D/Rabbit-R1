.class final Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$4;
.super Lkotlin/jvm/internal/Lambda;
.source "AnimatedContent.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/animation/AnimatedContentKt;->AnimatedContent(Landroidx/compose/animation/core/Transition;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/animation/AnimatedContentTransitionScope<",
        "TS;>;",
        "Landroidx/compose/animation/ContentTransform;",
        ">;"
    }
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


# static fields
.field public static final INSTANCE:Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$4;

    invoke-direct {v0}, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$4;-><init>()V

    sput-object v0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$4;->INSTANCE:Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$4;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/animation/AnimatedContentTransitionScope;)Landroidx/compose/animation/ContentTransform;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "TS;>;)",
            "Landroidx/compose/animation/ContentTransform;"
        }
    .end annotation

    const-string p0, "$this$null"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p0, 0xdc

    const/16 p1, 0x5a

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 685
    invoke-static {p0, p1, v0, v1, v0}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;ILjava/lang/Object;)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v2

    check-cast v2, Landroidx/compose/animation/core/FiniteAnimationSpec;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v2, v3, v4, v0}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeIn$default(Landroidx/compose/animation/core/FiniteAnimationSpec;FILjava/lang/Object;)Landroidx/compose/animation/EnterTransition;

    move-result-object v2

    .line 686
    invoke-static {p0, p1, v0, v1, v0}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;ILjava/lang/Object;)Landroidx/compose/animation/core/TweenSpec;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Landroidx/compose/animation/core/FiniteAnimationSpec;

    const v6, 0x3f6b851f    # 0.92f

    const-wide/16 v7, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Landroidx/compose/animation/EnterExitTransitionKt;->scaleIn-L8ZKh-E$default(Landroidx/compose/animation/core/FiniteAnimationSpec;FJILjava/lang/Object;)Landroidx/compose/animation/EnterTransition;

    move-result-object p0

    .line 685
    invoke-virtual {v2, p0}, Landroidx/compose/animation/EnterTransition;->plus(Landroidx/compose/animation/EnterTransition;)Landroidx/compose/animation/EnterTransition;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x6

    .line 687
    invoke-static {p1, v1, v0, v2, v0}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;ILjava/lang/Object;)Landroidx/compose/animation/core/TweenSpec;

    move-result-object p1

    check-cast p1, Landroidx/compose/animation/core/FiniteAnimationSpec;

    invoke-static {p1, v3, v4, v0}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeOut$default(Landroidx/compose/animation/core/FiniteAnimationSpec;FILjava/lang/Object;)Landroidx/compose/animation/ExitTransition;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/compose/animation/AnimatedContentKt;->togetherWith(Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;)Landroidx/compose/animation/ContentTransform;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 684
    check-cast p1, Landroidx/compose/animation/AnimatedContentTransitionScope;

    invoke-virtual {p0, p1}, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$4;->invoke(Landroidx/compose/animation/AnimatedContentTransitionScope;)Landroidx/compose/animation/ContentTransform;

    move-result-object p0

    return-object p0
.end method
