.class final Landroidx/compose/foundation/text/selection/ClicksCounter;
.super Ljava/lang/Object;
.source "TextSelectionMouseDetector.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0016\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0013\u001a\u00020\u000cJ\u0016\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0013\u001a\u00020\u000cJ\u000e\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Landroidx/compose/foundation/text/selection/ClicksCounter;",
        "",
        "viewConfiguration",
        "Landroidx/compose/ui/platform/ViewConfiguration;",
        "(Landroidx/compose/ui/platform/ViewConfiguration;)V",
        "clicks",
        "",
        "getClicks",
        "()I",
        "setClicks",
        "(I)V",
        "prevClick",
        "Landroidx/compose/ui/input/pointer/PointerInputChange;",
        "getPrevClick",
        "()Landroidx/compose/ui/input/pointer/PointerInputChange;",
        "setPrevClick",
        "(Landroidx/compose/ui/input/pointer/PointerInputChange;)V",
        "positionIsTolerable",
        "",
        "newClick",
        "timeIsTolerable",
        "update",
        "",
        "event",
        "Landroidx/compose/ui/input/pointer/PointerEvent;",
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
.field private clicks:I

.field private prevClick:Landroidx/compose/ui/input/pointer/PointerInputChange;

.field private final viewConfiguration:Landroidx/compose/ui/platform/ViewConfiguration;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/platform/ViewConfiguration;)V
    .locals 1

    const-string/jumbo v0, "viewConfiguration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/selection/ClicksCounter;->viewConfiguration:Landroidx/compose/ui/platform/ViewConfiguration;

    return-void
.end method


# virtual methods
.method public final getClicks()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/text/selection/ClicksCounter;->clicks:I

    return p0
.end method

.method public final getPrevClick()Landroidx/compose/ui/input/pointer/PointerInputChange;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/text/selection/ClicksCounter;->prevClick:Landroidx/compose/ui/input/pointer/PointerInputChange;

    return-object p0
.end method

.method public final positionIsTolerable(Landroidx/compose/ui/input/pointer/PointerInputChange;Landroidx/compose/ui/input/pointer/PointerInputChange;)Z
    .locals 2

    const-string p0, "prevClick"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "newClick"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    move-result-wide v0

    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide p0

    .line 79
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->getDistance-impl(J)F

    move-result p0

    float-to-double p0, p0

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    cmpg-double p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final setClicks(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/text/selection/ClicksCounter;->clicks:I

    return-void
.end method

.method public final setPrevClick(Landroidx/compose/ui/input/pointer/PointerInputChange;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/text/selection/ClicksCounter;->prevClick:Landroidx/compose/ui/input/pointer/PointerInputChange;

    return-void
.end method

.method public final timeIsTolerable(Landroidx/compose/ui/input/pointer/PointerInputChange;Landroidx/compose/ui/input/pointer/PointerInputChange;)Z
    .locals 2

    const-string v0, "prevClick"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newClick"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getUptimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getUptimeMillis()J

    move-result-wide p1

    sub-long/2addr v0, p1

    iget-object p0, p0, Landroidx/compose/foundation/text/selection/ClicksCounter;->viewConfiguration:Landroidx/compose/ui/platform/ViewConfiguration;

    .line 74
    invoke-interface {p0}, Landroidx/compose/ui/platform/ViewConfiguration;->getDoubleTapTimeoutMillis()J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final update(Landroidx/compose/ui/input/pointer/PointerEvent;)V
    .locals 3

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/foundation/text/selection/ClicksCounter;->prevClick:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 60
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p0, v0, p1}, Landroidx/compose/foundation/text/selection/ClicksCounter;->timeIsTolerable(Landroidx/compose/ui/input/pointer/PointerInputChange;Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    invoke-virtual {p0, v0, p1}, Landroidx/compose/foundation/text/selection/ClicksCounter;->positionIsTolerable(Landroidx/compose/ui/input/pointer/PointerInputChange;Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/compose/foundation/text/selection/ClicksCounter;->clicks:I

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/compose/foundation/text/selection/ClicksCounter;->clicks:I

    goto :goto_0

    :cond_0
    iput v1, p0, Landroidx/compose/foundation/text/selection/ClicksCounter;->clicks:I

    :goto_0
    iput-object p1, p0, Landroidx/compose/foundation/text/selection/ClicksCounter;->prevClick:Landroidx/compose/ui/input/pointer/PointerInputChange;

    return-void
.end method
