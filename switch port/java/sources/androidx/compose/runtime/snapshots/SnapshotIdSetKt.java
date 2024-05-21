package androidx.compose.runtime.snapshots;

import io.flutter.embedding.android.KeyboardMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.ws.WebSocketProtocol;

/* compiled from: SnapshotIdSet.kt */
@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0015\n\u0002\b\u0002\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0002\u001a\u0014\u0010\u0004\u001a\u00020\u0001*\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0001H\u0000¨\u0006\u0007"}, d2 = {"lowestBitOf", "", "bits", "", "binarySearch", "", "value", "runtime_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SnapshotIdSetKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final int lowestBitOf(long j) {
        int i;
        if ((KeyboardMap.kValueMask & j) == 0) {
            i = 32;
            j >>= 32;
        } else {
            i = 0;
        }
        if ((WebSocketProtocol.PAYLOAD_SHORT_MAX & j) == 0) {
            i += 16;
            j >>= 16;
        }
        if ((255 & j) == 0) {
            i += 8;
            j >>= 8;
        }
        if ((15 & j) == 0) {
            i += 4;
            j >>= 4;
        }
        if ((1 & j) != 0) {
            return i;
        }
        if ((2 & j) != 0) {
            return i + 1;
        }
        if ((4 & j) != 0) {
            return i + 2;
        }
        if ((j & 8) != 0) {
            return i + 3;
        }
        return -1;
    }

    public static final int binarySearch(int[] iArr, int i) {
        Intrinsics.checkNotNullParameter(iArr, "<this>");
        int length = iArr.length - 1;
        int i2 = 0;
        while (i2 <= length) {
            int i3 = (i2 + length) >>> 1;
            int i4 = iArr[i3];
            if (i > i4) {
                i2 = i3 + 1;
            } else {
                if (i >= i4) {
                    return i3;
                }
                length = i3 - 1;
            }
        }
        return -(i2 + 1);
    }
}
