package androidx.window.layout;

import android.app.Activity;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;

/* compiled from: WindowInfoTrackerImpl.kt */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u0000 \f2\u00020\u0001:\u0001\fB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010\n\u001a\u00020\u000bH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Landroidx/window/layout/WindowInfoTrackerImpl;", "Landroidx/window/layout/WindowInfoTracker;", "windowMetricsCalculator", "Landroidx/window/layout/WindowMetricsCalculator;", "windowBackend", "Landroidx/window/layout/WindowBackend;", "(Landroidx/window/layout/WindowMetricsCalculator;Landroidx/window/layout/WindowBackend;)V", "windowLayoutInfo", "Lkotlinx/coroutines/flow/Flow;", "Landroidx/window/layout/WindowLayoutInfo;", "activity", "Landroid/app/Activity;", "Companion", "window_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class WindowInfoTrackerImpl implements WindowInfoTracker {
    private static final int BUFFER_CAPACITY = 10;
    private final WindowBackend windowBackend;
    private final WindowMetricsCalculator windowMetricsCalculator;

    public WindowInfoTrackerImpl(WindowMetricsCalculator windowMetricsCalculator, WindowBackend windowBackend) {
        Intrinsics.checkNotNullParameter(windowMetricsCalculator, "windowMetricsCalculator");
        Intrinsics.checkNotNullParameter(windowBackend, "windowBackend");
        this.windowMetricsCalculator = windowMetricsCalculator;
        this.windowBackend = windowBackend;
    }

    @Override // androidx.window.layout.WindowInfoTracker
    public Flow<WindowLayoutInfo> windowLayoutInfo(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        return FlowKt.flow(new WindowInfoTrackerImpl$windowLayoutInfo$1(this, activity, null));
    }
}
