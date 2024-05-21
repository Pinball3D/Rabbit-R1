package com.rubensousa.dpadrecyclerview.spacing;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.rubensousa.dpadrecyclerview.DpadRecyclerView;
import com.rubensousa.dpadrecyclerview.layoutmanager.DpadLayoutParams;
import io.sentry.protocol.SentryThread;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: DpadGridSpacingDecoration.kt */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bB%\b\u0002\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0005\u001a\u00020\u0003¢\u0006\u0002\u0010\u0006J@\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000fH\u0002J@\u0010\u0012\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000fH\u0002J0\u0010\u0013\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0016R\u000e\u0010\u0005\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/spacing/DpadGridSpacingDecoration;", "Lcom/rubensousa/dpadrecyclerview/spacing/DpadSpacingDecoration;", "itemSpacing", "", "perpendicularItemSpacing", "edgeSpacing", "(III)V", "applyHorizontally", "", "outRect", "Landroid/graphics/Rect;", "spanIndex", "spanSize", "spanCount", "isAtStartEdge", "", "isAtEndEdge", "reverseLayout", "applyVertically", "getItemOffsets", "view", "Landroid/view/View;", "layoutPosition", "parent", "Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;", SentryThread.JsonKeys.STATE, "Landroidx/recyclerview/widget/RecyclerView$State;", "Companion", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class DpadGridSpacingDecoration extends DpadSpacingDecoration {

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final int edgeSpacing;
    private final int itemSpacing;
    private final int perpendicularItemSpacing;

    public /* synthetic */ DpadGridSpacingDecoration(int i, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, i2, i3);
    }

    @JvmStatic
    public static final DpadGridSpacingDecoration create(int i, int i2, int i3) {
        return INSTANCE.create(i, i2, i3);
    }

    private DpadGridSpacingDecoration(int i, int i2, int i3) {
        this.itemSpacing = i;
        this.perpendicularItemSpacing = i2;
        this.edgeSpacing = i3;
    }

    /* compiled from: DpadGridSpacingDecoration.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J&\u0010\u0003\u001a\u00020\u00042\b\b\u0001\u0010\u0005\u001a\u00020\u00062\b\b\u0003\u0010\u0007\u001a\u00020\u00062\b\b\u0003\u0010\b\u001a\u00020\u0006H\u0007¨\u0006\t"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/spacing/DpadGridSpacingDecoration$Companion;", "", "()V", "create", "Lcom/rubensousa/dpadrecyclerview/spacing/DpadGridSpacingDecoration;", "itemSpacing", "", "perpendicularItemSpacing", "edgeSpacing", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public static /* synthetic */ DpadGridSpacingDecoration create$default(Companion companion, int i, int i2, int i3, int i4, Object obj) {
            if ((i4 & 2) != 0) {
                i2 = i;
            }
            if ((i4 & 4) != 0) {
                i3 = i;
            }
            return companion.create(i, i2, i3);
        }

        @JvmStatic
        public final DpadGridSpacingDecoration create(int itemSpacing, int perpendicularItemSpacing, int edgeSpacing) {
            return new DpadGridSpacingDecoration(itemSpacing, perpendicularItemSpacing, edgeSpacing, null);
        }
    }

    @Override // com.rubensousa.dpadrecyclerview.spacing.DpadSpacingDecoration
    public void getItemOffsets(Rect outRect, View view, int layoutPosition, DpadRecyclerView parent, RecyclerView.State state) {
        Intrinsics.checkNotNullParameter(outRect, "outRect");
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(state, "state");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type com.rubensousa.dpadrecyclerview.layoutmanager.DpadLayoutParams");
        DpadLayoutParams dpadLayoutParams = (DpadLayoutParams) layoutParams;
        int spanIndex = dpadLayoutParams.getSpanIndex();
        if (spanIndex == -1) {
            return;
        }
        int spanCount = parent.getSpanCount();
        boolean isLayoutReversed = parent.isLayoutReversed();
        int itemCount = state.getItemCount();
        int spanSize = dpadLayoutParams.getSpanSize();
        int i = !isLayoutReversed ? spanIndex : (spanCount - 1) - spanIndex;
        boolean z = dpadLayoutParams.getSpanGroupIndex() == 0;
        boolean z2 = layoutPosition + ((spanCount - spanIndex) - spanSize) >= itemCount - 1;
        if (parent.getOrientation() == 1) {
            applyVertically(outRect, i, spanSize, spanCount, z, z2, isLayoutReversed);
        } else {
            applyHorizontally(outRect, i, spanSize, spanCount, z, z2, isLayoutReversed);
        }
    }

    private final void applyVertically(Rect outRect, int spanIndex, int spanSize, int spanCount, boolean isAtStartEdge, boolean isAtEndEdge, boolean reverseLayout) {
        int i = spanCount - spanIndex;
        int i2 = spanIndex + spanSize;
        int i3 = this.itemSpacing;
        float f = spanCount;
        outRect.left = (int) (i3 * (i / f));
        outRect.right = (int) (i3 * (i2 / f));
        if (isAtStartEdge) {
            if (!reverseLayout) {
                outRect.top = this.edgeSpacing;
                outRect.bottom = this.perpendicularItemSpacing;
                return;
            } else {
                outRect.bottom = this.edgeSpacing;
                outRect.top = this.perpendicularItemSpacing;
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
            outRect.bottom = this.perpendicularItemSpacing;
        } else {
            outRect.top = this.perpendicularItemSpacing;
        }
    }

    private final void applyHorizontally(Rect outRect, int spanIndex, int spanSize, int spanCount, boolean isAtStartEdge, boolean isAtEndEdge, boolean reverseLayout) {
        int i = spanCount - spanIndex;
        int i2 = spanIndex + spanSize;
        int i3 = this.itemSpacing;
        float f = spanCount;
        outRect.top = (int) (i3 * (i / f));
        outRect.bottom = (int) (i3 * (i2 / f));
        if (isAtStartEdge) {
            if (!reverseLayout) {
                outRect.left = this.edgeSpacing;
                outRect.right = this.perpendicularItemSpacing;
                return;
            } else {
                outRect.right = this.edgeSpacing;
                outRect.left = this.perpendicularItemSpacing;
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
            outRect.right = this.perpendicularItemSpacing;
        } else {
            outRect.left = this.perpendicularItemSpacing;
        }
    }
}
