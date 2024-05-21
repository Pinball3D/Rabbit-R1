.class public final Landroidx/compose/material3/TooltipKt$TooltipBox$scope$1$1;
.super Ljava/lang/Object;
.source "Tooltip.kt"

# interfaces
.implements Landroidx/compose/material3/TooltipBoxScope;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/TooltipKt;->TooltipBox-XDn_Kpo(Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/window/PopupPositionProvider;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TooltipState;JFFLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
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

.field final synthetic $longPressLabel:Ljava/lang/String;

.field final synthetic $tooltipState:Landroidx/compose/material3/TooltipState;


# direct methods
.method constructor <init>(Landroidx/compose/material3/TooltipState;Lkotlinx/coroutines/CoroutineScope;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/TooltipKt$TooltipBox$scope$1$1;->$tooltipState:Landroidx/compose/material3/TooltipState;

    iput-object p2, p0, Landroidx/compose/material3/TooltipKt$TooltipBox$scope$1$1;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p3, p0, Landroidx/compose/material3/TooltipKt$TooltipBox$scope$1$1;->$longPressLabel:Ljava/lang/String;

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public tooltipAnchor(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    new-instance v0, Landroidx/compose/material3/TooltipKt$TooltipBox$scope$1$1$tooltipAnchor$onLongPress$1;

    iget-object v1, p0, Landroidx/compose/material3/TooltipKt$TooltipBox$scope$1$1;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    iget-object v2, p0, Landroidx/compose/material3/TooltipKt$TooltipBox$scope$1$1;->$tooltipState:Landroidx/compose/material3/TooltipState;

    invoke-direct {v0, v1, v2}, Landroidx/compose/material3/TooltipKt$TooltipBox$scope$1$1$tooltipAnchor$onLongPress$1;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/material3/TooltipState;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    iget-object v1, p0, Landroidx/compose/material3/TooltipKt$TooltipBox$scope$1$1;->$tooltipState:Landroidx/compose/material3/TooltipState;

    .line 211
    new-instance v2, Landroidx/compose/material3/TooltipKt$TooltipBox$scope$1$1$tooltipAnchor$1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Landroidx/compose/material3/TooltipKt$TooltipBox$scope$1$1$tooltipAnchor$1;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-static {p1, v1, v2}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;

    move-result-object p1

    .line 233
    new-instance v1, Landroidx/compose/material3/TooltipKt$TooltipBox$scope$1$1$tooltipAnchor$2;

    iget-object p0, p0, Landroidx/compose/material3/TooltipKt$TooltipBox$scope$1$1;->$longPressLabel:Ljava/lang/String;

    invoke-direct {v1, p0, v0}, Landroidx/compose/material3/TooltipKt$TooltipBox$scope$1$1$tooltipAnchor$2;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    const/4 p0, 0x1

    invoke-static {p1, p0, v1}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method
