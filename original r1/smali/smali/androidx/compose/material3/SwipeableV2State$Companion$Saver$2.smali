.class final Landroidx/compose/material3/SwipeableV2State$Companion$Saver$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SwipeableV2.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/SwipeableV2State$Companion;->Saver-eqLRuRQ(Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;F)Landroidx/compose/runtime/saveable/Saver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "TT;",
        "Landroidx/compose/material3/SwipeableV2State<",
        "TT;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0010\u0000\u001a\n\u0012\u0004\u0012\u0002H\u0002\u0018\u00010\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003\"\u0004\u0008\u0001\u0010\u00022\u0006\u0010\u0004\u001a\u0002H\u0002H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/compose/material3/SwipeableV2State;",
        "T",
        "",
        "it",
        "invoke",
        "(Ljava/lang/Object;)Landroidx/compose/material3/SwipeableV2State;"
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

.field final synthetic $positionalThreshold:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/ui/unit/Density;",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $velocityThreshold:F


# direct methods
.method constructor <init>(Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/unit/Density;",
            "-",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;F)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/SwipeableV2State$Companion$Saver$2;->$animationSpec:Landroidx/compose/animation/core/AnimationSpec;

    iput-object p2, p0, Landroidx/compose/material3/SwipeableV2State$Companion$Saver$2;->$confirmValueChange:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Landroidx/compose/material3/SwipeableV2State$Companion$Saver$2;->$positionalThreshold:Lkotlin/jvm/functions/Function2;

    iput p4, p0, Landroidx/compose/material3/SwipeableV2State$Companion$Saver$2;->$velocityThreshold:F

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Landroidx/compose/material3/SwipeableV2State;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroidx/compose/material3/SwipeableV2State<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 497
    new-instance v0, Landroidx/compose/material3/SwipeableV2State;

    iget-object v3, p0, Landroidx/compose/material3/SwipeableV2State$Companion$Saver$2;->$animationSpec:Landroidx/compose/animation/core/AnimationSpec;

    iget-object v4, p0, Landroidx/compose/material3/SwipeableV2State$Companion$Saver$2;->$confirmValueChange:Lkotlin/jvm/functions/Function1;

    iget-object v5, p0, Landroidx/compose/material3/SwipeableV2State$Companion$Saver$2;->$positionalThreshold:Lkotlin/jvm/functions/Function2;

    iget v6, p0, Landroidx/compose/material3/SwipeableV2State$Companion$Saver$2;->$velocityThreshold:F

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Landroidx/compose/material3/SwipeableV2State;-><init>(Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;FLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 494
    invoke-virtual {p0, p1}, Landroidx/compose/material3/SwipeableV2State$Companion$Saver$2;->invoke(Ljava/lang/Object;)Landroidx/compose/material3/SwipeableV2State;

    move-result-object p0

    return-object p0
.end method
