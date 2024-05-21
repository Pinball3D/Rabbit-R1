package androidx.compose.material3;

import androidx.compose.animation.SingleValueAnimationKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.graphics.Color;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: DatePicker.kt */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u001d\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0010\b\n\u0002\b\u0007\b\u0007\u0018\u00002\u00020\u0001B¢\u0001\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\u0006\u0010\f\u001a\u00020\u0003\u0012\u0006\u0010\r\u001a\u00020\u0003\u0012\u0006\u0010\u000e\u001a\u00020\u0003\u0012\u0006\u0010\u000f\u001a\u00020\u0003\u0012\u0006\u0010\u0010\u001a\u00020\u0003\u0012\u0006\u0010\u0011\u001a\u00020\u0003\u0012\u0006\u0010\u0012\u001a\u00020\u0003\u0012\u0006\u0010\u0013\u001a\u00020\u0003\u0012\u0006\u0010\u0014\u001a\u00020\u0003\u0012\u0006\u0010\u0015\u001a\u00020\u0003ø\u0001\u0000¢\u0006\u0002\u0010\u0016J0\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00030!2\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020#2\u0006\u0010%\u001a\u00020#H\u0001ø\u0001\u0000¢\u0006\u0004\b&\u0010'J8\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00030!2\u0006\u0010(\u001a\u00020#2\u0006\u0010\"\u001a\u00020#2\u0006\u0010)\u001a\u00020#2\u0006\u0010$\u001a\u00020#H\u0001ø\u0001\u0000¢\u0006\u0004\b*\u0010+J\u0013\u0010,\u001a\u00020#2\b\u0010-\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010.\u001a\u00020/H\u0016J \u00100\u001a\b\u0012\u0004\u0012\u00020\u00030!2\u0006\u0010\"\u001a\u00020#H\u0001ø\u0001\u0000¢\u0006\u0004\b1\u00102J(\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030!2\u0006\u00103\u001a\u00020#2\u0006\u0010\"\u001a\u00020#H\u0001ø\u0001\u0000¢\u0006\u0004\b4\u00105R\u001f\u0010\u0002\u001a\u00020\u0003X\u0080\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0019\u001a\u0004\b\u0017\u0010\u0018R\u0019\u0010\t\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\u0019R\u0019\u0010\f\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\u0019R\u001f\u0010\u0014\u001a\u00020\u0003X\u0080\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0019\u001a\u0004\b\u001a\u0010\u0018R\u0019\u0010\u0015\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\u0019R\u0019\u0010\r\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\u0019R\u0019\u0010\u0011\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\u0019R\u0019\u0010\u000f\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\u0019R\u001f\u0010\u0005\u001a\u00020\u0003X\u0080\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0019\u001a\u0004\b\u001b\u0010\u0018R\u0019\u0010\u0010\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\u0019R\u0019\u0010\u000e\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\u0019R\u0019\u0010\u000b\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\u0019R\u0019\u0010\n\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\u0019R\u001f\u0010\u0007\u001a\u00020\u0003X\u0080\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0019\u001a\u0004\b\u001c\u0010\u0018R\u001f\u0010\u0004\u001a\u00020\u0003X\u0080\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0019\u001a\u0004\b\u001d\u0010\u0018R\u0019\u0010\u0012\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\u0019R\u001f\u0010\u0013\u001a\u00020\u0003X\u0080\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0019\u001a\u0004\b\u001e\u0010\u0018R\u001f\u0010\u0006\u001a\u00020\u0003X\u0080\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0019\u001a\u0004\b\u001f\u0010\u0018R\u0019\u0010\b\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\u0019\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u00066"}, d2 = {"Landroidx/compose/material3/DatePickerColors;", "", "containerColor", "Landroidx/compose/ui/graphics/Color;", "titleContentColor", "headlineContentColor", "weekdayContentColor", "subheadContentColor", "yearContentColor", "currentYearContentColor", "selectedYearContentColor", "selectedYearContainerColor", "dayContentColor", "disabledDayContentColor", "selectedDayContentColor", "disabledSelectedDayContentColor", "selectedDayContainerColor", "disabledSelectedDayContainerColor", "todayContentColor", "todayDateBorderColor", "dayInSelectionRangeContainerColor", "dayInSelectionRangeContentColor", "(JJJJJJJJJJJJJJJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V", "getContainerColor-0d7_KjU$material3_release", "()J", "J", "getDayInSelectionRangeContainerColor-0d7_KjU$material3_release", "getHeadlineContentColor-0d7_KjU$material3_release", "getSubheadContentColor-0d7_KjU$material3_release", "getTitleContentColor-0d7_KjU$material3_release", "getTodayDateBorderColor-0d7_KjU$material3_release", "getWeekdayContentColor-0d7_KjU$material3_release", "dayContainerColor", "Landroidx/compose/runtime/State;", "selected", "", "enabled", "animate", "dayContainerColor$material3_release", "(ZZZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;", "isToday", "inRange", "dayContentColor$material3_release", "(ZZZZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;", "equals", "other", "hashCode", "", "yearContainerColor", "yearContainerColor$material3_release", "(ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;", "currentYear", "yearContentColor$material3_release", "(ZZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;", "material3_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class DatePickerColors {
    public static final int $stable = 0;
    private final long containerColor;
    private final long currentYearContentColor;
    private final long dayContentColor;
    private final long dayInSelectionRangeContainerColor;
    private final long dayInSelectionRangeContentColor;
    private final long disabledDayContentColor;
    private final long disabledSelectedDayContainerColor;
    private final long disabledSelectedDayContentColor;
    private final long headlineContentColor;
    private final long selectedDayContainerColor;
    private final long selectedDayContentColor;
    private final long selectedYearContainerColor;
    private final long selectedYearContentColor;
    private final long subheadContentColor;
    private final long titleContentColor;
    private final long todayContentColor;
    private final long todayDateBorderColor;
    private final long weekdayContentColor;
    private final long yearContentColor;

    public /* synthetic */ DatePickerColors(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, j2, j3, j4, j5, j6, j7, j8, j9, j10, j11, j12, j13, j14, j15, j16, j17, j18, j19);
    }

    /* renamed from: getContainerColor-0d7_KjU$material3_release, reason: not valid java name and from getter */
    public final long getContainerColor() {
        return this.containerColor;
    }

    /* renamed from: getDayInSelectionRangeContainerColor-0d7_KjU$material3_release, reason: not valid java name and from getter */
    public final long getDayInSelectionRangeContainerColor() {
        return this.dayInSelectionRangeContainerColor;
    }

    /* renamed from: getHeadlineContentColor-0d7_KjU$material3_release, reason: not valid java name and from getter */
    public final long getHeadlineContentColor() {
        return this.headlineContentColor;
    }

    /* renamed from: getSubheadContentColor-0d7_KjU$material3_release, reason: not valid java name and from getter */
    public final long getSubheadContentColor() {
        return this.subheadContentColor;
    }

    /* renamed from: getTitleContentColor-0d7_KjU$material3_release, reason: not valid java name and from getter */
    public final long getTitleContentColor() {
        return this.titleContentColor;
    }

    /* renamed from: getTodayDateBorderColor-0d7_KjU$material3_release, reason: not valid java name and from getter */
    public final long getTodayDateBorderColor() {
        return this.todayDateBorderColor;
    }

    /* renamed from: getWeekdayContentColor-0d7_KjU$material3_release, reason: not valid java name and from getter */
    public final long getWeekdayContentColor() {
        return this.weekdayContentColor;
    }

    private DatePickerColors(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19) {
        this.containerColor = j;
        this.titleContentColor = j2;
        this.headlineContentColor = j3;
        this.weekdayContentColor = j4;
        this.subheadContentColor = j5;
        this.yearContentColor = j6;
        this.currentYearContentColor = j7;
        this.selectedYearContentColor = j8;
        this.selectedYearContainerColor = j9;
        this.dayContentColor = j10;
        this.disabledDayContentColor = j11;
        this.selectedDayContentColor = j12;
        this.disabledSelectedDayContentColor = j13;
        this.selectedDayContainerColor = j14;
        this.disabledSelectedDayContainerColor = j15;
        this.todayContentColor = j16;
        this.todayDateBorderColor = j17;
        this.dayInSelectionRangeContainerColor = j18;
        this.dayInSelectionRangeContentColor = j19;
    }

    public final State<Color> dayContentColor$material3_release(boolean z, boolean z2, boolean z3, boolean z4, Composer composer, int i) {
        State<Color> m78animateColorAsStateeuL9pac;
        composer.startReplaceableGroup(-1233694918);
        ComposerKt.sourceInformation(composer, "C(dayContentColor)P(2,3,1):DatePicker.kt#uh7d8r");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1233694918, i, -1, "androidx.compose.material3.DatePickerColors.dayContentColor (DatePicker.kt:576)");
        }
        long j = (z2 && z4) ? this.selectedDayContentColor : (!z2 || z4) ? (z3 && z4) ? this.dayInSelectionRangeContentColor : (!z3 || z4) ? z ? this.todayContentColor : z4 ? this.dayContentColor : this.disabledDayContentColor : this.disabledDayContentColor : this.disabledSelectedDayContentColor;
        if (z3) {
            composer.startReplaceableGroup(379006271);
            ComposerKt.sourceInformation(composer, "593@26356L28");
            m78animateColorAsStateeuL9pac = SnapshotStateKt.rememberUpdatedState(Color.m2629boximpl(j), composer, 0);
            composer.endReplaceableGroup();
        } else {
            composer.startReplaceableGroup(379006329);
            ComposerKt.sourceInformation(composer, "596@26492L134");
            m78animateColorAsStateeuL9pac = SingleValueAnimationKt.m78animateColorAsStateeuL9pac(j, AnimationSpecKt.tween$default(100, 0, null, 6, null), null, null, composer, 0, 12);
            composer.endReplaceableGroup();
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return m78animateColorAsStateeuL9pac;
    }

    public final State<Color> dayContainerColor$material3_release(boolean z, boolean z2, boolean z3, Composer composer, int i) {
        long m2674getTransparent0d7_KjU;
        State<Color> rememberUpdatedState;
        composer.startReplaceableGroup(-1240482658);
        ComposerKt.sourceInformation(composer, "C(dayContainerColor)P(2,1):DatePicker.kt#uh7d8r");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1240482658, i, -1, "androidx.compose.material3.DatePickerColors.dayContainerColor (DatePicker.kt:611)");
        }
        if (z) {
            m2674getTransparent0d7_KjU = z2 ? this.selectedDayContainerColor : this.disabledSelectedDayContainerColor;
        } else {
            m2674getTransparent0d7_KjU = Color.INSTANCE.m2674getTransparent0d7_KjU();
        }
        long j = m2674getTransparent0d7_KjU;
        if (z3) {
            composer.startReplaceableGroup(1577406023);
            ComposerKt.sourceInformation(composer, "622@27316L134");
            rememberUpdatedState = SingleValueAnimationKt.m78animateColorAsStateeuL9pac(j, AnimationSpecKt.tween$default(100, 0, null, 6, null), null, null, composer, 0, 12);
            composer.endReplaceableGroup();
        } else {
            composer.startReplaceableGroup(1577406187);
            ComposerKt.sourceInformation(composer, "627@27480L28");
            rememberUpdatedState = SnapshotStateKt.rememberUpdatedState(Color.m2629boximpl(j), composer, 0);
            composer.endReplaceableGroup();
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return rememberUpdatedState;
    }

    public final State<Color> yearContentColor$material3_release(boolean z, boolean z2, Composer composer, int i) {
        composer.startReplaceableGroup(-1749254827);
        ComposerKt.sourceInformation(composer, "C(yearContentColor)647@28098L122:DatePicker.kt#uh7d8r");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1749254827, i, -1, "androidx.compose.material3.DatePickerColors.yearContentColor (DatePicker.kt:638)");
        }
        State<Color> m78animateColorAsStateeuL9pac = SingleValueAnimationKt.m78animateColorAsStateeuL9pac(z2 ? this.selectedYearContentColor : z ? this.currentYearContentColor : this.yearContentColor, AnimationSpecKt.tween$default(100, 0, null, 6, null), null, null, composer, 0, 12);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return m78animateColorAsStateeuL9pac;
    }

    public final State<Color> yearContainerColor$material3_release(boolean z, Composer composer, int i) {
        composer.startReplaceableGroup(488208633);
        ComposerKt.sourceInformation(composer, "C(yearContainerColor)661@28567L122:DatePicker.kt#uh7d8r");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(488208633, i, -1, "androidx.compose.material3.DatePickerColors.yearContainerColor (DatePicker.kt:659)");
        }
        State<Color> m78animateColorAsStateeuL9pac = SingleValueAnimationKt.m78animateColorAsStateeuL9pac(z ? this.selectedYearContainerColor : Color.INSTANCE.m2674getTransparent0d7_KjU(), AnimationSpecKt.tween$default(100, 0, null, 6, null), null, null, composer, 0, 12);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return m78animateColorAsStateeuL9pac;
    }

    public boolean equals(Object other) {
        if (!(other instanceof DatePickerColors)) {
            return false;
        }
        DatePickerColors datePickerColors = (DatePickerColors) other;
        return Color.m2640equalsimpl0(this.containerColor, datePickerColors.containerColor) && Color.m2640equalsimpl0(this.titleContentColor, datePickerColors.titleContentColor) && Color.m2640equalsimpl0(this.headlineContentColor, datePickerColors.headlineContentColor) && Color.m2640equalsimpl0(this.weekdayContentColor, datePickerColors.weekdayContentColor) && Color.m2640equalsimpl0(this.subheadContentColor, datePickerColors.subheadContentColor) && Color.m2640equalsimpl0(this.yearContentColor, datePickerColors.yearContentColor) && Color.m2640equalsimpl0(this.currentYearContentColor, datePickerColors.currentYearContentColor) && Color.m2640equalsimpl0(this.selectedYearContentColor, datePickerColors.selectedYearContentColor) && Color.m2640equalsimpl0(this.selectedYearContainerColor, datePickerColors.selectedYearContainerColor) && Color.m2640equalsimpl0(this.dayContentColor, datePickerColors.dayContentColor) && Color.m2640equalsimpl0(this.disabledDayContentColor, datePickerColors.disabledDayContentColor) && Color.m2640equalsimpl0(this.selectedDayContentColor, datePickerColors.selectedDayContentColor) && Color.m2640equalsimpl0(this.disabledSelectedDayContentColor, datePickerColors.disabledSelectedDayContentColor) && Color.m2640equalsimpl0(this.selectedDayContainerColor, datePickerColors.selectedDayContainerColor) && Color.m2640equalsimpl0(this.disabledSelectedDayContainerColor, datePickerColors.disabledSelectedDayContainerColor) && Color.m2640equalsimpl0(this.todayContentColor, datePickerColors.todayContentColor) && Color.m2640equalsimpl0(this.todayDateBorderColor, datePickerColors.todayDateBorderColor) && Color.m2640equalsimpl0(this.dayInSelectionRangeContainerColor, datePickerColors.dayInSelectionRangeContainerColor) && Color.m2640equalsimpl0(this.dayInSelectionRangeContentColor, datePickerColors.dayInSelectionRangeContentColor);
    }

    public int hashCode() {
        return (((((((((((((((((((((((((((((((((((Color.m2646hashCodeimpl(this.containerColor) * 31) + Color.m2646hashCodeimpl(this.titleContentColor)) * 31) + Color.m2646hashCodeimpl(this.headlineContentColor)) * 31) + Color.m2646hashCodeimpl(this.weekdayContentColor)) * 31) + Color.m2646hashCodeimpl(this.subheadContentColor)) * 31) + Color.m2646hashCodeimpl(this.yearContentColor)) * 31) + Color.m2646hashCodeimpl(this.currentYearContentColor)) * 31) + Color.m2646hashCodeimpl(this.selectedYearContentColor)) * 31) + Color.m2646hashCodeimpl(this.selectedYearContainerColor)) * 31) + Color.m2646hashCodeimpl(this.dayContentColor)) * 31) + Color.m2646hashCodeimpl(this.disabledDayContentColor)) * 31) + Color.m2646hashCodeimpl(this.selectedDayContentColor)) * 31) + Color.m2646hashCodeimpl(this.disabledSelectedDayContentColor)) * 31) + Color.m2646hashCodeimpl(this.selectedDayContainerColor)) * 31) + Color.m2646hashCodeimpl(this.disabledSelectedDayContainerColor)) * 31) + Color.m2646hashCodeimpl(this.todayContentColor)) * 31) + Color.m2646hashCodeimpl(this.todayDateBorderColor)) * 31) + Color.m2646hashCodeimpl(this.dayInSelectionRangeContainerColor)) * 31) + Color.m2646hashCodeimpl(this.dayInSelectionRangeContentColor);
    }
}
