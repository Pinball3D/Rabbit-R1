package androidx.compose.ui.node;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.layout.Measurable;
import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* compiled from: LayoutNodeLayoutDelegate.kt */
@Metadata(d1 = {"\u0000$\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a9\u0010\u0002\u001a\u00020\u0003\"\b\b\u0000\u0010\u0004*\u00020\u0005*\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u0002H\u00040\b2\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u0002H\u00040\nH\u0082\b\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"MeasuredTwiceErrorMessage", "", "updateChildMeasurables", "", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/compose/ui/layout/Measurable;", "Landroidx/compose/ui/node/LayoutNode;", "destination", "Landroidx/compose/runtime/collection/MutableVector;", "transform", "Lkotlin/Function1;", "ui_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class LayoutNodeLayoutDelegateKt {
    private static final String MeasuredTwiceErrorMessage = "measure() may not be called multiple times on the same Measurable. If you want to get the content size of the Measurable before calculating the final constraints, please use methods like minIntrinsicWidth()/maxIntrinsicWidth() and minIntrinsicHeight()/maxIntrinsicHeight()";

    private static final <T extends Measurable> void updateChildMeasurables(LayoutNode layoutNode, MutableVector<T> mutableVector, Function1<? super LayoutNode, ? extends T> function1) {
        MutableVector<LayoutNode> mutableVector2 = layoutNode.get_children$ui_release();
        int size = mutableVector2.getSize();
        if (size > 0) {
            LayoutNode[] content = mutableVector2.getContent();
            int i = 0;
            do {
                LayoutNode layoutNode2 = content[i];
                if (mutableVector.getSize() <= i) {
                    mutableVector.add(function1.invoke(layoutNode2));
                } else {
                    mutableVector.set(i, function1.invoke(layoutNode2));
                }
                i++;
            } while (i < size);
        }
        mutableVector.removeRange(layoutNode.getChildren$ui_release().size(), mutableVector.getSize());
    }
}
