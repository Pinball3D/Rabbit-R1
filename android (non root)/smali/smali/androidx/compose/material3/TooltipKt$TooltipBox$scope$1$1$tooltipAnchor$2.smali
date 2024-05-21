.class final Landroidx/compose/material3/TooltipKt$TooltipBox$scope$1$1$tooltipAnchor$2;
.super Lkotlin/jvm/internal/Lambda;
.source "Tooltip.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


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
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;",
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
.field final synthetic $longPressLabel:Ljava/lang/String;

.field final synthetic $onLongPress:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlinx/coroutines/Job;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lkotlinx/coroutines/Job;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/TooltipKt$TooltipBox$scope$1$1$tooltipAnchor$2;->$longPressLabel:Ljava/lang/String;

    iput-object p2, p0, Landroidx/compose/material3/TooltipKt$TooltipBox$scope$1$1$tooltipAnchor$2;->$onLongPress:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 233
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/TooltipKt$TooltipBox$scope$1$1$tooltipAnchor$2;->invoke(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V
    .locals 2

    const-string v0, "$this$semantics"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/material3/TooltipKt$TooltipBox$scope$1$1$tooltipAnchor$2;->$longPressLabel:Ljava/lang/String;

    .line 234
    new-instance v1, Landroidx/compose/material3/TooltipKt$TooltipBox$scope$1$1$tooltipAnchor$2$1;

    iget-object p0, p0, Landroidx/compose/material3/TooltipKt$TooltipBox$scope$1$1$tooltipAnchor$2;->$onLongPress:Lkotlin/jvm/functions/Function0;

    invoke-direct {v1, p0}, Landroidx/compose/material3/TooltipKt$TooltipBox$scope$1$1$tooltipAnchor$2$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->onLongClick(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
