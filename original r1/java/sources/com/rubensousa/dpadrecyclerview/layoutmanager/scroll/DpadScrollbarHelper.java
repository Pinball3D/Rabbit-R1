package com.rubensousa.dpadrecyclerview.layoutmanager.scroll;

import android.view.View;
import androidx.recyclerview.widget.OrientationHelper;
import androidx.recyclerview.widget.RecyclerView;
import io.sentry.protocol.SentryThread;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: DpadScrollbarHelper.kt */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J:\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fJB\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000fJ:\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f¨\u0006\u0013"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/DpadScrollbarHelper;", "", "()V", "computeScrollExtent", "", SentryThread.JsonKeys.STATE, "Landroidx/recyclerview/widget/RecyclerView$State;", "orientationHelper", "Landroidx/recyclerview/widget/OrientationHelper;", "startChild", "Landroid/view/View;", "endChild", "lm", "Landroidx/recyclerview/widget/RecyclerView$LayoutManager;", "smoothScrollbarEnabled", "", "computeScrollOffset", "reverseLayout", "computeScrollRange", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class DpadScrollbarHelper {
    public static final DpadScrollbarHelper INSTANCE = new DpadScrollbarHelper();

    private DpadScrollbarHelper() {
    }

    public final int computeScrollOffset(RecyclerView.State state, OrientationHelper orientationHelper, View startChild, View endChild, RecyclerView.LayoutManager lm, boolean smoothScrollbarEnabled, boolean reverseLayout) {
        int max;
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(orientationHelper, "orientationHelper");
        Intrinsics.checkNotNullParameter(lm, "lm");
        if (lm.getChildCount() == 0 || state.getItemCount() == 0 || startChild == null || endChild == null) {
            return 0;
        }
        int min = Math.min(lm.getPosition(startChild), lm.getPosition(endChild));
        int max2 = Math.max(lm.getPosition(startChild), lm.getPosition(endChild));
        if (reverseLayout) {
            max = Math.max(0, (state.getItemCount() - max2) - 1);
        } else {
            max = Math.max(0, min);
        }
        if (!smoothScrollbarEnabled) {
            return max;
        }
        return Math.round((max * (Math.abs(orientationHelper.getDecoratedEnd(endChild) - orientationHelper.getDecoratedStart(startChild)) / (Math.abs(lm.getPosition(startChild) - lm.getPosition(endChild)) + 1))) + (orientationHelper.getStartAfterPadding() - orientationHelper.getDecoratedStart(startChild)));
    }

    public final int computeScrollExtent(RecyclerView.State state, OrientationHelper orientationHelper, View startChild, View endChild, RecyclerView.LayoutManager lm, boolean smoothScrollbarEnabled) {
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(orientationHelper, "orientationHelper");
        Intrinsics.checkNotNullParameter(lm, "lm");
        if (lm.getChildCount() == 0 || state.getItemCount() == 0 || startChild == null || endChild == null) {
            return 0;
        }
        if (!smoothScrollbarEnabled) {
            return Math.abs(lm.getPosition(startChild) - lm.getPosition(endChild)) + 1;
        }
        return Math.min(orientationHelper.getTotalSpace(), orientationHelper.getDecoratedEnd(endChild) - orientationHelper.getDecoratedStart(startChild));
    }

    public final int computeScrollRange(RecyclerView.State state, OrientationHelper orientationHelper, View startChild, View endChild, RecyclerView.LayoutManager lm, boolean smoothScrollbarEnabled) {
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(orientationHelper, "orientationHelper");
        Intrinsics.checkNotNullParameter(lm, "lm");
        if (lm.getChildCount() == 0 || state.getItemCount() == 0 || startChild == null || endChild == null) {
            return 0;
        }
        if (!smoothScrollbarEnabled) {
            return state.getItemCount();
        }
        return (int) (((orientationHelper.getDecoratedEnd(endChild) - orientationHelper.getDecoratedStart(startChild)) / (Math.abs(lm.getPosition(startChild) - lm.getPosition(endChild)) + 1)) * state.getItemCount());
    }
}
