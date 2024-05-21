package com.rubensousa.dpadrecyclerview.layoutmanager;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import io.sentry.Session;
import io.sentry.protocol.TransactionInfo;
import io.sentry.protocol.ViewHierarchyNode;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: DpadLayoutParams.kt */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u0015\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\f\u0018\u0000 ,2\u00020\u0001:\u0001,B\u0017\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006B\u0017\b\u0016\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0002\u0010\nB\u000f\b\u0016\u0012\u0006\u0010\u000b\u001a\u00020\f¢\u0006\u0002\u0010\rB\u000f\b\u0016\u0012\u0006\u0010\u000b\u001a\u00020\u000e¢\u0006\u0002\u0010\u000fB\u000f\b\u0016\u0012\u0006\u0010\u000b\u001a\u00020\u0001¢\u0006\u0002\u0010\u0010B\u000f\b\u0016\u0012\u0006\u0010\u000b\u001a\u00020\u0000¢\u0006\u0002\u0010\u0011J\u000f\u0010\u001e\u001a\u0004\u0018\u00010\u001dH\u0000¢\u0006\u0002\b\u001fJ\u0015\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\bH\u0000¢\u0006\u0002\b#J\u0017\u0010$\u001a\u00020!2\b\u0010%\u001a\u0004\u0018\u00010\u001dH\u0000¢\u0006\u0002\b&J%\u0010'\u001a\u00020!2\u0006\u0010(\u001a\u00020\b2\u0006\u0010)\u001a\u00020\b2\u0006\u0010*\u001a\u00020\bH\u0000¢\u0006\u0002\b+R\u001e\u0010\u0013\u001a\u00020\b2\u0006\u0010\u0012\u001a\u00020\b@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u001e\u0010\u0016\u001a\u00020\b2\u0006\u0010\u0012\u001a\u00020\b@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0015R\u001e\u0010\u0018\u001a\u00020\b2\u0006\u0010\u0012\u001a\u00020\b@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0015R\u001e\u0010\u001a\u001a\u00020\b2\u0006\u0010\u0012\u001a\u00020\b@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0015R\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u001dX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006-"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/layoutmanager/DpadLayoutParams;", "Landroidx/recyclerview/widget/RecyclerView$LayoutParams;", "context", "Landroid/content/Context;", Session.JsonKeys.ATTRS, "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", ViewHierarchyNode.JsonKeys.WIDTH, "", ViewHierarchyNode.JsonKeys.HEIGHT, "(II)V", TransactionInfo.JsonKeys.SOURCE, "Landroid/view/ViewGroup$MarginLayoutParams;", "(Landroid/view/ViewGroup$MarginLayoutParams;)V", "Landroid/view/ViewGroup$LayoutParams;", "(Landroid/view/ViewGroup$LayoutParams;)V", "(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)V", "(Lcom/rubensousa/dpadrecyclerview/layoutmanager/DpadLayoutParams;)V", "<set-?>", "alignmentAnchor", "getAlignmentAnchor", "()I", "spanGroupIndex", "getSpanGroupIndex", "spanIndex", "getSpanIndex", "spanSize", "getSpanSize", "subPositionAnchors", "", "getSubPositionAnchors", "getSubPositionAnchors$dpadrecyclerview_release", "setAlignmentAnchor", "", "anchor", "setAlignmentAnchor$dpadrecyclerview_release", "setSubPositionAnchors", "newAlignments", "setSubPositionAnchors$dpadrecyclerview_release", "updateSpan", "index", "groupIndex", "size", "updateSpan$dpadrecyclerview_release", "Companion", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class DpadLayoutParams extends RecyclerView.LayoutParams {
    public static final int INVALID_SPAN_ID = -1;
    private int alignmentAnchor;
    private int spanGroupIndex;
    private int spanIndex;
    private int spanSize;
    private int[] subPositionAnchors;

    public final int getAlignmentAnchor() {
        return this.alignmentAnchor;
    }

    public final int getSpanGroupIndex() {
        return this.spanGroupIndex;
    }

    public final int getSpanIndex() {
        return this.spanIndex;
    }

    public final int getSpanSize() {
        return this.spanSize;
    }

    /* renamed from: getSubPositionAnchors$dpadrecyclerview_release, reason: from getter */
    public final int[] getSubPositionAnchors() {
        return this.subPositionAnchors;
    }

    public final void setAlignmentAnchor$dpadrecyclerview_release(int anchor) {
        this.alignmentAnchor = anchor;
    }

    public final void updateSpan$dpadrecyclerview_release(int index, int groupIndex, int size) {
        this.spanIndex = index;
        this.spanGroupIndex = groupIndex;
        this.spanSize = size;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DpadLayoutParams(Context context, AttributeSet attrs) {
        super(context, attrs);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(attrs, "attrs");
        this.spanSize = 1;
        this.spanIndex = -1;
        this.spanGroupIndex = -1;
    }

    public DpadLayoutParams(int i, int i2) {
        super(i, i2);
        this.spanSize = 1;
        this.spanIndex = -1;
        this.spanGroupIndex = -1;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DpadLayoutParams(ViewGroup.MarginLayoutParams source) {
        super(source);
        Intrinsics.checkNotNullParameter(source, "source");
        this.spanSize = 1;
        this.spanIndex = -1;
        this.spanGroupIndex = -1;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DpadLayoutParams(ViewGroup.LayoutParams source) {
        super(source);
        Intrinsics.checkNotNullParameter(source, "source");
        this.spanSize = 1;
        this.spanIndex = -1;
        this.spanGroupIndex = -1;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DpadLayoutParams(RecyclerView.LayoutParams source) {
        super(source);
        Intrinsics.checkNotNullParameter(source, "source");
        this.spanSize = 1;
        this.spanIndex = -1;
        this.spanGroupIndex = -1;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DpadLayoutParams(DpadLayoutParams source) {
        super((RecyclerView.LayoutParams) source);
        Intrinsics.checkNotNullParameter(source, "source");
        this.spanSize = 1;
        this.spanIndex = -1;
        this.spanGroupIndex = -1;
    }

    public final void setSubPositionAnchors$dpadrecyclerview_release(int[] newAlignments) {
        this.subPositionAnchors = newAlignments;
        if (newAlignments == null) {
            this.alignmentAnchor = 0;
        } else {
            this.alignmentAnchor = newAlignments[0];
        }
    }
}
