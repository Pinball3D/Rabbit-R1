.class public final Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeSelectionModifier$longPressDragObserver$1;
.super Ljava/lang/Object;
.source "SelectionController.kt"

# interfaces
.implements Landroidx/compose/foundation/text/TextDragObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/text/modifiers/SelectionControllerKt;->makeSelectionModifier(Landroidx/compose/foundation/text/selection/SelectionRegistrar;JLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Z)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0002\u0008\u000c*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u001d\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0003H\u0016\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0010\u0010\u0007J\u001d\u0010\u0011\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\u0003H\u0016\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0013\u0010\u0007J\u001d\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u0003H\u0016\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0016\u0010\u0007J\u0008\u0010\u0017\u001a\u00020\rH\u0016J\u0008\u0010\u0018\u001a\u00020\rH\u0016R%\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0010\n\u0002\u0010\u0008\u001a\u0004\u0008\u0004\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007R%\u0010\t\u001a\u00020\u0003X\u0086\u000e\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0010\n\u0002\u0010\u0008\u001a\u0004\u0008\n\u0010\u0005\"\u0004\u0008\u000b\u0010\u0007\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006\u0019"
    }
    d2 = {
        "androidx/compose/foundation/text/modifiers/SelectionControllerKt$makeSelectionModifier$longPressDragObserver$1",
        "Landroidx/compose/foundation/text/TextDragObserver;",
        "dragTotalDistance",
        "Landroidx/compose/ui/geometry/Offset;",
        "getDragTotalDistance",
        "()J",
        "setDragTotalDistance",
        "(J)V",
        "J",
        "lastPosition",
        "getLastPosition",
        "setLastPosition",
        "onCancel",
        "",
        "onDown",
        "point",
        "onDown-k-4lQ0M",
        "onDrag",
        "delta",
        "onDrag-k-4lQ0M",
        "onStart",
        "startPoint",
        "onStart-k-4lQ0M",
        "onStop",
        "onUp",
        "foundation_release"
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
.field final synthetic $layoutCoordinates:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Landroidx/compose/ui/layout/LayoutCoordinates;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $selectableId:J

.field final synthetic $textLayoutResult:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $this_makeSelectionModifier:Landroidx/compose/foundation/text/selection/SelectionRegistrar;

.field private dragTotalDistance:J

.field private lastPosition:J


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/text/selection/SelectionRegistrar;JLkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Landroidx/compose/ui/layout/LayoutCoordinates;",
            ">;",
            "Landroidx/compose/foundation/text/selection/SelectionRegistrar;",
            "J",
            "Lkotlin/jvm/functions/Function0<",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeSelectionModifier$longPressDragObserver$1;->$layoutCoordinates:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeSelectionModifier$longPressDragObserver$1;->$this_makeSelectionModifier:Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    iput-wide p3, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeSelectionModifier$longPressDragObserver$1;->$selectableId:J

    iput-object p5, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeSelectionModifier$longPressDragObserver$1;->$textLayoutResult:Lkotlin/jvm/functions/Function0;

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    sget-object p1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeSelectionModifier$longPressDragObserver$1;->lastPosition:J

    .line 179
    sget-object p1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeSelectionModifier$longPressDragObserver$1;->dragTotalDistance:J

    return-void
.end method


# virtual methods
.method public final getDragTotalDistance()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeSelectionModifier$longPressDragObserver$1;->dragTotalDistance:J

    return-wide v0
.end method

.method public final getLastPosition()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeSelectionModifier$longPressDragObserver$1;->lastPosition:J

    return-wide v0
.end method

.method public onCancel()V
    .locals 3

    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeSelectionModifier$longPressDragObserver$1;->$this_makeSelectionModifier:Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    iget-wide v1, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeSelectionModifier$longPressDragObserver$1;->$selectableId:J

    .line 250
    invoke-static {v0, v1, v2}, Landroidx/compose/foundation/text/selection/SelectionRegistrarKt;->hasSelection(Landroidx/compose/foundation/text/selection/SelectionRegistrar;J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeSelectionModifier$longPressDragObserver$1;->$this_makeSelectionModifier:Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    .line 251
    invoke-interface {p0}, Landroidx/compose/foundation/text/selection/SelectionRegistrar;->notifySelectionUpdateEnd()V

    :cond_0
    return-void
.end method

.method public onDown-k-4lQ0M(J)V
    .locals 0

    return-void
.end method

.method public onDrag-k-4lQ0M(J)V
    .locals 9

    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeSelectionModifier$longPressDragObserver$1;->$layoutCoordinates:Lkotlin/jvm/functions/Function0;

    .line 214
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/compose/ui/layout/LayoutCoordinates;

    if-eqz v2, :cond_2

    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeSelectionModifier$longPressDragObserver$1;->$this_makeSelectionModifier:Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    iget-wide v3, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeSelectionModifier$longPressDragObserver$1;->$selectableId:J

    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeSelectionModifier$longPressDragObserver$1;->$textLayoutResult:Lkotlin/jvm/functions/Function0;

    .line 215
    invoke-interface {v2}, Landroidx/compose/ui/layout/LayoutCoordinates;->isAttached()Z

    move-result v5

    if-nez v5, :cond_0

    return-void

    .line 217
    :cond_0
    invoke-static {v1, v3, v4}, Landroidx/compose/foundation/text/selection/SelectionRegistrarKt;->hasSelection(Landroidx/compose/foundation/text/selection/SelectionRegistrar;J)Z

    move-result v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    iget-wide v3, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeSelectionModifier$longPressDragObserver$1;->dragTotalDistance:J

    .line 219
    invoke-static {v3, v4, p1, p2}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeSelectionModifier$longPressDragObserver$1;->dragTotalDistance:J

    iget-wide v3, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeSelectionModifier$longPressDragObserver$1;->lastPosition:J

    .line 220
    invoke-static {v3, v4, p1, p2}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide p1

    .line 222
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/text/TextLayoutResult;

    iget-wide v3, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeSelectionModifier$longPressDragObserver$1;->lastPosition:J

    invoke-static {v0, v3, v4, p1, p2}, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt;->access$outOfBoundary-2x9bVx0(Landroidx/compose/ui/text/TextLayoutResult;JJ)Z

    move-result v0

    if-nez v0, :cond_2

    iget-wide v5, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeSelectionModifier$longPressDragObserver$1;->lastPosition:J

    .line 233
    sget-object v0, Landroidx/compose/foundation/text/selection/SelectionAdjustment;->Companion:Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;->getCharacterWithWordAccelerate()Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    move-result-object v8

    const/4 v7, 0x0

    move-wide v3, p1

    .line 228
    invoke-interface/range {v1 .. v8}, Landroidx/compose/foundation/text/selection/SelectionRegistrar;->notifySelectionUpdate-5iVPX68(Landroidx/compose/ui/layout/LayoutCoordinates;JJZLandroidx/compose/foundation/text/selection/SelectionAdjustment;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-wide p1, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeSelectionModifier$longPressDragObserver$1;->lastPosition:J

    .line 237
    sget-object p1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeSelectionModifier$longPressDragObserver$1;->dragTotalDistance:J

    :cond_2
    return-void
.end method

.method public onStart-k-4lQ0M(J)V
    .locals 6

    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeSelectionModifier$longPressDragObserver$1;->$layoutCoordinates:Lkotlin/jvm/functions/Function0;

    .line 190
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/layout/LayoutCoordinates;

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeSelectionModifier$longPressDragObserver$1;->$textLayoutResult:Lkotlin/jvm/functions/Function0;

    iget-object v2, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeSelectionModifier$longPressDragObserver$1;->$this_makeSelectionModifier:Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    iget-wide v3, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeSelectionModifier$longPressDragObserver$1;->$selectableId:J

    .line 191
    invoke-interface {v0}, Landroidx/compose/ui/layout/LayoutCoordinates;->isAttached()Z

    move-result v5

    if-nez v5, :cond_0

    return-void

    .line 193
    :cond_0
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/text/TextLayoutResult;

    invoke-static {v1, p1, p2, p1, p2}, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt;->access$outOfBoundary-2x9bVx0(Landroidx/compose/ui/text/TextLayoutResult;JJ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 194
    invoke-interface {v2, v3, v4}, Landroidx/compose/foundation/text/selection/SelectionRegistrar;->notifySelectionUpdateSelectAll(J)V

    goto :goto_0

    .line 201
    :cond_1
    sget-object v1, Landroidx/compose/foundation/text/selection/SelectionAdjustment;->Companion:Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;

    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;->getWord()Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    move-result-object v1

    .line 198
    invoke-interface {v2, v0, p1, p2, v1}, Landroidx/compose/foundation/text/selection/SelectionRegistrar;->notifySelectionUpdateStart-d-4ec7I(Landroidx/compose/ui/layout/LayoutCoordinates;JLandroidx/compose/foundation/text/selection/SelectionAdjustment;)V

    :goto_0
    iput-wide p1, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeSelectionModifier$longPressDragObserver$1;->lastPosition:J

    :cond_2
    iget-object p1, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeSelectionModifier$longPressDragObserver$1;->$this_makeSelectionModifier:Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    iget-wide v0, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeSelectionModifier$longPressDragObserver$1;->$selectableId:J

    .line 208
    invoke-static {p1, v0, v1}, Landroidx/compose/foundation/text/selection/SelectionRegistrarKt;->hasSelection(Landroidx/compose/foundation/text/selection/SelectionRegistrar;J)Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    .line 210
    :cond_3
    sget-object p1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeSelectionModifier$longPressDragObserver$1;->dragTotalDistance:J

    return-void
.end method

.method public onStop()V
    .locals 3

    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeSelectionModifier$longPressDragObserver$1;->$this_makeSelectionModifier:Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    iget-wide v1, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeSelectionModifier$longPressDragObserver$1;->$selectableId:J

    .line 244
    invoke-static {v0, v1, v2}, Landroidx/compose/foundation/text/selection/SelectionRegistrarKt;->hasSelection(Landroidx/compose/foundation/text/selection/SelectionRegistrar;J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeSelectionModifier$longPressDragObserver$1;->$this_makeSelectionModifier:Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    .line 245
    invoke-interface {p0}, Landroidx/compose/foundation/text/selection/SelectionRegistrar;->notifySelectionUpdateEnd()V

    :cond_0
    return-void
.end method

.method public onUp()V
    .locals 0

    return-void
.end method

.method public final setDragTotalDistance(J)V
    .locals 0

    iput-wide p1, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeSelectionModifier$longPressDragObserver$1;->dragTotalDistance:J

    return-void
.end method

.method public final setLastPosition(J)V
    .locals 0

    iput-wide p1, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeSelectionModifier$longPressDragObserver$1;->lastPosition:J

    return-void
.end method
