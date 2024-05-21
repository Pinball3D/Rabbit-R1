package com.rubensousa.dpadrecyclerview.spacing;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.rubensousa.dpadrecyclerview.DpadLoopDirection;
import com.rubensousa.dpadrecyclerview.DpadRecyclerView;
import io.sentry.protocol.SentryThread;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: DpadLinearSpacingDecoration.kt */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B%\b\u0002\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0005\u001a\u00020\u0003¢\u0006\u0002\u0010\u0006J(\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\fH\u0002J(\u0010\u000f\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\fH\u0002J0\u0010\u0010\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0016R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/spacing/DpadLinearSpacingDecoration;", "Lcom/rubensousa/dpadrecyclerview/spacing/DpadSpacingDecoration;", "itemSpacing", "", "edgeSpacing", "perpendicularEdgeSpacing", "(III)V", "applyHorizontally", "", "outRect", "Landroid/graphics/Rect;", "isAtStartEdge", "", "isAtEndEdge", "reverseLayout", "applyVertically", "getItemOffsets", "view", "Landroid/view/View;", "layoutPosition", "parent", "Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;", SentryThread.JsonKeys.STATE, "Landroidx/recyclerview/widget/RecyclerView$State;", "Companion", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class DpadLinearSpacingDecoration extends DpadSpacingDecoration {

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final int edgeSpacing;
    private final int itemSpacing;
    private final int perpendicularEdgeSpacing;

    public /* synthetic */ DpadLinearSpacingDecoration(int i, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, i2, i3);
    }

    @JvmStatic
    public static final DpadLinearSpacingDecoration create(int i, int i2, int i3) {
        return INSTANCE.create(i, i2, i3);
    }

    private DpadLinearSpacingDecoration(int i, int i2, int i3) {
        this.itemSpacing = i;
        this.edgeSpacing = i2;
        this.perpendicularEdgeSpacing = i3;
    }

    /* compiled from: DpadLinearSpacingDecoration.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J&\u0010\u0003\u001a\u00020\u00042\b\b\u0001\u0010\u0005\u001a\u00020\u00062\b\b\u0003\u0010\u0007\u001a\u00020\u00062\b\b\u0003\u0010\b\u001a\u00020\u0006H\u0007¨\u0006\t"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/spacing/DpadLinearSpacingDecoration$Companion;", "", "()V", "create", "Lcom/rubensousa/dpadrecyclerview/spacing/DpadLinearSpacingDecoration;", "itemSpacing", "", "edgeSpacing", "perpendicularEdgeSpacing", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public static /* synthetic */ DpadLinearSpacingDecoration create$default(Companion companion, int i, int i2, int i3, int i4, Object obj) {
            if ((i4 & 2) != 0) {
                i2 = i;
            }
            if ((i4 & 4) != 0) {
                i3 = 0;
            }
            return companion.create(i, i2, i3);
        }

        @JvmStatic
        public final DpadLinearSpacingDecoration create(int itemSpacing, int edgeSpacing, int perpendicularEdgeSpacing) {
            return new DpadLinearSpacingDecoration(itemSpacing, edgeSpacing, perpendicularEdgeSpacing, null);
        }
    }

    @Override // com.rubensousa.dpadrecyclerview.spacing.DpadSpacingDecoration
    public void getItemOffsets(Rect outRect, View view, int layoutPosition, DpadRecyclerView parent, RecyclerView.State state) {
        Intrinsics.checkNotNullParameter(outRect, "outRect");
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(state, "state");
        int itemCount = state.getItemCount();
        boolean isLayoutReversed = parent.isLayoutReversed();
        boolean z = false;
        boolean z2 = layoutPosition == 0 && parent.getLoopDirection() == DpadLoopDirection.NONE;
        if (layoutPosition == itemCount - 1 && parent.getLoopDirection() == DpadLoopDirection.NONE) {
            z = true;
        }
        if (parent.getOrientation() == 1) {
            applyVertically(outRect, z2, z, isLayoutReversed);
        } else {
            applyHorizontally(outRect, z2, z, isLayoutReversed);
        }
    }

    private final void applyVertically(Rect outRect, boolean isAtStartEdge, boolean isAtEndEdge, boolean reverseLayout) {
        outRect.left = this.perpendicularEdgeSpacing;
        outRect.right = this.perpendicularEdgeSpacing;
        if (isAtStartEdge) {
            if (!reverseLayout) {
                outRect.top = this.edgeSpacing;
                outRect.bottom = this.itemSpacing;
                return;
            } else {
                outRect.bottom = this.edgeSpacing;
                outRect.top = this.itemSpacing;
                return;
            }
        }
        if (isAtEndEdge) {
            if (!reverseLayout) {
                outRect.bottom = this.edgeSpacing;
                return;
            } else {
                outRect.top = this.edgeSpacing;
                return;
            }
        }
        if (!reverseLayout) {
            outRect.bottom = this.itemSpacing;
        } else {
            outRect.top = this.itemSpacing;
        }
    }

    private final void applyHorizontally(Rect outRect, boolean isAtStartEdge, boolean isAtEndEdge, boolean reverseLayout) {
        outRect.top = this.perpendicularEdgeSpacing;
        outRect.bottom = this.perpendicularEdgeSpacing;
        if (isAtStartEdge) {
            if (!reverseLayout) {
                outRect.left = this.edgeSpacing;
                outRect.right = this.itemSpacing;
                return;
            } else {
                outRect.right = this.edgeSpacing;
                outRect.left = this.itemSpacing;
                return;
            }
        }
        if (isAtEndEdge) {
            if (!reverseLayout) {
                outRect.right = this.edgeSpacing;
                return;
            } else {
                outRect.left = this.edgeSpacing;
                return;
            }
        }
        if (!reverseLayout) {
            outRect.right = this.itemSpacing;
        } else {
            outRect.left = this.itemSpacing;
        }
    }
}
