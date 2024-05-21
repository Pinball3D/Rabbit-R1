package androidx.recyclerview.widget;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class ScrollbarHelper {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static int computeScrollOffset(RecyclerView.State state, OrientationHelper orientationHelper, View view, View view2, RecyclerView.LayoutManager layoutManager, boolean z, boolean z2) {
        int max;
        if (layoutManager.getChildCount() == 0 || state.getItemCount() == 0 || view == null || view2 == null) {
            return 0;
        }
        int min = Math.min(layoutManager.getPosition(view), layoutManager.getPosition(view2));
        int max2 = Math.max(layoutManager.getPosition(view), layoutManager.getPosition(view2));
        if (z2) {
            max = Math.max(0, (state.getItemCount() - max2) - 1);
        } else {
            max = Math.max(0, min);
        }
        if (!z) {
            return max;
        }
        return Math.round((max * (Math.abs(orientationHelper.getDecoratedEnd(view2) - orientationHelper.getDecoratedStart(view)) / (Math.abs(layoutManager.getPosition(view) - layoutManager.getPosition(view2)) + 1))) + (orientationHelper.getStartAfterPadding() - orientationHelper.getDecoratedStart(view)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int computeScrollExtent(RecyclerView.State state, OrientationHelper orientationHelper, View view, View view2, RecyclerView.LayoutManager layoutManager, boolean z) {
        if (layoutManager.getChildCount() == 0 || state.getItemCount() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z) {
            return Math.abs(layoutManager.getPosition(view) - layoutManager.getPosition(view2)) + 1;
        }
        return Math.min(orientationHelper.getTotalSpace(), orientationHelper.getDecoratedEnd(view2) - orientationHelper.getDecoratedStart(view));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int computeScrollRange(RecyclerView.State state, OrientationHelper orientationHelper, View view, View view2, RecyclerView.LayoutManager layoutManager, boolean z) {
        if (layoutManager.getChildCount() == 0 || state.getItemCount() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z) {
            return state.getItemCount();
        }
        return (int) (((orientationHelper.getDecoratedEnd(view2) - orientationHelper.getDecoratedStart(view)) / (Math.abs(layoutManager.getPosition(view) - layoutManager.getPosition(view2)) + 1)) * state.getItemCount());
    }

    private ScrollbarHelper() {
    }
}
