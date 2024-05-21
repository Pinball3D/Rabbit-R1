package androidx.room;

import java.util.ArrayDeque;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TransactionExecutor.kt */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0002\u0010\u0003J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0005H\u0016J\u0006\u0010\r\u001a\u00020\u000bR\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Landroidx/room/TransactionExecutor;", "Ljava/util/concurrent/Executor;", "executor", "(Ljava/util/concurrent/Executor;)V", "active", "Ljava/lang/Runnable;", "syncLock", "", "tasks", "Ljava/util/ArrayDeque;", "execute", "", "command", "scheduleNext", "room-runtime_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class TransactionExecutor implements Executor {
    private Runnable active;
    private final Executor executor;
    private final Object syncLock;
    private final ArrayDeque<Runnable> tasks;

    public TransactionExecutor(Executor executor) {
        Intrinsics.checkNotNullParameter(executor, "executor");
        this.executor = executor;
        this.tasks = new ArrayDeque<>();
        this.syncLock = new Object();
    }

    @Override // java.util.concurrent.Executor
    public void execute(final Runnable command) {
        Intrinsics.checkNotNullParameter(command, "command");
        synchronized (this.syncLock) {
            this.tasks.offer(new Runnable() { // from class: androidx.room.TransactionExecutor$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    TransactionExecutor.execute$lambda$1$lambda$0(command, this);
                }
            });
            if (this.active == null) {
                scheduleNext();
            }
            Unit unit = Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void execute$lambda$1$lambda$0(Runnable command, TransactionExecutor this$0) {
        Intrinsics.checkNotNullParameter(command, "$command");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        try {
            command.run();
        } finally {
            this$0.scheduleNext();
        }
    }

    public final void scheduleNext() {
        synchronized (this.syncLock) {
            Runnable poll = this.tasks.poll();
            Runnable runnable = poll;
            this.active = runnable;
            if (poll != null) {
                this.executor.execute(runnable);
            }
            Unit unit = Unit.INSTANCE;
        }
    }
}
