.class public final Landroidx/compose/ui/layout/IntermediateLayoutModifierNode$IntermediateMeasureScopeImpl$layout$1;
.super Ljava/lang/Object;
.source "IntermediateLayoutModifierNode.kt"

# interfaces
.implements Landroidx/compose/ui/layout/MeasureResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/layout/IntermediateLayoutModifierNode$IntermediateMeasureScopeImpl;->layout(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIntermediateLayoutModifierNode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IntermediateLayoutModifierNode.kt\nandroidx/compose/ui/layout/IntermediateLayoutModifierNode$IntermediateMeasureScopeImpl$layout$1\n+ 2 Placeable.kt\nandroidx/compose/ui/layout/Placeable$PlacementScope$Companion\n*L\n1#1,333:1\n365#2,15:334\n*S KotlinDebug\n*F\n+ 1 IntermediateLayoutModifierNode.kt\nandroidx/compose/ui/layout/IntermediateLayoutModifierNode$IntermediateMeasureScopeImpl$layout$1\n*L\n311#1:334,15\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\r\u001a\u00020\u000eH\u0016R \u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u0008\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\n\u00a8\u0006\u000f"
    }
    d2 = {
        "androidx/compose/ui/layout/IntermediateLayoutModifierNode$IntermediateMeasureScopeImpl$layout$1",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "alignmentLines",
        "",
        "Landroidx/compose/ui/layout/AlignmentLine;",
        "",
        "getAlignmentLines",
        "()Ljava/util/Map;",
        "height",
        "getHeight",
        "()I",
        "width",
        "getWidth",
        "placeChildren",
        "",
        "ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $placementBlock:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $width:I

.field private final alignmentLines:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/compose/ui/layout/AlignmentLine;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final height:I

.field final synthetic this$0:Landroidx/compose/ui/layout/IntermediateLayoutModifierNode$IntermediateMeasureScopeImpl;

.field final synthetic this$1:Landroidx/compose/ui/layout/IntermediateLayoutModifierNode;

.field private final width:I


# direct methods
.method constructor <init>(IILjava/util/Map;Landroidx/compose/ui/layout/IntermediateLayoutModifierNode$IntermediateMeasureScopeImpl;Landroidx/compose/ui/layout/IntermediateLayoutModifierNode;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map<",
            "Landroidx/compose/ui/layout/AlignmentLine;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroidx/compose/ui/layout/IntermediateLayoutModifierNode$IntermediateMeasureScopeImpl;",
            "Landroidx/compose/ui/layout/IntermediateLayoutModifierNode;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Landroidx/compose/ui/layout/IntermediateLayoutModifierNode$IntermediateMeasureScopeImpl$layout$1;->$width:I

    iput-object p4, p0, Landroidx/compose/ui/layout/IntermediateLayoutModifierNode$IntermediateMeasureScopeImpl$layout$1;->this$0:Landroidx/compose/ui/layout/IntermediateLayoutModifierNode$IntermediateMeasureScopeImpl;

    iput-object p5, p0, Landroidx/compose/ui/layout/IntermediateLayoutModifierNode$IntermediateMeasureScopeImpl$layout$1;->this$1:Landroidx/compose/ui/layout/IntermediateLayoutModifierNode;

    iput-object p6, p0, Landroidx/compose/ui/layout/IntermediateLayoutModifierNode$IntermediateMeasureScopeImpl$layout$1;->$placementBlock:Lkotlin/jvm/functions/Function1;

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/ui/layout/IntermediateLayoutModifierNode$IntermediateMeasureScopeImpl$layout$1;->width:I

    iput p2, p0, Landroidx/compose/ui/layout/IntermediateLayoutModifierNode$IntermediateMeasureScopeImpl$layout$1;->height:I

    iput-object p3, p0, Landroidx/compose/ui/layout/IntermediateLayoutModifierNode$IntermediateMeasureScopeImpl$layout$1;->alignmentLines:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getAlignmentLines()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroidx/compose/ui/layout/AlignmentLine;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/ui/layout/IntermediateLayoutModifierNode$IntermediateMeasureScopeImpl$layout$1;->alignmentLines:Ljava/util/Map;

    return-object p0
.end method

.method public getHeight()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/layout/IntermediateLayoutModifierNode$IntermediateMeasureScopeImpl$layout$1;->height:I

    return p0
.end method

.method public getWidth()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/layout/IntermediateLayoutModifierNode$IntermediateMeasureScopeImpl$layout$1;->width:I

    return p0
.end method

.method public placeChildren()V
    .locals 9

    .line 311
    sget-object v0, Landroidx/compose/ui/layout/Placeable$PlacementScope;->Companion:Landroidx/compose/ui/layout/Placeable$PlacementScope$Companion;

    iget v1, p0, Landroidx/compose/ui/layout/IntermediateLayoutModifierNode$IntermediateMeasureScopeImpl$layout$1;->$width:I

    iget-object v2, p0, Landroidx/compose/ui/layout/IntermediateLayoutModifierNode$IntermediateMeasureScopeImpl$layout$1;->this$0:Landroidx/compose/ui/layout/IntermediateLayoutModifierNode$IntermediateMeasureScopeImpl;

    .line 313
    invoke-virtual {v2}, Landroidx/compose/ui/layout/IntermediateLayoutModifierNode$IntermediateMeasureScopeImpl;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v2

    iget-object v3, p0, Landroidx/compose/ui/layout/IntermediateLayoutModifierNode$IntermediateMeasureScopeImpl$layout$1;->this$1:Landroidx/compose/ui/layout/IntermediateLayoutModifierNode;

    .line 314
    invoke-virtual {v3}, Landroidx/compose/ui/layout/IntermediateLayoutModifierNode;->getCoordinator$ui_release()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    iget-object p0, p0, Landroidx/compose/ui/layout/IntermediateLayoutModifierNode$IntermediateMeasureScopeImpl$layout$1;->$placementBlock:Lkotlin/jvm/functions/Function1;

    .line 334
    invoke-static {}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$get_coordinates$cp()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v4

    .line 335
    sget-object v5, Landroidx/compose/ui/layout/Placeable$PlacementScope;->Companion:Landroidx/compose/ui/layout/Placeable$PlacementScope$Companion;

    invoke-static {v5}, Landroidx/compose/ui/layout/Placeable$PlacementScope$Companion;->access$getParentWidth(Landroidx/compose/ui/layout/Placeable$PlacementScope$Companion;)I

    move-result v5

    .line 336
    sget-object v6, Landroidx/compose/ui/layout/Placeable$PlacementScope;->Companion:Landroidx/compose/ui/layout/Placeable$PlacementScope$Companion;

    invoke-static {v6}, Landroidx/compose/ui/layout/Placeable$PlacementScope$Companion;->access$getParentLayoutDirection(Landroidx/compose/ui/layout/Placeable$PlacementScope$Companion;)Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v6

    .line 337
    invoke-static {}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$getLayoutDelegate$cp()Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    move-result-object v7

    .line 338
    sget-object v8, Landroidx/compose/ui/layout/Placeable$PlacementScope;->Companion:Landroidx/compose/ui/layout/Placeable$PlacementScope$Companion;

    invoke-static {v1}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$setParentWidth$cp(I)V

    .line 339
    sget-object v1, Landroidx/compose/ui/layout/Placeable$PlacementScope;->Companion:Landroidx/compose/ui/layout/Placeable$PlacementScope$Companion;

    invoke-static {v2}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$setParentLayoutDirection$cp(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 341
    invoke-static {v0, v3}, Landroidx/compose/ui/layout/Placeable$PlacementScope$Companion;->access$configureForPlacingForAlignment(Landroidx/compose/ui/layout/Placeable$PlacementScope$Companion;Landroidx/compose/ui/node/LookaheadCapablePlaceable;)Z

    move-result v1

    .line 342
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v3, :cond_0

    goto :goto_0

    .line 343
    :cond_0
    invoke-virtual {v3, v1}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->setPlacingForAlignment$ui_release(Z)V

    .line 344
    :goto_0
    sget-object p0, Landroidx/compose/ui/layout/Placeable$PlacementScope;->Companion:Landroidx/compose/ui/layout/Placeable$PlacementScope$Companion;

    invoke-static {v5}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$setParentWidth$cp(I)V

    .line 345
    sget-object p0, Landroidx/compose/ui/layout/Placeable$PlacementScope;->Companion:Landroidx/compose/ui/layout/Placeable$PlacementScope$Companion;

    invoke-static {v6}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$setParentLayoutDirection$cp(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 346
    invoke-static {v4}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$set_coordinates$cp(Landroidx/compose/ui/layout/LayoutCoordinates;)V

    .line 347
    invoke-static {v7}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$setLayoutDelegate$cp(Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;)V

    return-void
.end method
