package com.rubensousa.dpadrecyclerview.layoutmanager;

import androidx.recyclerview.widget.RecyclerView;
import com.rubensousa.dpadrecyclerview.DpadLoopDirection;
import com.rubensousa.dpadrecyclerview.DpadSpanSizeLookup;
import com.rubensousa.dpadrecyclerview.ExtraLayoutSpaceStrategy;
import com.rubensousa.dpadrecyclerview.FocusableDirection;
import io.sentry.protocol.Device;
import io.sentry.protocol.MetricSummary;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: LayoutConfiguration.kt */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b%\b\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010>\u001a\u00020\nJ\u0006\u0010?\u001a\u00020\nJ\u0006\u0010@\u001a\u00020\nJ\u000e\u0010A\u001a\u00020B2\u0006\u0010C\u001a\u00020\nJ\u0010\u0010D\u001a\u00020B2\b\u0010E\u001a\u0004\u0018\u00010\u0006J\u0016\u0010F\u001a\u00020B2\u0006\u0010G\u001a\u00020\n2\u0006\u0010H\u001a\u00020\nJ\u0016\u0010I\u001a\u00020B2\u0006\u0010G\u001a\u00020\n2\u0006\u0010H\u001a\u00020\nJ\u000e\u0010J\u001a\u00020B2\u0006\u0010K\u001a\u00020\nJ\u000e\u0010L\u001a\u00020B2\u0006\u0010C\u001a\u00020\nJ\u000e\u0010M\u001a\u00020B2\u0006\u0010N\u001a\u00020\u0014J\u000e\u0010O\u001a\u00020B2\u0006\u0010P\u001a\u00020\u0018J\u000e\u0010Q\u001a\u00020B2\u0006\u0010R\u001a\u00020\u0018J\u000e\u0010S\u001a\u00020B2\u0006\u0010T\u001a\u00020\nJ\u000e\u0010U\u001a\u00020B2\u0006\u0010C\u001a\u00020\nJ\u000e\u0010V\u001a\u00020B2\u0006\u0010E\u001a\u00020&J\u000e\u0010W\u001a\u00020B2\u0006\u0010X\u001a\u00020\u0018J\u000e\u0010Y\u001a\u00020B2\u0006\u0010Z\u001a\u00020\u0018J\u000e\u0010[\u001a\u00020B2\u0006\u0010\\\u001a\u00020\u0018J\u000e\u0010]\u001a\u00020B2\u0006\u0010^\u001a\u00020\nJ\u000e\u0010_\u001a\u00020B2\u0006\u0010`\u001a\u00020\nJ\u000e\u0010a\u001a\u00020B2\u0006\u0010C\u001a\u00020\nJ\u000e\u0010b\u001a\u00020B2\u0006\u0010`\u001a\u00020\nJ\u000e\u0010c\u001a\u00020B2\u0006\u0010d\u001a\u000204J\u000e\u0010e\u001a\u00020B2\u0006\u0010R\u001a\u00020\u0018J\u000e\u0010f\u001a\u00020B2\u0006\u0010;\u001a\u00020:R\"\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u001e\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\n@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u001e\u0010\u000e\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\n@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\rR\u001e\u0010\u0010\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\n@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\rR\u001e\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\n@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\rR\u001e\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0005\u001a\u00020\u0014@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u001e\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0005\u001a\u00020\u0018@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u001e\u0010\u001c\u001a\u00020\u00182\u0006\u0010\u0005\u001a\u00020\u0018@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001bR\u001e\u0010\u001e\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\n@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\rR\u001e\u0010\u001f\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\n@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\rR\u001e\u0010 \u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\n@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b \u0010\rR\u001e\u0010!\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\n@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\rR\u001e\u0010\"\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\n@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010\rR\u001e\u0010#\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\n@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b#\u0010\rR\u001e\u0010$\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\n@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b%\u0010\rR\u001e\u0010'\u001a\u00020&2\u0006\u0010\u0005\u001a\u00020&@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b(\u0010)R\u001e\u0010*\u001a\u00020\u00182\u0006\u0010\u0005\u001a\u00020\u0018@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b+\u0010\u001bR\u001e\u0010,\u001a\u00020\u00182\u0006\u0010\u0005\u001a\u00020\u0018@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b-\u0010\u001bR\u001e\u0010.\u001a\u00020\u00182\u0006\u0010\u0005\u001a\u00020\u0018@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b/\u0010\u001bR\u001e\u00100\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\n@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b1\u0010\rR\u001e\u00102\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\n@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b3\u0010\rR\u001e\u00105\u001a\u0002042\u0006\u0010\u0005\u001a\u000204@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b6\u00107R\u001e\u00108\u001a\u00020\u00182\u0006\u0010\u0005\u001a\u00020\u0018@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b9\u0010\u001bR\u001e\u0010;\u001a\u00020:2\u0006\u0010\u0005\u001a\u00020:@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b<\u0010=¨\u0006g"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;", "", "properties", "Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;", "(Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;)V", "<set-?>", "Lcom/rubensousa/dpadrecyclerview/ExtraLayoutSpaceStrategy;", "extraLayoutSpaceStrategy", "getExtraLayoutSpaceStrategy", "()Lcom/rubensousa/dpadrecyclerview/ExtraLayoutSpaceStrategy;", "", "focusOutBack", "getFocusOutBack", "()Z", "focusOutFront", "getFocusOutFront", "focusOutSideBack", "getFocusOutSideBack", "focusOutSideFront", "getFocusOutSideFront", "Lcom/rubensousa/dpadrecyclerview/FocusableDirection;", "focusableDirection", "getFocusableDirection", "()Lcom/rubensousa/dpadrecyclerview/FocusableDirection;", "", "gravity", "getGravity", "()I", "initialPrefetchItemCount", "getInitialPrefetchItemCount", "isChildDrawingOrderEnabled", "isFocusSearchDisabled", "isFocusSearchEnabledDuringAnimations", "isLayoutEnabled", "isScrollEnabled", "isSmoothFocusChangesEnabled", "keepLayoutAnchor", "getKeepLayoutAnchor", "Lcom/rubensousa/dpadrecyclerview/DpadLoopDirection;", "loopDirection", "getLoopDirection", "()Lcom/rubensousa/dpadrecyclerview/DpadLoopDirection;", "maxPendingAlignments", "getMaxPendingAlignments", "maxPendingMoves", "getMaxPendingMoves", Device.JsonKeys.ORIENTATION, "getOrientation", "recycleChildrenOnDetach", "getRecycleChildrenOnDetach", "reverseLayout", "getReverseLayout", "", "smoothScrollSpeedFactor", "getSmoothScrollSpeedFactor", "()F", "spanCount", "getSpanCount", "Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;", "spanSizeLookup", "getSpanSizeLookup", "()Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;", "hasMaxPendingAlignments", "isHorizontal", "isVertical", "setChildDrawingOrderEnabled", "", "enabled", "setExtraLayoutSpaceStrategy", "strategy", "setFocusOutAllowed", "throughFront", "throughBack", "setFocusOutSideAllowed", "setFocusSearchDisabled", "isDisabled", "setFocusSearchEnabledDuringAnimations", "setFocusableDirection", "direction", "setGravity", "newGravity", "setInitialPrefetchItemCount", MetricSummary.JsonKeys.COUNT, "setKeepLayoutAnchor", "keep", "setLayoutEnabled", "setLoopDirection", "setMaxPendingAlignments", MetricSummary.JsonKeys.MAX, "setMaxPendingMoves", "moves", "setOrientation", "newOrientation", "setRecycleChildrenOnDetach", "recycle", "setReverseLayout", "isEnabled", "setScrollEnabled", "setSmoothFocusChangesEnabled", "setSmoothScrollSpeedFactor", "speedFactor", "setSpanCount", "setSpanSizeLookup", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class LayoutConfiguration {
    private ExtraLayoutSpaceStrategy extraLayoutSpaceStrategy;
    private boolean focusOutBack;
    private boolean focusOutFront;
    private boolean focusOutSideBack;
    private boolean focusOutSideFront;
    private FocusableDirection focusableDirection;
    private int gravity;
    private int initialPrefetchItemCount;
    private boolean isChildDrawingOrderEnabled;
    private boolean isFocusSearchDisabled;
    private boolean isFocusSearchEnabledDuringAnimations;
    private boolean isLayoutEnabled;
    private boolean isScrollEnabled;
    private boolean isSmoothFocusChangesEnabled;
    private boolean keepLayoutAnchor;
    private DpadLoopDirection loopDirection;
    private int maxPendingAlignments;
    private int maxPendingMoves;
    private int orientation;
    private boolean recycleChildrenOnDetach;
    private boolean reverseLayout;
    private float smoothScrollSpeedFactor;
    private int spanCount;
    private DpadSpanSizeLookup spanSizeLookup;

    public final ExtraLayoutSpaceStrategy getExtraLayoutSpaceStrategy() {
        return this.extraLayoutSpaceStrategy;
    }

    public final boolean getFocusOutBack() {
        return this.focusOutBack;
    }

    public final boolean getFocusOutFront() {
        return this.focusOutFront;
    }

    public final boolean getFocusOutSideBack() {
        return this.focusOutSideBack;
    }

    public final boolean getFocusOutSideFront() {
        return this.focusOutSideFront;
    }

    public final FocusableDirection getFocusableDirection() {
        return this.focusableDirection;
    }

    public final int getGravity() {
        return this.gravity;
    }

    public final int getInitialPrefetchItemCount() {
        return this.initialPrefetchItemCount;
    }

    public final boolean getKeepLayoutAnchor() {
        return this.keepLayoutAnchor;
    }

    public final DpadLoopDirection getLoopDirection() {
        return this.loopDirection;
    }

    public final int getMaxPendingAlignments() {
        return this.maxPendingAlignments;
    }

    public final int getMaxPendingMoves() {
        return this.maxPendingMoves;
    }

    public final int getOrientation() {
        return this.orientation;
    }

    public final boolean getRecycleChildrenOnDetach() {
        return this.recycleChildrenOnDetach;
    }

    public final boolean getReverseLayout() {
        return this.reverseLayout;
    }

    public final float getSmoothScrollSpeedFactor() {
        return this.smoothScrollSpeedFactor;
    }

    public final int getSpanCount() {
        return this.spanCount;
    }

    public final DpadSpanSizeLookup getSpanSizeLookup() {
        return this.spanSizeLookup;
    }

    public final boolean hasMaxPendingAlignments() {
        return this.maxPendingAlignments != Integer.MAX_VALUE;
    }

    /* renamed from: isChildDrawingOrderEnabled, reason: from getter */
    public final boolean getIsChildDrawingOrderEnabled() {
        return this.isChildDrawingOrderEnabled;
    }

    /* renamed from: isFocusSearchDisabled, reason: from getter */
    public final boolean getIsFocusSearchDisabled() {
        return this.isFocusSearchDisabled;
    }

    /* renamed from: isFocusSearchEnabledDuringAnimations, reason: from getter */
    public final boolean getIsFocusSearchEnabledDuringAnimations() {
        return this.isFocusSearchEnabledDuringAnimations;
    }

    public final boolean isHorizontal() {
        return this.orientation == 0;
    }

    /* renamed from: isLayoutEnabled, reason: from getter */
    public final boolean getIsLayoutEnabled() {
        return this.isLayoutEnabled;
    }

    /* renamed from: isScrollEnabled, reason: from getter */
    public final boolean getIsScrollEnabled() {
        return this.isScrollEnabled;
    }

    /* renamed from: isSmoothFocusChangesEnabled, reason: from getter */
    public final boolean getIsSmoothFocusChangesEnabled() {
        return this.isSmoothFocusChangesEnabled;
    }

    public final boolean isVertical() {
        return this.orientation == 1;
    }

    public final void setChildDrawingOrderEnabled(boolean enabled) {
        this.isChildDrawingOrderEnabled = enabled;
    }

    public final void setFocusOutAllowed(boolean throughFront, boolean throughBack) {
        this.focusOutFront = throughFront;
        this.focusOutBack = throughBack;
    }

    public final void setFocusOutSideAllowed(boolean throughFront, boolean throughBack) {
        this.focusOutSideFront = throughFront;
        this.focusOutSideBack = throughBack;
    }

    public final void setFocusSearchDisabled(boolean isDisabled) {
        this.isFocusSearchDisabled = isDisabled;
    }

    public final void setFocusSearchEnabledDuringAnimations(boolean enabled) {
        this.isFocusSearchEnabledDuringAnimations = enabled;
    }

    public final void setFocusableDirection(FocusableDirection direction) {
        Intrinsics.checkNotNullParameter(direction, "direction");
        this.focusableDirection = direction;
    }

    public final void setGravity(int newGravity) {
        this.gravity = newGravity;
    }

    public final void setKeepLayoutAnchor(boolean keep) {
        this.keepLayoutAnchor = keep;
    }

    public final void setLayoutEnabled(boolean enabled) {
        this.isLayoutEnabled = enabled;
    }

    public final void setRecycleChildrenOnDetach(boolean recycle) {
        this.recycleChildrenOnDetach = recycle;
    }

    public final void setReverseLayout(boolean isEnabled) {
        this.reverseLayout = isEnabled;
    }

    public final void setScrollEnabled(boolean enabled) {
        this.isScrollEnabled = enabled;
    }

    public final void setSmoothFocusChangesEnabled(boolean isEnabled) {
        this.isSmoothFocusChangesEnabled = isEnabled;
    }

    public LayoutConfiguration(RecyclerView.LayoutManager.Properties properties) {
        Intrinsics.checkNotNullParameter(properties, "properties");
        this.orientation = 1;
        this.spanCount = 1;
        this.gravity = 8388659;
        this.loopDirection = DpadLoopDirection.NONE;
        this.focusOutSideFront = true;
        this.focusOutSideBack = true;
        this.focusableDirection = FocusableDirection.STANDARD;
        this.isScrollEnabled = true;
        this.initialPrefetchItemCount = 4;
        this.isSmoothFocusChangesEnabled = true;
        this.maxPendingMoves = 10;
        this.maxPendingAlignments = Integer.MAX_VALUE;
        this.isChildDrawingOrderEnabled = true;
        this.isLayoutEnabled = true;
        this.spanSizeLookup = DpadSpanSizeLookup.INSTANCE.getDEFAULT$dpadrecyclerview_release();
        this.smoothScrollSpeedFactor = 1.0f;
        setSpanCount(properties.spanCount);
        setOrientation(properties.orientation);
        setReverseLayout(properties.reverseLayout);
    }

    public final void setOrientation(int newOrientation) {
        if (newOrientation != 0 && newOrientation != 1) {
            throw new IllegalArgumentException("Invalid orientation value. Must be RecyclerView.HORIZONTAL or RecyclerView.VERTICAL".toString());
        }
        this.orientation = newOrientation;
    }

    public final void setSpanCount(int count) {
        this.spanCount = Math.max(1, count);
        this.spanSizeLookup.invalidateCache();
    }

    public final void setSpanSizeLookup(DpadSpanSizeLookup spanSizeLookup) {
        Intrinsics.checkNotNullParameter(spanSizeLookup, "spanSizeLookup");
        this.spanSizeLookup = spanSizeLookup;
        if (spanSizeLookup != DpadSpanSizeLookup.INSTANCE.getDEFAULT$dpadrecyclerview_release()) {
            spanSizeLookup.setSpanIndexCacheEnabled(true);
            spanSizeLookup.setSpanGroupIndexCacheEnabled(true);
        }
    }

    public final void setExtraLayoutSpaceStrategy(ExtraLayoutSpaceStrategy strategy) {
        if (this.loopDirection == DpadLoopDirection.NONE) {
            this.extraLayoutSpaceStrategy = strategy;
        }
    }

    public final void setMaxPendingAlignments(int max) {
        if (max <= 0) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        this.maxPendingAlignments = max;
    }

    public final void setMaxPendingMoves(int moves) {
        if (moves < 0) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        this.maxPendingMoves = moves;
    }

    public final void setSmoothScrollSpeedFactor(float speedFactor) {
        if (speedFactor <= 0.0f) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        this.smoothScrollSpeedFactor = speedFactor;
    }

    public final void setInitialPrefetchItemCount(int count) {
        if (count < 0) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        this.initialPrefetchItemCount = count;
    }

    public final void setLoopDirection(DpadLoopDirection strategy) {
        Intrinsics.checkNotNullParameter(strategy, "strategy");
        this.loopDirection = strategy;
        if (strategy != DpadLoopDirection.NONE) {
            this.extraLayoutSpaceStrategy = null;
        }
    }
}
