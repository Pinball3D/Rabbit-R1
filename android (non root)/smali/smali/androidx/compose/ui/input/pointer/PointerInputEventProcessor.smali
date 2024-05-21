.class public final Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;
.super Ljava/lang/Object;
.source "PointerInputEventProcessor.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPointerInputEventProcessor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PointerInputEventProcessor.kt\nandroidx/compose/ui/input/pointer/PointerInputEventProcessor\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,235:1\n1747#2,3:236\n1855#2,2:239\n1747#2,3:241\n*S KotlinDebug\n*F\n+ 1 PointerInputEventProcessor.kt\nandroidx/compose/ui/input/pointer/PointerInputEventProcessor\n*L\n76#1:236,3\n79#1:239,2\n102#1:241,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J0\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u0015\u001a\u00020\n\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0006\u0010\u0018\u001a\u00020\u0019R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u0082\u0002\u000f\n\u0002\u0008!\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006\u001a"
    }
    d2 = {
        "Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;",
        "",
        "root",
        "Landroidx/compose/ui/node/LayoutNode;",
        "(Landroidx/compose/ui/node/LayoutNode;)V",
        "hitPathTracker",
        "Landroidx/compose/ui/input/pointer/HitPathTracker;",
        "hitResult",
        "Landroidx/compose/ui/node/HitTestResult;",
        "isProcessing",
        "",
        "pointerInputChangeEventProducer",
        "Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer;",
        "getRoot",
        "()Landroidx/compose/ui/node/LayoutNode;",
        "process",
        "Landroidx/compose/ui/input/pointer/ProcessResult;",
        "pointerEvent",
        "Landroidx/compose/ui/input/pointer/PointerInputEvent;",
        "positionCalculator",
        "Landroidx/compose/ui/input/pointer/PositionCalculator;",
        "isInBounds",
        "process-BIzXfog",
        "(Landroidx/compose/ui/input/pointer/PointerInputEvent;Landroidx/compose/ui/input/pointer/PositionCalculator;Z)I",
        "processCancel",
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
.field private final hitPathTracker:Landroidx/compose/ui/input/pointer/HitPathTracker;

.field private final hitResult:Landroidx/compose/ui/node/HitTestResult;

.field private isProcessing:Z

.field private final pointerInputChangeEventProducer:Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer;

.field private final root:Landroidx/compose/ui/node/LayoutNode;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 1

    const-string v0, "root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;->root:Landroidx/compose/ui/node/LayoutNode;

    .line 36
    new-instance v0, Landroidx/compose/ui/input/pointer/HitPathTracker;

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/compose/ui/input/pointer/HitPathTracker;-><init>(Landroidx/compose/ui/layout/LayoutCoordinates;)V

    iput-object v0, p0, Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;->hitPathTracker:Landroidx/compose/ui/input/pointer/HitPathTracker;

    .line 37
    new-instance p1, Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer;

    invoke-direct {p1}, Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;->pointerInputChangeEventProducer:Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer;

    .line 38
    new-instance p1, Landroidx/compose/ui/node/HitTestResult;

    invoke-direct {p1}, Landroidx/compose/ui/node/HitTestResult;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;->hitResult:Landroidx/compose/ui/node/HitTestResult;

    return-void
.end method

.method public static synthetic process-BIzXfog$default(Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;Landroidx/compose/ui/input/pointer/PointerInputEvent;Landroidx/compose/ui/input/pointer/PositionCalculator;ZILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    .line 56
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;->process-BIzXfog(Landroidx/compose/ui/input/pointer/PointerInputEvent;Landroidx/compose/ui/input/pointer/PositionCalculator;Z)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final getRoot()Landroidx/compose/ui/node/LayoutNode;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;->root:Landroidx/compose/ui/node/LayoutNode;

    return-object p0
.end method

.method public final process-BIzXfog(Landroidx/compose/ui/input/pointer/PointerInputEvent;Landroidx/compose/ui/input/pointer/PositionCalculator;Z)I
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const-string v3, "pointerEvent"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "positionCalculator"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v3, v1, Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;->isProcessing:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 63
    invoke-static {v4, v4}, Landroidx/compose/ui/input/pointer/PointerInputEventProcessorKt;->ProcessResult(ZZ)I

    move-result v0

    return v0

    :cond_0
    const/4 v3, 0x1

    :try_start_0
    iput-boolean v3, v1, Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;->isProcessing:Z

    iget-object v5, v1, Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;->pointerInputChangeEventProducer:Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer;

    .line 73
    invoke-virtual {v5, v0, v2}, Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer;->produce(Landroidx/compose/ui/input/pointer/PointerInputEvent;Landroidx/compose/ui/input/pointer/PositionCalculator;)Landroidx/compose/ui/input/pointer/InternalPointerEvent;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/InternalPointerEvent;->getChanges()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 236
    instance-of v5, v2, Ljava/util/Collection;

    if-eqz v5, :cond_1

    move-object v5, v2

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 237
    :cond_1
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 76
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPressed()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPreviousPressed()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_3
    move v2, v4

    goto :goto_1

    :cond_4
    :goto_0
    move v2, v3

    .line 79
    :goto_1
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/InternalPointerEvent;->getChanges()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    .line 239
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/input/pointer/PointerInputChange;

    if-nez v2, :cond_6

    .line 80
    invoke-static {v6}, Landroidx/compose/ui/input/pointer/PointerEventKt;->changedToDownIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 81
    :cond_6
    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getType-T8wyACA()I

    move-result v7

    sget-object v8, Landroidx/compose/ui/input/pointer/PointerType;->Companion:Landroidx/compose/ui/input/pointer/PointerType$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/input/pointer/PointerType$Companion;->getTouch-T8wyACA()I

    move-result v8

    invoke-static {v7, v8}, Landroidx/compose/ui/input/pointer/PointerType;->equals-impl0(II)Z

    move-result v13

    iget-object v9, v1, Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;->root:Landroidx/compose/ui/node/LayoutNode;

    .line 82
    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    move-result-wide v10

    iget-object v12, v1, Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;->hitResult:Landroidx/compose/ui/node/HitTestResult;

    const/4 v14, 0x0

    const/16 v15, 0x8

    const/16 v16, 0x0

    invoke-static/range {v9 .. v16}, Landroidx/compose/ui/node/LayoutNode;->hitTest-M_7yMNQ$ui_release$default(Landroidx/compose/ui/node/LayoutNode;JLandroidx/compose/ui/node/HitTestResult;ZZILjava/lang/Object;)V

    iget-object v7, v1, Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;->hitResult:Landroidx/compose/ui/node/HitTestResult;

    .line 83
    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    xor-int/2addr v7, v3

    if-eqz v7, :cond_5

    iget-object v7, v1, Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;->hitPathTracker:Landroidx/compose/ui/input/pointer/HitPathTracker;

    .line 84
    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    move-result-wide v8

    iget-object v6, v1, Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;->hitResult:Landroidx/compose/ui/node/HitTestResult;

    check-cast v6, Ljava/util/List;

    invoke-virtual {v7, v8, v9, v6}, Landroidx/compose/ui/input/pointer/HitPathTracker;->addHitPath-KNwqfcY(JLjava/util/List;)V

    iget-object v6, v1, Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;->hitResult:Landroidx/compose/ui/node/HitTestResult;

    .line 85
    invoke-virtual {v6}, Landroidx/compose/ui/node/HitTestResult;->clear()V

    goto :goto_2

    :cond_7
    iget-object v2, v1, Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;->hitPathTracker:Landroidx/compose/ui/input/pointer/HitPathTracker;

    .line 92
    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/HitPathTracker;->removeDetachedPointerInputFilters()V

    iget-object v2, v1, Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;->hitPathTracker:Landroidx/compose/ui/input/pointer/HitPathTracker;

    move/from16 v5, p3

    .line 96
    invoke-virtual {v2, v0, v5}, Landroidx/compose/ui/input/pointer/HitPathTracker;->dispatchChanges(Landroidx/compose/ui/input/pointer/InternalPointerEvent;Z)Z

    move-result v2

    .line 98
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/InternalPointerEvent;->getSuppressMovementConsumption()Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_8
    :goto_3
    move v3, v4

    goto :goto_4

    .line 101
    :cond_9
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/InternalPointerEvent;->getChanges()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 241
    instance-of v5, v0, Ljava/util/Collection;

    if-eqz v5, :cond_a

    move-object v5, v0

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_a

    goto :goto_3

    .line 242
    :cond_a
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 102
    invoke-static {v5}, Landroidx/compose/ui/input/pointer/PointerEventKt;->positionChangedIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 105
    :goto_4
    invoke-static {v2, v3}, Landroidx/compose/ui/input/pointer/PointerInputEventProcessorKt;->ProcessResult(ZZ)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v4, v1, Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;->isProcessing:Z

    return v0

    :catchall_0
    move-exception v0

    iput-boolean v4, v1, Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;->isProcessing:Z

    .line 107
    throw v0
.end method

.method public final processCancel()V
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;->isProcessing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;->pointerInputChangeEventProducer:Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer;

    .line 122
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer;->clear()V

    iget-object p0, p0, Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;->hitPathTracker:Landroidx/compose/ui/input/pointer/HitPathTracker;

    .line 123
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/HitPathTracker;->processCancel()V

    :cond_0
    return-void
.end method
