package com.rubensousa.dpadrecyclerview.layoutmanager.scroll;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.rubensousa.dpadrecyclerview.layoutmanager.LayoutConfiguration;
import com.rubensousa.dpadrecyclerview.layoutmanager.alignment.LayoutAlignment;
import com.rubensousa.dpadrecyclerview.layoutmanager.focus.FocusDirection;
import com.rubensousa.dpadrecyclerview.layoutmanager.layout.LayoutInfo;
import com.rubensousa.dpadrecyclerview.layoutmanager.scroll.ScrollAlignmentQueue;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;

/* compiled from: ScrollAlignmentQueue.kt */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001:\u0001\u001fB\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u0010\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0006\u0010\u0010\u001a\u00020\rJ\b\u0010\u0011\u001a\u00020\u0012H\u0002J\u000e\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0015J\u0018\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0018\u001a\u00020\u000fH\u0002J\u0010\u0010\u0019\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u001bH\u0002J \u0010\u001c\u001a\u00020\u00122\u0006\u0010\u001d\u001a\u00020\u001b2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u0018\u001a\u00020\u000fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006 "}, d2 = {"Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue;", "", "configuration", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;", "layoutAlignment", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;", "layoutInfo", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;", "(Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;)V", "pendingAlignments", "Ljava/util/LinkedList;", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue$PendingAlignment;", "consumeAlignedViews", "", "targetScrollOffset", "", "consumeAll", "hasMaxPendingAlignments", "", "hasReachedLimit", "focusDirection", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;", "isPendingAlignmentInOppositeDirection", "alignment", "scrollOffset", "isRemoved", "view", "Landroid/view/View;", "push", "focusedView", "childView", "PendingAlignment", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class ScrollAlignmentQueue {
    private final LayoutConfiguration configuration;
    private final LayoutAlignment layoutAlignment;
    private final LayoutInfo layoutInfo;
    private LinkedList<PendingAlignment> pendingAlignments;

    public ScrollAlignmentQueue(LayoutConfiguration configuration, LayoutAlignment layoutAlignment, LayoutInfo layoutInfo) {
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        Intrinsics.checkNotNullParameter(layoutAlignment, "layoutAlignment");
        Intrinsics.checkNotNullParameter(layoutInfo, "layoutInfo");
        this.configuration = configuration;
        this.layoutAlignment = layoutAlignment;
        this.layoutInfo = layoutInfo;
        this.pendingAlignments = new LinkedList<>();
    }

    public final void consumeAll() {
        if (hasMaxPendingAlignments()) {
            this.pendingAlignments.clear();
        }
    }

    public final boolean hasReachedLimit(FocusDirection focusDirection) {
        Intrinsics.checkNotNullParameter(focusDirection, "focusDirection");
        if (!hasMaxPendingAlignments()) {
            return false;
        }
        consumeAlignedViews(focusDirection.getScrollSign(this.layoutInfo.shouldReverseLayout()));
        return this.pendingAlignments.size() == this.configuration.getMaxPendingAlignments();
    }

    private final boolean hasMaxPendingAlignments() {
        return this.configuration.getIsSmoothFocusChangesEnabled() && this.configuration.getMaxPendingAlignments() != Integer.MAX_VALUE;
    }

    public final boolean push(final View focusedView, final View childView, int scrollOffset) {
        Intrinsics.checkNotNullParameter(focusedView, "focusedView");
        if (!hasMaxPendingAlignments() || scrollOffset == 0) {
            return true;
        }
        consumeAlignedViews(scrollOffset);
        if (this.pendingAlignments.size() >= this.configuration.getMaxPendingAlignments()) {
            return false;
        }
        CollectionsKt.removeAll((List) this.pendingAlignments, (Function1) new Function1<PendingAlignment, Boolean>() { // from class: com.rubensousa.dpadrecyclerview.layoutmanager.scroll.ScrollAlignmentQueue$push$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(ScrollAlignmentQueue.PendingAlignment entry) {
                Intrinsics.checkNotNullParameter(entry, "entry");
                return Boolean.valueOf(entry.getView() == focusedView && Intrinsics.areEqual(entry.getChildView(), childView));
            }
        });
        this.pendingAlignments.addLast(new PendingAlignment(focusedView, childView, MathKt.getSign(scrollOffset)));
        return true;
    }

    private final void consumeAlignedViews(int targetScrollOffset) {
        PendingAlignment peekLast = this.pendingAlignments.peekLast();
        if (peekLast != null && peekLast.getSign() != MathKt.getSign(targetScrollOffset)) {
            this.pendingAlignments.removeLast();
        }
        Iterator<PendingAlignment> it = this.pendingAlignments.iterator();
        Intrinsics.checkNotNullExpressionValue(it, "iterator(...)");
        while (it.hasNext()) {
            PendingAlignment next = it.next();
            Intrinsics.checkNotNullExpressionValue(next, "next(...)");
            PendingAlignment pendingAlignment = next;
            int calculateScrollOffset = this.layoutAlignment.calculateScrollOffset(pendingAlignment.getView(), pendingAlignment.getChildView());
            if (calculateScrollOffset == 0 || isPendingAlignmentInOppositeDirection(pendingAlignment, calculateScrollOffset) || isRemoved(pendingAlignment.getView())) {
                it.remove();
            }
        }
    }

    private final boolean isRemoved(View view) {
        RecyclerView.ViewHolder childViewHolder = this.layoutInfo.getChildViewHolder(view);
        if (childViewHolder == null) {
            return true;
        }
        ViewGroup.LayoutParams layoutParams = childViewHolder.itemView.getLayoutParams();
        Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView.LayoutParams");
        return ((RecyclerView.LayoutParams) layoutParams).isItemRemoved();
    }

    private final boolean isPendingAlignmentInOppositeDirection(PendingAlignment alignment, int scrollOffset) {
        return MathKt.getSign(scrollOffset) != alignment.getSign();
    }

    /* compiled from: ScrollAlignmentQueue.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u000e\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0006HÆ\u0003J)\u0010\u0010\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0006HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\t¨\u0006\u0017"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue$PendingAlignment;", "", "view", "Landroid/view/View;", "childView", "sign", "", "(Landroid/view/View;Landroid/view/View;I)V", "getChildView", "()Landroid/view/View;", "getSign", "()I", "getView", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "toString", "", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final /* data */ class PendingAlignment {
        private final View childView;
        private final int sign;
        private final View view;

        public static /* synthetic */ PendingAlignment copy$default(PendingAlignment pendingAlignment, View view, View view2, int i, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                view = pendingAlignment.view;
            }
            if ((i2 & 2) != 0) {
                view2 = pendingAlignment.childView;
            }
            if ((i2 & 4) != 0) {
                i = pendingAlignment.sign;
            }
            return pendingAlignment.copy(view, view2, i);
        }

        /* renamed from: component1, reason: from getter */
        public final View getView() {
            return this.view;
        }

        /* renamed from: component2, reason: from getter */
        public final View getChildView() {
            return this.childView;
        }

        /* renamed from: component3, reason: from getter */
        public final int getSign() {
            return this.sign;
        }

        public final PendingAlignment copy(View view, View childView, int sign) {
            Intrinsics.checkNotNullParameter(view, "view");
            return new PendingAlignment(view, childView, sign);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof PendingAlignment)) {
                return false;
            }
            PendingAlignment pendingAlignment = (PendingAlignment) other;
            return Intrinsics.areEqual(this.view, pendingAlignment.view) && Intrinsics.areEqual(this.childView, pendingAlignment.childView) && this.sign == pendingAlignment.sign;
        }

        public final View getChildView() {
            return this.childView;
        }

        public final int getSign() {
            return this.sign;
        }

        public final View getView() {
            return this.view;
        }

        public int hashCode() {
            int hashCode = this.view.hashCode() * 31;
            View view = this.childView;
            return ((hashCode + (view == null ? 0 : view.hashCode())) * 31) + Integer.hashCode(this.sign);
        }

        public String toString() {
            return "PendingAlignment(view=" + this.view + ", childView=" + this.childView + ", sign=" + this.sign + ')';
        }

        public PendingAlignment(View view, View view2, int i) {
            Intrinsics.checkNotNullParameter(view, "view");
            this.view = view;
            this.childView = view2;
            this.sign = i;
        }
    }
}
