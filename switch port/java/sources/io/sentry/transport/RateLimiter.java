package io.sentry.transport;

import androidx.core.app.NotificationCompat;
import io.sentry.DataCategory;
import io.sentry.Hint;
import io.sentry.SentryEnvelope;
import io.sentry.SentryEnvelopeItem;
import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import io.sentry.cache.EnvelopeCache;
import io.sentry.clientreport.DiscardReason;
import io.sentry.hints.Retryable;
import io.sentry.hints.SubmissionResult;
import io.sentry.util.HintUtils;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes3.dex */
public final class RateLimiter {
    private static final int HTTP_RETRY_AFTER_DEFAULT_DELAY_MILLIS = 60000;
    private final ICurrentDateProvider currentDateProvider;
    private final SentryOptions options;
    private final Map<DataCategory, Date> sentryRetryAfterLimit;

    public RateLimiter(ICurrentDateProvider iCurrentDateProvider, SentryOptions sentryOptions) {
        this.sentryRetryAfterLimit = new ConcurrentHashMap();
        this.currentDateProvider = iCurrentDateProvider;
        this.options = sentryOptions;
    }

    public RateLimiter(SentryOptions sentryOptions) {
        this(CurrentDateProvider.getInstance(), sentryOptions);
    }

    public SentryEnvelope filter(SentryEnvelope sentryEnvelope, Hint hint) {
        ArrayList arrayList = null;
        for (SentryEnvelopeItem sentryEnvelopeItem : sentryEnvelope.getItems()) {
            if (isRetryAfter(sentryEnvelopeItem.getHeader().getType().getItemType())) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(sentryEnvelopeItem);
                this.options.getClientReportRecorder().recordLostEnvelopeItem(DiscardReason.RATELIMIT_BACKOFF, sentryEnvelopeItem);
            }
        }
        if (arrayList == null) {
            return sentryEnvelope;
        }
        this.options.getLogger().log(SentryLevel.INFO, "%d items will be dropped due rate limiting.", Integer.valueOf(arrayList.size()));
        ArrayList arrayList2 = new ArrayList();
        for (SentryEnvelopeItem sentryEnvelopeItem2 : sentryEnvelope.getItems()) {
            if (!arrayList.contains(sentryEnvelopeItem2)) {
                arrayList2.add(sentryEnvelopeItem2);
            }
        }
        if (arrayList2.isEmpty()) {
            this.options.getLogger().log(SentryLevel.INFO, "Envelope discarded due all items rate limited.", new Object[0]);
            markHintWhenSendingFailed(hint, false);
            return null;
        }
        return new SentryEnvelope(sentryEnvelope.getHeader(), arrayList2);
    }

    public boolean isActiveForCategory(DataCategory dataCategory) {
        Date date;
        Date date2 = new Date(this.currentDateProvider.getCurrentTimeMillis());
        Date date3 = this.sentryRetryAfterLimit.get(DataCategory.All);
        if (date3 != null && !date2.after(date3)) {
            return true;
        }
        if (DataCategory.Unknown.equals(dataCategory) || (date = this.sentryRetryAfterLimit.get(dataCategory)) == null) {
            return false;
        }
        return !date2.after(date);
    }

    public boolean isAnyRateLimitActive() {
        Date date = new Date(this.currentDateProvider.getCurrentTimeMillis());
        Iterator<DataCategory> it = this.sentryRetryAfterLimit.keySet().iterator();
        while (it.hasNext()) {
            Date date2 = this.sentryRetryAfterLimit.get(it.next());
            if (date2 != null && !date.after(date2)) {
                return true;
            }
        }
        return false;
    }

    private static void markHintWhenSendingFailed(Hint hint, final boolean z) {
        HintUtils.runIfHasType(hint, SubmissionResult.class, new HintUtils.SentryConsumer() { // from class: io.sentry.transport.RateLimiter$$ExternalSyntheticLambda0
            @Override // io.sentry.util.HintUtils.SentryConsumer
            public final void accept(Object obj) {
                ((SubmissionResult) obj).setResult(false);
            }
        });
        HintUtils.runIfHasType(hint, Retryable.class, new HintUtils.SentryConsumer() { // from class: io.sentry.transport.RateLimiter$$ExternalSyntheticLambda1
            @Override // io.sentry.util.HintUtils.SentryConsumer
            public final void accept(Object obj) {
                ((Retryable) obj).setRetry(z);
            }
        });
    }

    private boolean isRetryAfter(String str) {
        return isActiveForCategory(getCategoryFromItemType(str));
    }

    private DataCategory getCategoryFromItemType(String str) {
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case -1963501277:
                if (str.equals("attachment")) {
                    c = 0;
                    break;
                }
                break;
            case -892481627:
                if (str.equals("statsd")) {
                    c = 1;
                    break;
                }
                break;
            case -309425751:
                if (str.equals("profile")) {
                    c = 2;
                    break;
                }
                break;
            case 96891546:
                if (str.equals(NotificationCompat.CATEGORY_EVENT)) {
                    c = 3;
                    break;
                }
                break;
            case 1536888764:
                if (str.equals("check_in")) {
                    c = 4;
                    break;
                }
                break;
            case 1984987798:
                if (str.equals(EnvelopeCache.PREFIX_CURRENT_SESSION_FILE)) {
                    c = 5;
                    break;
                }
                break;
            case 2141246174:
                if (str.equals("transaction")) {
                    c = 6;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return DataCategory.Attachment;
            case 1:
                return DataCategory.MetricBucket;
            case 2:
                return DataCategory.Profile;
            case 3:
                return DataCategory.Error;
            case 4:
                return DataCategory.Monitor;
            case 5:
                return DataCategory.Session;
            case 6:
                return DataCategory.Transaction;
            default:
                return DataCategory.Unknown;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x009d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void updateRetryAfterLimits(java.lang.String r17, java.lang.String r18, int r19) {
        /*
            Method dump skipped, instructions count: 251
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.sentry.transport.RateLimiter.updateRetryAfterLimits(java.lang.String, java.lang.String, int):void");
    }

    private void applyRetryAfterOnlyIfLonger(DataCategory dataCategory, Date date) {
        Date date2 = this.sentryRetryAfterLimit.get(dataCategory);
        if (date2 == null || date.after(date2)) {
            this.sentryRetryAfterLimit.put(dataCategory, date);
        }
    }

    private long parseRetryAfterOrDefault(String str) {
        if (str != null) {
            try {
                return (long) (Double.parseDouble(str) * 1000.0d);
            } catch (NumberFormatException unused) {
            }
        }
        return 60000L;
    }
}
