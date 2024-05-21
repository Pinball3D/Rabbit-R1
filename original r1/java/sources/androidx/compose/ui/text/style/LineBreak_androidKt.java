package androidx.compose.ui.text.style;

import kotlin.Metadata;

/* compiled from: LineBreak.android.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\b\n\u0002\b\b\u001a \u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0001H\u0002\u001a\u0010\u0010\u0005\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u0001H\u0002\u001a\u0010\u0010\u0007\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u0001H\u0002\u001a\u0010\u0010\b\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u0001H\u0002¨\u0006\t"}, d2 = {"packBytes", "", "i1", "i2", "i3", "unpackByte1", "mask", "unpackByte2", "unpackByte3", "ui-text_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class LineBreak_androidKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final int packBytes(int i, int i2, int i3) {
        return i | (i2 << 8) | (i3 << 16);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int unpackByte1(int i) {
        return i & 255;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int unpackByte2(int i) {
        return (i >> 8) & 255;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int unpackByte3(int i) {
        return (i >> 16) & 255;
    }
}
