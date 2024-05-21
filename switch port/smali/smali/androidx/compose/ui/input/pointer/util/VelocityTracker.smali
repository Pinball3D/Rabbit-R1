.class public final Landroidx/compose/ui/input/pointer/util/VelocityTracker;
.super Ljava/lang/Object;
.source "VelocityTracker.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J#\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0004\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0016\u0010\u0014\u001a\u00020\u0015\u00f8\u0001\u0002\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0016\u0010\u0006J\u0006\u0010\u0017\u001a\u00020\u000eR%\u0010\u0003\u001a\u00020\u0004X\u0080\u000e\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0010\n\u0002\u0010\t\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006\u0018"
    }
    d2 = {
        "Landroidx/compose/ui/input/pointer/util/VelocityTracker;",
        "",
        "()V",
        "currentPointerPositionAccumulator",
        "Landroidx/compose/ui/geometry/Offset;",
        "getCurrentPointerPositionAccumulator-F1C5BW0$ui_release",
        "()J",
        "setCurrentPointerPositionAccumulator-k-4lQ0M$ui_release",
        "(J)V",
        "J",
        "xVelocityTracker",
        "Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;",
        "yVelocityTracker",
        "addPosition",
        "",
        "timeMillis",
        "",
        "position",
        "addPosition-Uv8p0NA",
        "(JJ)V",
        "calculateVelocity",
        "Landroidx/compose/ui/unit/Velocity;",
        "calculateVelocity-9UxMQ8M",
        "resetTracking",
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


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private currentPointerPositionAccumulator:J

.field private final xVelocityTracker:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

.field private final yVelocityTracker:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3, v2}, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;-><init>(ZLandroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->xVelocityTracker:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

    .line 49
    new-instance v0, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

    invoke-direct {v0, v1, v2, v3, v2}, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;-><init>(ZLandroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->yVelocityTracker:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

    .line 51
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->currentPointerPositionAccumulator:J

    return-void
.end method


# virtual methods
.method public final addPosition-Uv8p0NA(JJ)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->xVelocityTracker:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

    .line 64
    invoke-static {p3, p4}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->addDataPoint(JF)V

    iget-object p0, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->yVelocityTracker:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

    .line 65
    invoke-static {p3, p4}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->addDataPoint(JF)V

    return-void
.end method

.method public final calculateVelocity-9UxMQ8M()J
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->xVelocityTracker:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

    .line 74
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->calculateVelocity()F

    move-result v0

    iget-object p0, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->yVelocityTracker:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->calculateVelocity()F

    move-result p0

    invoke-static {v0, p0}, Landroidx/compose/ui/unit/VelocityKt;->Velocity(FF)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getCurrentPointerPositionAccumulator-F1C5BW0$ui_release()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->currentPointerPositionAccumulator:J

    return-wide v0
.end method

.method public final resetTracking()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->xVelocityTracker:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

    .line 81
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->resetTracking()V

    iget-object p0, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->yVelocityTracker:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

    .line 82
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->resetTracking()V

    return-void
.end method

.method public final setCurrentPointerPositionAccumulator-k-4lQ0M$ui_release(J)V
    .locals 0

    iput-wide p1, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->currentPointerPositionAccumulator:J

    return-void
.end method
