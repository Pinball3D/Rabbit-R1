package com.rubensousa.dpadrecyclerview.layoutmanager.layout;

import androidx.recyclerview.widget.RecyclerView;
import com.rubensousa.dpadrecyclerview.ExtraLayoutSpaceStrategy;
import io.sentry.protocol.SentryThread;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ExtraLayoutSpaceCalculator.kt */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0002J\u0018\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0002J\u0016\u0010\r\u001a\u00020\u000e2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ExtraLayoutSpaceCalculator;", "", "layoutInfo", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;", "(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;)V", "getDefaultExtraLayoutSpace", "", "setCustomExtraLayoutSpace", "", "layoutRequest", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;", SentryThread.JsonKeys.STATE, "Landroidx/recyclerview/widget/RecyclerView$State;", "update", "", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class ExtraLayoutSpaceCalculator {
    private final LayoutInfo layoutInfo;

    public ExtraLayoutSpaceCalculator(LayoutInfo layoutInfo) {
        Intrinsics.checkNotNullParameter(layoutInfo, "layoutInfo");
        this.layoutInfo = layoutInfo;
    }

    public final void update(LayoutRequest layoutRequest, RecyclerView.State state) {
        Intrinsics.checkNotNullParameter(layoutRequest, "layoutRequest");
        Intrinsics.checkNotNullParameter(state, "state");
        if (setCustomExtraLayoutSpace(layoutRequest, state)) {
            return;
        }
        if (layoutRequest.isAppending()) {
            layoutRequest.setExtraLayoutSpace(0, getDefaultExtraLayoutSpace());
        } else {
            layoutRequest.setExtraLayoutSpace(getDefaultExtraLayoutSpace(), 0);
        }
    }

    private final boolean setCustomExtraLayoutSpace(LayoutRequest layoutRequest, RecyclerView.State state) {
        ExtraLayoutSpaceStrategy extraLayoutSpaceStrategy = this.layoutInfo.getConfiguration().getExtraLayoutSpaceStrategy();
        if (extraLayoutSpaceStrategy == null) {
            return false;
        }
        int calculateStartExtraLayoutSpace = extraLayoutSpaceStrategy.calculateStartExtraLayoutSpace(state);
        int calculateEndExtraLayoutSpace = extraLayoutSpaceStrategy.calculateEndExtraLayoutSpace(state);
        if (layoutRequest.isAppending()) {
            calculateEndExtraLayoutSpace = Math.max(getDefaultExtraLayoutSpace(), calculateEndExtraLayoutSpace);
        } else {
            calculateStartExtraLayoutSpace = Math.max(getDefaultExtraLayoutSpace(), calculateStartExtraLayoutSpace);
        }
        layoutRequest.setExtraLayoutSpace(calculateStartExtraLayoutSpace, calculateEndExtraLayoutSpace);
        return true;
    }

    private final int getDefaultExtraLayoutSpace() {
        if (this.layoutInfo.getIsScrollingToTarget()) {
            return this.layoutInfo.getTotalSpace();
        }
        return 0;
    }
}
