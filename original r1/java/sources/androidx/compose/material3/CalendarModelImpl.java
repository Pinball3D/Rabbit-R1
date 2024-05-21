package androidx.compose.material3;

import io.sentry.protocol.Device;
import java.time.DayOfWeek;
import java.time.Instant;
import java.time.LocalDate;
import java.time.LocalTime;
import java.time.ZoneId;
import java.time.ZoneOffset;
import java.time.chrono.Chronology;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeFormatterBuilder;
import java.time.format.DateTimeParseException;
import java.time.format.DecimalStyle;
import java.time.format.FormatStyle;
import java.time.format.TextStyle;
import java.time.temporal.WeekFields;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: CalendarModelImpl.android.kt */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\b\u0001\u0018\u0000 +2\u00020\u0001:\u0001+B\u0005¢\u0006\u0002\u0010\u0002J \u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0010\u0010\u0017\u001a\u00020\b2\u0006\u0010\u0018\u001a\u00020\u0013H\u0016J\u0010\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0010\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\bH\u0016J\u0010\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001c\u001a\u00020\bH\u0016J\u0010\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 H\u0002J\u0018\u0010\u001d\u001a\u00020\u001e2\u0006\u0010!\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020\u0004H\u0016J\u0010\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u0018\u001a\u00020\u0013H\u0016J\u0018\u0010#\u001a\u00020\u001e2\u0006\u0010$\u001a\u00020\u001e2\u0006\u0010%\u001a\u00020\u0004H\u0016J\u001a\u0010&\u001a\u0004\u0018\u00010\b2\u0006\u0010\u001c\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u000eH\u0016J\u0018\u0010'\u001a\u00020\u001e2\u0006\u0010$\u001a\u00020\u001e2\u0006\u0010(\u001a\u00020\u0004H\u0016J\b\u0010)\u001a\u00020\u000eH\u0016J\f\u0010*\u001a\u00020 *\u00020\bH\u0002J\f\u0010*\u001a\u00020 *\u00020\u001eH\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\nR&\u0010\u000b\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000e0\r0\fX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010¨\u0006,"}, d2 = {"Landroidx/compose/material3/CalendarModelImpl;", "Landroidx/compose/material3/CalendarModel;", "()V", "firstDayOfWeek", "", "getFirstDayOfWeek", "()I", "today", "Landroidx/compose/material3/CalendarDate;", "getToday", "()Landroidx/compose/material3/CalendarDate;", "weekdayNames", "", "Lkotlin/Pair;", "", "getWeekdayNames", "()Ljava/util/List;", "formatWithPattern", "utcTimeMillis", "", "pattern", Device.JsonKeys.LOCALE, "Ljava/util/Locale;", "getCanonicalDate", "timeInMillis", "getDateInputFormat", "Landroidx/compose/material3/DateInputFormat;", "getDayOfWeek", "date", "getMonth", "Landroidx/compose/material3/CalendarMonth;", "firstDayLocalDate", "Ljava/time/LocalDate;", "year", "month", "minusMonths", "from", "subtractedMonthsCount", "parse", "plusMonths", "addedMonthsCount", "toString", "toLocalDate", "Companion", "material3_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class CalendarModelImpl implements CalendarModel {

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final ZoneId utcTimeZoneId;
    private final int firstDayOfWeek = WeekFields.of(Locale.getDefault()).getFirstDayOfWeek().getValue();
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
        return "CalendarModel";
    }

    public CalendarModelImpl() {
        Locale locale = Locale.getDefault();
        DayOfWeek[] values = DayOfWeek.values();
        ArrayList arrayList = new ArrayList(values.length);
        for (DayOfWeek dayOfWeek : values) {
            arrayList.add(TuplesKt.to(dayOfWeek.getDisplayName(TextStyle.FULL, locale), dayOfWeek.getDisplayName(TextStyle.NARROW, locale)));
        }
        this.weekdayNames = arrayList;
    }

    /* JADX WARN: Type inference failed for: r7v3, types: [java.time.ZonedDateTime] */
    @Override // androidx.compose.material3.CalendarModel
    public CalendarDate getToday() {
        LocalDate now = LocalDate.now();
        return new CalendarDate(now.getYear(), now.getMonthValue(), now.getDayOfMonth(), now.atTime(LocalTime.MIDNIGHT).atZone(utcTimeZoneId).toInstant().toEpochMilli());
    }

    @Override // androidx.compose.material3.CalendarModel
    public DateInputFormat getDateInputFormat(Locale locale) {
        Intrinsics.checkNotNullParameter(locale, "locale");
        String localizedDateTimePattern = DateTimeFormatterBuilder.getLocalizedDateTimePattern(FormatStyle.SHORT, null, Chronology.ofLocale(locale), locale);
        Intrinsics.checkNotNullExpressionValue(localizedDateTimePattern, "getLocalizedDateTimePatt…= */ locale\n            )");
        return CalendarModelKt.datePatternAsInputFormat(localizedDateTimePattern);
    }

    @Override // androidx.compose.material3.CalendarModel
    public CalendarDate getCanonicalDate(long timeInMillis) {
        LocalDate localDate = Instant.ofEpochMilli(timeInMillis).atZone(utcTimeZoneId).toLocalDate();
        return new CalendarDate(localDate.getYear(), localDate.getMonthValue(), localDate.getDayOfMonth(), localDate.atStartOfDay().toEpochSecond(ZoneOffset.UTC) * 1000);
    }

    @Override // androidx.compose.material3.CalendarModel
    public CalendarMonth getMonth(long timeInMillis) {
        LocalDate localDate = Instant.ofEpochMilli(timeInMillis).atZone(utcTimeZoneId).withDayOfMonth(1).toLocalDate();
        Intrinsics.checkNotNullExpressionValue(localDate, "ofEpochMilli(timeInMilli…           .toLocalDate()");
        return getMonth(localDate);
    }

    @Override // androidx.compose.material3.CalendarModel
    public CalendarMonth getMonth(CalendarDate date) {
        Intrinsics.checkNotNullParameter(date, "date");
        LocalDate of = LocalDate.of(date.getYear(), date.getMonth(), 1);
        Intrinsics.checkNotNullExpressionValue(of, "of(date.year, date.month, 1)");
        return getMonth(of);
    }

    @Override // androidx.compose.material3.CalendarModel
    public CalendarMonth getMonth(int year, int month) {
        LocalDate of = LocalDate.of(year, month, 1);
        Intrinsics.checkNotNullExpressionValue(of, "of(year, month, 1)");
        return getMonth(of);
    }

    @Override // androidx.compose.material3.CalendarModel
    public int getDayOfWeek(CalendarDate date) {
        Intrinsics.checkNotNullParameter(date, "date");
        return toLocalDate(date).getDayOfWeek().getValue();
    }

    @Override // androidx.compose.material3.CalendarModel
    public CalendarMonth plusMonths(CalendarMonth from, int addedMonthsCount) {
        Intrinsics.checkNotNullParameter(from, "from");
        if (addedMonthsCount <= 0) {
            return from;
        }
        LocalDate laterMonth = toLocalDate(from).plusMonths(addedMonthsCount);
        Intrinsics.checkNotNullExpressionValue(laterMonth, "laterMonth");
        return getMonth(laterMonth);
    }

    @Override // androidx.compose.material3.CalendarModel
    public CalendarMonth minusMonths(CalendarMonth from, int subtractedMonthsCount) {
        Intrinsics.checkNotNullParameter(from, "from");
        if (subtractedMonthsCount <= 0) {
            return from;
        }
        LocalDate earlierMonth = toLocalDate(from).minusMonths(subtractedMonthsCount);
        Intrinsics.checkNotNullExpressionValue(earlierMonth, "earlierMonth");
        return getMonth(earlierMonth);
    }

    @Override // androidx.compose.material3.CalendarModel
    public String formatWithPattern(long utcTimeMillis, String pattern, Locale locale) {
        Intrinsics.checkNotNullParameter(pattern, "pattern");
        Intrinsics.checkNotNullParameter(locale, "locale");
        return INSTANCE.formatWithPattern(utcTimeMillis, pattern, locale);
    }

    /* JADX WARN: Type inference failed for: r6v6, types: [java.time.ZonedDateTime] */
    @Override // androidx.compose.material3.CalendarModel
    public CalendarDate parse(String date, String pattern) {
        Intrinsics.checkNotNullParameter(date, "date");
        Intrinsics.checkNotNullParameter(pattern, "pattern");
        try {
            LocalDate parse = LocalDate.parse(date, DateTimeFormatter.ofPattern(pattern));
            return new CalendarDate(parse.getYear(), parse.getMonth().getValue(), parse.getDayOfMonth(), parse.atTime(LocalTime.MIDNIGHT).atZone(utcTimeZoneId).toInstant().toEpochMilli());
        } catch (DateTimeParseException unused) {
            return null;
        }
    }

    /* compiled from: CalendarModelImpl.android.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001e\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\rR\u0014\u0010\u0003\u001a\u00020\u0004X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u000e"}, d2 = {"Landroidx/compose/material3/CalendarModelImpl$Companion;", "", "()V", "utcTimeZoneId", "Ljava/time/ZoneId;", "getUtcTimeZoneId$material3_release", "()Ljava/time/ZoneId;", "formatWithPattern", "", "utcTimeMillis", "", "pattern", Device.JsonKeys.LOCALE, "Ljava/util/Locale;", "material3_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
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
            DateTimeFormatter withDecimalStyle = DateTimeFormatter.ofPattern(pattern, locale).withDecimalStyle(DecimalStyle.of(locale));
            Intrinsics.checkNotNullExpressionValue(withDecimalStyle, "ofPattern(pattern, local…(DecimalStyle.of(locale))");
            String format = Instant.ofEpochMilli(utcTimeMillis).atZone(getUtcTimeZoneId$material3_release()).toLocalDate().format(withDecimalStyle);
            Intrinsics.checkNotNullExpressionValue(format, "ofEpochMilli(utcTimeMill…       .format(formatter)");
            return format;
        }

        public final ZoneId getUtcTimeZoneId$material3_release() {
            return CalendarModelImpl.utcTimeZoneId;
        }
    }

    static {
        ZoneId of = ZoneId.of("UTC");
        Intrinsics.checkNotNullExpressionValue(of, "of(\"UTC\")");
        utcTimeZoneId = of;
    }

    /* JADX WARN: Type inference failed for: r8v4, types: [java.time.ZonedDateTime] */
    private final CalendarMonth getMonth(LocalDate firstDayLocalDate) {
        int value = firstDayLocalDate.getDayOfWeek().getValue() - getFirstDayOfWeek();
        if (value < 0) {
            value += 7;
        }
        return new CalendarMonth(firstDayLocalDate.getYear(), firstDayLocalDate.getMonthValue(), firstDayLocalDate.lengthOfMonth(), value, firstDayLocalDate.atTime(LocalTime.MIDNIGHT).atZone(utcTimeZoneId).toInstant().toEpochMilli());
    }

    private final LocalDate toLocalDate(CalendarMonth calendarMonth) {
        LocalDate localDate = Instant.ofEpochMilli(calendarMonth.getStartUtcTimeMillis()).atZone(utcTimeZoneId).toLocalDate();
        Intrinsics.checkNotNullExpressionValue(localDate, "ofEpochMilli(startUtcTim…TimeZoneId).toLocalDate()");
        return localDate;
    }

    private final LocalDate toLocalDate(CalendarDate calendarDate) {
        LocalDate of = LocalDate.of(calendarDate.getYear(), calendarDate.getMonth(), calendarDate.getDayOfMonth());
        Intrinsics.checkNotNullExpressionValue(of, "of(\n            this.yea…this.dayOfMonth\n        )");
        return of;
    }
}
