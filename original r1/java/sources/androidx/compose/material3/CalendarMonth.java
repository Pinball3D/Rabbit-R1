package androidx.compose.material3;

import io.sentry.protocol.Device;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;

/* compiled from: CalendarModel.kt */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0081\b\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0017\u001a\u00020\bHÆ\u0003J;\u0010\u0018\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\bHÆ\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J \u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u001d2\b\b\u0002\u0010!\u001a\u00020\"J\t\u0010#\u001a\u00020\u0003HÖ\u0001J\u000e\u0010$\u001a\u00020\u00032\u0006\u0010%\u001a\u00020&J\t\u0010'\u001a\u00020\u001dHÖ\u0001R\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\f\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000bR\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000eR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u000b¨\u0006("}, d2 = {"Landroidx/compose/material3/CalendarMonth;", "", "year", "", "month", "numberOfDays", "daysFromStartOfWeekToFirstOfMonth", "startUtcTimeMillis", "", "(IIIIJ)V", "getDaysFromStartOfWeekToFirstOfMonth", "()I", "endUtcTimeMillis", "getEndUtcTimeMillis", "()J", "getMonth", "getNumberOfDays", "getStartUtcTimeMillis", "getYear", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "format", "", "calendarModel", "Landroidx/compose/material3/CalendarModel;", "skeleton", Device.JsonKeys.LOCALE, "Ljava/util/Locale;", "hashCode", "indexIn", "years", "Lkotlin/ranges/IntRange;", "toString", "material3_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final /* data */ class CalendarMonth {
    private final int daysFromStartOfWeekToFirstOfMonth;
    private final long endUtcTimeMillis;
    private final int month;
    private final int numberOfDays;
    private final long startUtcTimeMillis;
    private final int year;

    public static /* synthetic */ CalendarMonth copy$default(CalendarMonth calendarMonth, int i, int i2, int i3, int i4, long j, int i5, Object obj) {
        if ((i5 & 1) != 0) {
            i = calendarMonth.year;
        }
        if ((i5 & 2) != 0) {
            i2 = calendarMonth.month;
        }
        int i6 = i2;
        if ((i5 & 4) != 0) {
            i3 = calendarMonth.numberOfDays;
        }
        int i7 = i3;
        if ((i5 & 8) != 0) {
            i4 = calendarMonth.daysFromStartOfWeekToFirstOfMonth;
        }
        int i8 = i4;
        if ((i5 & 16) != 0) {
            j = calendarMonth.startUtcTimeMillis;
        }
        return calendarMonth.copy(i, i6, i7, i8, j);
    }

    /* renamed from: component1, reason: from getter */
    public final int getYear() {
        return this.year;
    }

    /* renamed from: component2, reason: from getter */
    public final int getMonth() {
        return this.month;
    }

    /* renamed from: component3, reason: from getter */
    public final int getNumberOfDays() {
        return this.numberOfDays;
    }

    /* renamed from: component4, reason: from getter */
    public final int getDaysFromStartOfWeekToFirstOfMonth() {
        return this.daysFromStartOfWeekToFirstOfMonth;
    }

    /* renamed from: component5, reason: from getter */
    public final long getStartUtcTimeMillis() {
        return this.startUtcTimeMillis;
    }

    public final CalendarMonth copy(int year, int month, int numberOfDays, int daysFromStartOfWeekToFirstOfMonth, long startUtcTimeMillis) {
        return new CalendarMonth(year, month, numberOfDays, daysFromStartOfWeekToFirstOfMonth, startUtcTimeMillis);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CalendarMonth)) {
            return false;
        }
        CalendarMonth calendarMonth = (CalendarMonth) other;
        return this.year == calendarMonth.year && this.month == calendarMonth.month && this.numberOfDays == calendarMonth.numberOfDays && this.daysFromStartOfWeekToFirstOfMonth == calendarMonth.daysFromStartOfWeekToFirstOfMonth && this.startUtcTimeMillis == calendarMonth.startUtcTimeMillis;
    }

    public final int getDaysFromStartOfWeekToFirstOfMonth() {
        return this.daysFromStartOfWeekToFirstOfMonth;
    }

    public final long getEndUtcTimeMillis() {
        return this.endUtcTimeMillis;
    }

    public final int getMonth() {
        return this.month;
    }

    public final int getNumberOfDays() {
        return this.numberOfDays;
    }

    public final long getStartUtcTimeMillis() {
        return this.startUtcTimeMillis;
    }

    public final int getYear() {
        return this.year;
    }

    public int hashCode() {
        return (((((((Integer.hashCode(this.year) * 31) + Integer.hashCode(this.month)) * 31) + Integer.hashCode(this.numberOfDays)) * 31) + Integer.hashCode(this.daysFromStartOfWeekToFirstOfMonth)) * 31) + Long.hashCode(this.startUtcTimeMillis);
    }

    public String toString() {
        return "CalendarMonth(year=" + this.year + ", month=" + this.month + ", numberOfDays=" + this.numberOfDays + ", daysFromStartOfWeekToFirstOfMonth=" + this.daysFromStartOfWeekToFirstOfMonth + ", startUtcTimeMillis=" + this.startUtcTimeMillis + ')';
    }

    public CalendarMonth(int i, int i2, int i3, int i4, long j) {
        this.year = i;
        this.month = i2;
        this.numberOfDays = i3;
        this.daysFromStartOfWeekToFirstOfMonth = i4;
        this.startUtcTimeMillis = j;
        this.endUtcTimeMillis = (j + (i3 * CalendarModelKt.MillisecondsIn24Hours)) - 1;
    }

    public final int indexIn(IntRange years) {
        Intrinsics.checkNotNullParameter(years, "years");
        return (((this.year - years.getFirst()) * 12) + this.month) - 1;
    }

    public static /* synthetic */ String format$default(CalendarMonth calendarMonth, CalendarModel calendarModel, String str, Locale locale, int i, Object obj) {
        if ((i & 4) != 0) {
            locale = Locale.getDefault();
            Intrinsics.checkNotNullExpressionValue(locale, "getDefault()");
        }
        return calendarMonth.format(calendarModel, str, locale);
    }

    public final String format(CalendarModel calendarModel, String skeleton, Locale locale) {
        Intrinsics.checkNotNullParameter(calendarModel, "calendarModel");
        Intrinsics.checkNotNullParameter(skeleton, "skeleton");
        Intrinsics.checkNotNullParameter(locale, "locale");
        return calendarModel.formatWithSkeleton(this, skeleton, locale);
    }
}
