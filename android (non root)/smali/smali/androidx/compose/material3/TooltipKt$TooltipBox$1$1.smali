.class final Landroidx/compose/material3/TooltipKt$TooltipBox$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Tooltip.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/TooltipKt;->TooltipBox-XDn_Kpo(Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/window/PopupPositionProvider;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TooltipState;JFFLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
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
.method constructor <init>(Landroidx/compose/material3/TooltipState;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/TooltipKt$TooltipBox$1$1;->$tooltipState:Landroidx/compose/material3/TooltipState;

    iput-object p2, p0, Landroidx/compose/material3/TooltipKt$TooltipBox$1$1;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 250
    invoke-virtual {p0}, Landroidx/compose/material3/TooltipKt$TooltipBox$1$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 7

    iget-object v0, p0, Landroidx/compose/material3/TooltipKt$TooltipBox$1$1;->$tooltipState:Landroidx/compose/material3/TooltipState;

    .line 253
    invoke-interface {v0}, Landroidx/compose/material3/TooltipState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/compose/material3/TooltipKt$TooltipBox$1$1;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 254
    new-instance v0, Landroidx/compose/material3/TooltipKt$TooltipBox$1$1$1;

    iget-object p0, p0, Landroidx/compose/material3/TooltipKt$TooltipBox$1$1;->$tooltipState:Landroidx/compose/material3/TooltipState;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Landroidx/compose/material3/TooltipKt$TooltipBox$1$1$1;-><init>(Landroidx/compose/material3/TooltipState;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_0
    return-void
.end method
