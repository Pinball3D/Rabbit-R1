package androidx.work.impl.constraints.trackers;

import android.content.Context;
import androidx.exifinterface.media.ExifInterface;
import androidx.work.Logger;
import androidx.work.impl.constraints.ConstraintListener;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import io.sentry.protocol.SentryStackFrame;
import io.sentry.protocol.SentryThread;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ConstraintTracker.kt */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0002\n\u0002\b\u0006\b'\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\u0017\b\u0004\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0014\u0010\u0017\u001a\u00020\u00182\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00028\u00000\u000fJ\r\u0010\u001a\u001a\u00028\u0000H&¢\u0006\u0002\u0010\u0014J\u0014\u0010\u001b\u001a\u00020\u00182\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00028\u00000\u000fJ\b\u0010\u001c\u001a\u00020\u0018H&J\b\u0010\u001d\u001a\u00020\u0018H&R\u0014\u0010\b\u001a\u00020\u0004X\u0084\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0012\u0010\u000b\u001a\u0004\u0018\u00018\u0000X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\fR\u001a\u0010\r\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u000f0\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0002X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u0012\u001a\u00028\u00002\u0006\u0010\u0011\u001a\u00028\u00008F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001e"}, d2 = {"Landroidx/work/impl/constraints/trackers/ConstraintTracker;", ExifInterface.GPS_DIRECTION_TRUE, "", "context", "Landroid/content/Context;", "taskExecutor", "Landroidx/work/impl/utils/taskexecutor/TaskExecutor;", "(Landroid/content/Context;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;)V", "appContext", "getAppContext", "()Landroid/content/Context;", "currentState", "Ljava/lang/Object;", "listeners", "Ljava/util/LinkedHashSet;", "Landroidx/work/impl/constraints/ConstraintListener;", SentryStackFrame.JsonKeys.LOCK, "newState", SentryThread.JsonKeys.STATE, "getState", "()Ljava/lang/Object;", "setState", "(Ljava/lang/Object;)V", "addListener", "", "listener", "readSystemState", "removeListener", "startTracking", "stopTracking", "work-runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public abstract class ConstraintTracker<T> {
    private final Context appContext;
    private T currentState;
    private final LinkedHashSet<ConstraintListener<T>> listeners;
    private final Object lock;
    private final TaskExecutor taskExecutor;

    /* JADX INFO: Access modifiers changed from: protected */
    public final Context getAppContext() {
        return this.appContext;
    }

    public abstract T readSystemState();

    public abstract void startTracking();

    public abstract void stopTracking();

    /* JADX INFO: Access modifiers changed from: protected */
    public ConstraintTracker(Context context, TaskExecutor taskExecutor) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(taskExecutor, "taskExecutor");
        this.taskExecutor = taskExecutor;
        Context applicationContext = context.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "context.applicationContext");
        this.appContext = applicationContext;
        this.lock = new Object();
        this.listeners = new LinkedHashSet<>();
    }

    public final void addListener(ConstraintListener<T> listener) {
        String str;
        Intrinsics.checkNotNullParameter(listener, "listener");
        synchronized (this.lock) {
            if (this.listeners.add(listener)) {
                if (this.listeners.size() == 1) {
                    this.currentState = readSystemState();
                    Logger logger = Logger.get();
                    str = ConstraintTrackerKt.TAG;
                    logger.debug(str, getClass().getSimpleName() + ": initial state = " + this.currentState);
                    startTracking();
                }
                listener.onConstraintChanged(this.currentState);
            }
            Unit unit = Unit.INSTANCE;
        }
    }

    public final void removeListener(ConstraintListener<T> listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        synchronized (this.lock) {
            if (this.listeners.remove(listener) && this.listeners.isEmpty()) {
                stopTracking();
            }
            Unit unit = Unit.INSTANCE;
        }
    }

    public final T getState() {
        T t = this.currentState;
        return t == null ? readSystemState() : t;
    }

    public final void setState(T t) {
        synchronized (this.lock) {
            T t2 = this.currentState;
            if (t2 == null || !Intrinsics.areEqual(t2, t)) {
                this.currentState = t;
                final List list = CollectionsKt.toList(this.listeners);
                this.taskExecutor.getMainThreadExecutor().execute(new Runnable() { // from class: androidx.work.impl.constraints.trackers.ConstraintTracker$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        ConstraintTracker._set_state_$lambda$4$lambda$3(list, this);
                    }
                });
                Unit unit = Unit.INSTANCE;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void _set_state_$lambda$4$lambda$3(List listenersList, ConstraintTracker this$0) {
        Intrinsics.checkNotNullParameter(listenersList, "$listenersList");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Iterator<T> it = listenersList.iterator();
        while (it.hasNext()) {
            ((ConstraintListener) it.next()).onConstraintChanged(this$0.currentState);
        }
    }
}
