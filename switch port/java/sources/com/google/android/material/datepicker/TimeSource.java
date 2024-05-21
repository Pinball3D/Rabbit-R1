package com.google.android.material.datepicker;

import java.util.Calendar;
import java.util.TimeZone;

/* loaded from: classes2.dex */
class TimeSource {
    private static final TimeSource SYSTEM_TIME_SOURCE = new TimeSource(null, null);
    private final Long fixedTimeMs;
    private final TimeZone fixedTimeZone;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static TimeSource system() {
        return SYSTEM_TIME_SOURCE;
    }

    private TimeSource(Long l, TimeZone timeZone) {
        this.fixedTimeMs = l;
        this.fixedTimeZone = timeZone;
    }

    static TimeSource fixed(long j, TimeZone timeZone) {
        return new TimeSource(Long.valueOf(j), timeZone);
    }

    static TimeSource fixed(long j) {
        return new TimeSource(Long.valueOf(j), null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Calendar now() {
        return now(this.fixedTimeZone);
    }

    Calendar now(TimeZone timeZone) {
        Calendar calendar = timeZone == null ? Calendar.getInstance() : Calendar.getInstance(timeZone);
        Long l = this.fixedTimeMs;
        if (l != null) {
            calendar.setTimeInMillis(l.longValue());
        }
        return calendar;
    }
}
