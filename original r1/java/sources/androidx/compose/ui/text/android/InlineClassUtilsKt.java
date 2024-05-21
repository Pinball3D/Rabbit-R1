package androidx.compose.ui.text.android;

import io.flutter.embedding.android.KeyboardMap;
import kotlin.Metadata;

/* compiled from: InlineClassUtils.kt */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u001a\u0019\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\u0080\b\u001a\u0011\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0001H\u0080\b\u001a\u0011\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0001H\u0080\b¨\u0006\b"}, d2 = {"packInts", "", "val1", "", "val2", "unpackInt1", "value", "unpackInt2", "ui-text_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class InlineClassUtilsKt {
    public static final long packInts(int i, int i2) {
        return (i2 & KeyboardMap.kValueMask) | (i << 32);
    }

    public static final int unpackInt1(long j) {
        return (int) (j >> 32);
    }

    public static final int unpackInt2(long j) {
        return (int) (j & KeyboardMap.kValueMask);
    }
}
