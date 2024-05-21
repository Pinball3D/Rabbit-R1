package androidx.compose.ui.layout;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.Composition;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutNodeSubcompositionsState;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.layout.SubcomposeLayoutState;
import androidx.compose.ui.layout.SubcomposeSlotReusePolicy;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.LayoutNodeKt;
import androidx.compose.ui.node.LayoutNodeLayoutDelegate;
import androidx.compose.ui.platform.Wrapper_androidKt;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.DpRect;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.LayoutDirection;
import io.flutter.plugin.editing.SpellCheckPlugin;
import io.sentry.protocol.MetricSummary;
import io.sentry.protocol.ViewHierarchyNode;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SubcomposeLayout.kt */
@Metadata(d1 = {"\u0000®\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\b\u0000\u0018\u00002\u00020\u0001:\u0003XYZB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J(\u00100\u001a\u0002012\u001d\u00102\u001a\u0019\u0012\u0004\u0012\u000203\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00150\u0012¢\u0006\u0002\b\u0016ø\u0001\u0000J\u0010\u00104\u001a\u00020\u00032\u0006\u00105\u001a\u00020\u0010H\u0002J\u0006\u00106\u001a\u000207J\u000e\u00108\u001a\u0002072\u0006\u00109\u001a\u00020\u0010J\u0006\u0010:\u001a\u000207J\u0012\u0010;\u001a\u0004\u0018\u00010\u00012\u0006\u00105\u001a\u00020\u0010H\u0002J\u0017\u0010<\u001a\u0002072\f\u00102\u001a\b\u0012\u0004\u0012\u0002070=H\u0082\bJ\u0006\u0010>\u001a\u000207J\"\u0010?\u001a\u0002072\u0006\u0010@\u001a\u00020\u00102\u0006\u0010A\u001a\u00020\u00102\b\b\u0002\u0010B\u001a\u00020\u0010H\u0002J(\u0010C\u001a\u00020D2\b\u0010E\u001a\u0004\u0018\u00010\u00012\u0011\u0010F\u001a\r\u0012\u0004\u0012\u0002070=¢\u0006\u0002\bG¢\u0006\u0002\u0010HJ\u0018\u0010I\u001a\u0002072\u0006\u0010J\u001a\u00020\u00032\u0006\u0010K\u001a\u00020\"H\u0002J2\u0010I\u001a\u0002072\u0006\u0010J\u001a\u00020\u00032\b\u0010E\u001a\u0004\u0018\u00010\u00012\u0011\u0010F\u001a\r\u0012\u0004\u0012\u0002070=¢\u0006\u0002\bGH\u0002¢\u0006\u0002\u0010LJ.\u0010I\u001a\b\u0012\u0004\u0012\u00020N0M2\b\u0010E\u001a\u0004\u0018\u00010\u00012\u0011\u0010F\u001a\r\u0012\u0004\u0012\u0002070=¢\u0006\u0002\bG¢\u0006\u0002\u0010OJ:\u0010P\u001a\u00020Q2\b\u0010R\u001a\u0004\u0018\u00010Q2\u0006\u0010S\u001a\u00020\u00032\u0006\u0010T\u001a\u00020\n2\u0011\u0010U\u001a\r\u0012\u0004\u0012\u0002070=¢\u0006\u0002\bGH\u0002¢\u0006\u0002\u0010VJ\u0014\u0010W\u001a\u0004\u0018\u00010\u00032\b\u0010E\u001a\u0004\u0018\u00010\u0001H\u0002R\u000e\u0010\u0007\u001a\u00020\bX\u0082D¢\u0006\u0002\n\u0000R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R4\u0010\u0011\u001a\u0019\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00150\u0012¢\u0006\u0002\b\u0016X\u0080\u000eø\u0001\u0000¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u0012\u0010\u001b\u001a\u00060\u001cR\u00020\u0000X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u001d\u001a\u00020\u001e8F¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001fR\u001a\u0010 \u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\"0!X\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010#\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0012\u0004\u0012\u00020\u00030!X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020'X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0012\u0010(\u001a\u00060)R\u00020\u0000X\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010*\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0012\u0004\u0012\u00020\u00030!X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u0004\u001a\u00020\u00052\u0006\u0010+\u001a\u00020\u0005@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006["}, d2 = {"Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;", "", "root", "Landroidx/compose/ui/node/LayoutNode;", "slotReusePolicy", "Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;", "(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;)V", "NoIntrinsicsMessage", "", "compositionContext", "Landroidx/compose/runtime/CompositionContext;", "getCompositionContext", "()Landroidx/compose/runtime/CompositionContext;", "setCompositionContext", "(Landroidx/compose/runtime/CompositionContext;)V", "currentIndex", "", "intermediateMeasurePolicy", "Lkotlin/Function2;", "Landroidx/compose/ui/layout/SubcomposeIntermediateMeasureScope;", "Landroidx/compose/ui/unit/Constraints;", "Landroidx/compose/ui/layout/MeasureResult;", "Lkotlin/ExtensionFunctionType;", "getIntermediateMeasurePolicy$ui_release", "()Lkotlin/jvm/functions/Function2;", "setIntermediateMeasurePolicy$ui_release", "(Lkotlin/jvm/functions/Function2;)V", "intermediateMeasureScope", "Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$IntermediateMeasureScopeImpl;", "isInLookaheadScope", "", "()Z", "nodeToNodeState", "", "Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;", "precomposeMap", "precomposedCount", "reusableCount", "reusableSlotIdsSet", "Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy$SlotIdsSet;", "scope", "Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;", "slotIdToNode", "value", "getSlotReusePolicy", "()Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;", "setSlotReusePolicy", "(Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;)V", "createMeasurePolicy", "Landroidx/compose/ui/layout/MeasurePolicy;", "block", "Landroidx/compose/ui/layout/SubcomposeMeasureScope;", "createNodeAt", "index", "disposeCurrentNodes", "", "disposeOrReuseStartingFromIndex", SpellCheckPlugin.START_INDEX_KEY, "forceRecomposeChildren", "getSlotIdAtIndex", "ignoreRemeasureRequests", "Lkotlin/Function0;", "makeSureStateIsConsistent", "move", "from", "to", MetricSummary.JsonKeys.COUNT, "precompose", "Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;", "slotId", "content", "Landroidx/compose/runtime/Composable;", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;", "subcompose", "node", "nodeState", "(Landroidx/compose/ui/node/LayoutNode;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V", "", "Landroidx/compose/ui/layout/Measurable;", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/List;", "subcomposeInto", "Landroidx/compose/runtime/Composition;", "existing", "container", "parent", "composable", "(Landroidx/compose/runtime/Composition;Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/runtime/CompositionContext;Lkotlin/jvm/functions/Function2;)Landroidx/compose/runtime/Composition;", "takeNodeFromReusables", "IntermediateMeasureScopeImpl", "NodeState", "Scope", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class LayoutNodeSubcompositionsState {
    private final String NoIntrinsicsMessage;
    private CompositionContext compositionContext;
    private int currentIndex;
    private Function2<? super SubcomposeIntermediateMeasureScope, ? super Constraints, ? extends MeasureResult> intermediateMeasurePolicy;
    private final IntermediateMeasureScopeImpl intermediateMeasureScope;
    private final Map<LayoutNode, NodeState> nodeToNodeState;
    private final Map<Object, LayoutNode> precomposeMap;
    private int precomposedCount;
    private int reusableCount;
    private final SubcomposeSlotReusePolicy.SlotIdsSet reusableSlotIdsSet;
    private final LayoutNode root;
    private final Scope scope;
    private final Map<Object, LayoutNode> slotIdToNode;
    private SubcomposeSlotReusePolicy slotReusePolicy;

    public final CompositionContext getCompositionContext() {
        return this.compositionContext;
    }

    public final Function2<SubcomposeIntermediateMeasureScope, Constraints, MeasureResult> getIntermediateMeasurePolicy$ui_release() {
        return this.intermediateMeasurePolicy;
    }

    public final SubcomposeSlotReusePolicy getSlotReusePolicy() {
        return this.slotReusePolicy;
    }

    public final void setCompositionContext(CompositionContext compositionContext) {
        this.compositionContext = compositionContext;
    }

    public final void setIntermediateMeasurePolicy$ui_release(Function2<? super SubcomposeIntermediateMeasureScope, ? super Constraints, ? extends MeasureResult> function2) {
        Intrinsics.checkNotNullParameter(function2, "<set-?>");
        this.intermediateMeasurePolicy = function2;
    }

    public LayoutNodeSubcompositionsState(LayoutNode root, SubcomposeSlotReusePolicy slotReusePolicy) {
        Intrinsics.checkNotNullParameter(root, "root");
        Intrinsics.checkNotNullParameter(slotReusePolicy, "slotReusePolicy");
        this.root = root;
        this.slotReusePolicy = slotReusePolicy;
        this.nodeToNodeState = new LinkedHashMap();
        this.slotIdToNode = new LinkedHashMap();
        this.scope = new Scope();
        this.intermediateMeasureScope = new IntermediateMeasureScopeImpl();
        this.intermediateMeasurePolicy = new Function2<SubcomposeIntermediateMeasureScope, Constraints, MeasureResult>() { // from class: androidx.compose.ui.layout.LayoutNodeSubcompositionsState$intermediateMeasurePolicy$1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ MeasureResult invoke(SubcomposeIntermediateMeasureScope subcomposeIntermediateMeasureScope, Constraints constraints) {
                return m3896invoke0kLqBqw(subcomposeIntermediateMeasureScope, constraints.getValue());
            }

            /* renamed from: invoke-0kLqBqw, reason: not valid java name */
            public final MeasureResult m3896invoke0kLqBqw(SubcomposeIntermediateMeasureScope subcomposeIntermediateMeasureScope, long j) {
                Intrinsics.checkNotNullParameter(subcomposeIntermediateMeasureScope, "$this$null");
                return subcomposeIntermediateMeasureScope.getLookaheadMeasurePolicy().invoke(subcomposeIntermediateMeasureScope, Constraints.m4827boximpl(j));
            }
        };
        this.precomposeMap = new LinkedHashMap();
        this.reusableSlotIdsSet = new SubcomposeSlotReusePolicy.SlotIdsSet(null, 1, null);
        this.NoIntrinsicsMessage = "Asking for intrinsic measurements of SubcomposeLayout layouts is not supported. This includes components that are built on top of SubcomposeLayout, such as lazy lists, BoxWithConstraints, TabRow, etc. To mitigate this:\n- if intrinsic measurements are used to achieve 'match parent' sizing,, consider replacing the parent of the component with a custom layout which controls the order in which children are measured, making intrinsic measurement not needed\n- adding a size modifier to the component, in order to fast return the queried intrinsic measurement.";
    }

    public final void setSlotReusePolicy(SubcomposeSlotReusePolicy value) {
        Intrinsics.checkNotNullParameter(value, "value");
        if (this.slotReusePolicy != value) {
            this.slotReusePolicy = value;
            disposeOrReuseStartingFromIndex(0);
        }
    }

    public final boolean isInLookaheadScope() {
        return this.root.getLookaheadRoot() != null;
    }

    public final List<Measurable> subcompose(Object slotId, Function2<? super Composer, ? super Integer, Unit> content) {
        Intrinsics.checkNotNullParameter(content, "content");
        makeSureStateIsConsistent();
        LayoutNode.LayoutState layoutState$ui_release = this.root.getLayoutState$ui_release();
        if (layoutState$ui_release != LayoutNode.LayoutState.Measuring && layoutState$ui_release != LayoutNode.LayoutState.LayingOut && layoutState$ui_release != LayoutNode.LayoutState.LookaheadMeasuring && layoutState$ui_release != LayoutNode.LayoutState.LookaheadLayingOut) {
            throw new IllegalStateException("subcompose can only be used inside the measure or layout blocks".toString());
        }
        Map<Object, LayoutNode> map = this.slotIdToNode;
        LayoutNode layoutNode = map.get(slotId);
        if (layoutNode == null) {
            layoutNode = this.precomposeMap.remove(slotId);
            if (layoutNode != null) {
                int i = this.precomposedCount;
                if (i <= 0) {
                    throw new IllegalStateException("Check failed.".toString());
                }
                this.precomposedCount = i - 1;
            } else {
                layoutNode = takeNodeFromReusables(slotId);
                if (layoutNode == null) {
                    layoutNode = createNodeAt(this.currentIndex);
                }
            }
            map.put(slotId, layoutNode);
        }
        LayoutNode layoutNode2 = layoutNode;
        int indexOf = this.root.getFoldedChildren$ui_release().indexOf(layoutNode2);
        int i2 = this.currentIndex;
        if (indexOf < i2) {
            throw new IllegalArgumentException(("Key \"" + slotId + "\" was already used. If you are using LazyColumn/Row please make sure you provide a unique key for each item.").toString());
        }
        if (i2 != indexOf) {
            move$default(this, indexOf, i2, 0, 4, null);
        }
        this.currentIndex++;
        subcompose(layoutNode2, slotId, content);
        if (layoutState$ui_release == LayoutNode.LayoutState.Measuring || layoutState$ui_release == LayoutNode.LayoutState.LayingOut) {
            return layoutNode2.getChildMeasurables$ui_release();
        }
        return layoutNode2.getChildLookaheadMeasurables$ui_release();
    }

    private final void subcompose(LayoutNode node, final NodeState nodeState) {
        Snapshot createNonObservableSnapshot = Snapshot.INSTANCE.createNonObservableSnapshot();
        try {
            Snapshot makeCurrent = createNonObservableSnapshot.makeCurrent();
            try {
                LayoutNode layoutNode = this.root;
                layoutNode.ignoreRemeasureRequests = true;
                final Function2<Composer, Integer, Unit> content = nodeState.getContent();
                Composition composition = nodeState.getComposition();
                CompositionContext compositionContext = this.compositionContext;
                if (compositionContext != null) {
                    nodeState.setComposition(subcomposeInto(composition, node, compositionContext, ComposableLambdaKt.composableLambdaInstance(-34810602, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.ui.layout.LayoutNodeSubcompositionsState$subcompose$3$1$1
                        /* JADX INFO: Access modifiers changed from: package-private */
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        /* JADX WARN: Multi-variable type inference failed */
                        {
                            super(2);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                            invoke(composer, num.intValue());
                            return Unit.INSTANCE;
                        }

                        public final void invoke(Composer composer, int i) {
                            ComposerKt.sourceInformation(composer, "C701@32613L46:SubcomposeLayout.kt#80mrfh");
                            if ((i & 11) == 2 && composer.getSkipping()) {
                                composer.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-34810602, i, -1, "androidx.compose.ui.layout.LayoutNodeSubcompositionsState.subcompose.<anonymous>.<anonymous>.<anonymous> (SubcomposeLayout.kt:700)");
                            }
                            boolean active = LayoutNodeSubcompositionsState.NodeState.this.getActive();
                            Function2<Composer, Integer, Unit> function2 = content;
                            composer.startReusableGroup(ComposerKt.reuseKey, Boolean.valueOf(active));
                            boolean changed = composer.changed(active);
                            if (active) {
                                function2.invoke(composer, 0);
                            } else {
                                composer.deactivateToEndGroup(changed);
                            }
                            composer.endReusableGroup();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }
                    })));
                    layoutNode.ignoreRemeasureRequests = false;
                    Unit unit = Unit.INSTANCE;
                    return;
                }
                throw new IllegalStateException("parent composition reference not set".toString());
            } finally {
                createNonObservableSnapshot.restoreCurrent(makeCurrent);
            }
        } finally {
            createNonObservableSnapshot.dispose();
        }
    }

    private final Composition subcomposeInto(Composition existing, LayoutNode container, CompositionContext parent, Function2<? super Composer, ? super Integer, Unit> composable) {
        if (existing == null || existing.getDisposed()) {
            existing = Wrapper_androidKt.createSubcomposition(container, parent);
        }
        existing.setContent(composable);
        return existing;
    }

    private final Object getSlotIdAtIndex(int index) {
        NodeState nodeState = this.nodeToNodeState.get(this.root.getFoldedChildren$ui_release().get(index));
        Intrinsics.checkNotNull(nodeState);
        return nodeState.getSlotId();
    }

    public final void disposeOrReuseStartingFromIndex(int startIndex) {
        this.reusableCount = 0;
        int size = (this.root.getFoldedChildren$ui_release().size() - this.precomposedCount) - 1;
        if (startIndex <= size) {
            this.reusableSlotIdsSet.clear();
            if (startIndex <= size) {
                int i = startIndex;
                while (true) {
                    this.reusableSlotIdsSet.add(getSlotIdAtIndex(i));
                    if (i == size) {
                        break;
                    } else {
                        i++;
                    }
                }
            }
            this.slotReusePolicy.getSlotsToRetain(this.reusableSlotIdsSet);
            Snapshot createNonObservableSnapshot = Snapshot.INSTANCE.createNonObservableSnapshot();
            try {
                Snapshot makeCurrent = createNonObservableSnapshot.makeCurrent();
                boolean z = false;
                while (size >= startIndex) {
                    try {
                        LayoutNode layoutNode = this.root.getFoldedChildren$ui_release().get(size);
                        NodeState nodeState = this.nodeToNodeState.get(layoutNode);
                        Intrinsics.checkNotNull(nodeState);
                        NodeState nodeState2 = nodeState;
                        Object slotId = nodeState2.getSlotId();
                        if (!this.reusableSlotIdsSet.contains(slotId)) {
                            LayoutNode layoutNode2 = this.root;
                            layoutNode2.ignoreRemeasureRequests = true;
                            this.nodeToNodeState.remove(layoutNode);
                            Composition composition = nodeState2.getComposition();
                            if (composition != null) {
                                composition.dispose();
                            }
                            this.root.removeAt$ui_release(size, 1);
                            layoutNode2.ignoreRemeasureRequests = false;
                        } else {
                            layoutNode.getMeasurePassDelegate$ui_release().setMeasuredByParent$ui_release(LayoutNode.UsageByParent.NotUsed);
                            LayoutNodeLayoutDelegate.LookaheadPassDelegate lookaheadPassDelegate$ui_release = layoutNode.getLookaheadPassDelegate$ui_release();
                            if (lookaheadPassDelegate$ui_release != null) {
                                lookaheadPassDelegate$ui_release.setMeasuredByParent$ui_release(LayoutNode.UsageByParent.NotUsed);
                            }
                            this.reusableCount++;
                            if (nodeState2.getActive()) {
                                nodeState2.setActive(false);
                                z = true;
                            }
                        }
                        this.slotIdToNode.remove(slotId);
                        size--;
                    } finally {
                        createNonObservableSnapshot.restoreCurrent(makeCurrent);
                    }
                }
                Unit unit = Unit.INSTANCE;
                if (z) {
                    Snapshot.INSTANCE.sendApplyNotifications();
                }
            } finally {
                createNonObservableSnapshot.dispose();
            }
        }
        makeSureStateIsConsistent();
    }

    public final void makeSureStateIsConsistent() {
        if (this.nodeToNodeState.size() != this.root.getFoldedChildren$ui_release().size()) {
            throw new IllegalArgumentException(("Inconsistency between the count of nodes tracked by the state (" + this.nodeToNodeState.size() + ") and the children count on the SubcomposeLayout (" + this.root.getFoldedChildren$ui_release().size() + "). Are you trying to use the state of the disposed SubcomposeLayout?").toString());
        }
        if ((this.root.getFoldedChildren$ui_release().size() - this.reusableCount) - this.precomposedCount < 0) {
            throw new IllegalArgumentException(("Incorrect state. Total children " + this.root.getFoldedChildren$ui_release().size() + ". Reusable children " + this.reusableCount + ". Precomposed children " + this.precomposedCount).toString());
        }
        if (this.precomposeMap.size() != this.precomposedCount) {
            throw new IllegalArgumentException(("Incorrect state. Precomposed children " + this.precomposedCount + ". Map size " + this.precomposeMap.size()).toString());
        }
    }

    private final LayoutNode takeNodeFromReusables(Object slotId) {
        int i;
        if (this.reusableCount == 0) {
            return null;
        }
        int size = this.root.getFoldedChildren$ui_release().size() - this.precomposedCount;
        int i2 = size - this.reusableCount;
        int i3 = size - 1;
        int i4 = i3;
        while (true) {
            if (i4 < i2) {
                i = -1;
                break;
            }
            if (Intrinsics.areEqual(getSlotIdAtIndex(i4), slotId)) {
                i = i4;
                break;
            }
            i4--;
        }
        if (i == -1) {
            while (true) {
                if (i3 < i2) {
                    i4 = i3;
                    break;
                }
                NodeState nodeState = this.nodeToNodeState.get(this.root.getFoldedChildren$ui_release().get(i3));
                Intrinsics.checkNotNull(nodeState);
                NodeState nodeState2 = nodeState;
                if (this.slotReusePolicy.areCompatible(slotId, nodeState2.getSlotId())) {
                    nodeState2.setSlotId(slotId);
                    i4 = i3;
                    i = i4;
                    break;
                }
                i3--;
            }
        }
        if (i == -1) {
            return null;
        }
        if (i4 != i2) {
            move(i4, i2, 1);
        }
        this.reusableCount--;
        LayoutNode layoutNode = this.root.getFoldedChildren$ui_release().get(i2);
        NodeState nodeState3 = this.nodeToNodeState.get(layoutNode);
        Intrinsics.checkNotNull(nodeState3);
        NodeState nodeState4 = nodeState3;
        nodeState4.setActive(true);
        nodeState4.setForceRecompose(true);
        Snapshot.INSTANCE.sendApplyNotifications();
        return layoutNode;
    }

    public final MeasurePolicy createMeasurePolicy(final Function2<? super SubcomposeMeasureScope, ? super Constraints, ? extends MeasureResult> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        this.intermediateMeasureScope.setLookaheadMeasurePolicy(block);
        final String str = this.NoIntrinsicsMessage;
        return new LayoutNode.NoIntrinsicsMeasurePolicy(str) { // from class: androidx.compose.ui.layout.LayoutNodeSubcompositionsState$createMeasurePolicy$1
            @Override // androidx.compose.ui.layout.MeasurePolicy
            /* renamed from: measure-3p2s80s */
            public MeasureResult mo21measure3p2s80s(MeasureScope measure, List<? extends Measurable> measurables, long j) {
                LayoutNodeSubcompositionsState.IntermediateMeasureScopeImpl intermediateMeasureScopeImpl;
                LayoutNodeSubcompositionsState.IntermediateMeasureScopeImpl intermediateMeasureScopeImpl2;
                final int i;
                LayoutNodeSubcompositionsState.IntermediateMeasureScopeImpl intermediateMeasureScopeImpl3;
                Intrinsics.checkNotNullParameter(measure, "$this$measure");
                Intrinsics.checkNotNullParameter(measurables, "measurables");
                LayoutNodeSubcompositionsState.this.scope.setLayoutDirection(measure.getLayoutDirection());
                LayoutNodeSubcompositionsState.this.scope.setDensity(measure.getDensity());
                LayoutNodeSubcompositionsState.this.scope.setFontScale(measure.getFontScale());
                if ((LayoutNodeSubcompositionsState.this.root.getLayoutState$ui_release() != LayoutNode.LayoutState.Measuring && LayoutNodeSubcompositionsState.this.root.getLayoutState$ui_release() != LayoutNode.LayoutState.LayingOut) || LayoutNodeSubcompositionsState.this.root.getLookaheadRoot() == null) {
                    LayoutNodeSubcompositionsState.this.currentIndex = 0;
                    intermediateMeasureScopeImpl2 = LayoutNodeSubcompositionsState.this.intermediateMeasureScope;
                    intermediateMeasureScopeImpl2.m3894setLookaheadConstraintsBRTryo0(j);
                    final MeasureResult invoke = block.invoke(LayoutNodeSubcompositionsState.this.scope, Constraints.m4827boximpl(j));
                    i = LayoutNodeSubcompositionsState.this.currentIndex;
                    intermediateMeasureScopeImpl3 = LayoutNodeSubcompositionsState.this.intermediateMeasureScope;
                    intermediateMeasureScopeImpl3.m3895setLookaheadSizeozmzZPI(IntSizeKt.IntSize(invoke.getWidth(), invoke.getHeight()));
                    final LayoutNodeSubcompositionsState layoutNodeSubcompositionsState = LayoutNodeSubcompositionsState.this;
                    return new MeasureResult() { // from class: androidx.compose.ui.layout.LayoutNodeSubcompositionsState$createMeasurePolicy$1$measure$1
                        @Override // androidx.compose.ui.layout.MeasureResult
                        public int getWidth() {
                            return MeasureResult.this.getWidth();
                        }

                        @Override // androidx.compose.ui.layout.MeasureResult
                        public int getHeight() {
                            return MeasureResult.this.getHeight();
                        }

                        @Override // androidx.compose.ui.layout.MeasureResult
                        public Map<AlignmentLine, Integer> getAlignmentLines() {
                            return MeasureResult.this.getAlignmentLines();
                        }

                        @Override // androidx.compose.ui.layout.MeasureResult
                        public void placeChildren() {
                            int i2;
                            layoutNodeSubcompositionsState.currentIndex = i;
                            MeasureResult.this.placeChildren();
                            LayoutNodeSubcompositionsState layoutNodeSubcompositionsState2 = layoutNodeSubcompositionsState;
                            i2 = layoutNodeSubcompositionsState2.currentIndex;
                            layoutNodeSubcompositionsState2.disposeOrReuseStartingFromIndex(i2);
                        }
                    };
                }
                Function2<SubcomposeIntermediateMeasureScope, Constraints, MeasureResult> intermediateMeasurePolicy$ui_release = LayoutNodeSubcompositionsState.this.getIntermediateMeasurePolicy$ui_release();
                intermediateMeasureScopeImpl = LayoutNodeSubcompositionsState.this.intermediateMeasureScope;
                return intermediateMeasurePolicy$ui_release.invoke(intermediateMeasureScopeImpl, Constraints.m4827boximpl(j));
            }
        };
    }

    public final SubcomposeLayoutState.PrecomposedSlotHandle precompose(final Object slotId, Function2<? super Composer, ? super Integer, Unit> content) {
        Intrinsics.checkNotNullParameter(content, "content");
        makeSureStateIsConsistent();
        if (!this.slotIdToNode.containsKey(slotId)) {
            Map<Object, LayoutNode> map = this.precomposeMap;
            LayoutNode layoutNode = map.get(slotId);
            if (layoutNode == null) {
                layoutNode = takeNodeFromReusables(slotId);
                if (layoutNode != null) {
                    move(this.root.getFoldedChildren$ui_release().indexOf(layoutNode), this.root.getFoldedChildren$ui_release().size(), 1);
                    this.precomposedCount++;
                } else {
                    layoutNode = createNodeAt(this.root.getFoldedChildren$ui_release().size());
                    this.precomposedCount++;
                }
                map.put(slotId, layoutNode);
            }
            subcompose(layoutNode, slotId, content);
        }
        return new SubcomposeLayoutState.PrecomposedSlotHandle() { // from class: androidx.compose.ui.layout.LayoutNodeSubcompositionsState$precompose$1
            @Override // androidx.compose.ui.layout.SubcomposeLayoutState.PrecomposedSlotHandle
            public void dispose() {
                Map map2;
                int i;
                int i2;
                int i3;
                int i4;
                int i5;
                int i6;
                LayoutNodeSubcompositionsState.this.makeSureStateIsConsistent();
                map2 = LayoutNodeSubcompositionsState.this.precomposeMap;
                LayoutNode layoutNode2 = (LayoutNode) map2.remove(slotId);
                if (layoutNode2 != null) {
                    i = LayoutNodeSubcompositionsState.this.precomposedCount;
                    if (i > 0) {
                        int indexOf = LayoutNodeSubcompositionsState.this.root.getFoldedChildren$ui_release().indexOf(layoutNode2);
                        int size = LayoutNodeSubcompositionsState.this.root.getFoldedChildren$ui_release().size();
                        i2 = LayoutNodeSubcompositionsState.this.precomposedCount;
                        if (indexOf >= size - i2) {
                            LayoutNodeSubcompositionsState layoutNodeSubcompositionsState = LayoutNodeSubcompositionsState.this;
                            i3 = layoutNodeSubcompositionsState.reusableCount;
                            layoutNodeSubcompositionsState.reusableCount = i3 + 1;
                            LayoutNodeSubcompositionsState layoutNodeSubcompositionsState2 = LayoutNodeSubcompositionsState.this;
                            i4 = layoutNodeSubcompositionsState2.precomposedCount;
                            layoutNodeSubcompositionsState2.precomposedCount = i4 - 1;
                            int size2 = LayoutNodeSubcompositionsState.this.root.getFoldedChildren$ui_release().size();
                            i5 = LayoutNodeSubcompositionsState.this.precomposedCount;
                            int i7 = size2 - i5;
                            i6 = LayoutNodeSubcompositionsState.this.reusableCount;
                            int i8 = i7 - i6;
                            LayoutNodeSubcompositionsState.this.move(indexOf, i8, 1);
                            LayoutNodeSubcompositionsState.this.disposeOrReuseStartingFromIndex(i8);
                            return;
                        }
                        throw new IllegalStateException("Check failed.".toString());
                    }
                    throw new IllegalStateException("Check failed.".toString());
                }
            }

            @Override // androidx.compose.ui.layout.SubcomposeLayoutState.PrecomposedSlotHandle
            public int getPlaceablesCount() {
                Map map2;
                List<LayoutNode> children$ui_release;
                map2 = LayoutNodeSubcompositionsState.this.precomposeMap;
                LayoutNode layoutNode2 = (LayoutNode) map2.get(slotId);
                if (layoutNode2 == null || (children$ui_release = layoutNode2.getChildren$ui_release()) == null) {
                    return 0;
                }
                return children$ui_release.size();
            }

            @Override // androidx.compose.ui.layout.SubcomposeLayoutState.PrecomposedSlotHandle
            /* renamed from: premeasure-0kLqBqw, reason: not valid java name */
            public void mo3897premeasure0kLqBqw(int index, long constraints) {
                Map map2;
                map2 = LayoutNodeSubcompositionsState.this.precomposeMap;
                LayoutNode layoutNode2 = (LayoutNode) map2.get(slotId);
                if (layoutNode2 == null || !layoutNode2.isAttached()) {
                    return;
                }
                int size = layoutNode2.getChildren$ui_release().size();
                if (index < 0 || index >= size) {
                    throw new IndexOutOfBoundsException("Index (" + index + ") is out of bound of [0, " + size + ')');
                }
                if (!layoutNode2.isPlaced()) {
                    LayoutNode layoutNode3 = LayoutNodeSubcompositionsState.this.root;
                    layoutNode3.ignoreRemeasureRequests = true;
                    LayoutNodeKt.requireOwner(layoutNode2).mo4146measureAndLayout0kLqBqw(layoutNode2.getChildren$ui_release().get(index), constraints);
                    layoutNode3.ignoreRemeasureRequests = false;
                    return;
                }
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
        };
    }

    private final LayoutNode createNodeAt(int index) {
        LayoutNode layoutNode = new LayoutNode(true, 0, 2, null);
        LayoutNode layoutNode2 = this.root;
        layoutNode2.ignoreRemeasureRequests = true;
        this.root.insertAt$ui_release(index, layoutNode);
        layoutNode2.ignoreRemeasureRequests = false;
        return layoutNode;
    }

    static /* synthetic */ void move$default(LayoutNodeSubcompositionsState layoutNodeSubcompositionsState, int i, int i2, int i3, int i4, Object obj) {
        if ((i4 & 4) != 0) {
            i3 = 1;
        }
        layoutNodeSubcompositionsState.move(i, i2, i3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SubcomposeLayout.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0018\b\u0002\u0018\u00002\u00020\u0001B.\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0001\u0012\u0011\u0010\u0003\u001a\r\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0002\b\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010\tR+\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u000b8F@FX\u0086\u008e\u0002¢\u0006\u0012\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R'\u0010\u0003\u001a\r\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0002\b\u0006X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001b\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001a\u0010\u001c\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u000e\"\u0004\b\u001e\u0010\u0010R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0001X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"¨\u0006#"}, d2 = {"Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;", "", "slotId", "content", "Lkotlin/Function0;", "", "Landroidx/compose/runtime/Composable;", "composition", "Landroidx/compose/runtime/Composition;", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composition;)V", "<set-?>", "", "active", "getActive", "()Z", "setActive", "(Z)V", "active$delegate", "Landroidx/compose/runtime/MutableState;", "getComposition", "()Landroidx/compose/runtime/Composition;", "setComposition", "(Landroidx/compose/runtime/Composition;)V", "getContent", "()Lkotlin/jvm/functions/Function2;", "setContent", "(Lkotlin/jvm/functions/Function2;)V", "Lkotlin/jvm/functions/Function2;", "forceRecompose", "getForceRecompose", "setForceRecompose", "getSlotId", "()Ljava/lang/Object;", "setSlotId", "(Ljava/lang/Object;)V", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class NodeState {

        /* renamed from: active$delegate, reason: from kotlin metadata */
        private final MutableState active;
        private Composition composition;
        private Function2<? super Composer, ? super Integer, Unit> content;
        private boolean forceRecompose;
        private Object slotId;

        public final Composition getComposition() {
            return this.composition;
        }

        public final Function2<Composer, Integer, Unit> getContent() {
            return this.content;
        }

        public final boolean getForceRecompose() {
            return this.forceRecompose;
        }

        public final Object getSlotId() {
            return this.slotId;
        }

        public final void setComposition(Composition composition) {
            this.composition = composition;
        }

        public final void setContent(Function2<? super Composer, ? super Integer, Unit> function2) {
            Intrinsics.checkNotNullParameter(function2, "<set-?>");
            this.content = function2;
        }

        public final void setForceRecompose(boolean z) {
            this.forceRecompose = z;
        }

        public final void setSlotId(Object obj) {
            this.slotId = obj;
        }

        public NodeState(Object obj, Function2<? super Composer, ? super Integer, Unit> content, Composition composition) {
            MutableState mutableStateOf$default;
            Intrinsics.checkNotNullParameter(content, "content");
            this.slotId = obj;
            this.content = content;
            this.composition = composition;
            mutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(true, null, 2, null);
            this.active = mutableStateOf$default;
        }

        public /* synthetic */ NodeState(Object obj, Function2 function2, Composition composition, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(obj, function2, (i & 4) != 0 ? null : composition);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final boolean getActive() {
            return ((Boolean) this.active.getValue()).booleanValue();
        }

        public final void setActive(boolean z) {
            this.active.setValue(Boolean.valueOf(z));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SubcomposeLayout.kt */
    @Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J0\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00170\u00162\b\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0011\u0010\u001a\u001a\r\u0012\u0004\u0012\u00020\u001c0\u001b¢\u0006\u0002\b\u001dH\u0016¢\u0006\u0002\u0010\u001eR\u001a\u0010\u0003\u001a\u00020\u0004X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u0014\u0010\f\u001a\u00020\r8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u001f"}, d2 = {"Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;", "Landroidx/compose/ui/layout/SubcomposeMeasureScope;", "(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)V", "density", "", "getDensity", "()F", "setDensity", "(F)V", "fontScale", "getFontScale", "setFontScale", "isLookingAhead", "", "()Z", "layoutDirection", "Landroidx/compose/ui/unit/LayoutDirection;", "getLayoutDirection", "()Landroidx/compose/ui/unit/LayoutDirection;", "setLayoutDirection", "(Landroidx/compose/ui/unit/LayoutDirection;)V", "subcompose", "", "Landroidx/compose/ui/layout/Measurable;", "slotId", "", "content", "Lkotlin/Function0;", "", "Landroidx/compose/runtime/Composable;", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/List;", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public final class Scope implements SubcomposeMeasureScope {
        private float density;
        private float fontScale;
        private LayoutDirection layoutDirection = LayoutDirection.Rtl;

        @Override // androidx.compose.ui.unit.Density
        public float getDensity() {
            return this.density;
        }

        @Override // androidx.compose.ui.unit.Density
        public float getFontScale() {
            return this.fontScale;
        }

        @Override // androidx.compose.ui.layout.IntrinsicMeasureScope
        public LayoutDirection getLayoutDirection() {
            return this.layoutDirection;
        }

        public void setDensity(float f) {
            this.density = f;
        }

        public void setFontScale(float f) {
            this.fontScale = f;
        }

        public void setLayoutDirection(LayoutDirection layoutDirection) {
            Intrinsics.checkNotNullParameter(layoutDirection, "<set-?>");
            this.layoutDirection = layoutDirection;
        }

        public Scope() {
        }

        @Override // androidx.compose.ui.layout.IntrinsicMeasureScope
        public boolean isLookingAhead() {
            return LayoutNodeSubcompositionsState.this.root.getLayoutState$ui_release() == LayoutNode.LayoutState.LookaheadLayingOut || LayoutNodeSubcompositionsState.this.root.getLayoutState$ui_release() == LayoutNode.LayoutState.LookaheadMeasuring;
        }

        @Override // androidx.compose.ui.layout.SubcomposeMeasureScope
        public List<Measurable> subcompose(Object slotId, Function2<? super Composer, ? super Integer, Unit> content) {
            Intrinsics.checkNotNullParameter(content, "content");
            return LayoutNodeSubcompositionsState.this.subcompose(slotId, content);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SubcomposeLayout.kt */
    @Metadata(d1 = {"\u0000¤\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0082\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003JH\u0010%\u001a\u00020\u001b2\u0006\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020'2\u0014\b\u0002\u0010)\u001a\u000e\u0012\u0004\u0012\u00020+\u0012\u0004\u0012\u00020'0*2\u0017\u0010,\u001a\u0013\u0012\u0004\u0012\u00020.\u0012\u0004\u0012\u00020/0-¢\u0006\u0002\b\u001cH\u0096\u0001J\u0018\u00100\u001a\b\u0012\u0004\u0012\u000202012\b\u00103\u001a\u0004\u0018\u000104H\u0016J\u001a\u00105\u001a\u00020'*\u000206H\u0097\u0001ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b7\u00108J\u001a\u00105\u001a\u00020'*\u000209H\u0097\u0001ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b:\u0010;J\u001a\u0010<\u001a\u000206*\u000209H\u0097\u0001ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b=\u0010>J\u001d\u0010<\u001a\u000206*\u00020\u0005H\u0097\u0001ø\u0001\u0002ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b?\u0010@J\u001d\u0010<\u001a\u000206*\u00020'H\u0097\u0001ø\u0001\u0002ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b?\u0010AJ\u001a\u0010B\u001a\u00020C*\u00020DH\u0097\u0001ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\bE\u0010FJ\u001a\u0010G\u001a\u00020\u0005*\u000206H\u0097\u0001ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\bH\u0010@J\u001a\u0010G\u001a\u00020\u0005*\u000209H\u0097\u0001ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\bI\u0010>J\r\u0010J\u001a\u00020K*\u00020LH\u0097\u0001J\u001a\u0010M\u001a\u00020D*\u00020CH\u0097\u0001ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\bN\u0010FJ\u001a\u0010O\u001a\u000209*\u000206H\u0097\u0001ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\bP\u0010QJ\u001d\u0010O\u001a\u000209*\u00020\u0005H\u0097\u0001ø\u0001\u0002ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\bR\u0010QJ\u001d\u0010O\u001a\u000209*\u00020'H\u0097\u0001ø\u0001\u0002ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\bR\u0010SR\u0014\u0010\u0004\u001a\u00020\u00058\u0016X\u0097\u0005¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\u00020\u00058\u0016X\u0097\u0005¢\u0006\u0006\u001a\u0004\b\t\u0010\u0007R\u0014\u0010\n\u001a\u00020\u000b8WX\u0097\u0005¢\u0006\u0006\u001a\u0004\b\n\u0010\fR\u0012\u0010\r\u001a\u00020\u000eX\u0096\u0005¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010R%\u0010\u0011\u001a\u00020\u0012X\u0096\u000eø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0010\n\u0002\u0010\u0017\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R4\u0010\u0018\u001a\u0019\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u001b0\u0019¢\u0006\u0002\b\u001cX\u0096.ø\u0001\u0000¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R%\u0010!\u001a\u00020\"X\u0096\u000eø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0010\n\u0002\u0010\u0017\u001a\u0004\b#\u0010\u0014\"\u0004\b$\u0010\u0016\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006T"}, d2 = {"Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$IntermediateMeasureScopeImpl;", "Landroidx/compose/ui/layout/SubcomposeIntermediateMeasureScope;", "Landroidx/compose/ui/layout/MeasureScope;", "(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)V", "density", "", "getDensity", "()F", "fontScale", "getFontScale", "isLookingAhead", "", "()Z", "layoutDirection", "Landroidx/compose/ui/unit/LayoutDirection;", "getLayoutDirection", "()Landroidx/compose/ui/unit/LayoutDirection;", "lookaheadConstraints", "Landroidx/compose/ui/unit/Constraints;", "getLookaheadConstraints-msEJaDk", "()J", "setLookaheadConstraints-BRTryo0", "(J)V", "J", "lookaheadMeasurePolicy", "Lkotlin/Function2;", "Landroidx/compose/ui/layout/SubcomposeMeasureScope;", "Landroidx/compose/ui/layout/MeasureResult;", "Lkotlin/ExtensionFunctionType;", "getLookaheadMeasurePolicy", "()Lkotlin/jvm/functions/Function2;", "setLookaheadMeasurePolicy", "(Lkotlin/jvm/functions/Function2;)V", "lookaheadSize", "Landroidx/compose/ui/unit/IntSize;", "getLookaheadSize-YbymL2g", "setLookaheadSize-ozmzZPI", "layout", ViewHierarchyNode.JsonKeys.WIDTH, "", ViewHierarchyNode.JsonKeys.HEIGHT, "alignmentLines", "", "Landroidx/compose/ui/layout/AlignmentLine;", "placementBlock", "Lkotlin/Function1;", "Landroidx/compose/ui/layout/Placeable$PlacementScope;", "", "measurablesForSlot", "", "Landroidx/compose/ui/layout/Measurable;", "slotId", "", "roundToPx", "Landroidx/compose/ui/unit/Dp;", "roundToPx-0680j_4", "(F)I", "Landroidx/compose/ui/unit/TextUnit;", "roundToPx--R2X_6o", "(J)I", "toDp", "toDp-GaN1DYA", "(J)F", "toDp-u2uoSUM", "(F)F", "(I)F", "toDpSize", "Landroidx/compose/ui/unit/DpSize;", "Landroidx/compose/ui/geometry/Size;", "toDpSize-k-rfVVM", "(J)J", "toPx", "toPx-0680j_4", "toPx--R2X_6o", "toRect", "Landroidx/compose/ui/geometry/Rect;", "Landroidx/compose/ui/unit/DpRect;", "toSize", "toSize-XkaWNTQ", "toSp", "toSp-0xMU5do", "(F)J", "toSp-kPz2Gy4", "(I)J", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public final class IntermediateMeasureScopeImpl implements SubcomposeIntermediateMeasureScope, MeasureScope {
        private final /* synthetic */ Scope $$delegate_0;
        public Function2<? super SubcomposeMeasureScope, ? super Constraints, ? extends MeasureResult> lookaheadMeasurePolicy;
        private long lookaheadSize = IntSize.INSTANCE.m5048getZeroYbymL2g();
        private long lookaheadConstraints = ConstraintsKt.Constraints$default(0, 0, 0, 0, 15, null);

        @Override // androidx.compose.ui.unit.Density
        public float getDensity() {
            return this.$$delegate_0.getDensity();
        }

        @Override // androidx.compose.ui.unit.Density
        public float getFontScale() {
            return this.$$delegate_0.getFontScale();
        }

        @Override // androidx.compose.ui.layout.IntrinsicMeasureScope
        public LayoutDirection getLayoutDirection() {
            return this.$$delegate_0.getLayoutDirection();
        }

        @Override // androidx.compose.ui.layout.SubcomposeIntermediateMeasureScope
        /* renamed from: getLookaheadConstraints-msEJaDk, reason: not valid java name and from getter */
        public long getLookaheadConstraints() {
            return this.lookaheadConstraints;
        }

        @Override // androidx.compose.ui.layout.SubcomposeIntermediateMeasureScope
        /* renamed from: getLookaheadSize-YbymL2g, reason: not valid java name and from getter */
        public long getLookaheadSize() {
            return this.lookaheadSize;
        }

        @Override // androidx.compose.ui.layout.IntrinsicMeasureScope
        public boolean isLookingAhead() {
            return this.$$delegate_0.isLookingAhead();
        }

        @Override // androidx.compose.ui.layout.MeasureScope
        public MeasureResult layout(int width, int height, Map<AlignmentLine, Integer> alignmentLines, Function1<? super Placeable.PlacementScope, Unit> placementBlock) {
            Intrinsics.checkNotNullParameter(alignmentLines, "alignmentLines");
            Intrinsics.checkNotNullParameter(placementBlock, "placementBlock");
            return this.$$delegate_0.layout(width, height, alignmentLines, placementBlock);
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: roundToPx--R2X_6o */
        public int mo328roundToPxR2X_6o(long j) {
            return this.$$delegate_0.mo328roundToPxR2X_6o(j);
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: roundToPx-0680j_4 */
        public int mo329roundToPx0680j_4(float f) {
            return this.$$delegate_0.mo329roundToPx0680j_4(f);
        }

        /* renamed from: setLookaheadConstraints-BRTryo0, reason: not valid java name */
        public void m3894setLookaheadConstraintsBRTryo0(long j) {
            this.lookaheadConstraints = j;
        }

        public void setLookaheadMeasurePolicy(Function2<? super SubcomposeMeasureScope, ? super Constraints, ? extends MeasureResult> function2) {
            Intrinsics.checkNotNullParameter(function2, "<set-?>");
            this.lookaheadMeasurePolicy = function2;
        }

        /* renamed from: setLookaheadSize-ozmzZPI, reason: not valid java name */
        public void m3895setLookaheadSizeozmzZPI(long j) {
            this.lookaheadSize = j;
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toDp-GaN1DYA */
        public float mo330toDpGaN1DYA(long j) {
            return this.$$delegate_0.mo330toDpGaN1DYA(j);
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toDp-u2uoSUM */
        public float mo331toDpu2uoSUM(float f) {
            return this.$$delegate_0.mo331toDpu2uoSUM(f);
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toDp-u2uoSUM */
        public float mo332toDpu2uoSUM(int i) {
            return this.$$delegate_0.mo332toDpu2uoSUM(i);
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toDpSize-k-rfVVM */
        public long mo333toDpSizekrfVVM(long j) {
            return this.$$delegate_0.mo333toDpSizekrfVVM(j);
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toPx--R2X_6o */
        public float mo334toPxR2X_6o(long j) {
            return this.$$delegate_0.mo334toPxR2X_6o(j);
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toPx-0680j_4 */
        public float mo335toPx0680j_4(float f) {
            return this.$$delegate_0.mo335toPx0680j_4(f);
        }

        @Override // androidx.compose.ui.unit.Density
        public Rect toRect(DpRect dpRect) {
            Intrinsics.checkNotNullParameter(dpRect, "<this>");
            return this.$$delegate_0.toRect(dpRect);
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toSize-XkaWNTQ */
        public long mo336toSizeXkaWNTQ(long j) {
            return this.$$delegate_0.mo336toSizeXkaWNTQ(j);
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toSp-0xMU5do */
        public long mo337toSp0xMU5do(float f) {
            return this.$$delegate_0.mo337toSp0xMU5do(f);
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toSp-kPz2Gy4 */
        public long mo338toSpkPz2Gy4(float f) {
            return this.$$delegate_0.mo338toSpkPz2Gy4(f);
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toSp-kPz2Gy4 */
        public long mo339toSpkPz2Gy4(int i) {
            return this.$$delegate_0.mo339toSpkPz2Gy4(i);
        }

        public IntermediateMeasureScopeImpl() {
            this.$$delegate_0 = LayoutNodeSubcompositionsState.this.scope;
        }

        @Override // androidx.compose.ui.layout.SubcomposeIntermediateMeasureScope
        public List<Measurable> measurablesForSlot(Object slotId) {
            List<Measurable> childMeasurables$ui_release;
            LayoutNode layoutNode = (LayoutNode) LayoutNodeSubcompositionsState.this.slotIdToNode.get(slotId);
            return (layoutNode == null || (childMeasurables$ui_release = layoutNode.getChildMeasurables$ui_release()) == null) ? CollectionsKt.emptyList() : childMeasurables$ui_release;
        }

        @Override // androidx.compose.ui.layout.SubcomposeIntermediateMeasureScope
        public Function2<SubcomposeMeasureScope, Constraints, MeasureResult> getLookaheadMeasurePolicy() {
            Function2 function2 = this.lookaheadMeasurePolicy;
            if (function2 != null) {
                return function2;
            }
            Intrinsics.throwUninitializedPropertyAccessException("lookaheadMeasurePolicy");
            return null;
        }
    }

    private final void subcompose(LayoutNode node, Object slotId, Function2<? super Composer, ? super Integer, Unit> content) {
        Map<LayoutNode, NodeState> map = this.nodeToNodeState;
        NodeState nodeState = map.get(node);
        if (nodeState == null) {
            nodeState = new NodeState(slotId, ComposableSingletons$SubcomposeLayoutKt.INSTANCE.m3866getLambda1$ui_release(), null, 4, null);
            map.put(node, nodeState);
        }
        NodeState nodeState2 = nodeState;
        Composition composition = nodeState2.getComposition();
        boolean hasInvalidations = composition != null ? composition.getHasInvalidations() : true;
        if (nodeState2.getContent() != content || hasInvalidations || nodeState2.getForceRecompose()) {
            nodeState2.setContent(content);
            subcompose(node, nodeState2);
            nodeState2.setForceRecompose(false);
        }
    }

    public final void forceRecomposeChildren() {
        Iterator<Map.Entry<LayoutNode, NodeState>> it = this.nodeToNodeState.entrySet().iterator();
        while (it.hasNext()) {
            it.next().getValue().setForceRecompose(true);
        }
        if (this.root.getMeasurePending$ui_release()) {
            return;
        }
        LayoutNode.requestRemeasure$ui_release$default(this.root, false, false, 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void move(int from, int to, int count) {
        LayoutNode layoutNode = this.root;
        layoutNode.ignoreRemeasureRequests = true;
        this.root.move$ui_release(from, to, count);
        layoutNode.ignoreRemeasureRequests = false;
    }

    private final void ignoreRemeasureRequests(Function0<Unit> block) {
        LayoutNode layoutNode = this.root;
        layoutNode.ignoreRemeasureRequests = true;
        block.invoke();
        layoutNode.ignoreRemeasureRequests = false;
    }

    public final void disposeCurrentNodes() {
        LayoutNode layoutNode = this.root;
        layoutNode.ignoreRemeasureRequests = true;
        Iterator<T> it = this.nodeToNodeState.values().iterator();
        while (it.hasNext()) {
            Composition composition = ((NodeState) it.next()).getComposition();
            if (composition != null) {
                composition.dispose();
            }
        }
        this.root.removeAll$ui_release();
        layoutNode.ignoreRemeasureRequests = false;
        this.nodeToNodeState.clear();
        this.slotIdToNode.clear();
        this.precomposedCount = 0;
        this.reusableCount = 0;
        this.precomposeMap.clear();
        makeSureStateIsConsistent();
    }
}
