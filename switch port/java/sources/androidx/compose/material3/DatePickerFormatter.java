package androidx.compose.material3;

import io.sentry.protocol.Device;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: DatePicker.kt */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0007\u0018\u00002\u00020\u0001B#\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003¢\u0006\u0002\u0010\u0006J\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J3\u0010\u000e\u001a\u0004\u0018\u00010\u00032\b\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\b\b\u0002\u0010\u0015\u001a\u00020\fH\u0000¢\u0006\u0002\b\u0016J)\u0010\u0017\u001a\u0004\u0018\u00010\u00032\b\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0000¢\u0006\u0002\b\u001aJ\b\u0010\u001b\u001a\u00020\u001cH\u0016R\u0014\u0010\u0005\u001a\u00020\u0003X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\u0004\u001a\u00020\u0003X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\bR\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\b¨\u0006\u001d"}, d2 = {"Landroidx/compose/material3/DatePickerFormatter;", "", "yearSelectionSkeleton", "", "selectedDateSkeleton", "selectedDateDescriptionSkeleton", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getSelectedDateDescriptionSkeleton$material3_release", "()Ljava/lang/String;", "getSelectedDateSkeleton$material3_release", "getYearSelectionSkeleton$material3_release", "equals", "", "other", "formatDate", "date", "Landroidx/compose/material3/CalendarDate;", "calendarModel", "Landroidx/compose/material3/CalendarModel;", Device.JsonKeys.LOCALE, "Ljava/util/Locale;", "forContentDescription", "formatDate$material3_release", "formatMonthYear", "month", "Landroidx/compose/material3/CalendarMonth;", "formatMonthYear$material3_release", "hashCode", "", "material3_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class DatePickerFormatter {
    public static final int $stable = 0;
    private final String selectedDateDescriptionSkeleton;
    private final String selectedDateSkeleton;
    private final String yearSelectionSkeleton;

    public DatePickerFormatter() {
        this(null, null, null, 7, null);
    }

    /* renamed from: getSelectedDateDescriptionSkeleton$material3_release, reason: from getter */
    public final String getSelectedDateDescriptionSkeleton() {
        return this.selectedDateDescriptionSkeleton;
    }

    /* renamed from: getSelectedDateSkeleton$material3_release, reason: from getter */
    public final String getSelectedDateSkeleton() {
        return this.selectedDateSkeleton;
    }

    /* renamed from: getYearSelectionSkeleton$material3_release, reason: from getter */
    public final String getYearSelectionSkeleton() {
        return this.yearSelectionSkeleton;
    }

    public DatePickerFormatter(String yearSelectionSkeleton, String selectedDateSkeleton, String selectedDateDescriptionSkeleton) {
        Intrinsics.checkNotNullParameter(yearSelectionSkeleton, "yearSelectionSkeleton");
        Intrinsics.checkNotNullParameter(selectedDateSkeleton, "selectedDateSkeleton");
        Intrinsics.checkNotNullParameter(selectedDateDescriptionSkeleton, "selectedDateDescriptionSkeleton");
        this.yearSelectionSkeleton = yearSelectionSkeleton;
        this.selectedDateSkeleton = selectedDateSkeleton;
        this.selectedDateDescriptionSkeleton = selectedDateDescriptionSkeleton;
    }

    public /* synthetic */ DatePickerFormatter(String str, String str2, String str3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? DatePickerDefaults.YearMonthSkeleton : str, (i & 2) != 0 ? DatePickerDefaults.YearAbbrMonthDaySkeleton : str2, (i & 4) != 0 ? DatePickerDefaults.YearMonthWeekdayDaySkeleton : str3);
    }

    public final String formatMonthYear$material3_release(CalendarMonth month, CalendarModel calendarModel, Locale locale) {
        Intrinsics.checkNotNullParameter(calendarModel, "calendarModel");
        Intrinsics.checkNotNullParameter(locale, "locale");
        if (month == null) {
            return null;
        }
        return calendarModel.formatWithSkeleton(month, this.yearSelectionSkeleton, locale);
    }

    public static /* synthetic */ String formatDate$material3_release$default(DatePickerFormatter datePickerFormatter, CalendarDate calendarDate, CalendarModel calendarModel, Locale locale, boolean z, int i, Object obj) {
        if ((i & 8) != 0) {
            z = false;
        }
        return datePickerFormatter.formatDate$material3_release(calendarDate, calendarModel, locale, z);
    }

    public final String formatDate$material3_release(CalendarDate date, CalendarModel calendarModel, Locale locale, boolean forContentDescription) {
        Intrinsics.checkNotNullParameter(calendarModel, "calendarModel");
        Intrinsics.checkNotNullParameter(locale, "locale");
        if (date == null) {
            return null;
        }
        return calendarModel.formatWithSkeleton(date, forContentDescription ? this.selectedDateDescriptionSkeleton : this.selectedDateSkeleton, locale);
    }

    public boolean equals(Object other) {
        if (!(other instanceof DatePickerFormatter)) {
            return false;
        }
        DatePickerFormatter datePickerFormatter = (DatePickerFormatter) other;
        return Intrinsics.areEqual(this.yearSelectionSkeleton, datePickerFormatter.yearSelectionSkeleton) && Intrinsics.areEqual(this.selectedDateSkeleton, datePickerFormatter.selectedDateSkeleton) && Intrinsics.areEqual(this.selectedDateDescriptionSkeleton, datePickerFormatter.selectedDateDescriptionSkeleton);
    }

    public int hashCode() {
        return (((this.yearSelectionSkeleton.hashCode() * 31) + this.selectedDateSkeleton.hashCode()) * 31) + this.selectedDateDescriptionSkeleton.hashCode();
    }
}
