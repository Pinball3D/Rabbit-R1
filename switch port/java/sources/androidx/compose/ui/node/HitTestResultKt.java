package androidx.compose.ui.node;

import io.flutter.embedding.android.KeyboardMap;
import kotlin.Metadata;

/* compiled from: HitTestResult.kt */
@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u001a \u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0002ø\u0001\u0000¢\u0006\u0002\u0010\u0006\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0007"}, d2 = {"DistanceAndInLayer", "Landroidx/compose/ui/node/DistanceAndInLayer;", "distance", "", "isInLayer", "", "(FZ)J", "ui_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class HitTestResultKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final long DistanceAndInLayer(float f, boolean z) {
        return DistanceAndInLayer.m4001constructorimpl(((z ? 1L : 0L) & KeyboardMap.kValueMask) | (Float.floatToIntBits(f) << 32));
    }
}
