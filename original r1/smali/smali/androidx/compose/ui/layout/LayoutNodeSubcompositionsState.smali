.class public final Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;
.super Ljava/lang/Object;
.source "SubcomposeLayout.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$IntermediateMeasureScopeImpl;,
        Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;,
        Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSubcomposeLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SubcomposeLayout.kt\nandroidx/compose/ui/layout/LayoutNodeSubcompositionsState\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 Snapshot.kt\nandroidx/compose/runtime/snapshots/Snapshot$Companion\n+ 4 Snapshot.kt\nandroidx/compose/runtime/snapshots/Snapshot\n+ 5 LayoutNode.kt\nandroidx/compose/ui/node/LayoutNode\n+ 6 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 7 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1063:1\n978#1:1085\n978#1:1099\n978#1:1115\n978#1:1120\n361#2,7:1064\n361#2,7:1071\n361#2,7:1106\n495#3,4:1078\n500#3:1091\n495#3,4:1092\n500#3:1105\n129#4,3:1082\n133#4:1090\n129#4,3:1096\n133#4:1104\n1067#5,4:1086\n1067#5,4:1100\n1067#5,4:1116\n1067#5,4:1121\n1067#5,4:1125\n1067#5,2:1129\n1069#5,2:1133\n215#6,2:1113\n1855#7,2:1131\n*S KotlinDebug\n*F\n+ 1 SubcomposeLayout.kt\nandroidx/compose/ui/layout/LayoutNodeSubcompositionsState\n*L\n692#1:1085\n760#1:1099\n966#1:1115\n972#1:1120\n648#1:1064,7\n679#1:1071,7\n901#1:1106,7\n691#1:1078,4\n691#1:1091\n744#1:1092,4\n744#1:1105\n691#1:1082,3\n691#1:1090\n744#1:1096,3\n744#1:1104\n692#1:1086,4\n760#1:1100,4\n966#1:1116,4\n972#1:1121,4\n978#1:1125,4\n981#1:1129,2\n981#1:1133,2\n957#1:1113,2\n982#1:1131,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ae\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0000\u0018\u00002\u00020\u0001:\u0003XYZB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J(\u00100\u001a\u0002012\u001d\u00102\u001a\u0019\u0012\u0004\u0012\u000203\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00150\u0012\u00a2\u0006\u0002\u0008\u0016\u00f8\u0001\u0000J\u0010\u00104\u001a\u00020\u00032\u0006\u00105\u001a\u00020\u0010H\u0002J\u0006\u00106\u001a\u000207J\u000e\u00108\u001a\u0002072\u0006\u00109\u001a\u00020\u0010J\u0006\u0010:\u001a\u000207J\u0012\u0010;\u001a\u0004\u0018\u00010\u00012\u0006\u00105\u001a\u00020\u0010H\u0002J\u0017\u0010<\u001a\u0002072\u000c\u00102\u001a\u0008\u0012\u0004\u0012\u0002070=H\u0082\u0008J\u0006\u0010>\u001a\u000207J\"\u0010?\u001a\u0002072\u0006\u0010@\u001a\u00020\u00102\u0006\u0010A\u001a\u00020\u00102\u0008\u0008\u0002\u0010B\u001a\u00020\u0010H\u0002J(\u0010C\u001a\u00020D2\u0008\u0010E\u001a\u0004\u0018\u00010\u00012\u0011\u0010F\u001a\r\u0012\u0004\u0012\u0002070=\u00a2\u0006\u0002\u0008G\u00a2\u0006\u0002\u0010HJ\u0018\u0010I\u001a\u0002072\u0006\u0010J\u001a\u00020\u00032\u0006\u0010K\u001a\u00020\"H\u0002J2\u0010I\u001a\u0002072\u0006\u0010J\u001a\u00020\u00032\u0008\u0010E\u001a\u0004\u0018\u00010\u00012\u0011\u0010F\u001a\r\u0012\u0004\u0012\u0002070=\u00a2\u0006\u0002\u0008GH\u0002\u00a2\u0006\u0002\u0010LJ.\u0010I\u001a\u0008\u0012\u0004\u0012\u00020N0M2\u0008\u0010E\u001a\u0004\u0018\u00010\u00012\u0011\u0010F\u001a\r\u0012\u0004\u0012\u0002070=\u00a2\u0006\u0002\u0008G\u00a2\u0006\u0002\u0010OJ:\u0010P\u001a\u00020Q2\u0008\u0010R\u001a\u0004\u0018\u00010Q2\u0006\u0010S\u001a\u00020\u00032\u0006\u0010T\u001a\u00020\n2\u0011\u0010U\u001a\r\u0012\u0004\u0012\u0002070=\u00a2\u0006\u0002\u0008GH\u0002\u00a2\u0006\u0002\u0010VJ\u0014\u0010W\u001a\u0004\u0018\u00010\u00032\u0008\u0010E\u001a\u0004\u0018\u00010\u0001H\u0002R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082D\u00a2\u0006\u0002\n\u0000R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R4\u0010\u0011\u001a\u0019\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00150\u0012\u00a2\u0006\u0002\u0008\u0016X\u0080\u000e\u00f8\u0001\u0000\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u0012\u0010\u001b\u001a\u00060\u001cR\u00020\u0000X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u001d\u001a\u00020\u001e8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u001fR\u001a\u0010 \u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\"0!X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010#\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0012\u0004\u0012\u00020\u00030!X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\'X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010(\u001a\u00060)R\u00020\u0000X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010*\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0012\u0004\u0012\u00020\u00030!X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u0004\u001a\u00020\u00052\u0006\u0010+\u001a\u00020\u0005@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008,\u0010-\"\u0004\u0008.\u0010/\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006["
    }
    d2 = {
        "Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;",
        "",
        "root",
        "Landroidx/compose/ui/node/LayoutNode;",
        "slotReusePolicy",
        "Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;",
        "(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;)V",
        "NoIntrinsicsMessage",
        "",
        "compositionContext",
        "Landroidx/compose/runtime/CompositionContext;",
        "getCompositionContext",
        "()Landroidx/compose/runtime/CompositionContext;",
        "setCompositionContext",
        "(Landroidx/compose/runtime/CompositionContext;)V",
        "currentIndex",
        "",
        "intermediateMeasurePolicy",
        "Lkotlin/Function2;",
        "Landroidx/compose/ui/layout/SubcomposeIntermediateMeasureScope;",
        "Landroidx/compose/ui/unit/Constraints;",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "Lkotlin/ExtensionFunctionType;",
        "getIntermediateMeasurePolicy$ui_release",
        "()Lkotlin/jvm/functions/Function2;",
        "setIntermediateMeasurePolicy$ui_release",
        "(Lkotlin/jvm/functions/Function2;)V",
        "intermediateMeasureScope",
        "Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$IntermediateMeasureScopeImpl;",
        "isInLookaheadScope",
        "",
        "()Z",
        "nodeToNodeState",
        "",
        "Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;",
        "precomposeMap",
        "precomposedCount",
        "reusableCount",
        "reusableSlotIdsSet",
        "Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy$SlotIdsSet;",
        "scope",
        "Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;",
        "slotIdToNode",
        "value",
        "getSlotReusePolicy",
        "()Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;",
        "setSlotReusePolicy",
        "(Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;)V",
        "createMeasurePolicy",
        "Landroidx/compose/ui/layout/MeasurePolicy;",
        "block",
        "Landroidx/compose/ui/layout/SubcomposeMeasureScope;",
        "createNodeAt",
        "index",
        "disposeCurrentNodes",
        "",
        "disposeOrReuseStartingFromIndex",
        "startIndex",
        "forceRecomposeChildren",
        "getSlotIdAtIndex",
        "ignoreRemeasureRequests",
        "Lkotlin/Function0;",
        "makeSureStateIsConsistent",
        "move",
        "from",
        "to",
        "count",
        "precompose",
        "Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;",
        "slotId",
        "content",
        "Landroidx/compose/runtime/Composable;",
        "(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;",
        "subcompose",
        "node",
        "nodeState",
        "(Landroidx/compose/ui/node/LayoutNode;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V",
        "",
        "Landroidx/compose/ui/layout/Measurable;",
        "(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/List;",
        "subcomposeInto",
        "Landroidx/compose/runtime/Composition;",
        "existing",
        "container",
        "parent",
        "composable",
        "(Landroidx/compose/runtime/Composition;Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/runtime/CompositionContext;Lkotlin/jvm/functions/Function2;)Landroidx/compose/runtime/Composition;",
        "takeNodeFromReusables",
        "IntermediateMeasureScopeImpl",
        "NodeState",
        "Scope",
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
.field private final NoIntrinsicsMessage:Ljava/lang/String;

.field private compositionContext:Landroidx/compose/runtime/CompositionContext;

.field private currentIndex:I

.field private intermediateMeasurePolicy:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/layout/SubcomposeIntermediateMeasureScope;",
            "-",
            "Landroidx/compose/ui/unit/Constraints;",
            "+",
            "Landroidx/compose/ui/layout/MeasureResult;",
            ">;"
        }
    .end annotation
.end field

.field private final intermediateMeasureScope:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$IntermediateMeasureScopeImpl;

.field private final nodeToNodeState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/compose/ui/node/LayoutNode;",
            "Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;",
            ">;"
        }
    .end annotation
.end field

.field private final precomposeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Landroidx/compose/ui/node/LayoutNode;",
            ">;"
        }
    .end annotation
.end field

.field private precomposedCount:I

.field private reusableCount:I

.field private final reusableSlotIdsSet:Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy$SlotIdsSet;

.field private final root:Landroidx/compose/ui/node/LayoutNode;

.field private final scope:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;

.field private final slotIdToNode:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Landroidx/compose/ui/node/LayoutNode;",
            ">;"
        }
    .end annotation
.end field

.field private slotReusePolicy:Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;)V
    .locals 1

    const-string v0, "root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "slotReusePolicy"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 585
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    iput-object p2, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->slotReusePolicy:Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;

    .line 605
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->nodeToNodeState:Ljava/util/Map;

    .line 608
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->slotIdToNode:Ljava/util/Map;

    .line 609
    new-instance p1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;

    invoke-direct {p1, p0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;-><init>(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)V

    iput-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->scope:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;

    .line 610
    new-instance p1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$IntermediateMeasureScopeImpl;

    invoke-direct {p1, p0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$IntermediateMeasureScopeImpl;-><init>(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)V

    iput-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->intermediateMeasureScope:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$IntermediateMeasureScopeImpl;

    .line 619
    sget-object p1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$intermediateMeasurePolicy$1;->INSTANCE:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$intermediateMeasurePolicy$1;

    check-cast p1, Lkotlin/jvm/functions/Function2;

    iput-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->intermediateMeasurePolicy:Lkotlin/jvm/functions/Function2;

    .line 622
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposeMap:Ljava/util/Map;

    .line 623
    new-instance p1, Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy$SlotIdsSet;

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-direct {p1, p2, v0, p2}, Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy$SlotIdsSet;-><init>(Ljava/util/Set;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->reusableSlotIdsSet:Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy$SlotIdsSet;

    const-string p1, "Asking for intrinsic measurements of SubcomposeLayout layouts is not supported. This includes components that are built on top of SubcomposeLayout, such as lazy lists, BoxWithConstraints, TabRow, etc. To mitigate this:\n- if intrinsic measurements are used to achieve \'match parent\' sizing,, consider replacing the parent of the component with a custom layout which controls the order in which children are measured, making intrinsic measurement not needed\n- adding a size modifier to the component, in order to fast return the queried intrinsic measurement."

    iput-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->NoIntrinsicsMessage:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getCurrentIndex$p(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)I
    .locals 0

    .line 585
    iget p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->currentIndex:I

    return p0
.end method

.method public static final synthetic access$getIntermediateMeasureScope$p(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$IntermediateMeasureScopeImpl;
    .locals 0

    .line 585
    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->intermediateMeasureScope:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$IntermediateMeasureScopeImpl;

    return-object p0
.end method

.method public static final synthetic access$getPrecomposeMap$p(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)Ljava/util/Map;
    .locals 0

    .line 585
    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposeMap:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$getPrecomposedCount$p(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)I
    .locals 0

    .line 585
    iget p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposedCount:I

    return p0
.end method

.method public static final synthetic access$getReusableCount$p(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)I
    .locals 0

    .line 585
    iget p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->reusableCount:I

    return p0
.end method

.method public static final synthetic access$getRoot$p(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)Landroidx/compose/ui/node/LayoutNode;
    .locals 0

    .line 585
    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    return-object p0
.end method

.method public static final synthetic access$getScope$p(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;
    .locals 0

    .line 585
    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->scope:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;

    return-object p0
.end method

.method public static final synthetic access$getSlotIdToNode$p(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)Ljava/util/Map;
    .locals 0

    .line 585
    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->slotIdToNode:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$move(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;III)V
    .locals 0

    .line 585
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->move(III)V

    return-void
.end method

.method public static final synthetic access$setCurrentIndex$p(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;I)V
    .locals 0

    .line 585
    iput p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->currentIndex:I

    return-void
.end method

.method public static final synthetic access$setPrecomposedCount$p(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;I)V
    .locals 0

    .line 585
    iput p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposedCount:I

    return-void
.end method

.method public static final synthetic access$setReusableCount$p(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;I)V
    .locals 0

    .line 585
    iput p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->reusableCount:I

    return-void
.end method

.method private final createNodeAt(I)Landroidx/compose/ui/node/LayoutNode;
    .locals 5

    .line 965
    new-instance v0, Landroidx/compose/ui/node/LayoutNode;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Landroidx/compose/ui/node/LayoutNode;-><init>(ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    .line 1116
    invoke-static {v1, v3}, Landroidx/compose/ui/node/LayoutNode;->access$setIgnoreRemeasureRequests$p(Landroidx/compose/ui/node/LayoutNode;Z)V

    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    .line 967
    invoke-virtual {p0, p1, v0}, Landroidx/compose/ui/node/LayoutNode;->insertAt$ui_release(ILandroidx/compose/ui/node/LayoutNode;)V

    .line 1118
    invoke-static {v1, v4}, Landroidx/compose/ui/node/LayoutNode;->access$setIgnoreRemeasureRequests$p(Landroidx/compose/ui/node/LayoutNode;Z)V

    return-object v0
.end method

.method private final getSlotIdAtIndex(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    .line 726
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getFoldedChildren$ui_release()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/node/LayoutNode;

    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->nodeToNodeState:Ljava/util/Map;

    .line 727
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;

    invoke-virtual {p0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->getSlotId()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final ignoreRemeasureRequests(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    const/4 v0, 0x1

    .line 1125
    invoke-static {p0, v0}, Landroidx/compose/ui/node/LayoutNode;->access$setIgnoreRemeasureRequests$p(Landroidx/compose/ui/node/LayoutNode;Z)V

    .line 1126
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    const/4 p1, 0x0

    .line 1127
    invoke-static {p0, p1}, Landroidx/compose/ui/node/LayoutNode;->access$setIgnoreRemeasureRequests$p(Landroidx/compose/ui/node/LayoutNode;Z)V

    return-void
.end method

.method private final move(III)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    const/4 v1, 0x1

    .line 1121
    invoke-static {v0, v1}, Landroidx/compose/ui/node/LayoutNode;->access$setIgnoreRemeasureRequests$p(Landroidx/compose/ui/node/LayoutNode;Z)V

    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    .line 973
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/ui/node/LayoutNode;->move$ui_release(III)V

    const/4 p0, 0x0

    .line 1123
    invoke-static {v0, p0}, Landroidx/compose/ui/node/LayoutNode;->access$setIgnoreRemeasureRequests$p(Landroidx/compose/ui/node/LayoutNode;Z)V

    return-void
.end method

.method static synthetic move$default(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;IIIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    .line 971
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->move(III)V

    return-void
.end method

.method private final subcompose(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;)V
    .locals 8

    .line 691
    sget-object v0, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .line 1079
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->createNonObservableSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v0

    .line 1082
    :try_start_0
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot;->makeCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    const/4 v3, 0x1

    .line 1086
    invoke-static {v2, v3}, Landroidx/compose/ui/node/LayoutNode;->access$setIgnoreRemeasureRequests$p(Landroidx/compose/ui/node/LayoutNode;Z)V

    .line 693
    invoke-virtual {p2}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->getContent()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    .line 695
    invoke-virtual {p2}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->getComposition()Landroidx/compose/runtime/Composition;

    move-result-object v5

    iget-object v6, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->compositionContext:Landroidx/compose/runtime/CompositionContext;

    if-eqz v6, :cond_0

    .line 701
    new-instance v7, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$subcompose$3$1$1;

    invoke-direct {v7, p2, v4}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$subcompose$3$1$1;-><init>(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;Lkotlin/jvm/functions/Function2;)V

    const v4, -0x2132aea

    invoke-static {v4, v3, v7}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v3

    check-cast v3, Lkotlin/jvm/functions/Function2;

    .line 694
    invoke-direct {p0, v5, p1, v6, v3}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->subcomposeInto(Landroidx/compose/runtime/Composition;Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/runtime/CompositionContext;Lkotlin/jvm/functions/Function2;)Landroidx/compose/runtime/Composition;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->setComposition(Landroidx/compose/runtime/Composition;)V

    const/4 p0, 0x0

    .line 1088
    invoke-static {v2, p0}, Landroidx/compose/ui/node/LayoutNode;->access$setIgnoreRemeasureRequests$p(Landroidx/compose/ui/node/LayoutNode;Z)V

    .line 706
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1090
    :try_start_2
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1091
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot;->dispose()V

    return-void

    .line 697
    :cond_0
    :try_start_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "parent composition reference not set"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p0

    .line 1090
    :try_start_4
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p0

    .line 1091
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot;->dispose()V

    throw p0
.end method

.method private final subcompose(Landroidx/compose/ui/node/LayoutNode;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/node/LayoutNode;",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->nodeToNodeState:Ljava/util/Map;

    .line 1071
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 680
    new-instance v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;

    sget-object v2, Landroidx/compose/ui/layout/ComposableSingletons$SubcomposeLayoutKt;->INSTANCE:Landroidx/compose/ui/layout/ComposableSingletons$SubcomposeLayoutKt;

    invoke-virtual {v2}, Landroidx/compose/ui/layout/ComposableSingletons$SubcomposeLayoutKt;->getLambda-1$ui_release()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, v1

    move-object v3, p2

    invoke-direct/range {v2 .. v7}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composition;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1074
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    :cond_0
    check-cast v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;

    .line 682
    invoke-virtual {v1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->getComposition()Landroidx/compose/runtime/Composition;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-interface {p2}, Landroidx/compose/runtime/Composition;->getHasInvalidations()Z

    move-result p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    .line 683
    :goto_0
    invoke-virtual {v1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->getContent()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    if-ne v0, p3, :cond_2

    if-nez p2, :cond_2

    invoke-virtual {v1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->getForceRecompose()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 684
    :cond_2
    invoke-virtual {v1, p3}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->setContent(Lkotlin/jvm/functions/Function2;)V

    .line 685
    invoke-direct {p0, p1, v1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->subcompose(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;)V

    const/4 p0, 0x0

    .line 686
    invoke-virtual {v1, p0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->setForceRecompose(Z)V

    :cond_3
    return-void
.end method

.method private final subcomposeInto(Landroidx/compose/runtime/Composition;Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/runtime/CompositionContext;Lkotlin/jvm/functions/Function2;)Landroidx/compose/runtime/Composition;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/Composition;",
            "Landroidx/compose/ui/node/LayoutNode;",
            "Landroidx/compose/runtime/CompositionContext;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/compose/runtime/Composition;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 715
    invoke-interface {p1}, Landroidx/compose/runtime/Composition;->isDisposed()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 716
    :cond_0
    invoke-static {p2, p3}, Landroidx/compose/ui/platform/Wrapper_androidKt;->createSubcomposition(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/runtime/CompositionContext;)Landroidx/compose/runtime/Composition;

    move-result-object p1

    .line 721
    :cond_1
    invoke-interface {p1, p4}, Landroidx/compose/runtime/Composition;->setContent(Lkotlin/jvm/functions/Function2;)V

    return-object p1
.end method

.method private final takeNodeFromReusables(Ljava/lang/Object;)Landroidx/compose/ui/node/LayoutNode;
    .locals 9

    iget v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->reusableCount:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    .line 800
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getFoldedChildren$ui_release()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v2, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposedCount:I

    sub-int/2addr v0, v2

    iget v2, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->reusableCount:I

    sub-int v2, v0, v2

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    move v4, v0

    :goto_0
    const/4 v5, -0x1

    if-lt v4, v2, :cond_2

    .line 806
    invoke-direct {p0, v4}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->getSlotIdAtIndex(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_2
    move v6, v5

    :goto_1
    if-ne v6, v5, :cond_5

    :goto_2
    if-lt v0, v2, :cond_4

    iget-object v4, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    .line 818
    invoke-virtual {v4}, Landroidx/compose/ui/node/LayoutNode;->getFoldedChildren$ui_release()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/node/LayoutNode;

    iget-object v7, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->nodeToNodeState:Ljava/util/Map;

    .line 819
    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v4, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;

    iget-object v7, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->slotReusePolicy:Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;

    .line 820
    invoke-virtual {v4}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->getSlotId()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, p1, v8}, Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;->areCompatible(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 821
    invoke-virtual {v4, p1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->setSlotId(Ljava/lang/Object;)V

    move v4, v0

    move v6, v4

    goto :goto_3

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_4
    move v4, v0

    :cond_5
    :goto_3
    if-ne v6, v5, :cond_6

    goto :goto_4

    :cond_6
    if-eq v4, v2, :cond_7

    .line 834
    invoke-direct {p0, v4, v2, v3}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->move(III)V

    :cond_7
    iget p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->reusableCount:I

    add-int/2addr p1, v5

    iput p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->reusableCount:I

    iget-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    .line 837
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getFoldedChildren$ui_release()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroidx/compose/ui/node/LayoutNode;

    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->nodeToNodeState:Ljava/util/Map;

    .line 838
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;

    .line 839
    invoke-virtual {p0, v3}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->setActive(Z)V

    .line 840
    invoke-virtual {p0, v3}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->setForceRecompose(Z)V

    .line 841
    sget-object p0, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->sendApplyNotifications()V

    :goto_4
    return-object v1
.end method


# virtual methods
.method public final createMeasurePolicy(Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/layout/MeasurePolicy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/layout/SubcomposeMeasureScope;",
            "-",
            "Landroidx/compose/ui/unit/Constraints;",
            "+",
            "Landroidx/compose/ui/layout/MeasureResult;",
            ">;)",
            "Landroidx/compose/ui/layout/MeasurePolicy;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->intermediateMeasureScope:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$IntermediateMeasureScopeImpl;

    .line 849
    invoke-virtual {v0, p1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$IntermediateMeasureScopeImpl;->setLookaheadMeasurePolicy(Lkotlin/jvm/functions/Function2;)V

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->NoIntrinsicsMessage:Ljava/lang/String;

    .line 850
    new-instance v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasurePolicy$1;

    invoke-direct {v1, p0, p1, v0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasurePolicy$1;-><init>(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;Lkotlin/jvm/functions/Function2;Ljava/lang/String;)V

    check-cast v1, Landroidx/compose/ui/layout/MeasurePolicy;

    return-object v1
.end method

.method public final disposeCurrentNodes()V
    .locals 3

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    const/4 v1, 0x1

    .line 1129
    invoke-static {v0, v1}, Landroidx/compose/ui/node/LayoutNode;->access$setIgnoreRemeasureRequests$p(Landroidx/compose/ui/node/LayoutNode;Z)V

    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->nodeToNodeState:Ljava/util/Map;

    .line 982
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 1131
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;

    .line 983
    invoke-virtual {v2}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->getComposition()Landroidx/compose/runtime/Composition;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroidx/compose/runtime/Composition;->dispose()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    .line 985
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->removeAll$ui_release()V

    const/4 v1, 0x0

    .line 1133
    invoke-static {v0, v1}, Landroidx/compose/ui/node/LayoutNode;->access$setIgnoreRemeasureRequests$p(Landroidx/compose/ui/node/LayoutNode;Z)V

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->nodeToNodeState:Ljava/util/Map;

    .line 987
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->slotIdToNode:Ljava/util/Map;

    .line 988
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iput v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposedCount:I

    iput v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->reusableCount:I

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposeMap:Ljava/util/Map;

    .line 991
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 992
    invoke-virtual {p0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->makeSureStateIsConsistent()V

    return-void
.end method

.method public final disposeOrReuseStartingFromIndex(I)V
    .locals 11

    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->reusableCount:I

    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    .line 732
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getFoldedChildren$ui_release()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposedCount:I

    sub-int/2addr v1, v2

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-gt p1, v1, :cond_6

    iget-object v3, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->reusableSlotIdsSet:Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy$SlotIdsSet;

    .line 736
    invoke-virtual {v3}, Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy$SlotIdsSet;->clear()V

    if-gt p1, v1, :cond_0

    move v3, p1

    :goto_0
    iget-object v4, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->reusableSlotIdsSet:Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy$SlotIdsSet;

    .line 738
    invoke-direct {p0, v3}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->getSlotIdAtIndex(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy$SlotIdsSet;->add$ui_release(Ljava/lang/Object;)Z

    if-eq v3, v1, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->slotReusePolicy:Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;

    iget-object v4, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->reusableSlotIdsSet:Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy$SlotIdsSet;

    .line 741
    invoke-interface {v3, v4}, Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;->getSlotsToRetain(Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy$SlotIdsSet;)V

    .line 744
    sget-object v3, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .line 1093
    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->createNonObservableSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v3

    .line 1096
    :try_start_0
    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/Snapshot;->makeCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v5, v0

    :goto_1
    if-lt v1, p1, :cond_5

    :try_start_1
    iget-object v6, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    .line 746
    invoke-virtual {v6}, Landroidx/compose/ui/node/LayoutNode;->getFoldedChildren$ui_release()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/node/LayoutNode;

    iget-object v7, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->nodeToNodeState:Ljava/util/Map;

    .line 747
    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v7, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;

    .line 748
    invoke-virtual {v7}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->getSlotId()Ljava/lang/Object;

    move-result-object v8

    iget-object v9, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->reusableSlotIdsSet:Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy$SlotIdsSet;

    .line 749
    invoke-virtual {v9, v8}, Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy$SlotIdsSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 750
    invoke-virtual {v6}, Landroidx/compose/ui/node/LayoutNode;->getMeasurePassDelegate$ui_release()Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;

    move-result-object v9

    sget-object v10, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->NotUsed:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    invoke-virtual {v9, v10}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;->setMeasuredByParent$ui_release(Landroidx/compose/ui/node/LayoutNode$UsageByParent;)V

    .line 751
    invoke-virtual {v6}, Landroidx/compose/ui/node/LayoutNode;->getLookaheadPassDelegate$ui_release()Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$LookaheadPassDelegate;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 752
    sget-object v9, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->NotUsed:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    invoke-virtual {v6, v9}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$LookaheadPassDelegate;->setMeasuredByParent$ui_release(Landroidx/compose/ui/node/LayoutNode$UsageByParent;)V

    :cond_1
    iget v6, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->reusableCount:I

    add-int/2addr v6, v2

    iput v6, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->reusableCount:I

    .line 755
    invoke-virtual {v7}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->getActive()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 756
    invoke-virtual {v7, v0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->setActive(Z)V

    move v5, v2

    goto :goto_2

    :cond_2
    iget-object v9, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    .line 1100
    invoke-static {v9, v2}, Landroidx/compose/ui/node/LayoutNode;->access$setIgnoreRemeasureRequests$p(Landroidx/compose/ui/node/LayoutNode;Z)V

    iget-object v10, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->nodeToNodeState:Ljava/util/Map;

    .line 761
    invoke-interface {v10, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 762
    invoke-virtual {v7}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->getComposition()Landroidx/compose/runtime/Composition;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroidx/compose/runtime/Composition;->dispose()V

    :cond_3
    iget-object v6, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    .line 763
    invoke-virtual {v6, v1, v2}, Landroidx/compose/ui/node/LayoutNode;->removeAt$ui_release(II)V

    .line 1102
    invoke-static {v9, v0}, Landroidx/compose/ui/node/LayoutNode;->access$setIgnoreRemeasureRequests$p(Landroidx/compose/ui/node/LayoutNode;Z)V

    :cond_4
    :goto_2
    iget-object v6, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->slotIdToNode:Ljava/util/Map;

    .line 767
    invoke-interface {v6, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 770
    :cond_5
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1104
    :try_start_2
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1105
    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/Snapshot;->dispose()V

    if-eqz v5, :cond_6

    .line 773
    sget-object p1, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->sendApplyNotifications()V

    goto :goto_3

    :catchall_0
    move-exception p0

    .line 1104
    :try_start_3
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    .line 1105
    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/Snapshot;->dispose()V

    throw p0

    .line 776
    :cond_6
    :goto_3
    invoke-virtual {p0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->makeSureStateIsConsistent()V

    return-void
.end method

.method public final forceRecomposeChildren()V
    .locals 3

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->nodeToNodeState:Ljava/util/Map;

    .line 1113
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 957
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;

    const/4 v2, 0x1

    .line 958
    invoke-virtual {v1, v2}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->setForceRecompose(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    .line 960
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getMeasurePending$ui_release()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 961
    invoke-static {p0, v2, v2, v0, v1}, Landroidx/compose/ui/node/LayoutNode;->requestRemeasure$ui_release$default(Landroidx/compose/ui/node/LayoutNode;ZZILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final getCompositionContext()Landroidx/compose/runtime/CompositionContext;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->compositionContext:Landroidx/compose/runtime/CompositionContext;

    return-object p0
.end method

.method public final getIntermediateMeasurePolicy$ui_release()Lkotlin/jvm/functions/Function2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/ui/layout/SubcomposeIntermediateMeasureScope;",
            "Landroidx/compose/ui/unit/Constraints;",
            "Landroidx/compose/ui/layout/MeasureResult;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->intermediateMeasurePolicy:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method public final getSlotReusePolicy()Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->slotReusePolicy:Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;

    return-object p0
.end method

.method public final isInLookaheadScope()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    .line 602
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getLookaheadRoot$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final makeSureStateIsConsistent()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->nodeToNodeState:Ljava/util/Map;

    .line 780
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getFoldedChildren$ui_release()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    .line 786
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getFoldedChildren$ui_release()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->reusableCount:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposedCount:I

    sub-int/2addr v0, v1

    if-ltz v0, :cond_1

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposeMap:Ljava/util/Map;

    .line 790
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposedCount:I

    if-ne v0, v1, :cond_0

    return-void

    .line 791
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Incorrect state. Precomposed children "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Map size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposeMap:Ljava/util/Map;

    .line 792
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    .line 791
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 790
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 787
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Incorrect state. Total children "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getFoldedChildren$ui_release()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Reusable children "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->reusableCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Precomposed children "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposedCount:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 786
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 781
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Inconsistency between the count of nodes tracked by the state ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->nodeToNodeState:Ljava/util/Map;

    .line 782
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    .line 781
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") and the children count on the SubcomposeLayout ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    .line 783
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getFoldedChildren$ui_release()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    .line 781
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "). Are you trying to use the state of the disposed SubcomposeLayout?"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 780
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final precompose(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;"
        }
    .end annotation

    const-string v0, "content"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 899
    invoke-virtual {p0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->makeSureStateIsConsistent()V

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->slotIdToNode:Ljava/util/Map;

    .line 900
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposeMap:Ljava/util/Map;

    .line 1106
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 902
    invoke-direct {p0, p1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->takeNodeFromReusables(Ljava/lang/Object;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v3, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    .line 905
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->getFoldedChildren$ui_release()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    iget-object v4, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    .line 906
    invoke-virtual {v4}, Landroidx/compose/ui/node/LayoutNode;->getFoldedChildren$ui_release()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {p0, v3, v4, v2}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->move(III)V

    iget v3, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposedCount:I

    add-int/2addr v3, v2

    iput v3, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposedCount:I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    .line 910
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getFoldedChildren$ui_release()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p0, v1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->createNodeAt(I)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    iget v3, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposedCount:I

    add-int/2addr v3, v2

    iput v3, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposedCount:I

    .line 1109
    :goto_0
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 901
    :cond_1
    check-cast v1, Landroidx/compose/ui/node/LayoutNode;

    .line 915
    invoke-direct {p0, v1, p1, p2}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->subcompose(Landroidx/compose/ui/node/LayoutNode;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 917
    :cond_2
    new-instance p2, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precompose$1;

    invoke-direct {p2, p0, p1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precompose$1;-><init>(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;Ljava/lang/Object;)V

    check-cast p2, Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;

    return-object p2
.end method

.method public final setCompositionContext(Landroidx/compose/runtime/CompositionContext;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->compositionContext:Landroidx/compose/runtime/CompositionContext;

    return-void
.end method

.method public final setIntermediateMeasurePolicy$ui_release(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/layout/SubcomposeIntermediateMeasureScope;",
            "-",
            "Landroidx/compose/ui/unit/Constraints;",
            "+",
            "Landroidx/compose/ui/layout/MeasureResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->intermediateMeasurePolicy:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public final setSlotReusePolicy(Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;)V
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->slotReusePolicy:Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->slotReusePolicy:Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;

    const/4 p1, 0x0

    .line 597
    invoke-virtual {p0, p1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->disposeOrReuseStartingFromIndex(I)V

    :cond_0
    return-void
.end method

.method public final subcompose(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/compose/ui/layout/Measurable;",
            ">;"
        }
    .end annotation

    const-string v0, "content"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 638
    invoke-virtual {p0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->makeSureStateIsConsistent()V

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    .line 639
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getLayoutState$ui_release()Landroidx/compose/ui/node/LayoutNode$LayoutState;

    move-result-object v0

    .line 641
    sget-object v1, Landroidx/compose/ui/node/LayoutNode$LayoutState;->Measuring:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    if-eq v0, v1, :cond_1

    sget-object v1, Landroidx/compose/ui/node/LayoutNode$LayoutState;->LayingOut:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    if-eq v0, v1, :cond_1

    .line 642
    sget-object v1, Landroidx/compose/ui/node/LayoutNode$LayoutState;->LookaheadMeasuring:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    if-eq v0, v1, :cond_1

    .line 643
    sget-object v1, Landroidx/compose/ui/node/LayoutNode$LayoutState;->LookaheadLayingOut:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 640
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "subcompose can only be used inside the measure or layout blocks"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->slotIdToNode:Ljava/util/Map;

    .line 1064
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_5

    iget-object v2, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposeMap:Ljava/util/Map;

    .line 649
    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/node/LayoutNode;

    if-eqz v2, :cond_3

    iget v3, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposedCount:I

    if-lez v3, :cond_2

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposedCount:I

    goto :goto_1

    .line 651
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Check failed."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 655
    :cond_3
    invoke-direct {p0, p1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->takeNodeFromReusables(Ljava/lang/Object;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v2

    if-nez v2, :cond_4

    iget v2, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->currentIndex:I

    invoke-direct {p0, v2}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->createNodeAt(I)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v2

    .line 1067
    :cond_4
    :goto_1
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    :cond_5
    check-cast v2, Landroidx/compose/ui/node/LayoutNode;

    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    .line 659
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getFoldedChildren$ui_release()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    iget v5, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->currentIndex:I

    if-lt v4, v5, :cond_9

    if-eq v5, v4, :cond_6

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v3, p0

    .line 665
    invoke-static/range {v3 .. v8}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->move$default(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;IIIILjava/lang/Object;)V

    :cond_6
    iget v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->currentIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->currentIndex:I

    .line 669
    invoke-direct {p0, v2, p1, p2}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->subcompose(Landroidx/compose/ui/node/LayoutNode;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 671
    sget-object p0, Landroidx/compose/ui/node/LayoutNode$LayoutState;->Measuring:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    if-eq v0, p0, :cond_8

    sget-object p0, Landroidx/compose/ui/node/LayoutNode$LayoutState;->LayingOut:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    if-ne v0, p0, :cond_7

    goto :goto_2

    .line 674
    :cond_7
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->getChildLookaheadMeasurables$ui_release()Ljava/util/List;

    move-result-object p0

    goto :goto_3

    .line 672
    :cond_8
    :goto_2
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->getChildMeasurables$ui_release()Ljava/util/List;

    move-result-object p0

    :goto_3
    return-object p0

    .line 661
    :cond_9
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Key \""

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\" was already used. If you are using LazyColumn/Row please make sure you provide a unique key for each item."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 660
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
