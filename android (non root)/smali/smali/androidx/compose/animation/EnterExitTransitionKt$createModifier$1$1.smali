.class final Landroidx/compose/animation/EnterExitTransitionKt$createModifier$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "EnterExitTransition.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/animation/EnterExitTransitionKt;->createModifier(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/graphics/GraphicsLayerScope;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/compose/ui/graphics/GraphicsLayerScope;",
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
.field final synthetic $alpha$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $scale$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $transformOrigin$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/TransformOrigin;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/TransformOrigin;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/animation/EnterExitTransitionKt$createModifier$1$1;->$alpha$delegate:Landroidx/compose/runtime/State;

    iput-object p2, p0, Landroidx/compose/animation/EnterExitTransitionKt$createModifier$1$1;->$scale$delegate:Landroidx/compose/runtime/State;

    iput-object p3, p0, Landroidx/compose/animation/EnterExitTransitionKt$createModifier$1$1;->$transformOrigin$delegate:Landroidx/compose/runtime/State;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 922
    check-cast p1, Landroidx/compose/ui/graphics/GraphicsLayerScope;

    invoke-virtual {p0, p1}, Landroidx/compose/animation/EnterExitTransitionKt$createModifier$1$1;->invoke(Landroidx/compose/ui/graphics/GraphicsLayerScope;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/ui/graphics/GraphicsLayerScope;)V
    .locals 2

    const-string v0, "$this$graphicsLayer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/animation/EnterExitTransitionKt$createModifier$1$1;->$alpha$delegate:Landroidx/compose/runtime/State;

    .line 923
    invoke-static {v0}, Landroidx/compose/animation/EnterExitTransitionKt;->access$createModifier$lambda$8(Landroidx/compose/runtime/State;)F

    move-result v0

    invoke-interface {p1, v0}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->setAlpha(F)V

    iget-object v0, p0, Landroidx/compose/animation/EnterExitTransitionKt$createModifier$1$1;->$scale$delegate:Landroidx/compose/runtime/State;

    .line 924
    invoke-static {v0}, Landroidx/compose/animation/EnterExitTransitionKt;->access$createModifier$lambda$11(Landroidx/compose/runtime/State;)F

    move-result v0

    invoke-interface {p1, v0}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->setScaleX(F)V

    iget-object v0, p0, Landroidx/compose/animation/EnterExitTransitionKt$createModifier$1$1;->$scale$delegate:Landroidx/compose/runtime/State;

    .line 925
    invoke-static {v0}, Landroidx/compose/animation/EnterExitTransitionKt;->access$createModifier$lambda$11(Landroidx/compose/runtime/State;)F

    move-result v0

    invoke-interface {p1, v0}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->setScaleY(F)V

    iget-object p0, p0, Landroidx/compose/animation/EnterExitTransitionKt$createModifier$1$1;->$transformOrigin$delegate:Landroidx/compose/runtime/State;

    .line 926
    invoke-static {p0}, Landroidx/compose/animation/EnterExitTransitionKt;->access$createModifier$lambda$13(Landroidx/compose/runtime/State;)J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->setTransformOrigin-__ExYCQ(J)V

    return-void
.end method
