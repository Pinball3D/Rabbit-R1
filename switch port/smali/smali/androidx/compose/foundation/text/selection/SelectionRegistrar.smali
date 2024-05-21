.class public interface abstract Landroidx/compose/foundation/text/selection/SelectionRegistrar;
.super Ljava/lang/Object;
.source "SelectionRegistrar.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/text/selection/SelectionRegistrar$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010$\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008`\u0018\u0000 #2\u00020\u0001:\u0001#J\u0008\u0010\u0008\u001a\u00020\u0004H&J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0004H&J\u0010\u0010\u000c\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0004H&J=\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u0016H&\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0008\u0010\u0019\u001a\u00020\nH&J\u0010\u0010\u001a\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0004H&J-\u0010\u001b\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u001c\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0016H&\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0010\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020 H&J\u0010\u0010\"\u001a\u00020\n2\u0006\u0010!\u001a\u00020 H&R\u001e\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007\u00f8\u0001\u0002\u0082\u0002\u0011\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\n\u0004\u0008!0\u0001\u00a8\u0006$\u00c0\u0006\u0001"
    }
    d2 = {
        "Landroidx/compose/foundation/text/selection/SelectionRegistrar;",
        "",
        "subselections",
        "",
        "",
        "Landroidx/compose/foundation/text/selection/Selection;",
        "getSubselections",
        "()Ljava/util/Map;",
        "nextSelectableId",
        "notifyPositionChange",
        "",
        "selectableId",
        "notifySelectableChange",
        "notifySelectionUpdate",
        "",
        "layoutCoordinates",
        "Landroidx/compose/ui/layout/LayoutCoordinates;",
        "newPosition",
        "Landroidx/compose/ui/geometry/Offset;",
        "previousPosition",
        "isStartHandle",
        "adjustment",
        "Landroidx/compose/foundation/text/selection/SelectionAdjustment;",
        "notifySelectionUpdate-5iVPX68",
        "(Landroidx/compose/ui/layout/LayoutCoordinates;JJZLandroidx/compose/foundation/text/selection/SelectionAdjustment;)Z",
        "notifySelectionUpdateEnd",
        "notifySelectionUpdateSelectAll",
        "notifySelectionUpdateStart",
        "startPosition",
        "notifySelectionUpdateStart-d-4ec7I",
        "(Landroidx/compose/ui/layout/LayoutCoordinates;JLandroidx/compose/foundation/text/selection/SelectionAdjustment;)V",
        "subscribe",
        "Landroidx/compose/foundation/text/selection/Selectable;",
        "selectable",
        "unsubscribe",
        "Companion",
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


# static fields
.field public static final Companion:Landroidx/compose/foundation/text/selection/SelectionRegistrar$Companion;

.field public static final InvalidSelectableId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/compose/foundation/text/selection/SelectionRegistrar$Companion;->$$INSTANCE:Landroidx/compose/foundation/text/selection/SelectionRegistrar$Companion;

    sput-object v0, Landroidx/compose/foundation/text/selection/SelectionRegistrar;->Companion:Landroidx/compose/foundation/text/selection/SelectionRegistrar$Companion;

    return-void
.end method


# virtual methods
.method public abstract getSubselections()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Landroidx/compose/foundation/text/selection/Selection;",
            ">;"
        }
    .end annotation
.end method

.method public abstract nextSelectableId()J
.end method

.method public abstract notifyPositionChange(J)V
.end method

.method public abstract notifySelectableChange(J)V
.end method

.method public abstract notifySelectionUpdate-5iVPX68(Landroidx/compose/ui/layout/LayoutCoordinates;JJZLandroidx/compose/foundation/text/selection/SelectionAdjustment;)Z
.end method

.method public abstract notifySelectionUpdateEnd()V
.end method

.method public abstract notifySelectionUpdateSelectAll(J)V
.end method

.method public abstract notifySelectionUpdateStart-d-4ec7I(Landroidx/compose/ui/layout/LayoutCoordinates;JLandroidx/compose/foundation/text/selection/SelectionAdjustment;)V
.end method

.method public abstract subscribe(Landroidx/compose/foundation/text/selection/Selectable;)Landroidx/compose/foundation/text/selection/Selectable;
.end method

.method public abstract unsubscribe(Landroidx/compose/foundation/text/selection/Selectable;)V
.end method
