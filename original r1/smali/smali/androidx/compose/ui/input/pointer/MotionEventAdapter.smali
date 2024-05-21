.class public final Landroidx/compose/ui/input/pointer/MotionEventAdapter;
.super Ljava/lang/Object;
.source "MotionEventAdapter.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\u0010\u0010\u0016\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\u001f\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0019\u001a\u00020\u001aH\u0000\u00a2\u0006\u0002\u0008\u001bJ(\u0010\u001c\u001a\u00020\u000e2\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u00102\u0006\u0010\u001e\u001a\u00020\u001fH\u0002J\u000e\u0010 \u001a\u00020\u00132\u0006\u0010!\u001a\u00020\u0010J \u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020\u0010H\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008%\u0010&J\u0010\u0010\'\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\u0014\u0010(\u001a\u00020\u001f*\u00020\u00152\u0006\u0010!\u001a\u00020\u0010H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0005\u001a\u00020\u00068\u0000X\u0081\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0007\u0010\u0002\u001a\u0004\u0008\u0008\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u0082\u0002\u000f\n\u0002\u0008!\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006)"
    }
    d2 = {
        "Landroidx/compose/ui/input/pointer/MotionEventAdapter;",
        "",
        "()V",
        "canHover",
        "Landroid/util/SparseBooleanArray;",
        "motionEventToComposePointerIdMap",
        "Landroid/util/SparseLongArray;",
        "getMotionEventToComposePointerIdMap$ui_release$annotations",
        "getMotionEventToComposePointerIdMap$ui_release",
        "()Landroid/util/SparseLongArray;",
        "nextId",
        "",
        "pointers",
        "",
        "Landroidx/compose/ui/input/pointer/PointerInputEventData;",
        "previousSource",
        "",
        "previousToolType",
        "addFreshIds",
        "",
        "motionEvent",
        "Landroid/view/MotionEvent;",
        "clearOnDeviceChange",
        "convertToPointerInputEvent",
        "Landroidx/compose/ui/input/pointer/PointerInputEvent;",
        "positionCalculator",
        "Landroidx/compose/ui/input/pointer/PositionCalculator;",
        "convertToPointerInputEvent$ui_release",
        "createPointerInputEventData",
        "index",
        "pressed",
        "",
        "endStream",
        "pointerId",
        "getComposePointerId",
        "Landroidx/compose/ui/input/pointer/PointerId;",
        "motionEventPointerId",
        "getComposePointerId-_I2yYro",
        "(I)J",
        "removeStaleIds",
        "hasPointerId",
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
.field private final canHover:Landroid/util/SparseBooleanArray;

.field private final motionEventToComposePointerIdMap:Landroid/util/SparseLongArray;

.field private nextId:J

.field private final pointers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/input/pointer/PointerInputEventData;",
            ">;"
        }
    .end annotation
.end field

.field private previousSource:I

.field private previousToolType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->motionEventToComposePointerIdMap:Landroid/util/SparseLongArray;

    .line 56
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->canHover:Landroid/util/SparseBooleanArray;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->pointers:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->previousToolType:I

    iput v0, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->previousSource:I

    return-void
.end method

.method private final addFreshIds(Landroid/view/MotionEvent;)V
    .locals 7

    .line 153
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_1

    const/4 v3, 0x5

    if-eq v0, v3, :cond_1

    const/16 v3, 0x9

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 155
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iget-object v0, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->motionEventToComposePointerIdMap:Landroid/util/SparseLongArray;

    .line 156
    invoke-virtual {v0, p1}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_2

    iget-object v0, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->motionEventToComposePointerIdMap:Landroid/util/SparseLongArray;

    iget-wide v3, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->nextId:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->nextId:J

    .line 157
    invoke-virtual {v0, p1, v3, v4}, Landroid/util/SparseLongArray;->put(IJ)V

    goto :goto_0

    .line 162
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 163
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iget-object v4, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->motionEventToComposePointerIdMap:Landroid/util/SparseLongArray;

    .line 164
    invoke-virtual {v4, v3}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v4

    if-gez v4, :cond_2

    iget-object v4, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->motionEventToComposePointerIdMap:Landroid/util/SparseLongArray;

    iget-wide v5, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->nextId:J

    add-long/2addr v1, v5

    iput-wide v1, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->nextId:J

    .line 165
    invoke-virtual {v4, v3, v5, v6}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 166
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    iget-object p0, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->canHover:Landroid/util/SparseBooleanArray;

    const/4 p1, 0x1

    .line 167
    invoke-virtual {p0, v3, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method private final clearOnDeviceChange(Landroid/view/MotionEvent;)V
    .locals 2

    .line 232
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 235
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    .line 236
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result p1

    iget v1, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->previousToolType:I

    if-ne v0, v1, :cond_1

    iget v1, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->previousSource:I

    if-eq p1, v1, :cond_2

    :cond_1
    iput v0, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->previousToolType:I

    iput p1, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->previousSource:I

    iget-object p1, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->canHover:Landroid/util/SparseBooleanArray;

    .line 241
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clear()V

    iget-object p0, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->motionEventToComposePointerIdMap:Landroid/util/SparseLongArray;

    .line 242
    invoke-virtual {p0}, Landroid/util/SparseLongArray;->clear()V

    :cond_2
    return-void
.end method

.method private final createPointerInputEventData(Landroidx/compose/ui/input/pointer/PositionCalculator;Landroid/view/MotionEvent;IZ)Landroidx/compose/ui/input/pointer/PointerInputEventData;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    .line 257
    invoke-virtual/range {p2 .. p3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 259
    invoke-direct {v0, v4}, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->getComposePointerId-_I2yYro(I)J

    move-result-wide v6

    .line 261
    invoke-virtual/range {p2 .. p3}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v15

    .line 263
    invoke-virtual/range {p2 .. p3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual/range {p2 .. p3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    if-nez v3, :cond_0

    .line 266
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v4

    .line 267
    invoke-interface {v1, v4, v5}, Landroidx/compose/ui/input/pointer/PositionCalculator;->screenToLocal-MK-Hz9U(J)J

    move-result-wide v8

    :goto_0
    move-wide v10, v4

    move-wide v12, v8

    goto :goto_1

    .line 269
    :cond_0
    sget-object v4, Landroidx/compose/ui/input/pointer/MotionEventHelper;->INSTANCE:Landroidx/compose/ui/input/pointer/MotionEventHelper;

    invoke-virtual {v4, v2, v3}, Landroidx/compose/ui/input/pointer/MotionEventHelper;->toRawOffset-dBAh8RU(Landroid/view/MotionEvent;I)J

    move-result-wide v4

    .line 270
    invoke-interface {v1, v4, v5}, Landroidx/compose/ui/input/pointer/PositionCalculator;->screenToLocal-MK-Hz9U(J)J

    move-result-wide v8

    goto :goto_0

    .line 274
    :goto_1
    invoke-virtual/range {p2 .. p3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    if-eqz v1, :cond_5

    const/4 v4, 0x1

    if-eq v1, v4, :cond_4

    const/4 v4, 0x2

    if-eq v1, v4, :cond_3

    const/4 v4, 0x3

    if-eq v1, v4, :cond_2

    const/4 v4, 0x4

    if-eq v1, v4, :cond_1

    .line 280
    sget-object v1, Landroidx/compose/ui/input/pointer/PointerType;->Companion:Landroidx/compose/ui/input/pointer/PointerType$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerType$Companion;->getUnknown-T8wyACA()I

    move-result v1

    goto :goto_2

    .line 279
    :cond_1
    sget-object v1, Landroidx/compose/ui/input/pointer/PointerType;->Companion:Landroidx/compose/ui/input/pointer/PointerType$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerType$Companion;->getEraser-T8wyACA()I

    move-result v1

    goto :goto_2

    .line 278
    :cond_2
    sget-object v1, Landroidx/compose/ui/input/pointer/PointerType;->Companion:Landroidx/compose/ui/input/pointer/PointerType$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerType$Companion;->getMouse-T8wyACA()I

    move-result v1

    goto :goto_2

    .line 277
    :cond_3
    sget-object v1, Landroidx/compose/ui/input/pointer/PointerType;->Companion:Landroidx/compose/ui/input/pointer/PointerType$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerType$Companion;->getStylus-T8wyACA()I

    move-result v1

    goto :goto_2

    .line 276
    :cond_4
    sget-object v1, Landroidx/compose/ui/input/pointer/PointerType;->Companion:Landroidx/compose/ui/input/pointer/PointerType$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerType$Companion;->getTouch-T8wyACA()I

    move-result v1

    goto :goto_2

    .line 275
    :cond_5
    sget-object v1, Landroidx/compose/ui/input/pointer/PointerType;->Companion:Landroidx/compose/ui/input/pointer/PointerType$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerType$Companion;->getUnknown-T8wyACA()I

    move-result v1

    :goto_2
    move/from16 v16, v1

    .line 283
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 285
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v4

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v4, :cond_7

    .line 286
    invoke-virtual {v2, v3, v8}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v9

    .line 287
    invoke-virtual {v2, v3, v8}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v14

    .line 288
    invoke-static {v9}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v17

    if-nez v17, :cond_6

    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v17

    if-nez v17, :cond_6

    invoke-static {v14}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v17

    if-nez v17, :cond_6

    invoke-static {v14}, Ljava/lang/Float;->isNaN(F)Z

    move-result v17

    if-nez v17, :cond_6

    .line 289
    new-instance v5, Landroidx/compose/ui/input/pointer/HistoricalChange;

    .line 290
    invoke-virtual {v2, v8}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v19

    .line 291
    invoke-static {v9, v14}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v21

    const/16 v23, 0x0

    move-object/from16 v18, v5

    .line 289
    invoke-direct/range {v18 .. v23}, Landroidx/compose/ui/input/pointer/HistoricalChange;-><init>(JJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 293
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 297
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_8

    const/16 v4, 0xa

    .line 298
    invoke-virtual {v2, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v4

    const/16 v5, 0x9

    .line 299
    invoke-virtual {v2, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v5

    neg-float v5, v5

    const/4 v8, 0x0

    add-float/2addr v5, v8

    .line 316
    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v4

    goto :goto_4

    .line 318
    :cond_8
    sget-object v4, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v4

    :goto_4
    move-wide/from16 v19, v4

    iget-object v0, v0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->canHover:Landroid/util/SparseBooleanArray;

    .line 321
    invoke-virtual/range {p2 .. p3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v17

    .line 322
    new-instance v0, Landroidx/compose/ui/input/pointer/PointerInputEventData;

    move-object v5, v0

    .line 324
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    .line 331
    move-object/from16 v18, v1

    check-cast v18, Ljava/util/List;

    const/16 v21, 0x0

    move/from16 v14, p4

    .line 322
    invoke-direct/range {v5 .. v21}, Landroidx/compose/ui/input/pointer/PointerInputEventData;-><init>(JJJJZFIZLjava/util/List;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method private final getComposePointerId-_I2yYro(I)J
    .locals 4

    iget-object v0, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->motionEventToComposePointerIdMap:Landroid/util/SparseLongArray;

    .line 215
    invoke-virtual {v0, p1}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object p0, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->motionEventToComposePointerIdMap:Landroid/util/SparseLongArray;

    .line 217
    invoke-virtual {p0, v0}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide p0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->nextId:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->nextId:J

    iget-object p0, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->motionEventToComposePointerIdMap:Landroid/util/SparseLongArray;

    .line 221
    invoke-virtual {p0, p1, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    move-wide p0, v0

    .line 224
    :goto_0
    invoke-static {p0, p1}, Landroidx/compose/ui/input/pointer/PointerId;->constructor-impl(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic getMotionEventToComposePointerIdMap$ui_release$annotations()V
    .locals 0

    return-void
.end method

.method private final hasPointerId(Landroid/view/MotionEvent;I)Z
    .locals 3

    .line 206
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_1

    .line 207
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    if-ne v2, p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private final removeStaleIds(Landroid/view/MotionEvent;)V
    .locals 4

    .line 179
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 182
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 183
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iget-object v2, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->canHover:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x0

    .line 184
    invoke-virtual {v2, v0, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->motionEventToComposePointerIdMap:Landroid/util/SparseLongArray;

    .line 185
    invoke-virtual {v2, v0}, Landroid/util/SparseLongArray;->delete(I)V

    iget-object v2, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->canHover:Landroid/util/SparseBooleanArray;

    .line 186
    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->delete(I)V

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->motionEventToComposePointerIdMap:Landroid/util/SparseLongArray;

    .line 194
    invoke-virtual {v0}, Landroid/util/SparseLongArray;->size()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-le v0, v2, :cond_3

    iget-object v0, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->motionEventToComposePointerIdMap:Landroid/util/SparseLongArray;

    .line 195
    invoke-virtual {v0}, Landroid/util/SparseLongArray;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_1
    const/4 v1, -0x1

    if-ge v1, v0, :cond_3

    iget-object v1, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->motionEventToComposePointerIdMap:Landroid/util/SparseLongArray;

    .line 196
    invoke-virtual {v1, v0}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v1

    .line 197
    invoke-direct {p0, p1, v1}, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->hasPointerId(Landroid/view/MotionEvent;I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->motionEventToComposePointerIdMap:Landroid/util/SparseLongArray;

    .line 198
    invoke-virtual {v2, v0}, Landroid/util/SparseLongArray;->removeAt(I)V

    iget-object v2, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->canHover:Landroid/util/SparseBooleanArray;

    .line 199
    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->delete(I)V

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public final convertToPointerInputEvent$ui_release(Landroid/view/MotionEvent;Landroidx/compose/ui/input/pointer/PositionCalculator;)Landroidx/compose/ui/input/pointer/PointerInputEvent;
    .locals 9

    const-string v0, "motionEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "positionCalculator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->motionEventToComposePointerIdMap:Landroid/util/SparseLongArray;

    .line 89
    invoke-virtual {p1}, Landroid/util/SparseLongArray;->clear()V

    iget-object p0, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->canHover:Landroid/util/SparseBooleanArray;

    .line 90
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->clear()V

    const/4 p0, 0x0

    return-object p0

    .line 93
    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->clearOnDeviceChange(Landroid/view/MotionEvent;)V

    .line 95
    invoke-direct {p0, p1}, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->addFreshIds(Landroid/view/MotionEvent;)V

    const/16 v1, 0xa

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v3

    :goto_1
    const/16 v4, 0x8

    if-ne v0, v4, :cond_3

    move v4, v3

    goto :goto_2

    :cond_3
    move v4, v2

    :goto_2
    if-eqz v1, :cond_4

    .line 102
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iget-object v6, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->canHover:Landroid/util/SparseBooleanArray;

    .line 103
    invoke-virtual {v6, v5, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_4
    if-eq v0, v3, :cond_6

    const/4 v5, 0x6

    if-eq v0, v5, :cond_5

    const/4 v0, -0x1

    goto :goto_3

    .line 108
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    goto :goto_3

    :cond_6
    move v0, v2

    :goto_3
    iget-object v5, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->pointers:Ljava/util/List;

    .line 112
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 116
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    move v6, v2

    :goto_4
    if-ge v6, v5, :cond_9

    iget-object v7, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->pointers:Ljava/util/List;

    if-nez v1, :cond_8

    if-eq v6, v0, :cond_8

    if-eqz v4, :cond_7

    .line 126
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v8

    if-eqz v8, :cond_8

    :cond_7
    move v8, v3

    goto :goto_5

    :cond_8
    move v8, v2

    .line 118
    :goto_5
    invoke-direct {p0, p2, p1, v6, v8}, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->createPointerInputEventData(Landroidx/compose/ui/input/pointer/PositionCalculator;Landroid/view/MotionEvent;IZ)Landroidx/compose/ui/input/pointer/PointerInputEventData;

    move-result-object v8

    .line 117
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 131
    :cond_9
    invoke-direct {p0, p1}, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->removeStaleIds(Landroid/view/MotionEvent;)V

    .line 133
    new-instance p2, Landroidx/compose/ui/input/pointer/PointerInputEvent;

    .line 134
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iget-object p0, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->pointers:Ljava/util/List;

    .line 133
    invoke-direct {p2, v0, v1, p0, p1}, Landroidx/compose/ui/input/pointer/PointerInputEvent;-><init>(JLjava/util/List;Landroid/view/MotionEvent;)V

    return-object p2
.end method

.method public final endStream(I)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->canHover:Landroid/util/SparseBooleanArray;

    .line 145
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    iget-object p0, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->motionEventToComposePointerIdMap:Landroid/util/SparseLongArray;

    .line 146
    invoke-virtual {p0, p1}, Landroid/util/SparseLongArray;->delete(I)V

    return-void
.end method

.method public final getMotionEventToComposePointerIdMap$ui_release()Landroid/util/SparseLongArray;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->motionEventToComposePointerIdMap:Landroid/util/SparseLongArray;

    return-object p0
.end method
