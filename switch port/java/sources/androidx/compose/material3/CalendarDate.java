package androidx.compose.material3;

import io.sentry.protocol.Device;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: CalendarModel.kt */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0081\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u0011\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0000H\u0096\u0002J\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0007HÆ\u0003J1\u0010\u0015\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\b\u0010\u0010\u001a\u0004\u0018\u00010\u0018HÖ\u0003J \u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001a2\b\b\u0002\u0010\u001e\u001a\u00020\u001fJ\t\u0010 \u001a\u00020\u0003HÖ\u0001J\t\u0010!\u001a\u00020\u001aHÖ\u0001R\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\n¨\u0006\""}, d2 = {"Landroidx/compose/material3/CalendarDate;", "", "year", "", "month", "dayOfMonth", "utcTimeMillis", "", "(IIIJ)V", "getDayOfMonth", "()I", "getMonth", "getUtcTimeMillis", "()J", "getYear", "compareTo", "other", "component1", "component2", "component3", "component4", "copy", "equals", "", "", "format", "", "calendarModel", "Landroidx/compose/material3/CalendarModel;", "skeleton", Device.JsonKeys.LOCALE, "Ljava/util/Locale;", "hashCode", "toString", "material3_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final /* data */ class CalendarDate implements Comparable<CalendarDate> {
    private final int dayOfMonth;
    private final int month;
    private final long utcTimeMillis;
    private final int year;

    public static /* synthetic */ CalendarDate copy$default(CalendarDate calendarDate, int i, int i2, int i3, long j, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            i = calendarDate.year;
        }
        if ((i4 & 2) != 0) {
            i2 = calendarDate.month;
        }
        int i5 = i2;
        if ((i4 & 4) != 0) {
            i3 = calendarDate.dayOfMonth;
        }
        int i6 = i3;
        if ((i4 & 8) != 0) {
            j = calendarDate.utcTimeMillis;
        }
        return calendarDate.copy(i, i5, i6, j);
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
    public final int getDayOfMonth() {
        return this.dayOfMonth;
    }

    /* renamed from: component4, reason: from getter */
    public final long getUtcTimeMillis() {
        return this.utcTimeMillis;
    }

    public final CalendarDate copy(int year, int month, int dayOfMonth, long utcTimeMillis) {
        return new CalendarDate(year, month, dayOfMonth, utcTimeMillis);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CalendarDate)) {
            return false;
        }
        CalendarDate calendarDate = (CalendarDate) other;
        return this.year == calendarDate.year && this.month == calendarDate.month && this.dayOfMonth == calendarDate.dayOfMonth && this.utcTimeMillis == calendarDate.utcTimeMillis;
    }

    public final int getDayOfMonth() {
        return this.dayOfMonth;
    }

    public final int getMonth() {
        return this.month;
    }

    public final long getUtcTimeMillis() {
        return this.utcTimeMillis;
    }

    public final int getYear() {
        return this.year;
    }

    public int hashCode() {
        return (((((Integer.hashCode(this.year) * 31) + Integer.hashCode(this.month)) * 31) + Integer.hashCode(this.dayOfMonth)) * 31) + Long.hashCode(this.utcTimeMillis);
    }

    public String toString() {
        return "CalendarDate(year=" + this.year + ", month=" + this.month + ", dayOfMonth=" + this.dayOfMonth + ", utcTimeMillis=" + this.utcTimeMillis + ')';
    }

    public CalendarDate(int i, int i2, int i3, long j) {
        this.year = i;
        this.month = i2;
        this.dayOfMonth = i3;
        this.utcTimeMillis = j;
    }

    @Override // java.lang.Comparable
    public int compareTo(CalendarDate other) {
        Intrinsics.checkNotNullParameter(other, "other");
        return Intrinsics.compare(this.utcTimeMillis, other.utcTimeMillis);
    }

    public static /* synthetic */ String format$default(CalendarDate calendarDate, CalendarModel calendarModel, String str, Locale locale, int i, Object obj) {
        if ((i & 4) != 0) {
            locale = Locale.getDefault();
            Intrinsics.checkNotNullExpressionValue(locale, "getDefault()");
        }
        return calendarDate.format(calendarModel, str, locale);
    }

    public final String format(CalendarModel calendarModel, String skeleton, Locale locale) {
        Intrinsics.checkNotNullParameter(calendarModel, "calendarModel");
        Intrinsics.checkNotNullParameter(skeleton, "skeleton");
        Intrinsics.checkNotNullParameter(locale, "locale");
        return calendarModel.formatWithSkeleton(this, skeleton, locale);
    }
}
