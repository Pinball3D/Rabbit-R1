package androidx.compose.ui.unit;

import androidx.compose.ui.geometry.SizeKt;
import io.flutter.embedding.android.KeyboardMap;
import io.sentry.protocol.ViewHierarchyNode;
import kotlin.Metadata;

/* compiled from: IntSize.kt */
@Metadata(d1 = {"\u0000&\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a \u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0007ø\u0001\u0000¢\u0006\u0002\u0010\u000b\u001a\"\u0010\f\u001a\u00020\u0002*\u00020\t2\u0006\u0010\r\u001a\u00020\u0002H\u0087\u0002ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b\u000e\u0010\u000f\u001a\u0019\u0010\u0010\u001a\u00020\u0011*\u00020\u0002H\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b\u0012\u0010\u0013\u001a\u0019\u0010\u0014\u001a\u00020\u0015*\u00020\u0002H\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b\u0016\u0010\u0006\"!\u0010\u0000\u001a\u00020\u0001*\u00020\u00028FX\u0087\u0004ø\u0001\u0000¢\u0006\f\u0012\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\u0082\u0002\u000b\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001¨\u0006\u0017"}, d2 = {"center", "Landroidx/compose/ui/unit/IntOffset;", "Landroidx/compose/ui/unit/IntSize;", "getCenter-ozmzZPI$annotations", "(J)V", "getCenter-ozmzZPI", "(J)J", "IntSize", ViewHierarchyNode.JsonKeys.WIDTH, "", ViewHierarchyNode.JsonKeys.HEIGHT, "(II)J", "times", "size", "times-O0kMr_c", "(IJ)J", "toIntRect", "Landroidx/compose/ui/unit/IntRect;", "toIntRect-ozmzZPI", "(J)Landroidx/compose/ui/unit/IntRect;", "toSize", "Landroidx/compose/ui/geometry/Size;", "toSize-ozmzZPI", "ui-unit_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class IntSizeKt {
    /* renamed from: getCenter-ozmzZPI$annotations, reason: not valid java name */
    public static /* synthetic */ void m5050getCenterozmzZPI$annotations(long j) {
    }

    public static final long IntSize(int i, int i2) {
        return IntSize.m5038constructorimpl((i2 & KeyboardMap.kValueMask) | (i << 32));
    }

    /* renamed from: times-O0kMr_c, reason: not valid java name */
    public static final long m5051timesO0kMr_c(int i, long j) {
        return IntSize.m5045timesYEO4UFw(j, i);
    }

    /* renamed from: toIntRect-ozmzZPI, reason: not valid java name */
    public static final IntRect m5052toIntRectozmzZPI(long j) {
        return IntRectKt.m5033IntRectVbeCjmY(IntOffset.INSTANCE.m5011getZeronOccac(), j);
    }

    /* renamed from: getCenter-ozmzZPI, reason: not valid java name */
    public static final long m5049getCenterozmzZPI(long j) {
        return IntOffsetKt.IntOffset(IntSize.m5043getWidthimpl(j) / 2, IntSize.m5042getHeightimpl(j) / 2);
    }

    /* renamed from: toSize-ozmzZPI, reason: not valid java name */
    public static final long m5053toSizeozmzZPI(long j) {
        return SizeKt.Size(IntSize.m5043getWidthimpl(j), IntSize.m5042getHeightimpl(j));
    }
}
