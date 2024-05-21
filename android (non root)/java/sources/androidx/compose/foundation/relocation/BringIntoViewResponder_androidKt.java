package androidx.compose.foundation.relocation;

import android.view.View;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNodeKt;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: BringIntoViewResponder.android.kt */
@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\f\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0000\u001a\f\u0010\u0003\u001a\u00020\u0004*\u00020\u0005H\u0002¨\u0006\u0006"}, d2 = {"defaultBringIntoViewParent", "Landroidx/compose/foundation/relocation/BringIntoViewParent;", "Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;", "toRect", "Landroid/graphics/Rect;", "Landroidx/compose/ui/geometry/Rect;", "foundation_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class BringIntoViewResponder_androidKt {
    public static final BringIntoViewParent defaultBringIntoViewParent(final CompositionLocalConsumerModifierNode compositionLocalConsumerModifierNode) {
        Intrinsics.checkNotNullParameter(compositionLocalConsumerModifierNode, "<this>");
        return new BringIntoViewParent() { // from class: androidx.compose.foundation.relocation.BringIntoViewResponder_androidKt$defaultBringIntoViewParent$1
            @Override // androidx.compose.foundation.relocation.BringIntoViewParent
            public final Object bringChildIntoView(LayoutCoordinates layoutCoordinates, Function0<Rect> function0, Continuation<? super Unit> continuation) {
                android.graphics.Rect rect;
                View view = (View) CompositionLocalConsumerModifierNodeKt.currentValueOf(CompositionLocalConsumerModifierNode.this, AndroidCompositionLocals_androidKt.getLocalView());
                long positionInRoot = LayoutCoordinatesKt.positionInRoot(layoutCoordinates);
                Rect invoke = function0.invoke();
                Rect m2437translatek4lQ0M = invoke != null ? invoke.m2437translatek4lQ0M(positionInRoot) : null;
                if (m2437translatek4lQ0M != null) {
                    rect = BringIntoViewResponder_androidKt.toRect(m2437translatek4lQ0M);
                    view.requestRectangleOnScreen(rect, false);
                }
                return Unit.INSTANCE;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final android.graphics.Rect toRect(Rect rect) {
        return new android.graphics.Rect((int) rect.getLeft(), (int) rect.getTop(), (int) rect.getRight(), (int) rect.getBottom());
    }
}
