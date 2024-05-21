.class final Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate$placeOuterCoordinator$1;
.super Lkotlin/jvm/internal/Lambda;
.source "LayoutNodeLayoutDelegate.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;->placeOuterCoordinator-f8xVGno(JFLkotlin/jvm/functions/Function1;)V
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
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
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
.field final synthetic $layerBlock:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/graphics/GraphicsLayerScope;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $position:J

.field final synthetic $zIndex:F

.field final synthetic this$0:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;JF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/graphics/GraphicsLayerScope;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;",
            "JF)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate$placeOuterCoordinator$1;->$layerBlock:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate$placeOuterCoordinator$1;->this$0:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iput-wide p3, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate$placeOuterCoordinator$1;->$position:J

    iput p5, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate$placeOuterCoordinator$1;->$zIndex:F

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 678
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate$placeOuterCoordinator$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 6

    .line 681
    sget-object v0, Landroidx/compose/ui/layout/Placeable$PlacementScope;->Companion:Landroidx/compose/ui/layout/Placeable$PlacementScope$Companion;

    iget-object v5, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate$placeOuterCoordinator$1;->$layerBlock:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate$placeOuterCoordinator$1;->this$0:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-wide v2, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate$placeOuterCoordinator$1;->$position:J

    iget v4, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate$placeOuterCoordinator$1;->$zIndex:F

    if-nez v5, :cond_0

    .line 683
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->getOuterCoordinator()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/layout/Placeable;

    invoke-virtual {v0, p0, v2, v3, v4}, Landroidx/compose/ui/layout/Placeable$PlacementScope$Companion;->place-70tqf50(Landroidx/compose/ui/layout/Placeable;JF)V

    goto :goto_0

    .line 685
    :cond_0
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->getOuterCoordinator()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/layout/Placeable;

    invoke-virtual/range {v0 .. v5}, Landroidx/compose/ui/layout/Placeable$PlacementScope$Companion;->placeWithLayer-aW-9-wM(Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;)V

    :goto_0
    return-void
.end method
