package androidx.compose.ui.layout;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.node.LookaheadDelegate;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntSizeKt;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;

/* compiled from: LookaheadLayoutCoordinates.kt */
@Metadata(d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0011\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\u001aH\u0096\u0002J\u0018\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\u00132\u0006\u0010&\u001a\u00020\nH\u0016J%\u0010'\u001a\u00020\u000f2\u0006\u0010%\u001a\u00020\u00132\u0006\u0010(\u001a\u00020\u000fH\u0016ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b)\u0010*J\u001d\u0010+\u001a\u00020\u000f2\u0006\u0010,\u001a\u00020\u000fH\u0016ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b-\u0010.J\u001d\u0010/\u001a\u00020\u000f2\u0006\u0010,\u001a\u00020\u000fH\u0016ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b0\u0010.J%\u00101\u001a\u0002022\u0006\u0010%\u001a\u00020\u00132\u0006\u00103\u001a\u000204H\u0016ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b5\u00106J\u001d\u00107\u001a\u00020\u000f2\u0006\u00108\u001a\u00020\u000fH\u0016ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b9\u0010.R\u0011\u0010\u0005\u001a\u00020\u00068F¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\t\u001a\u00020\n8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u001d\u0010\u000e\u001a\u00020\u000f8BX\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0012\u001a\u0004\u0018\u00010\u00138VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015R\u0016\u0010\u0016\u001a\u0004\u0018\u00010\u00138VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0015R\u001a\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u001a0\u00198VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u001cR\u001d\u0010\u001d\u001a\u00020\u001e8VX\u0096\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0006\u001a\u0004\b\u001f\u0010\u0011\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006:"}, d2 = {"Landroidx/compose/ui/layout/LookaheadLayoutCoordinatesImpl;", "Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;", "lookaheadDelegate", "Landroidx/compose/ui/node/LookaheadDelegate;", "(Landroidx/compose/ui/node/LookaheadDelegate;)V", "coordinator", "Landroidx/compose/ui/node/NodeCoordinator;", "getCoordinator", "()Landroidx/compose/ui/node/NodeCoordinator;", "isAttached", "", "()Z", "getLookaheadDelegate", "()Landroidx/compose/ui/node/LookaheadDelegate;", "lookaheadOffset", "Landroidx/compose/ui/geometry/Offset;", "getLookaheadOffset-F1C5BW0", "()J", "parentCoordinates", "Landroidx/compose/ui/layout/LayoutCoordinates;", "getParentCoordinates", "()Landroidx/compose/ui/layout/LayoutCoordinates;", "parentLayoutCoordinates", "getParentLayoutCoordinates", "providedAlignmentLines", "", "Landroidx/compose/ui/layout/AlignmentLine;", "getProvidedAlignmentLines", "()Ljava/util/Set;", "size", "Landroidx/compose/ui/unit/IntSize;", "getSize-YbymL2g", "get", "", "alignmentLine", "localBoundingBoxOf", "Landroidx/compose/ui/geometry/Rect;", "sourceCoordinates", "clipBounds", "localPositionOf", "relativeToSource", "localPositionOf-R5De75A", "(Landroidx/compose/ui/layout/LayoutCoordinates;J)J", "localToRoot", "relativeToLocal", "localToRoot-MK-Hz9U", "(J)J", "localToWindow", "localToWindow-MK-Hz9U", "transformFrom", "", "matrix", "Landroidx/compose/ui/graphics/Matrix;", "transformFrom-EL8BTi8", "(Landroidx/compose/ui/layout/LayoutCoordinates;[F)V", "windowToLocal", "relativeToWindow", "windowToLocal-MK-Hz9U", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class LookaheadLayoutCoordinatesImpl implements LookaheadLayoutCoordinates {
    private final LookaheadDelegate lookaheadDelegate;

    public final LookaheadDelegate getLookaheadDelegate() {
        return this.lookaheadDelegate;
    }

    public LookaheadLayoutCoordinatesImpl(LookaheadDelegate lookaheadDelegate) {
        Intrinsics.checkNotNullParameter(lookaheadDelegate, "lookaheadDelegate");
        this.lookaheadDelegate = lookaheadDelegate;
    }

    public final NodeCoordinator getCoordinator() {
        return this.lookaheadDelegate.getCoordinator();
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* renamed from: getSize-YbymL2g */
    public long mo3883getSizeYbymL2g() {
        LookaheadDelegate lookaheadDelegate = this.lookaheadDelegate;
        return IntSizeKt.IntSize(lookaheadDelegate.getWidth(), lookaheadDelegate.getHeight());
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public Set<AlignmentLine> getProvidedAlignmentLines() {
        return getCoordinator().getProvidedAlignmentLines();
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public LayoutCoordinates getParentLayoutCoordinates() {
        LookaheadDelegate lookaheadDelegate;
        if (!isAttached()) {
            throw new IllegalStateException(NodeCoordinator.ExpectAttachedLayoutCoordinates.toString());
        }
        NodeCoordinator wrappedBy = getCoordinator().getLayoutNode().getOuterCoordinator$ui_release().getWrappedBy();
        if (wrappedBy == null || (lookaheadDelegate = wrappedBy.getLookaheadDelegate()) == null) {
            return null;
        }
        return lookaheadDelegate.getCoordinates();
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public LayoutCoordinates getParentCoordinates() {
        LookaheadDelegate lookaheadDelegate;
        if (!isAttached()) {
            throw new IllegalStateException(NodeCoordinator.ExpectAttachedLayoutCoordinates.toString());
        }
        NodeCoordinator wrappedBy = getCoordinator().getWrappedBy();
        if (wrappedBy == null || (lookaheadDelegate = wrappedBy.getLookaheadDelegate()) == null) {
            return null;
        }
        return lookaheadDelegate.getCoordinates();
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public boolean isAttached() {
        return getCoordinator().isAttached();
    }

    /* renamed from: getLookaheadOffset-F1C5BW0, reason: not valid java name */
    private final long m3898getLookaheadOffsetF1C5BW0() {
        LookaheadDelegate rootLookaheadDelegate = LookaheadLayoutCoordinatesKt.getRootLookaheadDelegate(this.lookaheadDelegate);
        return Offset.m2404minusMKHz9U(mo3884localPositionOfR5De75A(rootLookaheadDelegate.getCoordinates(), Offset.INSTANCE.m2416getZeroF1C5BW0()), getCoordinator().mo3884localPositionOfR5De75A(rootLookaheadDelegate.getCoordinator(), Offset.INSTANCE.m2416getZeroF1C5BW0()));
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* renamed from: windowToLocal-MK-Hz9U */
    public long mo3888windowToLocalMKHz9U(long relativeToWindow) {
        return Offset.m2405plusMKHz9U(getCoordinator().mo3888windowToLocalMKHz9U(relativeToWindow), m3898getLookaheadOffsetF1C5BW0());
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* renamed from: localToWindow-MK-Hz9U */
    public long mo3886localToWindowMKHz9U(long relativeToLocal) {
        return getCoordinator().mo3886localToWindowMKHz9U(Offset.m2405plusMKHz9U(relativeToLocal, m3898getLookaheadOffsetF1C5BW0()));
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* renamed from: localToRoot-MK-Hz9U */
    public long mo3885localToRootMKHz9U(long relativeToLocal) {
        return getCoordinator().mo3885localToRootMKHz9U(Offset.m2405plusMKHz9U(relativeToLocal, m3898getLookaheadOffsetF1C5BW0()));
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* renamed from: localPositionOf-R5De75A */
    public long mo3884localPositionOfR5De75A(LayoutCoordinates sourceCoordinates, long relativeToSource) {
        Intrinsics.checkNotNullParameter(sourceCoordinates, "sourceCoordinates");
        if (sourceCoordinates instanceof LookaheadLayoutCoordinatesImpl) {
            LookaheadDelegate lookaheadDelegate = ((LookaheadLayoutCoordinatesImpl) sourceCoordinates).lookaheadDelegate;
            lookaheadDelegate.getCoordinator().onCoordinatesUsed$ui_release();
            LookaheadDelegate lookaheadDelegate2 = getCoordinator().findCommonAncestor$ui_release(lookaheadDelegate.getCoordinator()).getLookaheadDelegate();
            if (lookaheadDelegate2 != null) {
                long m4043positionInBjo55l4$ui_release = lookaheadDelegate.m4043positionInBjo55l4$ui_release(lookaheadDelegate2);
                long IntOffset = IntOffsetKt.IntOffset(MathKt.roundToInt(Offset.m2400getXimpl(relativeToSource)), MathKt.roundToInt(Offset.m2401getYimpl(relativeToSource)));
                long IntOffset2 = IntOffsetKt.IntOffset(IntOffset.m5001getXimpl(m4043positionInBjo55l4$ui_release) + IntOffset.m5001getXimpl(IntOffset), IntOffset.m5002getYimpl(m4043positionInBjo55l4$ui_release) + IntOffset.m5002getYimpl(IntOffset));
                long m4043positionInBjo55l4$ui_release2 = this.lookaheadDelegate.m4043positionInBjo55l4$ui_release(lookaheadDelegate2);
                long IntOffset3 = IntOffsetKt.IntOffset(IntOffset.m5001getXimpl(IntOffset2) - IntOffset.m5001getXimpl(m4043positionInBjo55l4$ui_release2), IntOffset.m5002getYimpl(IntOffset2) - IntOffset.m5002getYimpl(m4043positionInBjo55l4$ui_release2));
                return OffsetKt.Offset(IntOffset.m5001getXimpl(IntOffset3), IntOffset.m5002getYimpl(IntOffset3));
            }
            LookaheadDelegate rootLookaheadDelegate = LookaheadLayoutCoordinatesKt.getRootLookaheadDelegate(lookaheadDelegate);
            long m4043positionInBjo55l4$ui_release3 = lookaheadDelegate.m4043positionInBjo55l4$ui_release(rootLookaheadDelegate);
            long position = rootLookaheadDelegate.getPosition();
            long IntOffset4 = IntOffsetKt.IntOffset(IntOffset.m5001getXimpl(m4043positionInBjo55l4$ui_release3) + IntOffset.m5001getXimpl(position), IntOffset.m5002getYimpl(m4043positionInBjo55l4$ui_release3) + IntOffset.m5002getYimpl(position));
            long IntOffset5 = IntOffsetKt.IntOffset(MathKt.roundToInt(Offset.m2400getXimpl(relativeToSource)), MathKt.roundToInt(Offset.m2401getYimpl(relativeToSource)));
            long IntOffset6 = IntOffsetKt.IntOffset(IntOffset.m5001getXimpl(IntOffset4) + IntOffset.m5001getXimpl(IntOffset5), IntOffset.m5002getYimpl(IntOffset4) + IntOffset.m5002getYimpl(IntOffset5));
            LookaheadDelegate lookaheadDelegate3 = this.lookaheadDelegate;
            long m4043positionInBjo55l4$ui_release4 = lookaheadDelegate3.m4043positionInBjo55l4$ui_release(LookaheadLayoutCoordinatesKt.getRootLookaheadDelegate(lookaheadDelegate3));
            long position2 = LookaheadLayoutCoordinatesKt.getRootLookaheadDelegate(lookaheadDelegate3).getPosition();
            long IntOffset7 = IntOffsetKt.IntOffset(IntOffset.m5001getXimpl(m4043positionInBjo55l4$ui_release4) + IntOffset.m5001getXimpl(position2), IntOffset.m5002getYimpl(m4043positionInBjo55l4$ui_release4) + IntOffset.m5002getYimpl(position2));
            long IntOffset8 = IntOffsetKt.IntOffset(IntOffset.m5001getXimpl(IntOffset6) - IntOffset.m5001getXimpl(IntOffset7), IntOffset.m5002getYimpl(IntOffset6) - IntOffset.m5002getYimpl(IntOffset7));
            NodeCoordinator wrappedBy = LookaheadLayoutCoordinatesKt.getRootLookaheadDelegate(this.lookaheadDelegate).getCoordinator().getWrappedBy();
            Intrinsics.checkNotNull(wrappedBy);
            NodeCoordinator wrappedBy2 = rootLookaheadDelegate.getCoordinator().getWrappedBy();
            Intrinsics.checkNotNull(wrappedBy2);
            return wrappedBy.mo3884localPositionOfR5De75A(wrappedBy2, OffsetKt.Offset(IntOffset.m5001getXimpl(IntOffset8), IntOffset.m5002getYimpl(IntOffset8)));
        }
        LookaheadDelegate rootLookaheadDelegate2 = LookaheadLayoutCoordinatesKt.getRootLookaheadDelegate(this.lookaheadDelegate);
        return Offset.m2405plusMKHz9U(mo3884localPositionOfR5De75A(rootLookaheadDelegate2.getLookaheadLayoutCoordinates(), relativeToSource), rootLookaheadDelegate2.getCoordinator().getCoordinates().mo3884localPositionOfR5De75A(sourceCoordinates, Offset.INSTANCE.m2416getZeroF1C5BW0()));
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public Rect localBoundingBoxOf(LayoutCoordinates sourceCoordinates, boolean clipBounds) {
        Intrinsics.checkNotNullParameter(sourceCoordinates, "sourceCoordinates");
        return getCoordinator().localBoundingBoxOf(sourceCoordinates, clipBounds);
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* renamed from: transformFrom-EL8BTi8 */
    public void mo3887transformFromEL8BTi8(LayoutCoordinates sourceCoordinates, float[] matrix) {
        Intrinsics.checkNotNullParameter(sourceCoordinates, "sourceCoordinates");
        Intrinsics.checkNotNullParameter(matrix, "matrix");
        getCoordinator().mo3887transformFromEL8BTi8(sourceCoordinates, matrix);
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public int get(AlignmentLine alignmentLine) {
        Intrinsics.checkNotNullParameter(alignmentLine, "alignmentLine");
        return this.lookaheadDelegate.get(alignmentLine);
    }
}
