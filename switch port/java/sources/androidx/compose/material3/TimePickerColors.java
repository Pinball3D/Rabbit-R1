package androidx.compose.material3;

import androidx.compose.ui.graphics.Color;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TimePicker.kt */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\t\b\u0007\u0018\u00002\u00020\u0001Bz\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\u0006\u0010\f\u001a\u00020\u0003\u0012\u0006\u0010\r\u001a\u00020\u0003\u0012\u0006\u0010\u000e\u001a\u00020\u0003\u0012\u0006\u0010\u000f\u001a\u00020\u0003\u0012\u0006\u0010\u0010\u001a\u00020\u0003ø\u0001\u0000¢\u0006\u0002\u0010\u0011J \u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u001aH\u0000ø\u0001\u0002ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b\u001b\u0010\u001cJ\u0013\u0010\u001d\u001a\u00020\u001a2\b\u0010\u001e\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\u001f\u001a\u00020 H\u0016J \u0010!\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u001aH\u0000ø\u0001\u0002ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b\"\u0010\u001cJ \u0010#\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u001aH\u0000ø\u0001\u0002ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b$\u0010\u001cJ \u0010%\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u001aH\u0000ø\u0001\u0002ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b&\u0010\u001cJ \u0010'\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u001aH\u0000ø\u0001\u0002ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b(\u0010\u001cR\u001f\u0010\u0002\u001a\u00020\u0003X\u0080\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0014\u001a\u0004\b\u0012\u0010\u0013R\u0019\u0010\u0007\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\u0014R\u0019\u0010\b\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\u0014R\u001f\u0010\u0005\u001a\u00020\u0003X\u0080\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0014\u001a\u0004\b\u0015\u0010\u0013R\u001f\u0010\u0006\u001a\u00020\u0003X\u0080\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0014\u001a\u0004\b\u0016\u0010\u0013R\u0019\u0010\t\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\u0014R\u0019\u0010\u000b\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\u0014R\u0019\u0010\n\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\u0014R\u0019\u0010\f\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\u0014R\u001f\u0010\u0004\u001a\u00020\u0003X\u0080\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0014\u001a\u0004\b\u0017\u0010\u0013R\u0019\u0010\r\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\u0014R\u0019\u0010\u000f\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\u0014R\u0019\u0010\u000e\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\u0014R\u0019\u0010\u0010\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\u0014\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006)"}, d2 = {"Landroidx/compose/material3/TimePickerColors;", "", "clockDialColor", "Landroidx/compose/ui/graphics/Color;", "selectorColor", "containerColor", "periodSelectorBorderColor", "clockDialSelectedContentColor", "clockDialUnselectedContentColor", "periodSelectorSelectedContainerColor", "periodSelectorUnselectedContainerColor", "periodSelectorSelectedContentColor", "periodSelectorUnselectedContentColor", "timeSelectorSelectedContainerColor", "timeSelectorUnselectedContainerColor", "timeSelectorSelectedContentColor", "timeSelectorUnselectedContentColor", "(JJJJJJJJJJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V", "getClockDialColor-0d7_KjU$material3_release", "()J", "J", "getContainerColor-0d7_KjU$material3_release", "getPeriodSelectorBorderColor-0d7_KjU$material3_release", "getSelectorColor-0d7_KjU$material3_release", "clockDialContentColor", "selected", "", "clockDialContentColor-vNxB06k$material3_release", "(Z)J", "equals", "other", "hashCode", "", "periodSelectorContainerColor", "periodSelectorContainerColor-vNxB06k$material3_release", "periodSelectorContentColor", "periodSelectorContentColor-vNxB06k$material3_release", "timeSelectorContainerColor", "timeSelectorContainerColor-vNxB06k$material3_release", "timeSelectorContentColor", "timeSelectorContentColor-vNxB06k$material3_release", "material3_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class TimePickerColors {
    public static final int $stable = 0;
    private final long clockDialColor;
    private final long clockDialSelectedContentColor;
    private final long clockDialUnselectedContentColor;
    private final long containerColor;
    private final long periodSelectorBorderColor;
    private final long periodSelectorSelectedContainerColor;
    private final long periodSelectorSelectedContentColor;
    private final long periodSelectorUnselectedContainerColor;
    private final long periodSelectorUnselectedContentColor;
    private final long selectorColor;
    private final long timeSelectorSelectedContainerColor;
    private final long timeSelectorSelectedContentColor;
    private final long timeSelectorUnselectedContainerColor;
    private final long timeSelectorUnselectedContentColor;

    public /* synthetic */ TimePickerColors(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, long j14, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, j2, j3, j4, j5, j6, j7, j8, j9, j10, j11, j12, j13, j14);
    }

    /* renamed from: clockDialContentColor-vNxB06k$material3_release, reason: not valid java name */
    public final long m1565clockDialContentColorvNxB06k$material3_release(boolean selected) {
        return selected ? this.clockDialSelectedContentColor : this.clockDialUnselectedContentColor;
    }

    /* renamed from: getClockDialColor-0d7_KjU$material3_release, reason: not valid java name and from getter */
    public final long getClockDialColor() {
        return this.clockDialColor;
    }

    /* renamed from: getContainerColor-0d7_KjU$material3_release, reason: not valid java name and from getter */
    public final long getContainerColor() {
        return this.containerColor;
    }

    /* renamed from: getPeriodSelectorBorderColor-0d7_KjU$material3_release, reason: not valid java name and from getter */
    public final long getPeriodSelectorBorderColor() {
        return this.periodSelectorBorderColor;
    }

    /* renamed from: getSelectorColor-0d7_KjU$material3_release, reason: not valid java name and from getter */
    public final long getSelectorColor() {
        return this.selectorColor;
    }

    /* renamed from: periodSelectorContainerColor-vNxB06k$material3_release, reason: not valid java name */
    public final long m1570periodSelectorContainerColorvNxB06k$material3_release(boolean selected) {
        return selected ? this.periodSelectorSelectedContainerColor : this.periodSelectorUnselectedContainerColor;
    }

    /* renamed from: periodSelectorContentColor-vNxB06k$material3_release, reason: not valid java name */
    public final long m1571periodSelectorContentColorvNxB06k$material3_release(boolean selected) {
        return selected ? this.periodSelectorSelectedContentColor : this.periodSelectorUnselectedContentColor;
    }

    /* renamed from: timeSelectorContainerColor-vNxB06k$material3_release, reason: not valid java name */
    public final long m1572timeSelectorContainerColorvNxB06k$material3_release(boolean selected) {
        return selected ? this.timeSelectorSelectedContainerColor : this.timeSelectorUnselectedContainerColor;
    }

    /* renamed from: timeSelectorContentColor-vNxB06k$material3_release, reason: not valid java name */
    public final long m1573timeSelectorContentColorvNxB06k$material3_release(boolean selected) {
        return selected ? this.timeSelectorSelectedContentColor : this.timeSelectorUnselectedContentColor;
    }

    private TimePickerColors(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, long j14) {
        this.clockDialColor = j;
        this.selectorColor = j2;
        this.containerColor = j3;
        this.periodSelectorBorderColor = j4;
        this.clockDialSelectedContentColor = j5;
        this.clockDialUnselectedContentColor = j6;
        this.periodSelectorSelectedContainerColor = j7;
        this.periodSelectorUnselectedContainerColor = j8;
        this.periodSelectorSelectedContentColor = j9;
        this.periodSelectorUnselectedContentColor = j10;
        this.timeSelectorSelectedContainerColor = j11;
        this.timeSelectorUnselectedContainerColor = j12;
        this.timeSelectorSelectedContentColor = j13;
        this.timeSelectorUnselectedContentColor = j14;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!Intrinsics.areEqual(getClass(), other != null ? other.getClass() : null)) {
            return false;
        }
        Intrinsics.checkNotNull(other, "null cannot be cast to non-null type androidx.compose.material3.TimePickerColors");
        TimePickerColors timePickerColors = (TimePickerColors) other;
        return Color.m2640equalsimpl0(this.clockDialColor, timePickerColors.clockDialColor) && Color.m2640equalsimpl0(this.selectorColor, timePickerColors.selectorColor) && Color.m2640equalsimpl0(this.containerColor, timePickerColors.containerColor) && Color.m2640equalsimpl0(this.periodSelectorBorderColor, timePickerColors.periodSelectorBorderColor) && Color.m2640equalsimpl0(this.periodSelectorSelectedContainerColor, timePickerColors.periodSelectorSelectedContainerColor) && Color.m2640equalsimpl0(this.periodSelectorUnselectedContainerColor, timePickerColors.periodSelectorUnselectedContainerColor) && Color.m2640equalsimpl0(this.periodSelectorSelectedContentColor, timePickerColors.periodSelectorSelectedContentColor) && Color.m2640equalsimpl0(this.periodSelectorUnselectedContentColor, timePickerColors.periodSelectorUnselectedContentColor) && Color.m2640equalsimpl0(this.timeSelectorSelectedContainerColor, timePickerColors.timeSelectorSelectedContainerColor) && Color.m2640equalsimpl0(this.timeSelectorUnselectedContainerColor, timePickerColors.timeSelectorUnselectedContainerColor) && Color.m2640equalsimpl0(this.timeSelectorSelectedContentColor, timePickerColors.timeSelectorSelectedContentColor) && Color.m2640equalsimpl0(this.timeSelectorUnselectedContentColor, timePickerColors.timeSelectorUnselectedContentColor);
    }

    public int hashCode() {
        return (((((((((((((((((((((Color.m2646hashCodeimpl(this.clockDialColor) * 31) + Color.m2646hashCodeimpl(this.selectorColor)) * 31) + Color.m2646hashCodeimpl(this.containerColor)) * 31) + Color.m2646hashCodeimpl(this.periodSelectorBorderColor)) * 31) + Color.m2646hashCodeimpl(this.periodSelectorSelectedContainerColor)) * 31) + Color.m2646hashCodeimpl(this.periodSelectorUnselectedContainerColor)) * 31) + Color.m2646hashCodeimpl(this.periodSelectorSelectedContentColor)) * 31) + Color.m2646hashCodeimpl(this.periodSelectorUnselectedContentColor)) * 31) + Color.m2646hashCodeimpl(this.timeSelectorSelectedContainerColor)) * 31) + Color.m2646hashCodeimpl(this.timeSelectorUnselectedContainerColor)) * 31) + Color.m2646hashCodeimpl(this.timeSelectorSelectedContentColor)) * 31) + Color.m2646hashCodeimpl(this.timeSelectorUnselectedContentColor);
    }
}
