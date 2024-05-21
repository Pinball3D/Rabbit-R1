.class public final Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;
.super Ljava/lang/Object;
.source "SelectionRegistrarImpl.kt"

# interfaces
.implements Landroidx/compose/foundation/text/selection/SelectionRegistrar;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSelectionRegistrarImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectionRegistrarImpl.kt\nandroidx/compose/foundation/text/selection/SelectionRegistrarImpl\n+ 2 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,205:1\n81#2:206\n107#2,2:207\n*S KotlinDebug\n*F\n+ 1 SelectionRegistrarImpl.kt\nandroidx/compose/foundation/text/selection/SelectionRegistrarImpl\n*L\n99#1:206\n99#1:207,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010$\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u001e\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010G\u001a\u00020\u0005H\u0016J\u0010\u0010H\u001a\u00020\u000b2\u0006\u0010I\u001a\u00020\u0005H\u0016J\u0010\u0010J\u001a\u00020\u000b2\u0006\u0010I\u001a\u00020\u0005H\u0016J=\u0010K\u001a\u00020\u001d2\u0006\u0010L\u001a\u00020\u001b2\u0006\u0010M\u001a\u00020\u001c2\u0006\u0010N\u001a\u00020\u001c2\u0006\u0010O\u001a\u00020\u001d2\u0006\u0010P\u001a\u00020\u001eH\u0016\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008Q\u0010RJ\u0008\u0010S\u001a\u00020\u000bH\u0016J\u0010\u0010T\u001a\u00020\u000b2\u0006\u0010I\u001a\u00020\u0005H\u0016J-\u0010U\u001a\u00020\u000b2\u0006\u0010L\u001a\u00020\u001b2\u0006\u0010V\u001a\u00020\u001c2\u0006\u0010P\u001a\u00020\u001eH\u0016\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008W\u0010XJ\u0014\u0010Y\u001a\u0008\u0012\u0004\u0012\u00020\u0006072\u0006\u0010Z\u001a\u00020\u001bJ\u0010\u0010[\u001a\u00020\u00062\u0006\u0010\\\u001a\u00020\u0006H\u0016J\u0010\u0010]\u001a\u00020\u000b2\u0006\u0010\\\u001a\u00020\u0006H\u0016R\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R(\u0010\t\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u0012\u0010\u0010\u001a\u00060\u0011j\u0002`\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R(\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\r\"\u0004\u0008\u0015\u0010\u000fR(\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\r\"\u0004\u0008\u0018\u0010\u000fRC\u0010\u0019\u001a(\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u001d\u0018\u00010\u001aX\u0080\u000e\u00f8\u0001\u0000\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R\"\u0010#\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010$X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(R(\u0010)\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010\r\"\u0004\u0008+\u0010\u000fR7\u0010,\u001a\u001c\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u000b\u0018\u00010-X\u0080\u000e\u00f8\u0001\u0000\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008.\u0010/\"\u0004\u00080\u00101R \u00102\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006038@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u00084\u00105R\u001a\u00106\u001a\u0008\u0012\u0004\u0012\u00020\u0006078@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u00088\u00109R\u001a\u0010:\u001a\u00020\u001dX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008;\u0010<\"\u0004\u0008=\u0010>RC\u0010A\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020@032\u0012\u0010?\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020@038V@VX\u0096\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008E\u0010F\u001a\u0004\u0008B\u00105\"\u0004\u0008C\u0010D\u0082\u0002\u000b\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006^"
    }
    d2 = {
        "Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;",
        "Landroidx/compose/foundation/text/selection/SelectionRegistrar;",
        "()V",
        "_selectableMap",
        "",
        "",
        "Landroidx/compose/foundation/text/selection/Selectable;",
        "_selectables",
        "",
        "afterSelectableUnsubscribe",
        "Lkotlin/Function1;",
        "",
        "getAfterSelectableUnsubscribe$foundation_release",
        "()Lkotlin/jvm/functions/Function1;",
        "setAfterSelectableUnsubscribe$foundation_release",
        "(Lkotlin/jvm/functions/Function1;)V",
        "incrementId",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Landroidx/compose/foundation/AtomicLong;",
        "onPositionChangeCallback",
        "getOnPositionChangeCallback$foundation_release",
        "setOnPositionChangeCallback$foundation_release",
        "onSelectableChangeCallback",
        "getOnSelectableChangeCallback$foundation_release",
        "setOnSelectableChangeCallback$foundation_release",
        "onSelectionUpdateCallback",
        "Lkotlin/Function5;",
        "Landroidx/compose/ui/layout/LayoutCoordinates;",
        "Landroidx/compose/ui/geometry/Offset;",
        "",
        "Landroidx/compose/foundation/text/selection/SelectionAdjustment;",
        "getOnSelectionUpdateCallback$foundation_release",
        "()Lkotlin/jvm/functions/Function5;",
        "setOnSelectionUpdateCallback$foundation_release",
        "(Lkotlin/jvm/functions/Function5;)V",
        "onSelectionUpdateEndCallback",
        "Lkotlin/Function0;",
        "getOnSelectionUpdateEndCallback$foundation_release",
        "()Lkotlin/jvm/functions/Function0;",
        "setOnSelectionUpdateEndCallback$foundation_release",
        "(Lkotlin/jvm/functions/Function0;)V",
        "onSelectionUpdateSelectAll",
        "getOnSelectionUpdateSelectAll$foundation_release",
        "setOnSelectionUpdateSelectAll$foundation_release",
        "onSelectionUpdateStartCallback",
        "Lkotlin/Function3;",
        "getOnSelectionUpdateStartCallback$foundation_release",
        "()Lkotlin/jvm/functions/Function3;",
        "setOnSelectionUpdateStartCallback$foundation_release",
        "(Lkotlin/jvm/functions/Function3;)V",
        "selectableMap",
        "",
        "getSelectableMap$foundation_release",
        "()Ljava/util/Map;",
        "selectables",
        "",
        "getSelectables$foundation_release",
        "()Ljava/util/List;",
        "sorted",
        "getSorted$foundation_release",
        "()Z",
        "setSorted$foundation_release",
        "(Z)V",
        "<set-?>",
        "Landroidx/compose/foundation/text/selection/Selection;",
        "subselections",
        "getSubselections",
        "setSubselections",
        "(Ljava/util/Map;)V",
        "subselections$delegate",
        "Landroidx/compose/runtime/MutableState;",
        "nextSelectableId",
        "notifyPositionChange",
        "selectableId",
        "notifySelectableChange",
        "notifySelectionUpdate",
        "layoutCoordinates",
        "newPosition",
        "previousPosition",
        "isStartHandle",
        "adjustment",
        "notifySelectionUpdate-5iVPX68",
        "(Landroidx/compose/ui/layout/LayoutCoordinates;JJZLandroidx/compose/foundation/text/selection/SelectionAdjustment;)Z",
        "notifySelectionUpdateEnd",
        "notifySelectionUpdateSelectAll",
        "notifySelectionUpdateStart",
        "startPosition",
        "notifySelectionUpdateStart-d-4ec7I",
        "(Landroidx/compose/ui/layout/LayoutCoordinates;JLandroidx/compose/foundation/text/selection/SelectionAdjustment;)V",
        "sort",
        "containerLayoutCoordinates",
        "subscribe",
        "selectable",
        "unsubscribe",
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
.field private final _selectableMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Landroidx/compose/foundation/text/selection/Selectable;",
            ">;"
        }
    .end annotation
.end field

.field private final _selectables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/foundation/text/selection/Selectable;",
            ">;"
        }
    .end annotation
.end field

.field private afterSelectableUnsubscribe:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private incrementId:Ljava/util/concurrent/atomic/AtomicLong;

.field private onPositionChangeCallback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onSelectableChangeCallback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onSelectionUpdateCallback:Lkotlin/jvm/functions/Function5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function5<",
            "-",
            "Landroidx/compose/ui/layout/LayoutCoordinates;",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Landroidx/compose/foundation/text/selection/SelectionAdjustment;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private onSelectionUpdateEndCallback:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onSelectionUpdateSelectAll:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onSelectionUpdateStartCallback:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/ui/layout/LayoutCoordinates;",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "-",
            "Landroidx/compose/foundation/text/selection/SelectionAdjustment;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private sorted:Z

.field private final subselections$delegate:Landroidx/compose/runtime/MutableState;


# direct methods
.method public static synthetic $r8$lambda$AMr3i-bEfb8x5gw0hyKOXNWmC_Q(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->sort$lambda$2(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->_selectables:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->_selectableMap:Ljava/util/Map;

    .line 57
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->incrementId:Ljava/util/concurrent/atomic/AtomicLong;

    .line 99
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v1, v2, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->subselections$delegate:Landroidx/compose/runtime/MutableState;

    return-void
.end method

.method private static final sort$lambda$2(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method


# virtual methods
.method public final getAfterSelectableUnsubscribe$foundation_release()Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->afterSelectableUnsubscribe:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final getOnPositionChangeCallback$foundation_release()Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->onPositionChangeCallback:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final getOnSelectableChangeCallback$foundation_release()Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->onSelectableChangeCallback:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final getOnSelectionUpdateCallback$foundation_release()Lkotlin/jvm/functions/Function5;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function5<",
            "Landroidx/compose/ui/layout/LayoutCoordinates;",
            "Landroidx/compose/ui/geometry/Offset;",
            "Landroidx/compose/ui/geometry/Offset;",
            "Ljava/lang/Boolean;",
            "Landroidx/compose/foundation/text/selection/SelectionAdjustment;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->onSelectionUpdateCallback:Lkotlin/jvm/functions/Function5;

    return-object p0
.end method

.method public final getOnSelectionUpdateEndCallback$foundation_release()Lkotlin/jvm/functions/Function0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->onSelectionUpdateEndCallback:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final getOnSelectionUpdateSelectAll$foundation_release()Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->onSelectionUpdateSelectAll:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final getOnSelectionUpdateStartCallback$foundation_release()Lkotlin/jvm/functions/Function3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function3<",
            "Landroidx/compose/ui/layout/LayoutCoordinates;",
            "Landroidx/compose/ui/geometry/Offset;",
            "Landroidx/compose/foundation/text/selection/SelectionAdjustment;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->onSelectionUpdateStartCallback:Lkotlin/jvm/functions/Function3;

    return-object p0
.end method

.method public final getSelectableMap$foundation_release()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Landroidx/compose/foundation/text/selection/Selectable;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->_selectableMap:Ljava/util/Map;

    return-object p0
.end method

.method public final getSelectables$foundation_release()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/text/selection/Selectable;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->_selectables:Ljava/util/List;

    return-object p0
.end method

.method public final getSorted$foundation_release()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->sorted:Z

    return p0
.end method

.method public getSubselections()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Landroidx/compose/foundation/text/selection/Selection;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->subselections$delegate:Landroidx/compose/runtime/MutableState;

    .line 99
    check-cast p0, Landroidx/compose/runtime/State;

    .line 206
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method public nextSelectableId()J
    .locals 4

    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->incrementId:Ljava/util/concurrent/atomic/AtomicLong;

    .line 122
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->incrementId:Ljava/util/concurrent/atomic/AtomicLong;

    .line 124
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public notifyPositionChange(J)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->sorted:Z

    iget-object p0, p0, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->onPositionChangeCallback:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_0

    .line 167
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public notifySelectableChange(J)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->onSelectableChangeCallback:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_0

    .line 203
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public notifySelectionUpdate-5iVPX68(Landroidx/compose/ui/layout/LayoutCoordinates;JJZLandroidx/compose/foundation/text/selection/SelectionAdjustment;)Z
    .locals 7

    const-string v0, "layoutCoordinates"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adjustment"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->onSelectionUpdateCallback:Lkotlin/jvm/functions/Function5;

    if-eqz v1, :cond_0

    .line 191
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v3

    .line 192
    invoke-static {p4, p5}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v4

    .line 193
    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v2, p1

    move-object v6, p7

    .line 189
    invoke-interface/range {v1 .. v6}, Lkotlin/jvm/functions/Function5;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public notifySelectionUpdateEnd()V
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->onSelectionUpdateEndCallback:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_0

    .line 199
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public notifySelectionUpdateSelectAll(J)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->onSelectionUpdateSelectAll:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_0

    .line 179
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public notifySelectionUpdateStart-d-4ec7I(Landroidx/compose/ui/layout/LayoutCoordinates;JLandroidx/compose/foundation/text/selection/SelectionAdjustment;)V
    .locals 1

    const-string v0, "layoutCoordinates"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adjustment"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->onSelectionUpdateStartCallback:Lkotlin/jvm/functions/Function3;

    if-eqz p0, :cond_0

    .line 175
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object p2

    invoke-interface {p0, p1, p2, p4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final setAfterSelectableUnsubscribe$foundation_release(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->afterSelectableUnsubscribe:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setOnPositionChangeCallback$foundation_release(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->onPositionChangeCallback:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setOnSelectableChangeCallback$foundation_release(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->onSelectableChangeCallback:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setOnSelectionUpdateCallback$foundation_release(Lkotlin/jvm/functions/Function5;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function5<",
            "-",
            "Landroidx/compose/ui/layout/LayoutCoordinates;",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Landroidx/compose/foundation/text/selection/SelectionAdjustment;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->onSelectionUpdateCallback:Lkotlin/jvm/functions/Function5;

    return-void
.end method

.method public final setOnSelectionUpdateEndCallback$foundation_release(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->onSelectionUpdateEndCallback:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setOnSelectionUpdateSelectAll$foundation_release(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->onSelectionUpdateSelectAll:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setOnSelectionUpdateStartCallback$foundation_release(Lkotlin/jvm/functions/Function3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/ui/layout/LayoutCoordinates;",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "-",
            "Landroidx/compose/foundation/text/selection/SelectionAdjustment;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->onSelectionUpdateStartCallback:Lkotlin/jvm/functions/Function3;

    return-void
.end method

.method public final setSorted$foundation_release(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->sorted:Z

    return-void
.end method

.method public setSubselections(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Landroidx/compose/foundation/text/selection/Selection;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->subselections$delegate:Landroidx/compose/runtime/MutableState;

    .line 207
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final sort(Landroidx/compose/ui/layout/LayoutCoordinates;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/LayoutCoordinates;",
            ")",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/text/selection/Selectable;",
            ">;"
        }
    .end annotation

    const-string v0, "containerLayoutCoordinates"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->sorted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->_selectables:Ljava/util/List;

    .line 137
    new-instance v1, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl$sort$1;

    invoke-direct {v1, p1}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl$sort$1;-><init>(Landroidx/compose/ui/layout/LayoutCoordinates;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    new-instance p1, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl$$ExternalSyntheticLambda0;

    invoke-direct {p1, v1}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function2;)V

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->sorted:Z

    .line 160
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->getSelectables$foundation_release()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public subscribe(Landroidx/compose/foundation/text/selection/Selectable;)Landroidx/compose/foundation/text/selection/Selectable;
    .locals 4

    const-string/jumbo v0, "selectable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-interface {p1}, Landroidx/compose/foundation/text/selection/Selectable;->getSelectableId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->_selectableMap:Ljava/util/Map;

    .line 105
    invoke-interface {p1}, Landroidx/compose/foundation/text/selection/Selectable;->getSelectableId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->_selectableMap:Ljava/util/Map;

    .line 108
    invoke-interface {p1}, Landroidx/compose/foundation/text/selection/Selectable;->getSelectableId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->_selectables:Ljava/util/List;

    .line 109
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->sorted:Z

    return-object p1

    .line 106
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Another selectable with the id: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ".selectableId has already subscribed."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 105
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 103
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "The selectable contains an invalid id: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Landroidx/compose/foundation/text/selection/Selectable;->getSelectableId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 102
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public unsubscribe(Landroidx/compose/foundation/text/selection/Selectable;)V
    .locals 3

    const-string/jumbo v0, "selectable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->_selectableMap:Ljava/util/Map;

    .line 115
    invoke-interface {p1}, Landroidx/compose/foundation/text/selection/Selectable;->getSelectableId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->_selectables:Ljava/util/List;

    .line 116
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->_selectableMap:Ljava/util/Map;

    .line 117
    invoke-interface {p1}, Landroidx/compose/foundation/text/selection/Selectable;->getSelectableId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->afterSelectableUnsubscribe:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_1

    .line 118
    invoke-interface {p1}, Landroidx/compose/foundation/text/selection/Selectable;->getSelectableId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method
