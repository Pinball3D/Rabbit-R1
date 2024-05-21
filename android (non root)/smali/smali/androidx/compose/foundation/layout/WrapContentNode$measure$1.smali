.class final Landroidx/compose/foundation/layout/WrapContentNode$measure$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Size.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/layout/WrapContentNode;->measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
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
.field final synthetic $placeable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $this_measure:Landroidx/compose/ui/layout/MeasureScope;

.field final synthetic $wrapperHeight:I

.field final synthetic $wrapperWidth:I

.field final synthetic this$0:Landroidx/compose/foundation/layout/WrapContentNode;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/layout/WrapContentNode;ILandroidx/compose/ui/layout/Placeable;ILandroidx/compose/ui/layout/MeasureScope;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/layout/WrapContentNode$measure$1;->this$0:Landroidx/compose/foundation/layout/WrapContentNode;

    iput p2, p0, Landroidx/compose/foundation/layout/WrapContentNode$measure$1;->$wrapperWidth:I

    iput-object p3, p0, Landroidx/compose/foundation/layout/WrapContentNode$measure$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    iput p4, p0, Landroidx/compose/foundation/layout/WrapContentNode$measure$1;->$wrapperHeight:I

    iput-object p5, p0, Landroidx/compose/foundation/layout/WrapContentNode$measure$1;->$this_measure:Landroidx/compose/ui/layout/MeasureScope;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1009
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/layout/WrapContentNode$measure$1;->invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V
    .locals 8

    const-string v0, "$this$layout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/foundation/layout/WrapContentNode$measure$1;->this$0:Landroidx/compose/foundation/layout/WrapContentNode;

    .line 1013
    invoke-virtual {v0}, Landroidx/compose/foundation/layout/WrapContentNode;->getAlignmentCallback()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    iget v1, p0, Landroidx/compose/foundation/layout/WrapContentNode$measure$1;->$wrapperWidth:I

    iget-object v2, p0, Landroidx/compose/foundation/layout/WrapContentNode$measure$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    .line 1014
    invoke-virtual {v2}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Landroidx/compose/foundation/layout/WrapContentNode$measure$1;->$wrapperHeight:I

    iget-object v3, p0, Landroidx/compose/foundation/layout/WrapContentNode$measure$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    invoke-virtual {v3}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntSizeKt;->IntSize(II)J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntSize;->box-impl(J)Landroidx/compose/ui/unit/IntSize;

    move-result-object v1

    iget-object v2, p0, Landroidx/compose/foundation/layout/WrapContentNode$measure$1;->$this_measure:Landroidx/compose/ui/layout/MeasureScope;

    .line 1015
    invoke-interface {v2}, Landroidx/compose/ui/layout/MeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v2

    .line 1013
    invoke-interface {v0, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/unit/IntOffset;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntOffset;->unbox-impl()J

    move-result-wide v3

    iget-object v2, p0, Landroidx/compose/foundation/layout/WrapContentNode$measure$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v1, p1

    .line 1017
    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place-70tqf50$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;JFILjava/lang/Object;)V

    return-void
.end method
