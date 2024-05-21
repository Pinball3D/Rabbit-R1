package androidx.compose.foundation;

import android.view.View;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNodeKt;
import androidx.compose.ui.node.GlobalPositionAwareModifierNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import java.util.List;
import kotlin.Metadata;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SystemGestureExclusion.kt */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0003\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u001b\u0012\u0014\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0005¢\u0006\u0002\u0010\bJ\u0018\u0010\u0016\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u0007H\u0002J\u0010\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0006H\u0002J\b\u0010\u0019\u001a\u00020\u001aH\u0016J\u0010\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u0006H\u0016J\u0010\u0010\u001d\u001a\u00020\u001a2\b\u0010\u001e\u001a\u0004\u0018\u00010\rR(\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\bR\u001c\u0010\f\u001a\u0004\u0018\u00010\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0012\u001a\u00020\u00138BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u001f"}, d2 = {"Landroidx/compose/foundation/ExcludeFromSystemGestureNode;", "Landroidx/compose/ui/Modifier$Node;", "Landroidx/compose/ui/node/GlobalPositionAwareModifierNode;", "Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;", "exclusion", "Lkotlin/Function1;", "Landroidx/compose/ui/layout/LayoutCoordinates;", "Landroidx/compose/ui/geometry/Rect;", "(Lkotlin/jvm/functions/Function1;)V", "getExclusion", "()Lkotlin/jvm/functions/Function1;", "setExclusion", "rect", "Landroid/graphics/Rect;", "getRect", "()Landroid/graphics/Rect;", "setRect", "(Landroid/graphics/Rect;)V", "view", "Landroid/view/View;", "getView", "()Landroid/view/View;", "calcBounds", "layoutCoordinates", "findRoot", "onDetach", "", "onGloballyPositioned", "coordinates", "replaceRect", "newRect", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ExcludeFromSystemGestureNode extends Modifier.Node implements GlobalPositionAwareModifierNode, CompositionLocalConsumerModifierNode {
    private Function1<? super LayoutCoordinates, Rect> exclusion;
    private android.graphics.Rect rect;

    public final Function1<LayoutCoordinates, Rect> getExclusion() {
        return this.exclusion;
    }

    public final android.graphics.Rect getRect() {
        return this.rect;
    }

    public final void setExclusion(Function1<? super LayoutCoordinates, Rect> function1) {
        this.exclusion = function1;
    }

    public final void setRect(android.graphics.Rect rect) {
        this.rect = rect;
    }

    public ExcludeFromSystemGestureNode(Function1<? super LayoutCoordinates, Rect> function1) {
        this.exclusion = function1;
    }

    private final View getView() {
        return (View) CompositionLocalConsumerModifierNodeKt.currentValueOf(this, AndroidCompositionLocals_androidKt.getLocalView());
    }

    @Override // androidx.compose.ui.node.GlobalPositionAwareModifierNode
    public void onGloballyPositioned(LayoutCoordinates coordinates) {
        android.graphics.Rect calcBounds;
        Intrinsics.checkNotNullParameter(coordinates, "coordinates");
        Function1<? super LayoutCoordinates, Rect> function1 = this.exclusion;
        if (function1 == null) {
            Rect boundsInRoot = LayoutCoordinatesKt.boundsInRoot(coordinates);
            calcBounds = new android.graphics.Rect(MathKt.roundToInt(boundsInRoot.getLeft()), MathKt.roundToInt(boundsInRoot.getTop()), MathKt.roundToInt(boundsInRoot.getRight()), MathKt.roundToInt(boundsInRoot.getBottom()));
        } else {
            Intrinsics.checkNotNull(function1);
            calcBounds = calcBounds(coordinates, function1.invoke(coordinates));
        }
        replaceRect(calcBounds);
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onDetach() {
        super.onDetach();
        replaceRect(null);
    }

    private final android.graphics.Rect calcBounds(LayoutCoordinates layoutCoordinates, Rect rect) {
        LayoutCoordinates findRoot = findRoot(layoutCoordinates);
        long mo3884localPositionOfR5De75A = findRoot.mo3884localPositionOfR5De75A(layoutCoordinates, rect.m2435getTopLeftF1C5BW0());
        long mo3884localPositionOfR5De75A2 = findRoot.mo3884localPositionOfR5De75A(layoutCoordinates, rect.m2436getTopRightF1C5BW0());
        long mo3884localPositionOfR5De75A3 = findRoot.mo3884localPositionOfR5De75A(layoutCoordinates, rect.m2428getBottomLeftF1C5BW0());
        long mo3884localPositionOfR5De75A4 = findRoot.mo3884localPositionOfR5De75A(layoutCoordinates, rect.m2429getBottomRightF1C5BW0());
        return new android.graphics.Rect(MathKt.roundToInt(ComparisonsKt.minOf(Offset.m2400getXimpl(mo3884localPositionOfR5De75A), Offset.m2400getXimpl(mo3884localPositionOfR5De75A2), Offset.m2400getXimpl(mo3884localPositionOfR5De75A3), Offset.m2400getXimpl(mo3884localPositionOfR5De75A4))), MathKt.roundToInt(ComparisonsKt.minOf(Offset.m2401getYimpl(mo3884localPositionOfR5De75A), Offset.m2401getYimpl(mo3884localPositionOfR5De75A2), Offset.m2401getYimpl(mo3884localPositionOfR5De75A3), Offset.m2401getYimpl(mo3884localPositionOfR5De75A4))), MathKt.roundToInt(ComparisonsKt.maxOf(Offset.m2400getXimpl(mo3884localPositionOfR5De75A), Offset.m2400getXimpl(mo3884localPositionOfR5De75A2), Offset.m2400getXimpl(mo3884localPositionOfR5De75A3), Offset.m2400getXimpl(mo3884localPositionOfR5De75A4))), MathKt.roundToInt(ComparisonsKt.maxOf(Offset.m2401getYimpl(mo3884localPositionOfR5De75A), Offset.m2401getYimpl(mo3884localPositionOfR5De75A2), Offset.m2401getYimpl(mo3884localPositionOfR5De75A3), Offset.m2401getYimpl(mo3884localPositionOfR5De75A4))));
    }

    private final LayoutCoordinates findRoot(LayoutCoordinates layoutCoordinates) {
        LayoutCoordinates parentLayoutCoordinates = layoutCoordinates.getParentLayoutCoordinates();
        while (true) {
            LayoutCoordinates layoutCoordinates2 = layoutCoordinates;
            layoutCoordinates = parentLayoutCoordinates;
            if (layoutCoordinates == null) {
                return layoutCoordinates2;
            }
            parentLayoutCoordinates = layoutCoordinates.getParentLayoutCoordinates();
        }
    }

    public final void replaceRect(android.graphics.Rect newRect) {
        MutableVector mutableVector = new MutableVector(new android.graphics.Rect[16], 0);
        List<android.graphics.Rect> systemGestureExclusionRects = getView().getSystemGestureExclusionRects();
        Intrinsics.checkNotNullExpressionValue(systemGestureExclusionRects, "view.systemGestureExclusionRects");
        mutableVector.addAll(mutableVector.getSize(), (List) systemGestureExclusionRects);
        android.graphics.Rect rect = this.rect;
        if (rect != null) {
            mutableVector.remove(rect);
        }
        if (newRect != null && !newRect.isEmpty()) {
            mutableVector.add(newRect);
        }
        getView().setSystemGestureExclusionRects(mutableVector.asMutableList());
        this.rect = newRect;
    }
}
