package io.sentry;

import io.sentry.vendor.gson.internal.bind.util.ISO8601Utils;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.text.ParseException;
import java.text.ParsePosition;
import java.util.Calendar;
import java.util.Date;

/* loaded from: classes3.dex */
public final class DateUtils {
    public static long millisToNanos(long j) {
        return j * 1000000;
    }

    public static double millisToSeconds(double d) {
        return d / 1000.0d;
    }

    public static double nanosToMillis(double d) {
        return d / 1000000.0d;
    }

    public static long secondsToNanos(long j) {
        return j * 1000000000;
    }

    private DateUtils() {
    }

    public static Date getCurrentDateTime() {
        return Calendar.getInstance(ISO8601Utils.TIMEZONE_UTC).getTime();
    }

    public static Date getDateTime(String str) throws IllegalArgumentException {
        try {
            return ISO8601Utils.parse(str, new ParsePosition(0));
        } catch (ParseException unused) {
            throw new IllegalArgumentException("timestamp is not ISO format " + str);
        }
    }

    public static Date getDateTimeWithMillisPrecision(String str) throws IllegalArgumentException {
        try {
            return getDateTime(new BigDecimal(str).setScale(3, RoundingMode.DOWN).movePointRight(3).longValue());
        } catch (NumberFormatException unused) {
            throw new IllegalArgumentException("timestamp is not millis format " + str);
        }
    }

    public static String getTimestamp(Date date) {
        return ISO8601Utils.format(date, true);
    }

    public static Date getDateTime(long j) {
        Calendar calendar = Calendar.getInstance(ISO8601Utils.TIMEZONE_UTC);
        calendar.setTimeInMillis(j);
        return calendar.getTime();
    }

    public static Date nanosToDate(long j) {
        return getDateTime(Double.valueOf(nanosToMillis(Double.valueOf(j).doubleValue())).longValue());
    }

    public static Date toUtilDate(SentryDate sentryDate) {
        if (sentryDate == null) {
            return null;
        }
        return toUtilDateNotNull(sentryDate);
    }

    public static Date toUtilDateNotNull(SentryDate sentryDate) {
        return nanosToDate(sentryDate.nanoTimestamp());
    }

    public static double nanosToSeconds(long j) {
        return Double.valueOf(j).doubleValue() / 1.0E9d;
    }

    public static double dateToSeconds(Date date) {
        return millisToSeconds(date.getTime());
    }

    public static long dateToNanos(Date date) {
        return millisToNanos(date.getTime());
    }
}
