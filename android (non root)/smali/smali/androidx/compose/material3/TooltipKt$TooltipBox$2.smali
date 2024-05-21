.class final Landroidx/compose/material3/TooltipKt$TooltipBox$2;
.super Lkotlin/jvm/internal/Lambda;
.source "Tooltip.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


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
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
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
.field final synthetic $$changed:I

.field final synthetic $containerColor:J

.field final synthetic $content:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Landroidx/compose/material3/TooltipBoxScope;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $elevation:F

.field final synthetic $maxWidth:F

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $shape:Landroidx/compose/ui/graphics/Shape;

.field final synthetic $tooltipContent:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $tooltipPositionProvider:Landroidx/compose/ui/window/PopupPositionProvider;

.field final synthetic $tooltipState:Landroidx/compose/material3/TooltipState;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/window/PopupPositionProvider;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TooltipState;JFFLkotlin/jvm/functions/Function3;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/window/PopupPositionProvider;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/graphics/Shape;",
            "Landroidx/compose/material3/TooltipState;",
            "JFF",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/material3/TooltipBoxScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;I)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/TooltipKt$TooltipBox$2;->$tooltipContent:Lkotlin/jvm/functions/Function2;

    iput-object p2, p0, Landroidx/compose/material3/TooltipKt$TooltipBox$2;->$tooltipPositionProvider:Landroidx/compose/ui/window/PopupPositionProvider;

    iput-object p3, p0, Landroidx/compose/material3/TooltipKt$TooltipBox$2;->$modifier:Landroidx/compose/ui/Modifier;

    iput-object p4, p0, Landroidx/compose/material3/TooltipKt$TooltipBox$2;->$shape:Landroidx/compose/ui/graphics/Shape;

    iput-object p5, p0, Landroidx/compose/material3/TooltipKt$TooltipBox$2;->$tooltipState:Landroidx/compose/material3/TooltipState;

    iput-wide p6, p0, Landroidx/compose/material3/TooltipKt$TooltipBox$2;->$containerColor:J

    iput p8, p0, Landroidx/compose/material3/TooltipKt$TooltipBox$2;->$elevation:F

    iput p9, p0, Landroidx/compose/material3/TooltipKt$TooltipBox$2;->$maxWidth:F

    iput-object p10, p0, Landroidx/compose/material3/TooltipKt$TooltipBox$2;->$content:Lkotlin/jvm/functions/Function3;

    iput p11, p0, Landroidx/compose/material3/TooltipKt$TooltipBox$2;->$$changed:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/TooltipKt$TooltipBox$2;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 12

    iget-object v0, p0, Landroidx/compose/material3/TooltipKt$TooltipBox$2;->$tooltipContent:Lkotlin/jvm/functions/Function2;

    iget-object v1, p0, Landroidx/compose/material3/TooltipKt$TooltipBox$2;->$tooltipPositionProvider:Landroidx/compose/ui/window/PopupPositionProvider;

    iget-object v2, p0, Landroidx/compose/material3/TooltipKt$TooltipBox$2;->$modifier:Landroidx/compose/ui/Modifier;

    iget-object v3, p0, Landroidx/compose/material3/TooltipKt$TooltipBox$2;->$shape:Landroidx/compose/ui/graphics/Shape;

    iget-object v4, p0, Landroidx/compose/material3/TooltipKt$TooltipBox$2;->$tooltipState:Landroidx/compose/material3/TooltipState;

    iget-wide v5, p0, Landroidx/compose/material3/TooltipKt$TooltipBox$2;->$containerColor:J

    iget v7, p0, Landroidx/compose/material3/TooltipKt$TooltipBox$2;->$elevation:F

    iget v8, p0, Landroidx/compose/material3/TooltipKt$TooltipBox$2;->$maxWidth:F

    iget-object v9, p0, Landroidx/compose/material3/TooltipKt$TooltipBox$2;->$content:Lkotlin/jvm/functions/Function3;

    iget p0, p0, Landroidx/compose/material3/TooltipKt$TooltipBox$2;->$$changed:I

    or-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v11

    move-object v10, p1

    invoke-static/range {v0 .. v11}, Landroidx/compose/material3/TooltipKt;->access$TooltipBox-XDn_Kpo(Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/window/PopupPositionProvider;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TooltipState;JFFLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    return-void
.end method
