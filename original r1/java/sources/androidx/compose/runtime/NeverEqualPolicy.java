package androidx.compose.runtime;

import androidx.media3.exoplayer.upstream.CmcdHeadersFactory;
import kotlin.Metadata;

/* compiled from: SnapshotMutationPolicy.kt */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\bÂ\u0002\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u001c\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00022\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u0016J\b\u0010\b\u001a\u00020\tH\u0016¨\u0006\n"}, d2 = {"Landroidx/compose/runtime/NeverEqualPolicy;", "Landroidx/compose/runtime/SnapshotMutationPolicy;", "", "()V", "equivalent", "", CmcdHeadersFactory.OBJECT_TYPE_AUDIO_ONLY, "b", "toString", "", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
final class NeverEqualPolicy implements SnapshotMutationPolicy<Object> {
    public static final NeverEqualPolicy INSTANCE = new NeverEqualPolicy();

    @Override // androidx.compose.runtime.SnapshotMutationPolicy
    public boolean equivalent(Object a, Object b) {
        return false;
    }

    public String toString() {
        return "NeverEqualPolicy";
    }

    private NeverEqualPolicy() {
    }
}
