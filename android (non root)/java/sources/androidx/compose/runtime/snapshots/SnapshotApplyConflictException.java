package androidx.compose.runtime.snapshots;

import io.sentry.protocol.SentryStackTrace;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Snapshot.kt */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00060\u0001j\u0002`\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/runtime/snapshots/SnapshotApplyConflictException;", "Ljava/lang/Exception;", "Lkotlin/Exception;", SentryStackTrace.JsonKeys.SNAPSHOT, "Landroidx/compose/runtime/snapshots/Snapshot;", "(Landroidx/compose/runtime/snapshots/Snapshot;)V", "getSnapshot", "()Landroidx/compose/runtime/snapshots/Snapshot;", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SnapshotApplyConflictException extends Exception {
    public static final int $stable = 8;
    private final Snapshot snapshot;

    public final Snapshot getSnapshot() {
        return this.snapshot;
    }

    public SnapshotApplyConflictException(Snapshot snapshot) {
        Intrinsics.checkNotNullParameter(snapshot, "snapshot");
        this.snapshot = snapshot;
    }
}
