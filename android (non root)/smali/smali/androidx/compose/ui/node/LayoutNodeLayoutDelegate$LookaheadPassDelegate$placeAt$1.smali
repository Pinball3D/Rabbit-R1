.class final Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$LookaheadPassDelegate$placeAt$1;
.super Lkotlin/jvm/internal/Lambda;
.source "LayoutNodeLayoutDelegate.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$LookaheadPassDelegate;->placeAt-f8xVGno(JFLkotlin/jvm/functions/Function1;)V
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
.field final synthetic $position:J

.field final synthetic this$0:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;


# direct methods
.method constructor <init>(Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;J)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$LookaheadPassDelegate$placeAt$1;->this$0:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iput-wide p2, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$LookaheadPassDelegate$placeAt$1;->$position:J

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1239
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$LookaheadPassDelegate$placeAt$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 9

    .line 1240
    sget-object v0, Landroidx/compose/ui/layout/Placeable$PlacementScope;->Companion:Landroidx/compose/ui/layout/Placeable$PlacementScope$Companion;

    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$LookaheadPassDelegate$placeAt$1;->this$0:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-wide v4, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$LookaheadPassDelegate$placeAt$1;->$position:J

    .line 1241
    move-object v2, v0

    check-cast v2, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->getOuterCoordinator()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLookaheadDelegate()Landroidx/compose/ui/node/LookaheadDelegate;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v3, p0

    check-cast v3, Landroidx/compose/ui/layout/Placeable;

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place-70tqf50$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;JFILjava/lang/Object;)V

    return-void
.end method
