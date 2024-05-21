.class final Landroidx/compose/material3/SwipeToDismissKt$rememberDismissState$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SwipeToDismiss.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/SwipeToDismissKt;->rememberDismissState(Landroidx/compose/material3/DismissValue;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material3/DismissState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroidx/compose/material3/DismissState;",
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


# instance fields
.field final synthetic $confirmValueChange:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/material3/DismissValue;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $initialValue:Landroidx/compose/material3/DismissValue;

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


# direct methods
.method constructor <init>(Landroidx/compose/material3/DismissValue;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/DismissValue;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/material3/DismissValue;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/unit/Density;",
            "-",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/SwipeToDismissKt$rememberDismissState$2$1;->$initialValue:Landroidx/compose/material3/DismissValue;

    iput-object p2, p0, Landroidx/compose/material3/SwipeToDismissKt$rememberDismissState$2$1;->$confirmValueChange:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Landroidx/compose/material3/SwipeToDismissKt$rememberDismissState$2$1;->$positionalThreshold:Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/compose/material3/DismissState;
    .locals 3

    .line 214
    new-instance v0, Landroidx/compose/material3/DismissState;

    iget-object v1, p0, Landroidx/compose/material3/SwipeToDismissKt$rememberDismissState$2$1;->$initialValue:Landroidx/compose/material3/DismissValue;

    iget-object v2, p0, Landroidx/compose/material3/SwipeToDismissKt$rememberDismissState$2$1;->$confirmValueChange:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Landroidx/compose/material3/SwipeToDismissKt$rememberDismissState$2$1;->$positionalThreshold:Lkotlin/jvm/functions/Function2;

    invoke-direct {v0, v1, v2, p0}, Landroidx/compose/material3/DismissState;-><init>(Landroidx/compose/material3/DismissValue;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 213
    invoke-virtual {p0}, Landroidx/compose/material3/SwipeToDismissKt$rememberDismissState$2$1;->invoke()Landroidx/compose/material3/DismissState;

    move-result-object p0

    return-object p0
.end method
