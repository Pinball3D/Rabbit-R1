.class final Landroidx/compose/material3/PinnedScrollBehavior;
.super Ljava/lang/Object;
.source "AppBar.kt"

# interfaces
.implements Landroidx/compose/material3/TopAppBarScrollBehavior;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0002\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000e\u0008\u0002\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0002\u0010\u0007R\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u001c\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000bX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\u0006X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u0012X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001c\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u0018X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\u00a8\u0006\u001d"
    }
    d2 = {
        "Landroidx/compose/material3/PinnedScrollBehavior;",
        "Landroidx/compose/material3/TopAppBarScrollBehavior;",
        "state",
        "Landroidx/compose/material3/TopAppBarState;",
        "canScroll",
        "Lkotlin/Function0;",
        "",
        "(Landroidx/compose/material3/TopAppBarState;Lkotlin/jvm/functions/Function0;)V",
        "getCanScroll",
        "()Lkotlin/jvm/functions/Function0;",
        "flingAnimationSpec",
        "Landroidx/compose/animation/core/DecayAnimationSpec;",
        "",
        "getFlingAnimationSpec",
        "()Landroidx/compose/animation/core/DecayAnimationSpec;",
        "isPinned",
        "()Z",
        "nestedScrollConnection",
        "Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;",
        "getNestedScrollConnection",
        "()Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;",
        "setNestedScrollConnection",
        "(Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;)V",
        "snapAnimationSpec",
        "Landroidx/compose/animation/core/AnimationSpec;",
        "getSnapAnimationSpec",
        "()Landroidx/compose/animation/core/AnimationSpec;",
        "getState",
        "()Landroidx/compose/material3/TopAppBarState;",
        "material3_release"
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
.field private final canScroll:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final flingAnimationSpec:Landroidx/compose/animation/core/DecayAnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/DecayAnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final isPinned:Z

.field private nestedScrollConnection:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

.field private final snapAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final state:Landroidx/compose/material3/TopAppBarState;


# direct methods
.method public constructor <init>(Landroidx/compose/material3/TopAppBarState;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/TopAppBarState;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "canScroll"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/PinnedScrollBehavior;->state:Landroidx/compose/material3/TopAppBarState;

    iput-object p2, p0, Landroidx/compose/material3/PinnedScrollBehavior;->canScroll:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/compose/material3/PinnedScrollBehavior;->isPinned:Z

    .line 1422
    new-instance p1, Landroidx/compose/material3/PinnedScrollBehavior$nestedScrollConnection$1;

    invoke-direct {p1, p0}, Landroidx/compose/material3/PinnedScrollBehavior$nestedScrollConnection$1;-><init>(Landroidx/compose/material3/PinnedScrollBehavior;)V

    check-cast p1, Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    iput-object p1, p0, Landroidx/compose/material3/PinnedScrollBehavior;->nestedScrollConnection:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/material3/TopAppBarState;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 1416
    sget-object p2, Landroidx/compose/material3/PinnedScrollBehavior$1;->INSTANCE:Landroidx/compose/material3/PinnedScrollBehavior$1;

    check-cast p2, Lkotlin/jvm/functions/Function0;

    .line 1414
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/compose/material3/PinnedScrollBehavior;-><init>(Landroidx/compose/material3/TopAppBarState;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method public final getCanScroll()Lkotlin/jvm/functions/Function0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/material3/PinnedScrollBehavior;->canScroll:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public getFlingAnimationSpec()Landroidx/compose/animation/core/DecayAnimationSpec;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/animation/core/DecayAnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/material3/PinnedScrollBehavior;->flingAnimationSpec:Landroidx/compose/animation/core/DecayAnimationSpec;

    return-object p0
.end method

.method public getNestedScrollConnection()Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/PinnedScrollBehavior;->nestedScrollConnection:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    return-object p0
.end method

.method public getSnapAnimationSpec()Landroidx/compose/animation/core/AnimationSpec;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/material3/PinnedScrollBehavior;->snapAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;

    return-object p0
.end method

.method public getState()Landroidx/compose/material3/TopAppBarState;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/PinnedScrollBehavior;->state:Landroidx/compose/material3/TopAppBarState;

    return-object p0
.end method

.method public isPinned()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/material3/PinnedScrollBehavior;->isPinned:Z

    return p0
.end method

.method public setNestedScrollConnection(Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/compose/material3/PinnedScrollBehavior;->nestedScrollConnection:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    return-void
.end method
