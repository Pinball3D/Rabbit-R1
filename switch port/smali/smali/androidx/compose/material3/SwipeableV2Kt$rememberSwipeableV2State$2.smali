.class final Landroidx/compose/material3/SwipeableV2Kt$rememberSwipeableV2State$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SwipeableV2.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/SwipeableV2Kt;->rememberSwipeableV2State(Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material3/SwipeableV2State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroidx/compose/material3/SwipeableV2State<",
        "TT;>;>;"
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


# instance fields
.field final synthetic $animationSpec:Landroidx/compose/animation/core/AnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $confirmValueChange:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "TT;",
            "Ljava/lang/Boolean;",
            ">;"
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


# direct methods
.method constructor <init>(Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/SwipeableV2Kt$rememberSwipeableV2State$2;->$initialValue:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/material3/SwipeableV2Kt$rememberSwipeableV2State$2;->$animationSpec:Landroidx/compose/animation/core/AnimationSpec;

    iput-object p3, p0, Landroidx/compose/material3/SwipeableV2Kt$rememberSwipeableV2State$2;->$confirmValueChange:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/compose/material3/SwipeableV2State;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/material3/SwipeableV2State<",
            "TT;>;"
        }
    .end annotation

    .line 532
    new-instance v7, Landroidx/compose/material3/SwipeableV2State;

    iget-object v1, p0, Landroidx/compose/material3/SwipeableV2Kt$rememberSwipeableV2State$2;->$initialValue:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/compose/material3/SwipeableV2Kt$rememberSwipeableV2State$2;->$animationSpec:Landroidx/compose/animation/core/AnimationSpec;

    iget-object v3, p0, Landroidx/compose/material3/SwipeableV2Kt$rememberSwipeableV2State$2;->$confirmValueChange:Lkotlin/jvm/functions/Function1;

    .line 536
    sget-object p0, Landroidx/compose/material3/SwipeableV2Defaults;->INSTANCE:Landroidx/compose/material3/SwipeableV2Defaults;

    invoke-virtual {p0}, Landroidx/compose/material3/SwipeableV2Defaults;->getPositionalThreshold()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    .line 537
    sget-object p0, Landroidx/compose/material3/SwipeableV2Defaults;->INSTANCE:Landroidx/compose/material3/SwipeableV2Defaults;

    invoke-virtual {p0}, Landroidx/compose/material3/SwipeableV2Defaults;->getVelocityThreshold-D9Ej5fM()F

    move-result v5

    const/4 v6, 0x0

    move-object v0, v7

    .line 532
    invoke-direct/range {v0 .. v6}, Landroidx/compose/material3/SwipeableV2State;-><init>(Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;FLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 523
    invoke-virtual {p0}, Landroidx/compose/material3/SwipeableV2Kt$rememberSwipeableV2State$2;->invoke()Landroidx/compose/material3/SwipeableV2State;

    move-result-object p0

    return-object p0
.end method
