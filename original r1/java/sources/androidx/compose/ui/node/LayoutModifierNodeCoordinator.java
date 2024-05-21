package androidx.compose.ui.node;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.AndroidPaint_androidKt;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.graphics.Paint;
import androidx.compose.ui.graphics.PaintingStyle;
import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.IntermediateLayoutModifierNode;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.LayoutDirection;
import io.sentry.protocol.ViewHierarchyNode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: LayoutModifierNodeCoordinator.kt */
@Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u0000 ;2\u00020\u0001:\u0002;<B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0010\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J\b\u0010 \u001a\u00020!H\u0016J\u0010\u0010\"\u001a\u00020\u001d2\u0006\u0010#\u001a\u00020\u001dH\u0016J\u0010\u0010$\u001a\u00020\u001d2\u0006\u0010%\u001a\u00020\u001dH\u0016J\u001d\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020\u000eH\u0016ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b)\u0010*J\u0010\u0010+\u001a\u00020\u001d2\u0006\u0010#\u001a\u00020\u001dH\u0016J\u0010\u0010,\u001a\u00020\u001d2\u0006\u0010%\u001a\u00020\u001dH\u0016J\u0010\u0010-\u001a\u00020!2\u0006\u0010.\u001a\u00020/H\u0016J@\u00100\u001a\u00020!2\u0006\u00101\u001a\u0002022\u0006\u00103\u001a\u0002042\u0019\u00105\u001a\u0015\u0012\u0004\u0012\u000207\u0012\u0004\u0012\u00020!\u0018\u000106¢\u0006\u0002\b8H\u0014ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b9\u0010:R$\u0010\b\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0005@@X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u0019\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000eø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0002\n\u0000R(\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\b\u0010\u0007\u001a\u0004\u0018\u00010\u000f@TX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0015\u001a\u00020\u00168VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0018R\u0011\u0010\u0019\u001a\u00020\u00018F¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u001b\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006="}, d2 = {"Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;", "Landroidx/compose/ui/node/NodeCoordinator;", "layoutNode", "Landroidx/compose/ui/node/LayoutNode;", "measureNode", "Landroidx/compose/ui/node/LayoutModifierNode;", "(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/node/LayoutModifierNode;)V", "<set-?>", "layoutModifierNode", "getLayoutModifierNode", "()Landroidx/compose/ui/node/LayoutModifierNode;", "setLayoutModifierNode$ui_release", "(Landroidx/compose/ui/node/LayoutModifierNode;)V", "lookaheadConstraints", "Landroidx/compose/ui/unit/Constraints;", "Landroidx/compose/ui/node/LookaheadDelegate;", "lookaheadDelegate", "getLookaheadDelegate", "()Landroidx/compose/ui/node/LookaheadDelegate;", "setLookaheadDelegate", "(Landroidx/compose/ui/node/LookaheadDelegate;)V", "tail", "Landroidx/compose/ui/Modifier$Node;", "getTail", "()Landroidx/compose/ui/Modifier$Node;", "wrappedNonNull", "getWrappedNonNull", "()Landroidx/compose/ui/node/NodeCoordinator;", "calculateAlignmentLine", "", "alignmentLine", "Landroidx/compose/ui/layout/AlignmentLine;", "ensureLookaheadDelegateCreated", "", "maxIntrinsicHeight", ViewHierarchyNode.JsonKeys.WIDTH, "maxIntrinsicWidth", ViewHierarchyNode.JsonKeys.HEIGHT, "measure", "Landroidx/compose/ui/layout/Placeable;", "constraints", "measure-BRTryo0", "(J)Landroidx/compose/ui/layout/Placeable;", "minIntrinsicHeight", "minIntrinsicWidth", "performDraw", "canvas", "Landroidx/compose/ui/graphics/Canvas;", "placeAt", "position", "Landroidx/compose/ui/unit/IntOffset;", "zIndex", "", "layerBlock", "Lkotlin/Function1;", "Landroidx/compose/ui/graphics/GraphicsLayerScope;", "Lkotlin/ExtensionFunctionType;", "placeAt-f8xVGno", "(JFLkotlin/jvm/functions/Function1;)V", "Companion", "LookaheadDelegateForLayoutModifierNode", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class LayoutModifierNodeCoordinator extends NodeCoordinator {

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final Paint modifierBoundsPaint;
    private LayoutModifierNode layoutModifierNode;
    private Constraints lookaheadConstraints;
    private LookaheadDelegate lookaheadDelegate;

    public final LayoutModifierNode getLayoutModifierNode() {
        return this.layoutModifierNode;
    }

    @Override // androidx.compose.ui.node.NodeCoordinator
    public LookaheadDelegate getLookaheadDelegate() {
        return this.lookaheadDelegate;
    }

    public final void setLayoutModifierNode$ui_release(LayoutModifierNode layoutModifierNode) {
        Intrinsics.checkNotNullParameter(layoutModifierNode, "<set-?>");
        this.layoutModifierNode = layoutModifierNode;
    }

    @Override // androidx.compose.ui.node.NodeCoordinator
    protected void setLookaheadDelegate(LookaheadDelegate lookaheadDelegate) {
        this.lookaheadDelegate = lookaheadDelegate;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LayoutModifierNodeCoordinator(LayoutNode layoutNode, LayoutModifierNode measureNode) {
        super(layoutNode);
        Intrinsics.checkNotNullParameter(layoutNode, "layoutNode");
        Intrinsics.checkNotNullParameter(measureNode, "measureNode");
        this.layoutModifierNode = measureNode;
        this.lookaheadDelegate = layoutNode.getLookaheadRoot() != null ? new LookaheadDelegateForLayoutModifierNode() : null;
    }

    @Override // androidx.compose.ui.node.NodeCoordinator
    public Modifier.Node getTail() {
        return this.layoutModifierNode.getNode();
    }

    public final NodeCoordinator getWrappedNonNull() {
        NodeCoordinator wrapped$ui_release = getWrapped();
        Intrinsics.checkNotNull(wrapped$ui_release);
        return wrapped$ui_release;
    }

    /* compiled from: LayoutModifierNodeCoordinator.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0004H\u0016J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0004H\u0016J\u001d\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u000f\u0010\u0010J\u0010\u0010\u0011\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0004H\u0016J\u0010\u0010\u0012\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0004H\u0016\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006\u0013"}, d2 = {"Landroidx/compose/ui/node/LayoutModifierNodeCoordinator$LookaheadDelegateForLayoutModifierNode;", "Landroidx/compose/ui/node/LookaheadDelegate;", "(Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;)V", "calculateAlignmentLine", "", "alignmentLine", "Landroidx/compose/ui/layout/AlignmentLine;", "maxIntrinsicHeight", ViewHierarchyNode.JsonKeys.WIDTH, "maxIntrinsicWidth", ViewHierarchyNode.JsonKeys.HEIGHT, "measure", "Landroidx/compose/ui/layout/Placeable;", "constraints", "Landroidx/compose/ui/unit/Constraints;", "measure-BRTryo0", "(J)Landroidx/compose/ui/layout/Placeable;", "minIntrinsicHeight", "minIntrinsicWidth", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    private final class LookaheadDelegateForLayoutModifierNode extends LookaheadDelegate {
        public LookaheadDelegateForLayoutModifierNode() {
            super(LayoutModifierNodeCoordinator.this);
        }

        @Override // androidx.compose.ui.layout.Measurable
        /* renamed from: measure-BRTryo0 */
        public Placeable mo3876measureBRTryo0(long constraints) {
            LookaheadDelegateForLayoutModifierNode lookaheadDelegateForLayoutModifierNode = this;
            LayoutModifierNodeCoordinator layoutModifierNodeCoordinator = LayoutModifierNodeCoordinator.this;
            LookaheadDelegate.m4041access$setMeasurementConstraintsBRTryo0(lookaheadDelegateForLayoutModifierNode, constraints);
            layoutModifierNodeCoordinator.lookaheadConstraints = Constraints.m4827boximpl(constraints);
            LookaheadDelegate lookaheadDelegate = layoutModifierNodeCoordinator.getWrappedNonNull().getLookaheadDelegate();
            Intrinsics.checkNotNull(lookaheadDelegate);
            LookaheadDelegate.access$set_measureResult(lookaheadDelegateForLayoutModifierNode, layoutModifierNodeCoordinator.getLayoutModifierNode().mo247measure3p2s80s(this, lookaheadDelegate, constraints));
            return lookaheadDelegateForLayoutModifierNode;
        }

        @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
        public int calculateAlignmentLine(AlignmentLine alignmentLine) {
            int calculateAlignmentAndPlaceChildAsNeeded;
            Intrinsics.checkNotNullParameter(alignmentLine, "alignmentLine");
            calculateAlignmentAndPlaceChildAsNeeded = LayoutModifierNodeCoordinatorKt.calculateAlignmentAndPlaceChildAsNeeded(this, alignmentLine);
            getCachedAlignmentLinesMap().put(alignmentLine, Integer.valueOf(calculateAlignmentAndPlaceChildAsNeeded));
            return calculateAlignmentAndPlaceChildAsNeeded;
        }

        @Override // androidx.compose.ui.node.LookaheadDelegate, androidx.compose.ui.layout.IntrinsicMeasurable
        public int minIntrinsicWidth(int height) {
            LayoutModifierNode layoutModifierNode = LayoutModifierNodeCoordinator.this.getLayoutModifierNode();
            LookaheadDelegate lookaheadDelegate = LayoutModifierNodeCoordinator.this.getWrappedNonNull().getLookaheadDelegate();
            Intrinsics.checkNotNull(lookaheadDelegate);
            return layoutModifierNode.minIntrinsicWidth(this, lookaheadDelegate, height);
        }

        @Override // androidx.compose.ui.node.LookaheadDelegate, androidx.compose.ui.layout.IntrinsicMeasurable
        public int maxIntrinsicWidth(int height) {
            LayoutModifierNode layoutModifierNode = LayoutModifierNodeCoordinator.this.getLayoutModifierNode();
            LookaheadDelegate lookaheadDelegate = LayoutModifierNodeCoordinator.this.getWrappedNonNull().getLookaheadDelegate();
            Intrinsics.checkNotNull(lookaheadDelegate);
            return layoutModifierNode.maxIntrinsicWidth(this, lookaheadDelegate, height);
        }

        @Override // androidx.compose.ui.node.LookaheadDelegate, androidx.compose.ui.layout.IntrinsicMeasurable
        public int minIntrinsicHeight(int width) {
            LayoutModifierNode layoutModifierNode = LayoutModifierNodeCoordinator.this.getLayoutModifierNode();
            LookaheadDelegate lookaheadDelegate = LayoutModifierNodeCoordinator.this.getWrappedNonNull().getLookaheadDelegate();
            Intrinsics.checkNotNull(lookaheadDelegate);
            return layoutModifierNode.minIntrinsicHeight(this, lookaheadDelegate, width);
        }

        @Override // androidx.compose.ui.node.LookaheadDelegate, androidx.compose.ui.layout.IntrinsicMeasurable
        public int maxIntrinsicHeight(int width) {
            LayoutModifierNode layoutModifierNode = LayoutModifierNodeCoordinator.this.getLayoutModifierNode();
            LookaheadDelegate lookaheadDelegate = LayoutModifierNodeCoordinator.this.getWrappedNonNull().getLookaheadDelegate();
            Intrinsics.checkNotNull(lookaheadDelegate);
            return layoutModifierNode.maxIntrinsicHeight(this, lookaheadDelegate, width);
        }
    }

    @Override // androidx.compose.ui.node.NodeCoordinator
    public void ensureLookaheadDelegateCreated() {
        if (getLookaheadDelegate() == null) {
            setLookaheadDelegate(new LookaheadDelegateForLayoutModifierNode());
        }
    }

    @Override // androidx.compose.ui.layout.Measurable
    /* renamed from: measure-BRTryo0 */
    public Placeable mo3876measureBRTryo0(long constraints) {
        MeasureResult mo247measure3p2s80s;
        m3932setMeasurementConstraintsBRTryo0(constraints);
        LayoutModifierNode layoutModifierNode = getLayoutModifierNode();
        if (layoutModifierNode instanceof IntermediateLayoutModifierNode) {
            NodeCoordinator wrappedNonNull = getWrappedNonNull();
            LookaheadDelegate lookaheadDelegate = getLookaheadDelegate();
            Intrinsics.checkNotNull(lookaheadDelegate);
            MeasureResult measureResult$ui_release = lookaheadDelegate.getMeasureResult$ui_release();
            long IntSize = IntSizeKt.IntSize(measureResult$ui_release.getWidth(), measureResult$ui_release.getHeight());
            Constraints constraints2 = this.lookaheadConstraints;
            Intrinsics.checkNotNull(constraints2);
            mo247measure3p2s80s = ((IntermediateLayoutModifierNode) layoutModifierNode).m3878intermediateMeasureTeuZzU(this, wrappedNonNull, constraints, IntSize, constraints2.getValue());
        } else {
            mo247measure3p2s80s = layoutModifierNode.mo247measure3p2s80s(this, getWrappedNonNull(), constraints);
        }
        setMeasureResult$ui_release(mo247measure3p2s80s);
        LayoutModifierNodeCoordinator layoutModifierNodeCoordinator = this;
        onMeasured();
        return layoutModifierNodeCoordinator;
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public int minIntrinsicWidth(int height) {
        LayoutModifierNode layoutModifierNode = this.layoutModifierNode;
        IntermediateLayoutModifierNode intermediateLayoutModifierNode = layoutModifierNode instanceof IntermediateLayoutModifierNode ? (IntermediateLayoutModifierNode) layoutModifierNode : null;
        if (intermediateLayoutModifierNode != null) {
            return intermediateLayoutModifierNode.minIntermediateIntrinsicWidth$ui_release(this, getWrappedNonNull(), height);
        }
        return layoutModifierNode.minIntrinsicWidth(this, getWrappedNonNull(), height);
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public int maxIntrinsicWidth(int height) {
        LayoutModifierNode layoutModifierNode = this.layoutModifierNode;
        IntermediateLayoutModifierNode intermediateLayoutModifierNode = layoutModifierNode instanceof IntermediateLayoutModifierNode ? (IntermediateLayoutModifierNode) layoutModifierNode : null;
        if (intermediateLayoutModifierNode != null) {
            return intermediateLayoutModifierNode.maxIntermediateIntrinsicWidth$ui_release(this, getWrappedNonNull(), height);
        }
        return layoutModifierNode.maxIntrinsicWidth(this, getWrappedNonNull(), height);
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public int minIntrinsicHeight(int width) {
        LayoutModifierNode layoutModifierNode = this.layoutModifierNode;
        IntermediateLayoutModifierNode intermediateLayoutModifierNode = layoutModifierNode instanceof IntermediateLayoutModifierNode ? (IntermediateLayoutModifierNode) layoutModifierNode : null;
        if (intermediateLayoutModifierNode != null) {
            return intermediateLayoutModifierNode.minIntermediateIntrinsicHeight$ui_release(this, getWrappedNonNull(), width);
        }
        return layoutModifierNode.minIntrinsicHeight(this, getWrappedNonNull(), width);
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public int maxIntrinsicHeight(int width) {
        LayoutModifierNode layoutModifierNode = this.layoutModifierNode;
        IntermediateLayoutModifierNode intermediateLayoutModifierNode = layoutModifierNode instanceof IntermediateLayoutModifierNode ? (IntermediateLayoutModifierNode) layoutModifierNode : null;
        if (intermediateLayoutModifierNode != null) {
            return intermediateLayoutModifierNode.maxIntermediateIntrinsicHeight$ui_release(this, getWrappedNonNull(), width);
        }
        return layoutModifierNode.maxIntrinsicHeight(this, getWrappedNonNull(), width);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.compose.ui.node.NodeCoordinator, androidx.compose.ui.layout.Placeable
    /* renamed from: placeAt-f8xVGno */
    public void mo3877placeAtf8xVGno(long position, float zIndex, Function1<? super GraphicsLayerScope, Unit> layerBlock) {
        super.mo3877placeAtf8xVGno(position, zIndex, layerBlock);
        if (getIsShallowPlacing()) {
            return;
        }
        onPlaced();
        Placeable.PlacementScope.Companion companion = Placeable.PlacementScope.INSTANCE;
        int m5043getWidthimpl = IntSize.m5043getWidthimpl(getMeasuredSize());
        LayoutDirection layoutDirection = getLayoutDirection();
        LayoutCoordinates layoutCoordinates = Placeable.PlacementScope._coordinates;
        int parentWidth = Placeable.PlacementScope.INSTANCE.getParentWidth();
        LayoutDirection parentLayoutDirection = Placeable.PlacementScope.INSTANCE.getParentLayoutDirection();
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = Placeable.PlacementScope.layoutDelegate;
        Placeable.PlacementScope.Companion companion2 = Placeable.PlacementScope.INSTANCE;
        Placeable.PlacementScope.parentWidth = m5043getWidthimpl;
        Placeable.PlacementScope.Companion companion3 = Placeable.PlacementScope.INSTANCE;
        Placeable.PlacementScope.parentLayoutDirection = layoutDirection;
        LayoutModifierNodeCoordinator layoutModifierNodeCoordinator = this;
        boolean configureForPlacingForAlignment = companion.configureForPlacingForAlignment(layoutModifierNodeCoordinator);
        getMeasureResult$ui_release().placeChildren();
        layoutModifierNodeCoordinator.setPlacingForAlignment$ui_release(configureForPlacingForAlignment);
        Placeable.PlacementScope.Companion companion4 = Placeable.PlacementScope.INSTANCE;
        Placeable.PlacementScope.parentWidth = parentWidth;
        Placeable.PlacementScope.Companion companion5 = Placeable.PlacementScope.INSTANCE;
        Placeable.PlacementScope.parentLayoutDirection = parentLayoutDirection;
        Placeable.PlacementScope._coordinates = layoutCoordinates;
        Placeable.PlacementScope.layoutDelegate = layoutNodeLayoutDelegate;
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public int calculateAlignmentLine(AlignmentLine alignmentLine) {
        int calculateAlignmentAndPlaceChildAsNeeded;
        Intrinsics.checkNotNullParameter(alignmentLine, "alignmentLine");
        LookaheadDelegate lookaheadDelegate = getLookaheadDelegate();
        if (lookaheadDelegate != null) {
            return lookaheadDelegate.getCachedAlignmentLine$ui_release(alignmentLine);
        }
        calculateAlignmentAndPlaceChildAsNeeded = LayoutModifierNodeCoordinatorKt.calculateAlignmentAndPlaceChildAsNeeded(this, alignmentLine);
        return calculateAlignmentAndPlaceChildAsNeeded;
    }

    @Override // androidx.compose.ui.node.NodeCoordinator
    public void performDraw(Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        getWrappedNonNull().draw(canvas);
        if (LayoutNodeKt.requireOwner(getLayoutNode()).getShowLayoutBounds()) {
            drawBorder(canvas, modifierBoundsPaint);
        }
    }

    /* compiled from: LayoutModifierNodeCoordinator.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/ui/node/LayoutModifierNodeCoordinator$Companion;", "", "()V", "modifierBoundsPaint", "Landroidx/compose/ui/graphics/Paint;", "getModifierBoundsPaint", "()Landroidx/compose/ui/graphics/Paint;", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Paint getModifierBoundsPaint() {
            return LayoutModifierNodeCoordinator.modifierBoundsPaint;
        }
    }

    static {
        Paint Paint = AndroidPaint_androidKt.Paint();
        Paint.mo2520setColor8_81llA(Color.INSTANCE.m2666getBlue0d7_KjU());
        Paint.setStrokeWidth(1.0f);
        Paint.mo2524setStylek9PVt8s(PaintingStyle.INSTANCE.m2901getStrokeTiuSbCo());
        modifierBoundsPaint = Paint;
    }
}
