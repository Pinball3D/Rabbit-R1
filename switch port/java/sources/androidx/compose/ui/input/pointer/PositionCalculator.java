package androidx.compose.ui.input.pointer;

import kotlin.Metadata;

/* compiled from: PointerInputEventProcessor.kt */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b`\u0018\u00002\u00020\u0001J\u001d\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H&ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0005\u0010\u0006J\u001d\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u0003H&ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\t\u0010\u0006ø\u0001\u0002\u0082\u0002\u0011\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019\n\u0004\b!0\u0001¨\u0006\nÀ\u0006\u0001"}, d2 = {"Landroidx/compose/ui/input/pointer/PositionCalculator;", "", "localToScreen", "Landroidx/compose/ui/geometry/Offset;", "localPosition", "localToScreen-MK-Hz9U", "(J)J", "screenToLocal", "positionOnScreen", "screenToLocal-MK-Hz9U", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public interface PositionCalculator {
    /* renamed from: localToScreen-MK-Hz9U, reason: not valid java name */
    long mo3838localToScreenMKHz9U(long localPosition);

    /* renamed from: screenToLocal-MK-Hz9U, reason: not valid java name */
    long mo3839screenToLocalMKHz9U(long positionOnScreen);
}
