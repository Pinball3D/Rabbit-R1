package androidx.compose.material3;

import io.sentry.protocol.Device;
import java.text.DateFormat;
import java.text.DateFormatSymbols;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: LegacyCalendarModelImpl.kt */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u0000 /2\u00020\u0001:\u0001/B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0004H\u0002J \u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u0010\u0010\u0019\u001a\u00020\b2\u0006\u0010\u001a\u001a\u00020\u0015H\u0016J\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u0010\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\bH\u0016J\u0010\u0010\u001f\u001a\u00020 2\u0006\u0010\u001e\u001a\u00020\bH\u0016J\u0010\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"H\u0002J\u0018\u0010\u001f\u001a\u00020 2\u0006\u0010#\u001a\u00020\u00042\u0006\u0010$\u001a\u00020\u0004H\u0016J\u0010\u0010\u001f\u001a\u00020 2\u0006\u0010\u001a\u001a\u00020\u0015H\u0016J\u0018\u0010%\u001a\u00020 2\u0006\u0010&\u001a\u00020 2\u0006\u0010'\u001a\u00020\u0004H\u0016J\u001a\u0010(\u001a\u0004\u0018\u00010\b2\u0006\u0010\u001e\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u000eH\u0016J\u0018\u0010)\u001a\u00020 2\u0006\u0010&\u001a\u00020 2\u0006\u0010*\u001a\u00020\u0004H\u0016J\b\u0010+\u001a\u00020\u000eH\u0016J\u0014\u0010,\u001a\u00020\"*\u00020\b2\u0006\u0010-\u001a\u00020.H\u0002J\f\u0010,\u001a\u00020\"*\u00020 H\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\nR&\u0010\u000b\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000e0\r0\fX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010¨\u00060"}, d2 = {"Landroidx/compose/material3/LegacyCalendarModelImpl;", "Landroidx/compose/material3/CalendarModel;", "()V", "firstDayOfWeek", "", "getFirstDayOfWeek", "()I", "today", "Landroidx/compose/material3/CalendarDate;", "getToday", "()Landroidx/compose/material3/CalendarDate;", "weekdayNames", "", "Lkotlin/Pair;", "", "getWeekdayNames", "()Ljava/util/List;", "dayInISO8601", "day", "formatWithPattern", "utcTimeMillis", "", "pattern", Device.JsonKeys.LOCALE, "Ljava/util/Locale;", "getCanonicalDate", "timeInMillis", "getDateInputFormat", "Landroidx/compose/material3/DateInputFormat;", "getDayOfWeek", "date", "getMonth", "Landroidx/compose/material3/CalendarMonth;", "firstDayCalendar", "Ljava/util/Calendar;", "year", "month", "minusMonths", "from", "subtractedMonthsCount", "parse", "plusMonths", "addedMonthsCount", "toString", "toCalendar", "timeZone", "Ljava/util/TimeZone;", "Companion", "material3_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class LegacyCalendarModelImpl implements CalendarModel {

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final TimeZone utcTimeZone;
    private final int firstDayOfWeek = dayInISO8601(Calendar.getInstance().getFirstDayOfWeek());
    private final List<Pair<String, String>> weekdayNames;

    @Override // androidx.compose.material3.CalendarModel
    public int getFirstDayOfWeek() {
        return this.firstDayOfWeek;
    }

    @Override // androidx.compose.material3.CalendarModel
    public List<Pair<String, String>> getWeekdayNames() {
        return this.weekdayNames;
    }

    public String toString() {
        return "LegacyCalendarModel";
    }

    public LegacyCalendarModelImpl() {
        List createListBuilder = CollectionsKt.createListBuilder();
        String[] weekdays = new DateFormatSymbols(Locale.getDefault()).getWeekdays();
        String[] shortWeekdays = new DateFormatSymbols(Locale.getDefault()).getShortWeekdays();
        Intrinsics.checkNotNullExpressionValue(weekdays, "weekdays");
        int i = 0;
        for (Object obj : ArraysKt.drop(weekdays, 2)) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            createListBuilder.add(new Pair((String) obj, shortWeekdays[i + 2]));
            i = i2;
        }
        createListBuilder.add(new Pair(weekdays[1], shortWeekdays[1]));
        this.weekdayNames = CollectionsKt.build(createListBuilder);
    }

    @Override // androidx.compose.material3.CalendarModel
    public CalendarDate getToday() {
        Calendar calendar = Calendar.getInstance();
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        return new CalendarDate(calendar.get(1), calendar.get(2) + 1, calendar.get(5), calendar.getTimeInMillis() + calendar.get(15) + calendar.get(16));
    }

    @Override // androidx.compose.material3.CalendarModel
    public DateInputFormat getDateInputFormat(Locale locale) {
        Intrinsics.checkNotNullParameter(locale, "locale");
        DateFormat dateInstance = DateFormat.getDateInstance(3, locale);
        Intrinsics.checkNotNull(dateInstance, "null cannot be cast to non-null type java.text.SimpleDateFormat");
        String pattern = ((SimpleDateFormat) dateInstance).toPattern();
        Intrinsics.checkNotNullExpressionValue(pattern, "DateFormat.getDateInstan…leDateFormat).toPattern()");
        return CalendarModelKt.datePatternAsInputFormat(pattern);
    }

    @Override // androidx.compose.material3.CalendarModel
    public CalendarDate getCanonicalDate(long timeInMillis) {
        Calendar calendar = Calendar.getInstance(utcTimeZone);
        calendar.setTimeInMillis(timeInMillis);
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        return new CalendarDate(calendar.get(1), calendar.get(2) + 1, calendar.get(5), calendar.getTimeInMillis());
    }

    @Override // androidx.compose.material3.CalendarModel
    public CalendarMonth getMonth(long timeInMillis) {
        Calendar firstDayCalendar = Calendar.getInstance(utcTimeZone);
        firstDayCalendar.setTimeInMillis(timeInMillis);
        firstDayCalendar.set(5, 1);
        firstDayCalendar.set(11, 0);
        firstDayCalendar.set(12, 0);
        firstDayCalendar.set(13, 0);
        firstDayCalendar.set(14, 0);
        Intrinsics.checkNotNullExpressionValue(firstDayCalendar, "firstDayCalendar");
        return getMonth(firstDayCalendar);
    }

    @Override // androidx.compose.material3.CalendarModel
    public CalendarMonth getMonth(CalendarDate date) {
        Intrinsics.checkNotNullParameter(date, "date");
        return getMonth(date.getYear(), date.getMonth());
    }

    @Override // androidx.compose.material3.CalendarModel
    public CalendarMonth getMonth(int year, int month) {
        Calendar firstDayCalendar = Calendar.getInstance(utcTimeZone);
        firstDayCalendar.clear();
        firstDayCalendar.set(1, year);
        firstDayCalendar.set(2, month - 1);
        firstDayCalendar.set(5, 1);
        Intrinsics.checkNotNullExpressionValue(firstDayCalendar, "firstDayCalendar");
        return getMonth(firstDayCalendar);
    }

    @Override // androidx.compose.material3.CalendarModel
    public int getDayOfWeek(CalendarDate date) {
        Intrinsics.checkNotNullParameter(date, "date");
        TimeZone timeZone = TimeZone.getDefault();
        Intrinsics.checkNotNullExpressionValue(timeZone, "getDefault()");
        return dayInISO8601(toCalendar(date, timeZone).get(7));
    }

    @Override // androidx.compose.material3.CalendarModel
    public CalendarMonth plusMonths(CalendarMonth from, int addedMonthsCount) {
        Intrinsics.checkNotNullParameter(from, "from");
        if (addedMonthsCount <= 0) {
            return from;
        }
        Calendar calendar = toCalendar(from);
        calendar.add(2, addedMonthsCount);
        return getMonth(calendar);
    }

    @Override // androidx.compose.material3.CalendarModel
    public CalendarMonth minusMonths(CalendarMonth from, int subtractedMonthsCount) {
        Intrinsics.checkNotNullParameter(from, "from");
        if (subtractedMonthsCount <= 0) {
            return from;
        }
        Calendar calendar = toCalendar(from);
        calendar.add(2, -subtractedMonthsCount);
        return getMonth(calendar);
    }

    @Override // androidx.compose.material3.CalendarModel
    public String formatWithPattern(long utcTimeMillis, String pattern, Locale locale) {
        Intrinsics.checkNotNullParameter(pattern, "pattern");
        Intrinsics.checkNotNullParameter(locale, "locale");
        return INSTANCE.formatWithPattern(utcTimeMillis, pattern, locale);
    }

    @Override // androidx.compose.material3.CalendarModel
    public CalendarDate parse(String date, String pattern) {
        Intrinsics.checkNotNullParameter(date, "date");
        Intrinsics.checkNotNullParameter(pattern, "pattern");
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(pattern);
        TimeZone timeZone = utcTimeZone;
        simpleDateFormat.setTimeZone(timeZone);
        simpleDateFormat.setLenient(false);
        try {
            Date parse = simpleDateFormat.parse(date);
            if (parse == null) {
                return null;
            }
            Calendar calendar = Calendar.getInstance(timeZone);
            calendar.setTime(parse);
            return new CalendarDate(calendar.get(1), calendar.get(2) + 1, calendar.get(5), calendar.getTimeInMillis());
        } catch (ParseException unused) {
            return null;
        }
    }

    /* compiled from: LegacyCalendarModelImpl.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001e\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\rR\u0014\u0010\u0003\u001a\u00020\u0004X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u000e"}, d2 = {"Landroidx/compose/material3/LegacyCalendarModelImpl$Companion;", "", "()V", "utcTimeZone", "Ljava/util/TimeZone;", "getUtcTimeZone$material3_release", "()Ljava/util/TimeZone;", "formatWithPattern", "", "utcTimeMillis", "", "pattern", Device.JsonKeys.LOCALE, "Ljava/util/Locale;", "material3_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final String formatWithPattern(long utcTimeMillis, String pattern, Locale locale) {
            Intrinsics.checkNotNullParameter(pattern, "pattern");
            Intrinsics.checkNotNullParameter(locale, "locale");
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat(pattern, locale);
            simpleDateFormat.setTimeZone(getUtcTimeZone$material3_release());
            Calendar calendar = Calendar.getInstance(getUtcTimeZone$material3_release());
            calendar.setTimeInMillis(utcTimeMillis);
            String format = simpleDateFormat.format(Long.valueOf(calendar.getTimeInMillis()));
            Intrinsics.checkNotNullExpressionValue(format, "dateFormat.format(calendar.timeInMillis)");
            return format;
        }

        public final TimeZone getUtcTimeZone$material3_release() {
            return LegacyCalendarModelImpl.utcTimeZone;
        }
    }

    static {
        TimeZone timeZone = TimeZone.getTimeZone("UTC");
        Intrinsics.checkNotNullExpressionValue(timeZone, "getTimeZone(\"UTC\")");
        utcTimeZone = timeZone;
    }

    private final int dayInISO8601(int day) {
        int i = (day + 6) % 7;
        if (i == 0) {
            return 7;
        }
        return i;
    }

    private final CalendarMonth getMonth(Calendar firstDayCalendar) {
        int dayInISO8601 = dayInISO8601(firstDayCalendar.get(7)) - getFirstDayOfWeek();
        if (dayInISO8601 < 0) {
            dayInISO8601 += 7;
        }
        return new CalendarMonth(firstDayCalendar.get(1), firstDayCalendar.get(2) + 1, firstDayCalendar.getActualMaximum(5), dayInISO8601, firstDayCalendar.getTimeInMillis());
    }

    private final Calendar toCalendar(CalendarMonth calendarMonth) {
        Calendar calendar = Calendar.getInstance(utcTimeZone);
        calendar.setTimeInMillis(calendarMonth.getStartUtcTimeMillis());
        Intrinsics.checkNotNullExpressionValue(calendar, "calendar");
        return calendar;
    }

    private final Calendar toCalendar(CalendarDate calendarDate, TimeZone timeZone) {
        Calendar calendar = Calendar.getInstance(timeZone);
        calendar.clear();
        calendar.set(1, calendarDate.getYear());
        calendar.set(2, calendarDate.getMonth() - 1);
        calendar.set(5, calendarDate.getDayOfMonth());
        Intrinsics.checkNotNullExpressionValue(calendar, "calendar");
        return calendar;
    }
}
