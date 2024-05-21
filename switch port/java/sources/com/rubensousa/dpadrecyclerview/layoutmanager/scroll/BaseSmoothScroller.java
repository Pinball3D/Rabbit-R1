package com.rubensousa.dpadrecyclerview.layoutmanager.scroll;

import android.util.DisplayMetrics;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.RecyclerView;
import com.rubensousa.dpadrecyclerview.layoutmanager.layout.LayoutInfo;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: BaseSmoothScroller.kt */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0010\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0012\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0014J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0010H\u0014J\u0006\u0010\u0012\u001a\u00020\u0013J\u0006\u0010\u0007\u001a\u00020\bR\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u00020\u0005X\u0084\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0015"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/BaseSmoothScroller;", "Landroidx/recyclerview/widget/LinearSmoothScroller;", "recyclerView", "Landroidx/recyclerview/widget/RecyclerView;", "layoutInfo", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;", "(Landroidx/recyclerview/widget/RecyclerView;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;)V", "isCanceled", "", "getLayoutInfo", "()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;", "calculateSpeedPerPixel", "", "displayMetrics", "Landroid/util/DisplayMetrics;", "calculateTimeForScrolling", "", "dx", "cancel", "", "Companion", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public class BaseSmoothScroller extends LinearSmoothScroller {
    public static final int MIN_SMOOTH_SCROLL_DURATION_MS = 30;
    private boolean isCanceled;
    private final LayoutInfo layoutInfo;

    public final void cancel() {
        this.isCanceled = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final LayoutInfo getLayoutInfo() {
        return this.layoutInfo;
    }

    /* renamed from: isCanceled, reason: from getter */
    public final boolean getIsCanceled() {
        return this.isCanceled;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseSmoothScroller(RecyclerView recyclerView, LayoutInfo layoutInfo) {
        super(recyclerView.getContext());
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        Intrinsics.checkNotNullParameter(layoutInfo, "layoutInfo");
        this.layoutInfo = layoutInfo;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.recyclerview.widget.LinearSmoothScroller
    public float calculateSpeedPerPixel(DisplayMetrics displayMetrics) {
        return super.calculateSpeedPerPixel(displayMetrics) * this.layoutInfo.getConfiguration().getSmoothScrollSpeedFactor();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.recyclerview.widget.LinearSmoothScroller
    public int calculateTimeForScrolling(int dx) {
        int calculateTimeForScrolling = super.calculateTimeForScrolling(dx);
        int totalSpace = this.layoutInfo.getTotalSpace();
        return totalSpace > 0 ? Math.max(calculateTimeForScrolling, (dx * 30) / totalSpace) : calculateTimeForScrolling;
    }
}
