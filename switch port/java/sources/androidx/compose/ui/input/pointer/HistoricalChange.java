package androidx.compose.ui.input.pointer;

import androidx.compose.ui.geometry.Offset;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: PointerEvent.kt */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u0018\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005ø\u0001\u0000¢\u0006\u0002\u0010\u0006J\b\u0010\u000b\u001a\u00020\fH\u0016R\u001c\u0010\u0004\u001a\u00020\u0005ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\t\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\b\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006\r"}, d2 = {"Landroidx/compose/ui/input/pointer/HistoricalChange;", "", "uptimeMillis", "", "position", "Landroidx/compose/ui/geometry/Offset;", "(JJLkotlin/jvm/internal/DefaultConstructorMarker;)V", "getPosition-F1C5BW0", "()J", "J", "getUptimeMillis", "toString", "", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class HistoricalChange {
    public static final int $stable = 0;
    private final long position;
    private final long uptimeMillis;

    public /* synthetic */ HistoricalChange(long j, long j2, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, j2);
    }

    /* renamed from: getPosition-F1C5BW0, reason: not valid java name and from getter */
    public final long getPosition() {
        return this.position;
    }

    public final long getUptimeMillis() {
        return this.uptimeMillis;
    }

    private HistoricalChange(long j, long j2) {
        this.uptimeMillis = j;
        this.position = j2;
    }

    public String toString() {
        return "HistoricalChange(uptimeMillis=" + this.uptimeMillis + ", position=" + ((Object) Offset.m2408toStringimpl(this.position)) + ')';
    }
}
