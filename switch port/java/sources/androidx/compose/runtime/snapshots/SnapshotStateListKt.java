package androidx.compose.runtime.snapshots;

import kotlin.Metadata;

/* compiled from: SnapshotStateList.kt */
@Metadata(d1 = {"\u0000\u001c\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0001\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\u001a\b\u0010\u0002\u001a\u00020\u0003H\u0002\u001a\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0007H\u0002\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"sync", "", "modificationError", "", "validateRange", "", "index", "", "size", "runtime_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SnapshotStateListKt {
    private static final Object sync = new Object();

    /* JADX INFO: Access modifiers changed from: private */
    public static final Void modificationError() {
        throw new IllegalStateException("Cannot modify a state list through an iterator".toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void validateRange(int i, int i2) {
        if (i < 0 || i >= i2) {
            throw new IndexOutOfBoundsException("index (" + i + ") is out of bound of [0, " + i2 + ')');
        }
    }
}
