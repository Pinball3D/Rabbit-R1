package androidx.compose.runtime;

import kotlin.Metadata;
import kotlin.reflect.KProperty;

/* compiled from: SnapshotLongState.kt */
@Metadata(d1 = {"androidx/compose/runtime/SnapshotLongStateKt__SnapshotLongStateKt"}, k = 4, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SnapshotLongStateKt {
    public static final long getValue(LongState longState, Object obj, KProperty<?> kProperty) {
        return SnapshotLongStateKt__SnapshotLongStateKt.getValue(longState, obj, kProperty);
    }

    public static final MutableLongState mutableLongStateOf(long j) {
        return SnapshotLongStateKt__SnapshotLongStateKt.mutableLongStateOf(j);
    }

    public static final void setValue(MutableLongState mutableLongState, Object obj, KProperty<?> kProperty, long j) {
        SnapshotLongStateKt__SnapshotLongStateKt.setValue(mutableLongState, obj, kProperty, j);
    }
}
