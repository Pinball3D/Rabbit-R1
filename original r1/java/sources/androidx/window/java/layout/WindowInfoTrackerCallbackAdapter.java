package androidx.window.java.layout;

import android.app.Activity;
import androidx.core.util.Consumer;
import androidx.exifinterface.media.ExifInterface;
import androidx.window.layout.WindowInfoTracker;
import androidx.window.layout.WindowLayoutInfo;
import io.sentry.protocol.SentryStackFrame;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.ExecutorsKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.Flow;

/* compiled from: WindowInfoTrackerCallbackAdapter.kt */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0002\u0010\u0003J2\u0010\n\u001a\u00020\u000b\"\u0004\b\u0000\u0010\f2\u0006\u0010\r\u001a\u00020\u000e2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u0002H\f0\u00062\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u0002H\f0\u0011H\u0002J$\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\r\u001a\u00020\u000e2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00150\u0006J\u0014\u0010\u0016\u001a\u00020\u000b2\n\u0010\u000f\u001a\u0006\u0012\u0002\b\u00030\u0006H\u0002J\u0014\u0010\u0017\u001a\u00020\u000b2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00150\u0006J\u0017\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00150\u00112\u0006\u0010\u0013\u001a\u00020\u0014H\u0096\u0001R\u001e\u0010\u0004\u001a\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0006\u0012\u0004\u0012\u00020\u00070\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;", "Landroidx/window/layout/WindowInfoTracker;", "tracker", "(Landroidx/window/layout/WindowInfoTracker;)V", "consumerToJobMap", "", "Landroidx/core/util/Consumer;", "Lkotlinx/coroutines/Job;", SentryStackFrame.JsonKeys.LOCK, "Ljava/util/concurrent/locks/ReentrantLock;", "addListener", "", ExifInterface.GPS_DIRECTION_TRUE, "executor", "Ljava/util/concurrent/Executor;", "consumer", "flow", "Lkotlinx/coroutines/flow/Flow;", "addWindowLayoutInfoListener", "activity", "Landroid/app/Activity;", "Landroidx/window/layout/WindowLayoutInfo;", "removeListener", "removeWindowLayoutInfoListener", "windowLayoutInfo", "window-java_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class WindowInfoTrackerCallbackAdapter implements WindowInfoTracker {
    private final Map<Consumer<?>, Job> consumerToJobMap;
    private final ReentrantLock lock;
    private final WindowInfoTracker tracker;

    @Override // androidx.window.layout.WindowInfoTracker
    public Flow<WindowLayoutInfo> windowLayoutInfo(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        return this.tracker.windowLayoutInfo(activity);
    }

    public WindowInfoTrackerCallbackAdapter(WindowInfoTracker tracker) {
        Intrinsics.checkNotNullParameter(tracker, "tracker");
        this.tracker = tracker;
        this.lock = new ReentrantLock();
        this.consumerToJobMap = new LinkedHashMap();
    }

    public final void addWindowLayoutInfoListener(Activity activity, Executor executor, Consumer<WindowLayoutInfo> consumer) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(executor, "executor");
        Intrinsics.checkNotNullParameter(consumer, "consumer");
        addListener(executor, consumer, this.tracker.windowLayoutInfo(activity));
    }

    public final void removeWindowLayoutInfoListener(Consumer<WindowLayoutInfo> consumer) {
        Intrinsics.checkNotNullParameter(consumer, "consumer");
        removeListener(consumer);
    }

    private final <T> void addListener(Executor executor, Consumer<T> consumer, Flow<? extends T> flow) {
        Job launch$default;
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            if (this.consumerToJobMap.get(consumer) == null) {
                CoroutineScope CoroutineScope = CoroutineScopeKt.CoroutineScope(ExecutorsKt.from(executor));
                Map<Consumer<?>, Job> map = this.consumerToJobMap;
                launch$default = BuildersKt__Builders_commonKt.launch$default(CoroutineScope, null, null, new WindowInfoTrackerCallbackAdapter$addListener$1$1(flow, consumer, null), 3, null);
                map.put(consumer, launch$default);
            }
            Unit unit = Unit.INSTANCE;
        } finally {
            reentrantLock.unlock();
        }
    }

    private final void removeListener(Consumer<?> consumer) {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            Job job = this.consumerToJobMap.get(consumer);
            if (job != null) {
                Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
            }
            this.consumerToJobMap.remove(consumer);
        } finally {
            reentrantLock.unlock();
        }
    }
}
