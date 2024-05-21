.class final Landroidx/compose/material3/TooltipKt$TooltipBox$scope$1$1$tooltipAnchor$onLongPress$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Tooltip.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/TooltipKt$TooltipBox$scope$1$1;->tooltipAnchor(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlinx/coroutines/Job;",
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
.field final synthetic $coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic $tooltipState:Landroidx/compose/material3/TooltipState;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/material3/TooltipState;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/TooltipKt$TooltipBox$scope$1$1$tooltipAnchor$onLongPress$1;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p2, p0, Landroidx/compose/material3/TooltipKt$TooltipBox$scope$1$1$tooltipAnchor$onLongPress$1;->$tooltipState:Landroidx/compose/material3/TooltipState;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 206
    invoke-virtual {p0}, Landroidx/compose/material3/TooltipKt$TooltipBox$scope$1$1$tooltipAnchor$onLongPress$1;->invoke()Lkotlinx/coroutines/Job;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Lkotlinx/coroutines/Job;
    .locals 6

    iget-object v0, p0, Landroidx/compose/material3/TooltipKt$TooltipBox$scope$1$1$tooltipAnchor$onLongPress$1;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 207
    new-instance v3, Landroidx/compose/material3/TooltipKt$TooltipBox$scope$1$1$tooltipAnchor$onLongPress$1$1;

    iget-object p0, p0, Landroidx/compose/material3/TooltipKt$TooltipBox$scope$1$1$tooltipAnchor$onLongPress$1;->$tooltipState:Landroidx/compose/material3/TooltipState;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Landroidx/compose/material3/TooltipKt$TooltipBox$scope$1$1$tooltipAnchor$onLongPress$1$1;-><init>(Landroidx/compose/material3/TooltipState;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p0

    return-object p0
.end method
