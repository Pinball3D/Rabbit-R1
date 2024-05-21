package io.sentry;

import java.util.Date;

/* loaded from: classes3.dex */
public final class SentryNanotimeDate extends SentryDate {
    private final Date date;
    private final long nanos;

    public SentryNanotimeDate() {
        this(DateUtils.getCurrentDateTime(), System.nanoTime());
    }

    public SentryNanotimeDate(Date date, long j) {
        this.date = date;
        this.nanos = j;
    }

    @Override // io.sentry.SentryDate
    public long diff(SentryDate sentryDate) {
        if (sentryDate instanceof SentryNanotimeDate) {
            return this.nanos - ((SentryNanotimeDate) sentryDate).nanos;
        }
        return super.diff(sentryDate);
    }

    @Override // io.sentry.SentryDate
    public long nanoTimestamp() {
        return DateUtils.dateToNanos(this.date);
    }

    @Override // io.sentry.SentryDate
    public long laterDateNanosTimestampByDiff(SentryDate sentryDate) {
        if (sentryDate != null && (sentryDate instanceof SentryNanotimeDate)) {
            SentryNanotimeDate sentryNanotimeDate = (SentryNanotimeDate) sentryDate;
            if (compareTo(sentryDate) < 0) {
                return nanotimeDiff(this, sentryNanotimeDate);
            }
            return nanotimeDiff(sentryNanotimeDate, this);
        }
        return super.laterDateNanosTimestampByDiff(sentryDate);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // io.sentry.SentryDate, java.lang.Comparable
    public int compareTo(SentryDate sentryDate) {
        if (sentryDate instanceof SentryNanotimeDate) {
            SentryNanotimeDate sentryNanotimeDate = (SentryNanotimeDate) sentryDate;
            long time = this.date.getTime();
            long time2 = sentryNanotimeDate.date.getTime();
            if (time == time2) {
                return Long.valueOf(this.nanos).compareTo(Long.valueOf(sentryNanotimeDate.nanos));
            }
            return Long.valueOf(time).compareTo(Long.valueOf(time2));
        }
        return super.compareTo(sentryDate);
    }

    private long nanotimeDiff(SentryNanotimeDate sentryNanotimeDate, SentryNanotimeDate sentryNanotimeDate2) {
        return sentryNanotimeDate.nanoTimestamp() + (sentryNanotimeDate2.nanos - sentryNanotimeDate.nanos);
    }
}
