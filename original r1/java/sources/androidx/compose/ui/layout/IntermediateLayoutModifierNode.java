package androidx.compose.ui.layout;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.layout.IntermediateLayoutModifierNode;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.LayoutNodeLayoutDelegate;
import androidx.compose.ui.node.LookaheadDelegate;
import androidx.compose.ui.node.NodeChain;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.node.NodeKind;
import androidx.compose.ui.node.NodeMeasuringIntrinsics;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.LayoutDirection;
import io.sentry.protocol.ViewHierarchyNode;
import java.util.Map;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: IntermediateLayoutModifierNode.kt */
@Metadata(d1 = {"\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\b\u0000\u0018\u00002\u00020\u00012\u00020\u0002:\u000289BK\u0012A\u0010\u0003\u001a=\u0012\u0004\u0012\u00020\u0005\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\t\u0012\u0013\u0012\u00110\n¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\u000b\u0012\u0004\u0012\u00020\f0\u0004¢\u0006\u0002\b\rø\u0001\u0000¢\u0006\u0002\u0010\u000eJ\b\u0010 \u001a\u00020!H\u0016J7\u0010\"\u001a\u00020\f*\u00020#2\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010$\u001a\u00020%2\u0006\u0010\u001c\u001a\u00020\nø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b&\u0010'J!\u0010(\u001a\u00020)*\u00020*2\u0006\u0010\t\u001a\u00020+2\u0006\u0010,\u001a\u00020)H\u0000¢\u0006\u0002\b-J!\u0010.\u001a\u00020)*\u00020*2\u0006\u0010\t\u001a\u00020+2\u0006\u0010/\u001a\u00020)H\u0000¢\u0006\u0002\b0J)\u00101\u001a\u00020\f*\u00020#2\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\nH\u0016ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b2\u00103J!\u00104\u001a\u00020)*\u00020*2\u0006\u0010\t\u001a\u00020+2\u0006\u0010,\u001a\u00020)H\u0000¢\u0006\u0002\b5J!\u00106\u001a\u00020)*\u00020*2\u0006\u0010\t\u001a\u00020+2\u0006\u0010/\u001a\u00020)H\u0000¢\u0006\u0002\b7R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\b\u0018\u00010\u0012R\u00020\u0000X\u0082\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0013\u001a\u00060\u0014R\u00020\u0000X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0019\u0010\u001c\u001a\u0004\u0018\u00010\nX\u0082\u000eø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0002\n\u0000RX\u0010\u0003\u001a=\u0012\u0004\u0012\u00020\u0005\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\t\u0012\u0013\u0012\u00110\n¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\u000b\u0012\u0004\u0012\u00020\f0\u0004¢\u0006\u0002\b\rX\u0080\u000eø\u0001\u0000¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010\u000e\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006:"}, d2 = {"Landroidx/compose/ui/layout/IntermediateLayoutModifierNode;", "Landroidx/compose/ui/node/LayoutModifierNode;", "Landroidx/compose/ui/Modifier$Node;", "measureBlock", "Lkotlin/Function3;", "Landroidx/compose/ui/layout/IntermediateMeasureScope;", "Landroidx/compose/ui/layout/Measurable;", "Lkotlin/ParameterName;", "name", "measurable", "Landroidx/compose/ui/unit/Constraints;", "constraints", "Landroidx/compose/ui/layout/MeasureResult;", "Lkotlin/ExtensionFunctionType;", "(Lkotlin/jvm/functions/Function3;)V", "closestLookaheadScope", "Landroidx/compose/ui/layout/LookaheadScope;", "intermediateMeasurable", "Landroidx/compose/ui/layout/IntermediateLayoutModifierNode$IntermediateMeasurablePlaceable;", "intermediateMeasureScope", "Landroidx/compose/ui/layout/IntermediateLayoutModifierNode$IntermediateMeasureScopeImpl;", "isIntermediateChangeActive", "", "()Z", "setIntermediateChangeActive", "(Z)V", "localLookaheadScope", "Landroidx/compose/ui/layout/LookaheadScopeImpl;", "lookaheadConstraints", "getMeasureBlock$ui_release", "()Lkotlin/jvm/functions/Function3;", "setMeasureBlock$ui_release", "onAttach", "", "intermediateMeasure", "Landroidx/compose/ui/layout/MeasureScope;", "lookaheadSize", "Landroidx/compose/ui/unit/IntSize;", "intermediateMeasure-Te-uZzU", "(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;JJJ)Landroidx/compose/ui/layout/MeasureResult;", "maxIntermediateIntrinsicHeight", "", "Landroidx/compose/ui/layout/IntrinsicMeasureScope;", "Landroidx/compose/ui/layout/IntrinsicMeasurable;", ViewHierarchyNode.JsonKeys.WIDTH, "maxIntermediateIntrinsicHeight$ui_release", "maxIntermediateIntrinsicWidth", ViewHierarchyNode.JsonKeys.HEIGHT, "maxIntermediateIntrinsicWidth$ui_release", "measure", "measure-3p2s80s", "(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;", "minIntermediateIntrinsicHeight", "minIntermediateIntrinsicHeight$ui_release", "minIntermediateIntrinsicWidth", "minIntermediateIntrinsicWidth$ui_release", "IntermediateMeasurablePlaceable", "IntermediateMeasureScopeImpl", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class IntermediateLayoutModifierNode extends Modifier.Node implements LayoutModifierNode {
    private LookaheadScope closestLookaheadScope;
    private IntermediateMeasurablePlaceable intermediateMeasurable;
    private final IntermediateMeasureScopeImpl intermediateMeasureScope;
    private boolean isIntermediateChangeActive;
    private final LookaheadScopeImpl localLookaheadScope;
    private Constraints lookaheadConstraints;
    private Function3<? super IntermediateMeasureScope, ? super Measurable, ? super Constraints, ? extends MeasureResult> measureBlock;

    public final Function3<IntermediateMeasureScope, Measurable, Constraints, MeasureResult> getMeasureBlock$ui_release() {
        return this.measureBlock;
    }

    /* renamed from: isIntermediateChangeActive, reason: from getter */
    public final boolean getIsIntermediateChangeActive() {
        return this.isIntermediateChangeActive;
    }

    public final void setIntermediateChangeActive(boolean z) {
        this.isIntermediateChangeActive = z;
    }

    public final void setMeasureBlock$ui_release(Function3<? super IntermediateMeasureScope, ? super Measurable, ? super Constraints, ? extends MeasureResult> function3) {
        Intrinsics.checkNotNullParameter(function3, "<set-?>");
        this.measureBlock = function3;
    }

    public IntermediateLayoutModifierNode(Function3<? super IntermediateMeasureScope, ? super Measurable, ? super Constraints, ? extends MeasureResult> measureBlock) {
        Intrinsics.checkNotNullParameter(measureBlock, "measureBlock");
        this.measureBlock = measureBlock;
        this.intermediateMeasureScope = new IntermediateMeasureScopeImpl();
        LookaheadScopeImpl lookaheadScopeImpl = new LookaheadScopeImpl(new Function0<LayoutCoordinates>() { // from class: androidx.compose.ui.layout.IntermediateLayoutModifierNode$localLookaheadScope$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final LayoutCoordinates invoke() {
                NodeCoordinator coordinator$ui_release = IntermediateLayoutModifierNode.this.getCoordinator();
                Intrinsics.checkNotNull(coordinator$ui_release);
                return coordinator$ui_release;
            }
        });
        this.localLookaheadScope = lookaheadScopeImpl;
        this.closestLookaheadScope = lookaheadScopeImpl;
        this.isIntermediateChangeActive = true;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onAttach() {
        LookaheadScopeImpl lookaheadScopeImpl;
        LookaheadScopeImpl lookaheadScopeImpl2;
        NodeChain nodes;
        NodeCoordinator coordinator$ui_release = getCoordinator();
        Intrinsics.checkNotNull(coordinator$ui_release);
        LayoutNode layoutNode = coordinator$ui_release.getLayoutNode();
        NodeCoordinator coordinator$ui_release2 = getCoordinator();
        Intrinsics.checkNotNull(coordinator$ui_release2);
        LookaheadDelegate lookaheadDelegate = coordinator$ui_release2.getLookaheadDelegate();
        if ((lookaheadDelegate != null ? lookaheadDelegate.getLookaheadLayoutCoordinates() : null) == null) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        final LayoutNode lookaheadRoot = layoutNode.getLookaheadRoot();
        if (lookaheadRoot != null && lookaheadRoot.getIsVirtualLookaheadRoot()) {
            lookaheadScopeImpl2 = new LookaheadScopeImpl(new Function0<LayoutCoordinates>() { // from class: androidx.compose.ui.layout.IntermediateLayoutModifierNode$onAttach$1
                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    super(0);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                public final LayoutCoordinates invoke() {
                    LayoutNode parent$ui_release = LayoutNode.this.getParent$ui_release();
                    Intrinsics.checkNotNull(parent$ui_release);
                    return parent$ui_release.getInnerCoordinator$ui_release().getCoordinates();
                }
            });
        } else {
            IntermediateLayoutModifierNode intermediateLayoutModifierNode = this;
            int m4091constructorimpl = NodeKind.m4091constructorimpl(512);
            if (!intermediateLayoutModifierNode.getNode().getIsAttached()) {
                throw new IllegalStateException("visitAncestors called on an unattached node".toString());
            }
            Modifier.Node parent = intermediateLayoutModifierNode.getNode().getParent();
            LayoutNode requireLayoutNode = DelegatableNodeKt.requireLayoutNode(intermediateLayoutModifierNode);
            IntermediateLayoutModifierNode intermediateLayoutModifierNode2 = null;
            while (requireLayoutNode != null) {
                if ((requireLayoutNode.getNodes().getHead().getAggregateChildKindSet() & m4091constructorimpl) != 0) {
                    while (parent != null) {
                        if ((parent.getKindSet() & m4091constructorimpl) != 0) {
                            MutableVector mutableVector = null;
                            Modifier.Node node = parent;
                            while (node != null) {
                                if (node instanceof IntermediateLayoutModifierNode) {
                                    intermediateLayoutModifierNode2 = (IntermediateLayoutModifierNode) node;
                                } else if ((node.getKindSet() & m4091constructorimpl) != 0 && (node instanceof DelegatingNode)) {
                                    int i = 0;
                                    for (Modifier.Node delegate = ((DelegatingNode) node).getDelegate(); delegate != null; delegate = delegate.getChild()) {
                                        if ((delegate.getKindSet() & m4091constructorimpl) != 0) {
                                            i++;
                                            if (i == 1) {
                                                node = delegate;
                                            } else {
                                                if (mutableVector == null) {
                                                    mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                                }
                                                if (node != null) {
                                                    if (mutableVector != null) {
                                                        mutableVector.add(node);
                                                    }
                                                    node = null;
                                                }
                                                if (mutableVector != null) {
                                                    mutableVector.add(delegate);
                                                }
                                            }
                                        }
                                    }
                                    if (i == 1) {
                                    }
                                }
                                node = DelegatableNodeKt.pop(mutableVector);
                            }
                        }
                        parent = parent.getParent();
                    }
                }
                requireLayoutNode = requireLayoutNode.getParent$ui_release();
                parent = (requireLayoutNode == null || (nodes = requireLayoutNode.getNodes()) == null) ? null : nodes.getTail();
            }
            if (intermediateLayoutModifierNode2 == null || (lookaheadScopeImpl = intermediateLayoutModifierNode2.localLookaheadScope) == null) {
                lookaheadScopeImpl = this.localLookaheadScope;
            }
            lookaheadScopeImpl2 = lookaheadScopeImpl;
        }
        this.closestLookaheadScope = lookaheadScopeImpl2;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* renamed from: measure-3p2s80s */
    public MeasureResult mo247measure3p2s80s(MeasureScope measure, Measurable measurable, long j) {
        Intrinsics.checkNotNullParameter(measure, "$this$measure");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        final Placeable mo3876measureBRTryo0 = measurable.mo3876measureBRTryo0(j);
        return MeasureScope.layout$default(measure, mo3876measureBRTryo0.getWidth(), mo3876measureBRTryo0.getHeight(), null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.ui.layout.IntermediateLayoutModifierNode$measure$1$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Placeable.PlacementScope placementScope) {
                invoke2(placementScope);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Placeable.PlacementScope layout) {
                Intrinsics.checkNotNullParameter(layout, "$this$layout");
                Placeable.PlacementScope.place$default(layout, Placeable.this, 0, 0, 0.0f, 4, null);
            }
        }, 4, null);
    }

    /* renamed from: intermediateMeasure-Te-uZzU, reason: not valid java name */
    public final MeasureResult m3878intermediateMeasureTeuZzU(MeasureScope intermediateMeasure, Measurable measurable, long j, long j2, long j3) {
        Intrinsics.checkNotNullParameter(intermediateMeasure, "$this$intermediateMeasure");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        this.intermediateMeasureScope.m3880setLookaheadSizeozmzZPI(j2);
        this.lookaheadConstraints = Constraints.m4827boximpl(j3);
        IntermediateMeasurablePlaceable intermediateMeasurablePlaceable = this.intermediateMeasurable;
        if (intermediateMeasurablePlaceable == null) {
            intermediateMeasurablePlaceable = new IntermediateMeasurablePlaceable(this, measurable);
        }
        this.intermediateMeasurable = intermediateMeasurablePlaceable;
        intermediateMeasurablePlaceable.setWrappedMeasurable(measurable);
        return this.measureBlock.invoke(this.intermediateMeasureScope, intermediateMeasurablePlaceable, Constraints.m4827boximpl(j));
    }

    public final int minIntermediateIntrinsicWidth$ui_release(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable measurable, int i) {
        Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        return NodeMeasuringIntrinsics.INSTANCE.minWidth$ui_release(new NodeMeasuringIntrinsics.MeasureBlock() { // from class: androidx.compose.ui.layout.IntermediateLayoutModifierNode$minIntermediateIntrinsicWidth$1
            @Override // androidx.compose.ui.node.NodeMeasuringIntrinsics.MeasureBlock
            /* renamed from: measure-3p2s80s */
            public final MeasureResult mo3881measure3p2s80s(MeasureScope minWidth, Measurable intrinsicMeasurable, long j) {
                Intrinsics.checkNotNullParameter(minWidth, "$this$minWidth");
                Intrinsics.checkNotNullParameter(intrinsicMeasurable, "intrinsicMeasurable");
                return IntermediateLayoutModifierNode.this.getMeasureBlock$ui_release().invoke(IntermediateLayoutModifierNode.this.intermediateMeasureScope, intrinsicMeasurable, Constraints.m4827boximpl(j));
            }
        }, intrinsicMeasureScope, measurable, i);
    }

    public final int minIntermediateIntrinsicHeight$ui_release(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable measurable, int i) {
        Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        return NodeMeasuringIntrinsics.INSTANCE.minHeight$ui_release(new NodeMeasuringIntrinsics.MeasureBlock() { // from class: androidx.compose.ui.layout.IntermediateLayoutModifierNode$minIntermediateIntrinsicHeight$1
            @Override // androidx.compose.ui.node.NodeMeasuringIntrinsics.MeasureBlock
            /* renamed from: measure-3p2s80s */
            public final MeasureResult mo3881measure3p2s80s(MeasureScope minHeight, Measurable intrinsicMeasurable, long j) {
                Intrinsics.checkNotNullParameter(minHeight, "$this$minHeight");
                Intrinsics.checkNotNullParameter(intrinsicMeasurable, "intrinsicMeasurable");
                return IntermediateLayoutModifierNode.this.getMeasureBlock$ui_release().invoke(IntermediateLayoutModifierNode.this.intermediateMeasureScope, intrinsicMeasurable, Constraints.m4827boximpl(j));
            }
        }, intrinsicMeasureScope, measurable, i);
    }

    public final int maxIntermediateIntrinsicWidth$ui_release(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable measurable, int i) {
        Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        return NodeMeasuringIntrinsics.INSTANCE.maxWidth$ui_release(new NodeMeasuringIntrinsics.MeasureBlock() { // from class: androidx.compose.ui.layout.IntermediateLayoutModifierNode$maxIntermediateIntrinsicWidth$1
            @Override // androidx.compose.ui.node.NodeMeasuringIntrinsics.MeasureBlock
            /* renamed from: measure-3p2s80s */
            public final MeasureResult mo3881measure3p2s80s(MeasureScope maxWidth, Measurable intrinsicMeasurable, long j) {
                Intrinsics.checkNotNullParameter(maxWidth, "$this$maxWidth");
                Intrinsics.checkNotNullParameter(intrinsicMeasurable, "intrinsicMeasurable");
                return IntermediateLayoutModifierNode.this.getMeasureBlock$ui_release().invoke(IntermediateLayoutModifierNode.this.intermediateMeasureScope, intrinsicMeasurable, Constraints.m4827boximpl(j));
            }
        }, intrinsicMeasureScope, measurable, i);
    }

    public final int maxIntermediateIntrinsicHeight$ui_release(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable measurable, int i) {
        Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        return NodeMeasuringIntrinsics.INSTANCE.maxHeight$ui_release(new NodeMeasuringIntrinsics.MeasureBlock() { // from class: androidx.compose.ui.layout.IntermediateLayoutModifierNode$maxIntermediateIntrinsicHeight$1
            @Override // androidx.compose.ui.node.NodeMeasuringIntrinsics.MeasureBlock
            /* renamed from: measure-3p2s80s, reason: not valid java name */
            public final MeasureResult mo3881measure3p2s80s(MeasureScope maxHeight, Measurable intrinsicMeasurable, long j) {
                Intrinsics.checkNotNullParameter(maxHeight, "$this$maxHeight");
                Intrinsics.checkNotNullParameter(intrinsicMeasurable, "intrinsicMeasurable");
                return IntermediateLayoutModifierNode.this.getMeasureBlock$ui_release().invoke(IntermediateLayoutModifierNode.this.intermediateMeasureScope, intrinsicMeasurable, Constraints.m4827boximpl(j));
            }
        }, intrinsicMeasureScope, measurable, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: IntermediateLayoutModifierNode.kt */
    @Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\f\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0082\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0001¢\u0006\u0002\u0010\u0004J\u0011\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0096\u0002J\u0010\u0010\u0016\u001a\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u0013H\u0016J\u0010\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u0013H\u0016J\u001d\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u001cH\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u001d\u0010\u001eJ\u0010\u0010\u001f\u001a\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u0013H\u0016J\u0010\u0010 \u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u0013H\u0016J@\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&2\u0019\u0010'\u001a\u0015\u0012\u0004\u0012\u00020)\u0012\u0004\u0012\u00020\"\u0018\u00010(¢\u0006\u0002\b*H\u0014ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b+\u0010,R\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u001a\u0010\u0003\u001a\u00020\u0001X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001c\u0010\r\u001a\u0004\u0018\u00010\u0002X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006-"}, d2 = {"Landroidx/compose/ui/layout/IntermediateLayoutModifierNode$IntermediateMeasurablePlaceable;", "Landroidx/compose/ui/layout/Measurable;", "Landroidx/compose/ui/layout/Placeable;", "wrappedMeasurable", "(Landroidx/compose/ui/layout/IntermediateLayoutModifierNode;Landroidx/compose/ui/layout/Measurable;)V", "parentData", "", "getParentData", "()Ljava/lang/Object;", "getWrappedMeasurable", "()Landroidx/compose/ui/layout/Measurable;", "setWrappedMeasurable", "(Landroidx/compose/ui/layout/Measurable;)V", "wrappedPlaceable", "getWrappedPlaceable", "()Landroidx/compose/ui/layout/Placeable;", "setWrappedPlaceable", "(Landroidx/compose/ui/layout/Placeable;)V", "get", "", "alignmentLine", "Landroidx/compose/ui/layout/AlignmentLine;", "maxIntrinsicHeight", ViewHierarchyNode.JsonKeys.WIDTH, "maxIntrinsicWidth", ViewHierarchyNode.JsonKeys.HEIGHT, "measure", "constraints", "Landroidx/compose/ui/unit/Constraints;", "measure-BRTryo0", "(J)Landroidx/compose/ui/layout/Placeable;", "minIntrinsicHeight", "minIntrinsicWidth", "placeAt", "", "position", "Landroidx/compose/ui/unit/IntOffset;", "zIndex", "", "layerBlock", "Lkotlin/Function1;", "Landroidx/compose/ui/graphics/GraphicsLayerScope;", "Lkotlin/ExtensionFunctionType;", "placeAt-f8xVGno", "(JFLkotlin/jvm/functions/Function1;)V", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public final class IntermediateMeasurablePlaceable extends Placeable implements Measurable {
        final /* synthetic */ IntermediateLayoutModifierNode this$0;
        private Measurable wrappedMeasurable;
        private Placeable wrappedPlaceable;

        public final Measurable getWrappedMeasurable() {
            return this.wrappedMeasurable;
        }

        public final Placeable getWrappedPlaceable() {
            return this.wrappedPlaceable;
        }

        public final void setWrappedMeasurable(Measurable measurable) {
            Intrinsics.checkNotNullParameter(measurable, "<set-?>");
            this.wrappedMeasurable = measurable;
        }

        public final void setWrappedPlaceable(Placeable placeable) {
            this.wrappedPlaceable = placeable;
        }

        public IntermediateMeasurablePlaceable(IntermediateLayoutModifierNode intermediateLayoutModifierNode, Measurable wrappedMeasurable) {
            Intrinsics.checkNotNullParameter(wrappedMeasurable, "wrappedMeasurable");
            this.this$0 = intermediateLayoutModifierNode;
            this.wrappedMeasurable = wrappedMeasurable;
        }

        @Override // androidx.compose.ui.layout.Measurable
        /* renamed from: measure-BRTryo0 */
        public Placeable mo3876measureBRTryo0(long constraints) {
            Placeable mo3876measureBRTryo0;
            long lookaheadSize;
            if (!this.this$0.getIsIntermediateChangeActive()) {
                Measurable measurable = this.wrappedMeasurable;
                Constraints constraints2 = this.this$0.lookaheadConstraints;
                Intrinsics.checkNotNull(constraints2);
                mo3876measureBRTryo0 = measurable.mo3876measureBRTryo0(constraints2.getValue());
                IntermediateLayoutModifierNode intermediateLayoutModifierNode = this.this$0;
                Constraints constraints3 = intermediateLayoutModifierNode.lookaheadConstraints;
                Intrinsics.checkNotNull(constraints3);
                m3932setMeasurementConstraintsBRTryo0(constraints3.getValue());
                if (!intermediateLayoutModifierNode.getIsIntermediateChangeActive()) {
                    lookaheadSize = intermediateLayoutModifierNode.intermediateMeasureScope.getLookaheadSize();
                } else {
                    lookaheadSize = IntSizeKt.IntSize(mo3876measureBRTryo0.getWidth(), mo3876measureBRTryo0.getHeight());
                }
                m3931setMeasuredSizeozmzZPI(lookaheadSize);
            } else {
                mo3876measureBRTryo0 = this.wrappedMeasurable.mo3876measureBRTryo0(constraints);
                m3932setMeasurementConstraintsBRTryo0(constraints);
                m3931setMeasuredSizeozmzZPI(IntSizeKt.IntSize(mo3876measureBRTryo0.getWidth(), mo3876measureBRTryo0.getHeight()));
            }
            this.wrappedPlaceable = mo3876measureBRTryo0;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.compose.ui.layout.Placeable
        /* renamed from: placeAt-f8xVGno */
        public void mo3877placeAtf8xVGno(long position, float zIndex, Function1<? super GraphicsLayerScope, Unit> layerBlock) {
            Unit unit;
            if (!this.this$0.getIsIntermediateChangeActive()) {
                position = IntOffset.INSTANCE.m5011getZeronOccac();
            }
            if (layerBlock != null) {
                Placeable placeable = this.wrappedPlaceable;
                if (placeable != null) {
                    Placeable.PlacementScope.INSTANCE.m3942placeWithLayeraW9wM(placeable, position, zIndex, layerBlock);
                    unit = Unit.INSTANCE;
                } else {
                    unit = null;
                }
                if (unit != null) {
                    return;
                }
            }
            Placeable placeable2 = this.wrappedPlaceable;
            if (placeable2 != null) {
                Placeable.PlacementScope.INSTANCE.m3937place70tqf50(placeable2, position, zIndex);
                Unit unit2 = Unit.INSTANCE;
            }
        }

        @Override // androidx.compose.ui.layout.Measured, androidx.compose.ui.layout.IntrinsicMeasurable
        public Object getParentData() {
            return this.wrappedMeasurable.getParentData();
        }

        @Override // androidx.compose.ui.layout.Measured
        public int get(AlignmentLine alignmentLine) {
            Intrinsics.checkNotNullParameter(alignmentLine, "alignmentLine");
            Placeable placeable = this.wrappedPlaceable;
            Intrinsics.checkNotNull(placeable);
            return placeable.get(alignmentLine);
        }

        @Override // androidx.compose.ui.layout.IntrinsicMeasurable
        public int minIntrinsicWidth(int height) {
            return this.wrappedMeasurable.minIntrinsicWidth(height);
        }

        @Override // androidx.compose.ui.layout.IntrinsicMeasurable
        public int maxIntrinsicWidth(int height) {
            return this.wrappedMeasurable.maxIntrinsicWidth(height);
        }

        @Override // androidx.compose.ui.layout.IntrinsicMeasurable
        public int minIntrinsicHeight(int width) {
            return this.wrappedMeasurable.minIntrinsicHeight(width);
        }

        @Override // androidx.compose.ui.layout.IntrinsicMeasurable
        public int maxIntrinsicHeight(int width) {
            return this.wrappedMeasurable.maxIntrinsicHeight(width);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: IntermediateLayoutModifierNode.kt */
    @Metadata(d1 = {"\u0000~\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0083\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003JE\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020$2\u0012\u0010&\u001a\u000e\u0012\u0004\u0012\u00020(\u0012\u0004\u0012\u00020$0'2\u0017\u0010)\u001a\u0013\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020+0*¢\u0006\u0002\b,H\u0016JD\u0010-\u001a\u00020.*\u00020.26\u0010-\u001a2\u0012\u0013\u0012\u001100¢\u0006\f\b1\u0012\b\b2\u0012\u0004\b\b(\u001c\u0012\u0013\u0012\u001100¢\u0006\f\b1\u0012\b\b2\u0012\u0004\b\b(3\u0012\u0004\u0012\u00020+0/H\u0017J\f\u00104\u001a\u00020\u001d*\u00020\u001dH\u0016R\u0014\u0010\u0004\u001a\u00020\u00058VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\u00020\t8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\f\u001a\u00020\t8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000bR\u0014\u0010\u000e\u001a\u00020\u000f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u0010R\u0014\u0010\u0011\u001a\u00020\u00128VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014R%\u0010\u0015\u001a\u00020\u0016X\u0096\u000eø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0010\n\u0002\u0010\u001b\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u0018\u0010\u001c\u001a\u00020\u001d*\u00020\u001e8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001f\u0010 \u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u00065"}, d2 = {"Landroidx/compose/ui/layout/IntermediateLayoutModifierNode$IntermediateMeasureScopeImpl;", "Landroidx/compose/ui/layout/IntermediateMeasureScope;", "Lkotlinx/coroutines/CoroutineScope;", "(Landroidx/compose/ui/layout/IntermediateLayoutModifierNode;)V", "coroutineContext", "Lkotlin/coroutines/CoroutineContext;", "getCoroutineContext", "()Lkotlin/coroutines/CoroutineContext;", "density", "", "getDensity", "()F", "fontScale", "getFontScale", "isLookingAhead", "", "()Z", "layoutDirection", "Landroidx/compose/ui/unit/LayoutDirection;", "getLayoutDirection", "()Landroidx/compose/ui/unit/LayoutDirection;", "lookaheadSize", "Landroidx/compose/ui/unit/IntSize;", "getLookaheadSize-YbymL2g", "()J", "setLookaheadSize-ozmzZPI", "(J)V", "J", "lookaheadScopeCoordinates", "Landroidx/compose/ui/layout/LayoutCoordinates;", "Landroidx/compose/ui/layout/Placeable$PlacementScope;", "getLookaheadScopeCoordinates", "(Landroidx/compose/ui/layout/Placeable$PlacementScope;)Landroidx/compose/ui/layout/LayoutCoordinates;", "layout", "Landroidx/compose/ui/layout/MeasureResult;", ViewHierarchyNode.JsonKeys.WIDTH, "", ViewHierarchyNode.JsonKeys.HEIGHT, "alignmentLines", "", "Landroidx/compose/ui/layout/AlignmentLine;", "placementBlock", "Lkotlin/Function1;", "", "Lkotlin/ExtensionFunctionType;", "onPlaced", "Landroidx/compose/ui/Modifier;", "Lkotlin/Function2;", "Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;", "Lkotlin/ParameterName;", "name", "layoutCoordinates", "toLookaheadCoordinates", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public final class IntermediateMeasureScopeImpl implements IntermediateMeasureScope, CoroutineScope {
        private long lookaheadSize = IntSize.INSTANCE.m5048getZeroYbymL2g();

        @Override // androidx.compose.ui.layout.IntermediateMeasureScope
        /* renamed from: getLookaheadSize-YbymL2g, reason: not valid java name and from getter */
        public long getLookaheadSize() {
            return this.lookaheadSize;
        }

        @Override // androidx.compose.ui.layout.IntrinsicMeasureScope
        public boolean isLookingAhead() {
            return false;
        }

        /* renamed from: setLookaheadSize-ozmzZPI, reason: not valid java name */
        public void m3880setLookaheadSizeozmzZPI(long j) {
            this.lookaheadSize = j;
        }

        public IntermediateMeasureScopeImpl() {
        }

        @Override // androidx.compose.ui.layout.LookaheadScope
        public LayoutCoordinates toLookaheadCoordinates(LayoutCoordinates layoutCoordinates) {
            Intrinsics.checkNotNullParameter(layoutCoordinates, "<this>");
            return IntermediateLayoutModifierNode.this.closestLookaheadScope.toLookaheadCoordinates(layoutCoordinates);
        }

        @Override // androidx.compose.ui.layout.LookaheadScope
        public LayoutCoordinates getLookaheadScopeCoordinates(Placeable.PlacementScope placementScope) {
            Intrinsics.checkNotNullParameter(placementScope, "<this>");
            return IntermediateLayoutModifierNode.this.closestLookaheadScope.getLookaheadScopeCoordinates(placementScope);
        }

        @Override // androidx.compose.ui.layout.LookaheadScope
        @Deprecated(message = "onPlaced in LookaheadLayoutScope has been deprecated. It's replaced with reading LookaheadLayoutCoordinates directly during placement inIntermediateMeasureScope")
        public Modifier onPlaced(Modifier modifier, Function2<? super LookaheadLayoutCoordinates, ? super LookaheadLayoutCoordinates, Unit> onPlaced) {
            Intrinsics.checkNotNullParameter(modifier, "<this>");
            Intrinsics.checkNotNullParameter(onPlaced, "onPlaced");
            return IntermediateLayoutModifierNode.this.closestLookaheadScope.onPlaced(modifier, onPlaced);
        }

        @Override // androidx.compose.ui.layout.MeasureScope
        public MeasureResult layout(final int width, final int height, final Map<AlignmentLine, Integer> alignmentLines, final Function1<? super Placeable.PlacementScope, Unit> placementBlock) {
            Intrinsics.checkNotNullParameter(alignmentLines, "alignmentLines");
            Intrinsics.checkNotNullParameter(placementBlock, "placementBlock");
            final IntermediateLayoutModifierNode intermediateLayoutModifierNode = IntermediateLayoutModifierNode.this;
            return new MeasureResult(width, height, alignmentLines, this, intermediateLayoutModifierNode, placementBlock) { // from class: androidx.compose.ui.layout.IntermediateLayoutModifierNode$IntermediateMeasureScopeImpl$layout$1
                final /* synthetic */ Function1<Placeable.PlacementScope, Unit> $placementBlock;
                final /* synthetic */ int $width;
                private final Map<AlignmentLine, Integer> alignmentLines;
                private final int height;
                final /* synthetic */ IntermediateLayoutModifierNode.IntermediateMeasureScopeImpl this$0;
                final /* synthetic */ IntermediateLayoutModifierNode this$1;
                private final int width;

                @Override // androidx.compose.ui.layout.MeasureResult
                public Map<AlignmentLine, Integer> getAlignmentLines() {
                    return this.alignmentLines;
                }

                @Override // androidx.compose.ui.layout.MeasureResult
                public int getHeight() {
                    return this.height;
                }

                @Override // androidx.compose.ui.layout.MeasureResult
                public int getWidth() {
                    return this.width;
                }

                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    this.$width = width;
                    this.this$0 = this;
                    this.this$1 = intermediateLayoutModifierNode;
                    this.$placementBlock = placementBlock;
                    this.width = width;
                    this.height = height;
                    this.alignmentLines = alignmentLines;
                }

                @Override // androidx.compose.ui.layout.MeasureResult
                public void placeChildren() {
                    Placeable.PlacementScope.Companion companion = Placeable.PlacementScope.INSTANCE;
                    int i = this.$width;
                    LayoutDirection layoutDirection = this.this$0.getLayoutDirection();
                    NodeCoordinator coordinator$ui_release = this.this$1.getCoordinator();
                    Function1<Placeable.PlacementScope, Unit> function1 = this.$placementBlock;
                    LayoutCoordinates layoutCoordinates = Placeable.PlacementScope._coordinates;
                    int parentWidth = Placeable.PlacementScope.INSTANCE.getParentWidth();
                    LayoutDirection parentLayoutDirection = Placeable.PlacementScope.INSTANCE.getParentLayoutDirection();
                    LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = Placeable.PlacementScope.layoutDelegate;
                    Placeable.PlacementScope.Companion companion2 = Placeable.PlacementScope.INSTANCE;
                    Placeable.PlacementScope.parentWidth = i;
                    Placeable.PlacementScope.Companion companion3 = Placeable.PlacementScope.INSTANCE;
                    Placeable.PlacementScope.parentLayoutDirection = layoutDirection;
                    boolean configureForPlacingForAlignment = companion.configureForPlacingForAlignment(coordinator$ui_release);
                    function1.invoke(companion);
                    if (coordinator$ui_release != null) {
                        coordinator$ui_release.setPlacingForAlignment$ui_release(configureForPlacingForAlignment);
                    }
                    Placeable.PlacementScope.Companion companion4 = Placeable.PlacementScope.INSTANCE;
                    Placeable.PlacementScope.parentWidth = parentWidth;
                    Placeable.PlacementScope.Companion companion5 = Placeable.PlacementScope.INSTANCE;
                    Placeable.PlacementScope.parentLayoutDirection = parentLayoutDirection;
                    Placeable.PlacementScope._coordinates = layoutCoordinates;
                    Placeable.PlacementScope.layoutDelegate = layoutNodeLayoutDelegate;
                }
            };
        }

        @Override // androidx.compose.ui.layout.IntrinsicMeasureScope
        public LayoutDirection getLayoutDirection() {
            NodeCoordinator coordinator$ui_release = IntermediateLayoutModifierNode.this.getCoordinator();
            Intrinsics.checkNotNull(coordinator$ui_release);
            return coordinator$ui_release.getLayoutDirection();
        }

        @Override // androidx.compose.ui.unit.Density
        public float getDensity() {
            NodeCoordinator coordinator$ui_release = IntermediateLayoutModifierNode.this.getCoordinator();
            Intrinsics.checkNotNull(coordinator$ui_release);
            return coordinator$ui_release.getDensity();
        }

        @Override // androidx.compose.ui.unit.Density
        public float getFontScale() {
            NodeCoordinator coordinator$ui_release = IntermediateLayoutModifierNode.this.getCoordinator();
            Intrinsics.checkNotNull(coordinator$ui_release);
            return coordinator$ui_release.getFontScale();
        }

        @Override // kotlinx.coroutines.CoroutineScope
        public CoroutineContext getCoroutineContext() {
            return IntermediateLayoutModifierNode.this.getCoroutineScope().getCoroutineContext();
        }
    }
}
