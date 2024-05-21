.class final Landroidx/compose/animation/ExitTransitionImpl;
.super Landroidx/compose/animation/ExitTransition;
.source "EnterExitTransition.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0003\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0014\u0010\u0002\u001a\u00020\u0003X\u0090\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Landroidx/compose/animation/ExitTransitionImpl;",
        "Landroidx/compose/animation/ExitTransition;",
        "data",
        "Landroidx/compose/animation/TransitionData;",
        "(Landroidx/compose/animation/TransitionData;)V",
        "getData$animation_release",
        "()Landroidx/compose/animation/TransitionData;",
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


# instance fields
.field private final data:Landroidx/compose/animation/TransitionData;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/TransitionData;)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 794
    invoke-direct {p0, v0}, Landroidx/compose/animation/ExitTransition;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Landroidx/compose/animation/ExitTransitionImpl;->data:Landroidx/compose/animation/TransitionData;

    return-void
.end method


# virtual methods
.method public getData$animation_release()Landroidx/compose/animation/TransitionData;
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/ExitTransitionImpl;->data:Landroidx/compose/animation/TransitionData;

    return-object p0
.end method
