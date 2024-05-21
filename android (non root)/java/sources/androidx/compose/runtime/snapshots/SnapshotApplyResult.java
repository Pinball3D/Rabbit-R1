package androidx.compose.runtime.snapshots;

import io.sentry.protocol.SentryStackTrace;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Snapshot.kt */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0002\t\nB\u0007\b\u0004¢\u0006\u0002\u0010\u0002J\b\u0010\u0007\u001a\u00020\bH&R\u0012\u0010\u0003\u001a\u00020\u0004X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006\u0082\u0001\u0002\u000b\f¨\u0006\r"}, d2 = {"Landroidx/compose/runtime/snapshots/SnapshotApplyResult;", "", "()V", "succeeded", "", "getSucceeded", "()Z", "check", "", "Failure", "Success", "Landroidx/compose/runtime/snapshots/SnapshotApplyResult$Failure;", "Landroidx/compose/runtime/snapshots/SnapshotApplyResult$Success;", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public abstract class SnapshotApplyResult {
    public static final int $stable = 0;

    public /* synthetic */ SnapshotApplyResult(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public abstract void check();

    public abstract boolean getSucceeded();

    private SnapshotApplyResult() {
    }

    /* compiled from: Snapshot.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0007\u001a\u00020\bH\u0016R\u0014\u0010\u0003\u001a\u00020\u00048VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006¨\u0006\t"}, d2 = {"Landroidx/compose/runtime/snapshots/SnapshotApplyResult$Success;", "Landroidx/compose/runtime/snapshots/SnapshotApplyResult;", "()V", "succeeded", "", "getSucceeded", "()Z", "check", "", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Success extends SnapshotApplyResult {
        public static final int $stable = 0;
        public static final Success INSTANCE = new Success();

        @Override // androidx.compose.runtime.snapshots.SnapshotApplyResult
        public void check() {
        }

        @Override // androidx.compose.runtime.snapshots.SnapshotApplyResult
        public boolean getSucceeded() {
            return true;
        }

        private Success() {
            super(null);
        }
    }

    /* compiled from: Snapshot.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u000b\u001a\u00020\fH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\n¨\u0006\r"}, d2 = {"Landroidx/compose/runtime/snapshots/SnapshotApplyResult$Failure;", "Landroidx/compose/runtime/snapshots/SnapshotApplyResult;", SentryStackTrace.JsonKeys.SNAPSHOT, "Landroidx/compose/runtime/snapshots/Snapshot;", "(Landroidx/compose/runtime/snapshots/Snapshot;)V", "getSnapshot", "()Landroidx/compose/runtime/snapshots/Snapshot;", "succeeded", "", "getSucceeded", "()Z", "check", "", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Failure extends SnapshotApplyResult {
        public static final int $stable = 8;
        private final Snapshot snapshot;

        public final Snapshot getSnapshot() {
            return this.snapshot;
        }

        @Override // androidx.compose.runtime.snapshots.SnapshotApplyResult
        public boolean getSucceeded() {
            return false;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Failure(Snapshot snapshot) {
            super(null);
            Intrinsics.checkNotNullParameter(snapshot, "snapshot");
            this.snapshot = snapshot;
        }

        @Override // androidx.compose.runtime.snapshots.SnapshotApplyResult
        public void check() {
            this.snapshot.dispose();
            throw new SnapshotApplyConflictException(this.snapshot);
        }
    }
}
