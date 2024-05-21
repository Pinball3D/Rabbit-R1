package io.sentry.clientreport;

import io.sentry.DataCategory;
import io.sentry.SentryEnvelope;
import io.sentry.SentryEnvelopeItem;

/* loaded from: classes3.dex */
public interface IClientReportRecorder {
    SentryEnvelope attachReportToEnvelope(SentryEnvelope sentryEnvelope);

    void recordLostEnvelope(DiscardReason discardReason, SentryEnvelope sentryEnvelope);

    void recordLostEnvelopeItem(DiscardReason discardReason, SentryEnvelopeItem sentryEnvelopeItem);

    void recordLostEvent(DiscardReason discardReason, DataCategory dataCategory);
}
