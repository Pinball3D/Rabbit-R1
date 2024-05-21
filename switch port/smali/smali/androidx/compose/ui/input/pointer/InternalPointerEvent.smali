.class public final Landroidx/compose/ui/input/pointer/InternalPointerEvent;
.super Ljava/lang/Object;
.source "InternalPointerEvent.android.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInternalPointerEvent.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InternalPointerEvent.android.kt\nandroidx/compose/ui/input/pointer/InternalPointerEvent\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,35:1\n116#2,2:36\n33#2,6:38\n118#2:44\n*S KotlinDebug\n*F\n+ 1 InternalPointerEvent.android.kt\nandroidx/compose/ui/input/pointer/InternalPointerEvent\n*L\n30#1:36,2\n30#1:38,6\n30#1:44\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\t\u0008\u0000\u0018\u00002\u00020\u0001B$\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0008J\u001b\u0010\u0017\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u0004\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0019\u0010\u001aR \u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u00f8\u0001\u0000\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u000b\u001a\u00020\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016\u0082\u0002\u000b\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006\u001b"
    }
    d2 = {
        "Landroidx/compose/ui/input/pointer/InternalPointerEvent;",
        "",
        "changes",
        "",
        "Landroidx/compose/ui/input/pointer/PointerId;",
        "Landroidx/compose/ui/input/pointer/PointerInputChange;",
        "pointerInputEvent",
        "Landroidx/compose/ui/input/pointer/PointerInputEvent;",
        "(Ljava/util/Map;Landroidx/compose/ui/input/pointer/PointerInputEvent;)V",
        "getChanges",
        "()Ljava/util/Map;",
        "motionEvent",
        "Landroid/view/MotionEvent;",
        "getMotionEvent",
        "()Landroid/view/MotionEvent;",
        "getPointerInputEvent",
        "()Landroidx/compose/ui/input/pointer/PointerInputEvent;",
        "suppressMovementConsumption",
        "",
        "getSuppressMovementConsumption",
        "()Z",
        "setSuppressMovementConsumption",
        "(Z)V",
        "issuesEnterExitEvent",
        "pointerId",
        "issuesEnterExitEvent-0FcD4WY",
        "(J)Z",
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
.field private final changes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/compose/ui/input/pointer/PointerId;",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            ">;"
        }
    .end annotation
.end field

.field private final pointerInputEvent:Landroidx/compose/ui/input/pointer/PointerInputEvent;

.field private suppressMovementConsumption:Z


# direct methods
.method public constructor <init>(Ljava/util/Map;Landroidx/compose/ui/input/pointer/PointerInputEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroidx/compose/ui/input/pointer/PointerId;",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            ">;",
            "Landroidx/compose/ui/input/pointer/PointerInputEvent;",
            ")V"
        }
    .end annotation

    const-string v0, "changes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pointerInputEvent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/input/pointer/InternalPointerEvent;->changes:Ljava/util/Map;

    iput-object p2, p0, Landroidx/compose/ui/input/pointer/InternalPointerEvent;->pointerInputEvent:Landroidx/compose/ui/input/pointer/PointerInputEvent;

    return-void
.end method


# virtual methods
.method public final getChanges()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroidx/compose/ui/input/pointer/PointerId;",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/ui/input/pointer/InternalPointerEvent;->changes:Ljava/util/Map;

    return-object p0
.end method

.method public final getMotionEvent()Landroid/view/MotionEvent;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/input/pointer/InternalPointerEvent;->pointerInputEvent:Landroidx/compose/ui/input/pointer/PointerInputEvent;

    .line 27
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/PointerInputEvent;->getMotionEvent()Landroid/view/MotionEvent;

    move-result-object p0

    return-object p0
.end method

.method public final getPointerInputEvent()Landroidx/compose/ui/input/pointer/PointerInputEvent;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/input/pointer/InternalPointerEvent;->pointerInputEvent:Landroidx/compose/ui/input/pointer/PointerInputEvent;

    return-object p0
.end method

.method public final getSuppressMovementConsumption()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/ui/input/pointer/InternalPointerEvent;->suppressMovementConsumption:Z

    return p0
.end method

.method public final issuesEnterExitEvent-0FcD4WY(J)Z
    .locals 6

    iget-object p0, p0, Landroidx/compose/ui/input/pointer/InternalPointerEvent;->pointerInputEvent:Landroidx/compose/ui/input/pointer/PointerInputEvent;

    .line 30
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/PointerInputEvent;->getPointers()Ljava/util/List;

    move-result-object p0

    .line 39
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 40
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 37
    move-object v4, v3

    check-cast v4, Landroidx/compose/ui/input/pointer/PointerInputEventData;

    .line 31
    invoke-virtual {v4}, Landroidx/compose/ui/input/pointer/PointerInputEventData;->getId-J3iCeTQ()J

    move-result-wide v4

    invoke-static {v4, v5, p1, p2}, Landroidx/compose/ui/input/pointer/PointerId;->equals-impl0(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 30
    :goto_1
    check-cast v3, Landroidx/compose/ui/input/pointer/PointerInputEventData;

    if-eqz v3, :cond_2

    .line 32
    invoke-virtual {v3}, Landroidx/compose/ui/input/pointer/PointerInputEventData;->getIssuesEnterExit()Z

    move-result v1

    :cond_2
    return v1
.end method

.method public final setSuppressMovementConsumption(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/ui/input/pointer/InternalPointerEvent;->suppressMovementConsumption:Z

    return-void
.end method
