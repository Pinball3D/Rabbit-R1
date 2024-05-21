package com.rubensousa.dpadrecyclerview.layoutmanager.focus;

import com.rubensousa.dpadrecyclerview.DpadSpanSizeLookup;
import com.rubensousa.dpadrecyclerview.layoutmanager.LayoutConfiguration;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SpanFocusFinder.kt */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0010\b\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\u000b\u001a\u00020\fJ(\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u0006H\u0002J.\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0015J0\u0010\u0017\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u0006H\u0002J\u0006\u0010\u001d\u001a\u00020\u0006J0\u0010\u001e\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u0006H\u0002J\u0018\u0010\u001f\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0015H\u0002J \u0010 \u001a\u00020\u00152\u0006\u0010!\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u0015H\u0002J \u0010\"\u001a\u00020\u00152\u0006\u0010!\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0015H\u0002JH\u0010#\u001a\u00020\u00062\u0006\u0010!\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0015H\u0002J\u0016\u0010$\u001a\u00020\f2\u0006\u0010!\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u000fR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\b\u001a\u00020\u00068F¢\u0006\u0006\u001a\u0004\b\t\u0010\n¨\u0006%"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/SpanFocusFinder;", "", "configuration", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;", "(Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;)V", "cachedSpanIndex", "", "cachedSpanSize", "spanCount", "getSpanCount", "()I", "clearSpanCache", "", "findNextEvenSpanPosition", "spanSizeLookup", "Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;", "focusedPosition", "edgePosition", "positionDirection", "findNextSpanPosition", "forward", "", "reverseLayout", "fitsNextInCurrentSpanGroup", "lookup", "spanIndex", "currentPos", "spanDir", "posDir", "getCachedSpanIndex", "getNextSpanEnd", "getSpanDirection", "isPositionAtCachedSpan", "position", "isPositionOutOfBounds", "moveToStartOfNextSpanGroup", "save", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class SpanFocusFinder {
    private int cachedSpanIndex;
    private int cachedSpanSize;
    private final LayoutConfiguration configuration;

    private final int getSpanDirection(boolean forward, boolean reverseLayout) {
        char c = forward != reverseLayout ? (char) 1 : (char) 65535;
        if (reverseLayout) {
            if (c <= 0) {
                return 1;
            }
        } else if (c > 0) {
            return 1;
        }
        return -1;
    }

    private final boolean isPositionOutOfBounds(int position, int edgePosition, boolean forward) {
        return (position > edgePosition && forward) || (position < 0 && !forward);
    }

    public final void clearSpanCache() {
        this.cachedSpanIndex = -1;
        this.cachedSpanSize = 1;
    }

    public final int getCachedSpanIndex() {
        return this.cachedSpanIndex;
    }

    public SpanFocusFinder(LayoutConfiguration configuration) {
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        this.configuration = configuration;
        this.cachedSpanIndex = -1;
        this.cachedSpanSize = 1;
    }

    public final int getSpanCount() {
        return this.configuration.getSpanCount();
    }

    public final void save(int position, DpadSpanSizeLookup spanSizeLookup) {
        Intrinsics.checkNotNullParameter(spanSizeLookup, "spanSizeLookup");
        if (getSpanCount() == 1 || spanSizeLookup == DpadSpanSizeLookup.INSTANCE.getDEFAULT$dpadrecyclerview_release()) {
            return;
        }
        int cachedSpanIndex = spanSizeLookup.getCachedSpanIndex(position, getSpanCount());
        int spanSize = spanSizeLookup.getSpanSize(position);
        if (spanSize == getSpanCount()) {
            return;
        }
        this.cachedSpanIndex = cachedSpanIndex;
        this.cachedSpanSize = spanSize;
    }

    public final int findNextSpanPosition(int focusedPosition, DpadSpanSizeLookup spanSizeLookup, boolean forward, int edgePosition, boolean reverseLayout) {
        Intrinsics.checkNotNullParameter(spanSizeLookup, "spanSizeLookup");
        if (getSpanCount() == 1) {
            return -1;
        }
        int i = forward ? 1 : -1;
        if (spanSizeLookup == DpadSpanSizeLookup.INSTANCE.getDEFAULT$dpadrecyclerview_release()) {
            return findNextEvenSpanPosition(spanSizeLookup, focusedPosition, edgePosition, i);
        }
        int moveToStartOfNextSpanGroup = moveToStartOfNextSpanGroup(focusedPosition, spanSizeLookup.getCachedSpanIndex(focusedPosition, getSpanCount()), spanSizeLookup, getSpanDirection(forward, reverseLayout), i, edgePosition, forward, reverseLayout);
        if (moveToStartOfNextSpanGroup == -1) {
            return -1;
        }
        if (this.cachedSpanIndex != -1 && spanSizeLookup.getSpanSize(moveToStartOfNextSpanGroup) != getSpanCount()) {
            if (!forward && !reverseLayout) {
                i *= -1;
            }
            for (int i2 = moveToStartOfNextSpanGroup; !isPositionOutOfBounds(i2, edgePosition, forward); i2 += i) {
                if (isPositionAtCachedSpan(i2, spanSizeLookup, reverseLayout)) {
                    return i2;
                }
            }
        }
        return moveToStartOfNextSpanGroup;
    }

    private final int findNextEvenSpanPosition(DpadSpanSizeLookup spanSizeLookup, int focusedPosition, int edgePosition, int positionDirection) {
        if (spanSizeLookup.getSpanGroupIndex(focusedPosition, getSpanCount()) == spanSizeLookup.getSpanGroupIndex(edgePosition, getSpanCount())) {
            return -1;
        }
        int spanCount = focusedPosition + (getSpanCount() * positionDirection);
        return (spanCount < edgePosition || positionDirection >= 0) ? (spanCount > edgePosition || positionDirection <= 0) ? edgePosition : spanCount : spanCount;
    }

    private final boolean isPositionAtCachedSpan(int position, DpadSpanSizeLookup spanSizeLookup, boolean reverseLayout) {
        int cachedSpanIndex = spanSizeLookup.getCachedSpanIndex(position, getSpanCount());
        if (reverseLayout) {
            if (cachedSpanIndex <= this.cachedSpanIndex) {
                return true;
            }
        } else if (cachedSpanIndex >= this.cachedSpanIndex) {
            return true;
        }
        return false;
    }

    private final int moveToStartOfNextSpanGroup(int position, int spanIndex, DpadSpanSizeLookup lookup, int spanDir, int posDir, int edgePosition, boolean forward, boolean reverseLayout) {
        int i;
        int spanCount = !reverseLayout ? 0 : getSpanCount() - 1;
        int i2 = position;
        int i3 = spanIndex;
        while (true) {
            i = i2 + posDir;
            if (isPositionOutOfBounds(i, edgePosition, forward) || !fitsNextInCurrentSpanGroup(lookup, i3, i2, spanDir, posDir)) {
                break;
            }
            i2 = i;
            i3 = getNextSpanEnd(lookup, i3, i2, spanDir, posDir);
        }
        if (isPositionOutOfBounds(i, edgePosition, forward)) {
            return -1;
        }
        int cachedSpanIndex = lookup.getCachedSpanIndex(i, getSpanCount());
        while (cachedSpanIndex != spanCount && cachedSpanIndex > 0 && cachedSpanIndex < getSpanCount()) {
            int i4 = i + posDir;
            if (isPositionOutOfBounds(i4, edgePosition, forward)) {
                break;
            }
            cachedSpanIndex += lookup.getSpanSize(i) * spanDir;
            i = i4;
        }
        if (isPositionOutOfBounds(i, edgePosition, forward)) {
            return -1;
        }
        return i;
    }

    private final boolean fitsNextInCurrentSpanGroup(DpadSpanSizeLookup lookup, int spanIndex, int currentPos, int spanDir, int posDir) {
        int nextSpanEnd = getNextSpanEnd(lookup, spanIndex, currentPos, spanDir, posDir);
        return nextSpanEnd >= 0 && nextSpanEnd <= getSpanCount() - 1;
    }

    private final int getNextSpanEnd(DpadSpanSizeLookup spanSizeLookup, int spanIndex, int currentPos, int spanDir, int posDir) {
        return spanIndex + ((spanSizeLookup.getSpanSize(currentPos) - 1) * spanDir) + (spanSizeLookup.getSpanSize(currentPos + posDir) * spanDir);
    }
}
