package androidx.compose.ui.node;

import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LookaheadLayoutCoordinatesImpl;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.LayoutNodeLayoutDelegate;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.LayoutDirection;
import io.sentry.protocol.ViewHierarchyNode;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: LookaheadDelegate.kt */
@Metadata(d1 = {"\u0000¢\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\b \u0018\u00002\u00020\u00012\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0015\u0010F\u001a\u00020\u00122\u0006\u0010G\u001a\u00020\u0011H\u0000¢\u0006\u0002\bHJ\u0010\u0010I\u001a\u00020\u00122\u0006\u0010J\u001a\u00020\u0012H\u0016J\u0010\u0010K\u001a\u00020\u00122\u0006\u0010L\u001a\u00020\u0012H\u0016J\u0010\u0010M\u001a\u00020\u00122\u0006\u0010J\u001a\u00020\u0012H\u0016J\u0010\u0010N\u001a\u00020\u00122\u0006\u0010L\u001a\u00020\u0012H\u0016J/\u0010O\u001a\u00020P2\u0006\u0010Q\u001a\u00020R2\f\u0010S\u001a\b\u0012\u0004\u0012\u00020\u00070TH\u0086\bø\u0001\u0003ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\bU\u0010VJ@\u0010W\u001a\u00020X2\u0006\u0010?\u001a\u00020@2\u0006\u0010Y\u001a\u00020\u001f2\u0019\u0010Z\u001a\u0015\u0012\u0004\u0012\u00020\\\u0012\u0004\u0012\u00020X\u0018\u00010[¢\u0006\u0002\b]H\u0004ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b^\u0010_J\b\u0010`\u001a\u00020XH\u0014J \u0010a\u001a\u00020@2\u0006\u0010b\u001a\u00020\u0000H\u0000ø\u0001\u0002ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\bc\u0010dJ\r\u0010e\u001a\u00020XH\u0010¢\u0006\u0002\bfR\"\u0010\b\u001a\u0004\u0018\u00010\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007@BX\u0082\u000e¢\u0006\b\n\u0000\"\u0004\b\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000eR \u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00120\u0010X\u0084\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0015\u001a\u0004\u0018\u00010\u00028VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0017R\u0014\u0010\u0018\u001a\u00020\u00198VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u001bR\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001dR\u0014\u0010\u001e\u001a\u00020\u001f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b \u0010!R\u0014\u0010\"\u001a\u00020\u001f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b#\u0010!R\u0014\u0010$\u001a\u00020%8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b&\u0010'R\u0014\u0010(\u001a\u00020%8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b(\u0010'R\u0014\u0010)\u001a\u00020*8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b+\u0010,R\u0014\u0010-\u001a\u00020.8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b/\u00100R\u0011\u00101\u001a\u000202¢\u0006\b\n\u0000\u001a\u0004\b3\u00104R\u0014\u00105\u001a\u00020\u00078PX\u0090\u0004¢\u0006\u0006\u001a\u0004\b6\u00107R\u001c\u00108\u001a\u0010\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u00109\u001a\u0004\u0018\u00010\u00028VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b:\u0010\u0017R\u0016\u0010;\u001a\u0004\u0018\u00010<8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b=\u0010>R%\u0010?\u001a\u00020@X\u0096\u000eø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0010\n\u0002\u0010E\u001a\u0004\bA\u0010B\"\u0004\bC\u0010D\u0082\u0002\u0016\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!\n\u0005\b\u009920\u0001¨\u0006g"}, d2 = {"Landroidx/compose/ui/node/LookaheadDelegate;", "Landroidx/compose/ui/layout/Measurable;", "Landroidx/compose/ui/node/LookaheadCapablePlaceable;", "coordinator", "Landroidx/compose/ui/node/NodeCoordinator;", "(Landroidx/compose/ui/node/NodeCoordinator;)V", "result", "Landroidx/compose/ui/layout/MeasureResult;", "_measureResult", "set_measureResult", "(Landroidx/compose/ui/layout/MeasureResult;)V", "alignmentLinesOwner", "Landroidx/compose/ui/node/AlignmentLinesOwner;", "getAlignmentLinesOwner", "()Landroidx/compose/ui/node/AlignmentLinesOwner;", "cachedAlignmentLinesMap", "", "Landroidx/compose/ui/layout/AlignmentLine;", "", "getCachedAlignmentLinesMap", "()Ljava/util/Map;", "child", "getChild", "()Landroidx/compose/ui/node/LookaheadCapablePlaceable;", "coordinates", "Landroidx/compose/ui/layout/LayoutCoordinates;", "getCoordinates", "()Landroidx/compose/ui/layout/LayoutCoordinates;", "getCoordinator", "()Landroidx/compose/ui/node/NodeCoordinator;", "density", "", "getDensity", "()F", "fontScale", "getFontScale", "hasMeasureResult", "", "getHasMeasureResult", "()Z", "isLookingAhead", "layoutDirection", "Landroidx/compose/ui/unit/LayoutDirection;", "getLayoutDirection", "()Landroidx/compose/ui/unit/LayoutDirection;", "layoutNode", "Landroidx/compose/ui/node/LayoutNode;", "getLayoutNode", "()Landroidx/compose/ui/node/LayoutNode;", "lookaheadLayoutCoordinates", "Landroidx/compose/ui/layout/LookaheadLayoutCoordinatesImpl;", "getLookaheadLayoutCoordinates", "()Landroidx/compose/ui/layout/LookaheadLayoutCoordinatesImpl;", "measureResult", "getMeasureResult$ui_release", "()Landroidx/compose/ui/layout/MeasureResult;", "oldAlignmentLines", "parent", "getParent", "parentData", "", "getParentData", "()Ljava/lang/Object;", "position", "Landroidx/compose/ui/unit/IntOffset;", "getPosition-nOcc-ac", "()J", "setPosition--gyyYBs", "(J)V", "J", "getCachedAlignmentLine", "alignmentLine", "getCachedAlignmentLine$ui_release", "maxIntrinsicHeight", ViewHierarchyNode.JsonKeys.WIDTH, "maxIntrinsicWidth", ViewHierarchyNode.JsonKeys.HEIGHT, "minIntrinsicHeight", "minIntrinsicWidth", "performingMeasure", "Landroidx/compose/ui/layout/Placeable;", "constraints", "Landroidx/compose/ui/unit/Constraints;", "block", "Lkotlin/Function0;", "performingMeasure-K40F9xA", "(JLkotlin/jvm/functions/Function0;)Landroidx/compose/ui/layout/Placeable;", "placeAt", "", "zIndex", "layerBlock", "Lkotlin/Function1;", "Landroidx/compose/ui/graphics/GraphicsLayerScope;", "Lkotlin/ExtensionFunctionType;", "placeAt-f8xVGno", "(JFLkotlin/jvm/functions/Function1;)V", "placeChildren", "positionIn", "ancestor", "positionIn-Bjo55l4$ui_release", "(Landroidx/compose/ui/node/LookaheadDelegate;)J", "replace", "replace$ui_release", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public abstract class LookaheadDelegate extends LookaheadCapablePlaceable implements Measurable {
    private MeasureResult _measureResult;
    private final Map<AlignmentLine, Integer> cachedAlignmentLinesMap;
    private final NodeCoordinator coordinator;
    private final LookaheadLayoutCoordinatesImpl lookaheadLayoutCoordinates;
    private Map<AlignmentLine, Integer> oldAlignmentLines;
    private long position;

    public final Map<AlignmentLine, Integer> getCachedAlignmentLinesMap() {
        return this.cachedAlignmentLinesMap;
    }

    public final NodeCoordinator getCoordinator() {
        return this.coordinator;
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public boolean getHasMeasureResult() {
        return this._measureResult != null;
    }

    public final LookaheadLayoutCoordinatesImpl getLookaheadLayoutCoordinates() {
        return this.lookaheadLayoutCoordinates;
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    /* renamed from: getPosition-nOcc-ac, reason: from getter */
    public long getPosition() {
        return this.position;
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable, androidx.compose.ui.layout.IntrinsicMeasureScope
    public boolean isLookingAhead() {
        return true;
    }

    /* renamed from: setPosition--gyyYBs */
    public void m4044setPositiongyyYBs(long j) {
        this.position = j;
    }

    /* renamed from: access$setMeasurementConstraints-BRTryo0 */
    public static final /* synthetic */ void m4041access$setMeasurementConstraintsBRTryo0(LookaheadDelegate lookaheadDelegate, long j) {
        lookaheadDelegate.m3932setMeasurementConstraintsBRTryo0(j);
    }

    public static final /* synthetic */ void access$set_measureResult(LookaheadDelegate lookaheadDelegate, MeasureResult measureResult) {
        lookaheadDelegate.set_measureResult(measureResult);
    }

    public LookaheadDelegate(NodeCoordinator coordinator) {
        Intrinsics.checkNotNullParameter(coordinator, "coordinator");
        this.coordinator = coordinator;
        this.position = IntOffset.INSTANCE.m5011getZeronOccac();
        this.lookaheadLayoutCoordinates = new LookaheadLayoutCoordinatesImpl(this);
        this.cachedAlignmentLinesMap = new LinkedHashMap();
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public LookaheadCapablePlaceable getChild() {
        NodeCoordinator wrapped = this.coordinator.getWrapped();
        return wrapped != null ? wrapped.getLookaheadDelegate() : null;
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public MeasureResult getMeasureResult$ui_release() {
        MeasureResult measureResult = this._measureResult;
        if (measureResult != null) {
            return measureResult;
        }
        throw new IllegalStateException("LookaheadDelegate has not been measured yet when measureResult is requested.".toString());
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasureScope
    public LayoutDirection getLayoutDirection() {
        return this.coordinator.getLayoutDirection();
    }

    @Override // androidx.compose.ui.unit.Density
    public float getDensity() {
        return this.coordinator.getDensity();
    }

    @Override // androidx.compose.ui.unit.Density
    public float getFontScale() {
        return this.coordinator.getFontScale();
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public LookaheadCapablePlaceable getParent() {
        NodeCoordinator wrappedBy = this.coordinator.getWrappedBy();
        return wrappedBy != null ? wrappedBy.getLookaheadDelegate() : null;
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable, androidx.compose.ui.node.MeasureScopeWithLayoutNode
    public LayoutNode getLayoutNode() {
        return this.coordinator.getLayoutNode();
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public LayoutCoordinates getCoordinates() {
        return this.lookaheadLayoutCoordinates;
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public AlignmentLinesOwner getAlignmentLinesOwner() {
        AlignmentLinesOwner lookaheadAlignmentLinesOwner$ui_release = this.coordinator.getLayoutNode().getLayoutDelegate().getLookaheadAlignmentLinesOwner$ui_release();
        Intrinsics.checkNotNull(lookaheadAlignmentLinesOwner$ui_release);
        return lookaheadAlignmentLinesOwner$ui_release;
    }

    public final void set_measureResult(MeasureResult measureResult) {
        Unit unit;
        Map<AlignmentLine, Integer> map;
        if (measureResult != null) {
            m3931setMeasuredSizeozmzZPI(IntSizeKt.IntSize(measureResult.getWidth(), measureResult.getHeight()));
            unit = Unit.INSTANCE;
        } else {
            unit = null;
        }
        if (unit == null) {
            m3931setMeasuredSizeozmzZPI(IntSize.INSTANCE.m5048getZeroYbymL2g());
        }
        if (!Intrinsics.areEqual(this._measureResult, measureResult) && measureResult != null && ((((map = this.oldAlignmentLines) != null && !map.isEmpty()) || (!measureResult.getAlignmentLines().isEmpty())) && !Intrinsics.areEqual(measureResult.getAlignmentLines(), this.oldAlignmentLines))) {
            getAlignmentLinesOwner().getAlignmentLines().onAlignmentsChanged();
            LinkedHashMap linkedHashMap = this.oldAlignmentLines;
            if (linkedHashMap == null) {
                linkedHashMap = new LinkedHashMap();
                this.oldAlignmentLines = linkedHashMap;
            }
            linkedHashMap.clear();
            linkedHashMap.putAll(measureResult.getAlignmentLines());
        }
        this._measureResult = measureResult;
    }

    public final int getCachedAlignmentLine$ui_release(AlignmentLine alignmentLine) {
        Intrinsics.checkNotNullParameter(alignmentLine, "alignmentLine");
        Integer num = this.cachedAlignmentLinesMap.get(alignmentLine);
        if (num != null) {
            return num.intValue();
        }
        return Integer.MIN_VALUE;
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public void replace$ui_release() {
        mo3877placeAtf8xVGno(getPosition(), 0.0f, null);
    }

    @Override // androidx.compose.ui.layout.Placeable
    /* renamed from: placeAt-f8xVGno */
    public final void mo3877placeAtf8xVGno(long position, float zIndex, Function1<? super GraphicsLayerScope, Unit> layerBlock) {
        if (!IntOffset.m5000equalsimpl0(getPosition(), position)) {
            m4044setPositiongyyYBs(position);
            LayoutNodeLayoutDelegate.LookaheadPassDelegate lookaheadPassDelegate = getLayoutNode().getLayoutDelegate().getLookaheadPassDelegate();
            if (lookaheadPassDelegate != null) {
                lookaheadPassDelegate.notifyChildrenUsingCoordinatesWhilePlacing();
            }
            invalidateAlignmentLinesFromPositionChange(this.coordinator);
        }
        if (getIsShallowPlacing()) {
            return;
        }
        placeChildren();
    }

    protected void placeChildren() {
        Placeable.PlacementScope.Companion companion = Placeable.PlacementScope.INSTANCE;
        int width = getMeasureResult$ui_release().getWidth();
        LayoutDirection layoutDirection = this.coordinator.getLayoutDirection();
        LayoutCoordinates layoutCoordinates = Placeable.PlacementScope._coordinates;
        int parentWidth = Placeable.PlacementScope.INSTANCE.getParentWidth();
        LayoutDirection parentLayoutDirection = Placeable.PlacementScope.INSTANCE.getParentLayoutDirection();
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = Placeable.PlacementScope.layoutDelegate;
        Placeable.PlacementScope.Companion companion2 = Placeable.PlacementScope.INSTANCE;
        Placeable.PlacementScope.parentWidth = width;
        Placeable.PlacementScope.Companion companion3 = Placeable.PlacementScope.INSTANCE;
        Placeable.PlacementScope.parentLayoutDirection = layoutDirection;
        LookaheadDelegate lookaheadDelegate = this;
        boolean configureForPlacingForAlignment = companion.configureForPlacingForAlignment(lookaheadDelegate);
        getMeasureResult$ui_release().placeChildren();
        lookaheadDelegate.setPlacingForAlignment$ui_release(configureForPlacingForAlignment);
        Placeable.PlacementScope.Companion companion4 = Placeable.PlacementScope.INSTANCE;
        Placeable.PlacementScope.parentWidth = parentWidth;
        Placeable.PlacementScope.Companion companion5 = Placeable.PlacementScope.INSTANCE;
        Placeable.PlacementScope.parentLayoutDirection = parentLayoutDirection;
        Placeable.PlacementScope._coordinates = layoutCoordinates;
        Placeable.PlacementScope.layoutDelegate = layoutNodeLayoutDelegate;
    }

    /* renamed from: performingMeasure-K40F9xA */
    public final Placeable m4042performingMeasureK40F9xA(long constraints, Function0<? extends MeasureResult> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        m3932setMeasurementConstraintsBRTryo0(constraints);
        set_measureResult(block.invoke());
        return this;
    }

    @Override // androidx.compose.ui.layout.Measured, androidx.compose.ui.layout.IntrinsicMeasurable
    public Object getParentData() {
        return this.coordinator.getParentData();
    }

    public int minIntrinsicWidth(int r1) {
        NodeCoordinator wrapped = this.coordinator.getWrapped();
        Intrinsics.checkNotNull(wrapped);
        LookaheadDelegate lookaheadDelegate = wrapped.getLookaheadDelegate();
        Intrinsics.checkNotNull(lookaheadDelegate);
        return lookaheadDelegate.minIntrinsicWidth(r1);
    }

    public int maxIntrinsicWidth(int r1) {
        NodeCoordinator wrapped = this.coordinator.getWrapped();
        Intrinsics.checkNotNull(wrapped);
        LookaheadDelegate lookaheadDelegate = wrapped.getLookaheadDelegate();
        Intrinsics.checkNotNull(lookaheadDelegate);
        return lookaheadDelegate.maxIntrinsicWidth(r1);
    }

    public int minIntrinsicHeight(int r1) {
        NodeCoordinator wrapped = this.coordinator.getWrapped();
        Intrinsics.checkNotNull(wrapped);
        LookaheadDelegate lookaheadDelegate = wrapped.getLookaheadDelegate();
        Intrinsics.checkNotNull(lookaheadDelegate);
        return lookaheadDelegate.minIntrinsicHeight(r1);
    }

    public int maxIntrinsicHeight(int r1) {
        NodeCoordinator wrapped = this.coordinator.getWrapped();
        Intrinsics.checkNotNull(wrapped);
        LookaheadDelegate lookaheadDelegate = wrapped.getLookaheadDelegate();
        Intrinsics.checkNotNull(lookaheadDelegate);
        return lookaheadDelegate.maxIntrinsicHeight(r1);
    }

    /* renamed from: positionIn-Bjo55l4$ui_release */
    public final long m4043positionInBjo55l4$ui_release(LookaheadDelegate ancestor) {
        Intrinsics.checkNotNullParameter(ancestor, "ancestor");
        long m5011getZeronOccac = IntOffset.INSTANCE.m5011getZeronOccac();
        while (!Intrinsics.areEqual(this, ancestor)) {
            long position = this.getPosition();
            m5011getZeronOccac = IntOffsetKt.IntOffset(IntOffset.m5001getXimpl(m5011getZeronOccac) + IntOffset.m5001getXimpl(position), IntOffset.m5002getYimpl(m5011getZeronOccac) + IntOffset.m5002getYimpl(position));
            NodeCoordinator wrappedBy = this.coordinator.getWrappedBy();
            Intrinsics.checkNotNull(wrappedBy);
            this = wrappedBy.getLookaheadDelegate();
            Intrinsics.checkNotNull(this);
        }
        return m5011getZeronOccac;
    }
}
