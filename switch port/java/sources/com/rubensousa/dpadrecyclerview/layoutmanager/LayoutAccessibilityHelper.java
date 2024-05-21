package com.rubensousa.dpadrecyclerview.layoutmanager;

import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.rubensousa.dpadrecyclerview.layoutmanager.layout.LayoutInfo;
import com.rubensousa.dpadrecyclerview.layoutmanager.scroll.LayoutScroller;
import io.sentry.protocol.SentryThread;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: LayoutAccessibilityHelper.kt */
@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\u0018\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\u000e\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017J\u000e\u0010\u0018\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017J\"\u0010\u0019\u001a\u00020\u000e2\n\u0010\u001a\u001a\u00060\u001bR\u00020\u001c2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u000f\u001a\u00020\u0010J\u0016\u0010\u001d\u001a\u00020\u000e2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u000f\u001a\u00020\u0010J \u0010 \u001a\u00020\u00122\b\u0010!\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\"\u001a\u00020\u0015J\u0012\u0010#\u001a\u00020\u000e2\b\u0010!\u001a\u0004\u0018\u00010\u001cH\u0002J\u0018\u0010$\u001a\u00020\u00152\u0006\u0010\"\u001a\u00020\u00152\u0006\u0010\u0011\u001a\u00020\u0012H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006%"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutAccessibilityHelper;", "", "layoutManager", "Landroidx/recyclerview/widget/RecyclerView$LayoutManager;", "configuration", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;", "layoutInfo", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;", "pivotSelector", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;", "scroller", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;", "(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;)V", "addA11yActionMovingBackward", "", "info", "Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;", "reverseLayout", "", "addA11yActionMovingForward", "getColumnCountForAccessibility", "", SentryThread.JsonKeys.STATE, "Landroidx/recyclerview/widget/RecyclerView$State;", "getRowCountForAccessibility", "onInitializeAccessibilityNodeInfo", "recycler", "Landroidx/recyclerview/widget/RecyclerView$Recycler;", "Landroidx/recyclerview/widget/RecyclerView;", "onInitializeAccessibilityNodeInfoForItem", "host", "Landroid/view/View;", "performAccessibilityAction", "recyclerView", "action", "sendViewScrolledAccessibilityEvent", "translateAccessibilityAction", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class LayoutAccessibilityHelper {
    private final LayoutConfiguration configuration;
    private final LayoutInfo layoutInfo;
    private final RecyclerView.LayoutManager layoutManager;
    private final PivotSelector pivotSelector;
    private final LayoutScroller scroller;

    public LayoutAccessibilityHelper(RecyclerView.LayoutManager layoutManager, LayoutConfiguration configuration, LayoutInfo layoutInfo, PivotSelector pivotSelector, LayoutScroller scroller) {
        Intrinsics.checkNotNullParameter(layoutManager, "layoutManager");
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        Intrinsics.checkNotNullParameter(layoutInfo, "layoutInfo");
        Intrinsics.checkNotNullParameter(pivotSelector, "pivotSelector");
        Intrinsics.checkNotNullParameter(scroller, "scroller");
        this.layoutManager = layoutManager;
        this.configuration = configuration;
        this.layoutInfo = layoutInfo;
        this.pivotSelector = pivotSelector;
        this.scroller = scroller;
    }

    public final int getRowCountForAccessibility(RecyclerView.State state) {
        Intrinsics.checkNotNullParameter(state, "state");
        if (this.configuration.isHorizontal()) {
            return this.configuration.getSpanCount();
        }
        if (state.getItemCount() < 1) {
            return 0;
        }
        return this.layoutInfo.getSpanGroupIndex(state.getItemCount() - 1) + 1;
    }

    public final int getColumnCountForAccessibility(RecyclerView.State state) {
        Intrinsics.checkNotNullParameter(state, "state");
        if (this.configuration.isVertical()) {
            return this.configuration.getSpanCount();
        }
        if (state.getItemCount() < 1) {
            return 0;
        }
        return this.layoutInfo.getSpanGroupIndex(state.getItemCount() - 1) + 1;
    }

    public final void onInitializeAccessibilityNodeInfo(RecyclerView.Recycler recycler, RecyclerView.State state, AccessibilityNodeInfoCompat info) {
        Intrinsics.checkNotNullParameter(recycler, "recycler");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(info, "info");
        int itemCount = state.getItemCount();
        boolean shouldReverseLayout = this.layoutInfo.shouldReverseLayout();
        if (!this.configuration.getFocusOutFront() || (itemCount > 1 && !this.layoutInfo.isItemFullyVisible(0))) {
            addA11yActionMovingBackward(info, shouldReverseLayout);
        }
        if (!this.configuration.getFocusOutBack() || (itemCount > 1 && !this.layoutInfo.isItemFullyVisible(itemCount - 1))) {
            addA11yActionMovingForward(info, shouldReverseLayout);
        }
        info.setCollectionInfo(AccessibilityNodeInfoCompat.CollectionInfoCompat.obtain(getRowCountForAccessibility(state), getColumnCountForAccessibility(state), this.layoutManager.isLayoutHierarchical(recycler, state), this.layoutManager.getSelectionModeForAccessibility(recycler, state)));
    }

    public final void onInitializeAccessibilityNodeInfoForItem(View host, AccessibilityNodeInfoCompat info) {
        Intrinsics.checkNotNullParameter(host, "host");
        Intrinsics.checkNotNullParameter(info, "info");
        ViewGroup.LayoutParams layoutParams = host.getLayoutParams();
        Intrinsics.checkNotNullExpressionValue(layoutParams, "getLayoutParams(...)");
        if (layoutParams instanceof DpadLayoutParams) {
            DpadLayoutParams dpadLayoutParams = (DpadLayoutParams) layoutParams;
            int spanGroupIndex = this.layoutInfo.getSpanGroupIndex(dpadLayoutParams.getViewLayoutPosition());
            if (this.layoutInfo.isHorizontal()) {
                info.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(dpadLayoutParams.getSpanIndex(), dpadLayoutParams.getSpanSize(), spanGroupIndex, 1, false, false));
            } else {
                info.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(spanGroupIndex, 1, dpadLayoutParams.getSpanIndex(), dpadLayoutParams.getSpanSize(), false, false));
            }
        }
    }

    public final boolean performAccessibilityAction(RecyclerView recyclerView, RecyclerView.State state, int action) {
        Intrinsics.checkNotNullParameter(state, "state");
        if (!this.configuration.getIsScrollEnabled()) {
            return true;
        }
        int translateAccessibilityAction = translateAccessibilityAction(action, this.layoutInfo.shouldReverseLayout());
        boolean z = this.pivotSelector.getPosition() == 0 && translateAccessibilityAction == 8192;
        boolean z2 = this.pivotSelector.getPosition() == state.getItemCount() - 1 && translateAccessibilityAction == 4096;
        if (z || z2) {
            sendViewScrolledAccessibilityEvent(recyclerView);
        } else if (translateAccessibilityAction == 4096) {
            this.scroller.addScrollMovement(true, true);
        } else if (translateAccessibilityAction == 8192) {
            this.scroller.addScrollMovement(false, true);
        }
        return true;
    }

    private final int translateAccessibilityAction(int action, boolean reverseLayout) {
        if (this.configuration.isHorizontal()) {
            if (action == AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_LEFT.getId()) {
                return reverseLayout ? 4096 : 8192;
            }
            if (action == AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_RIGHT.getId()) {
                return reverseLayout ? 8192 : 4096;
            }
        } else {
            if (action == AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_UP.getId()) {
                return 8192;
            }
            if (action == AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_DOWN.getId()) {
                return 4096;
            }
        }
        return action;
    }

    private final void sendViewScrolledAccessibilityEvent(RecyclerView recyclerView) {
        AccessibilityEvent obtain = AccessibilityEvent.obtain(4096);
        if (recyclerView != null) {
            recyclerView.onInitializeAccessibilityEvent(obtain);
            recyclerView.requestSendAccessibilityEvent(recyclerView, obtain);
        }
    }

    private final void addA11yActionMovingBackward(AccessibilityNodeInfoCompat info, boolean reverseLayout) {
        AccessibilityNodeInfoCompat.AccessibilityActionCompat accessibilityActionCompat;
        if (this.configuration.isHorizontal()) {
            if (reverseLayout) {
                accessibilityActionCompat = AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_RIGHT;
            } else {
                accessibilityActionCompat = AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_LEFT;
            }
            info.addAction(accessibilityActionCompat);
        } else {
            info.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_UP);
        }
        info.setScrollable(true);
    }

    private final void addA11yActionMovingForward(AccessibilityNodeInfoCompat info, boolean reverseLayout) {
        AccessibilityNodeInfoCompat.AccessibilityActionCompat accessibilityActionCompat;
        if (this.configuration.isHorizontal()) {
            if (reverseLayout) {
                accessibilityActionCompat = AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_LEFT;
            } else {
                accessibilityActionCompat = AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_RIGHT;
            }
            info.addAction(accessibilityActionCompat);
        } else {
            info.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_DOWN);
        }
        info.setScrollable(true);
    }
}
