package io.sentry.clientreport;

import io.sentry.DataCategory;
import io.sentry.SentryEnvelope;
import io.sentry.SentryEnvelopeItem;

/* loaded from: classes3.dex */
public final class NoOpClientReportRecorder implements IClientReportRecorder {
    @Override // io.sentry.clientreport.IClientReportRecorder
    public SentryEnvelope attachReportToEnvelope(SentryEnvelope sentryEnvelope) {
        return sentryEnvelope;
    }

    @Override // io.sentry.clientreport.IClientReportRecorder
    public void recordLostEnvelope(DiscardReason discardReason, SentryEnvelope sentryEnvelope) {
    }

    @Override // io.sentry.clientreport.IClientReportRecorder
    public void recordLostEnvelopeItem(DiscardReason discardReason, SentryEnvelopeItem sentryEnvelopeItem) {
    }

    @Override // io.sentry.clientreport.IClientReportRecorder
    public void recordLostEvent(DiscardReason discardReason, DataCategory dataCategory) {
    }
}
