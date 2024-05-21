.class public interface abstract Lio/sentry/clientreport/IClientReportRecorder;
.super Ljava/lang/Object;
.source "IClientReportRecorder.java"


# virtual methods
.method public abstract attachReportToEnvelope(Lio/sentry/SentryEnvelope;)Lio/sentry/SentryEnvelope;
.end method

.method public abstract recordLostEnvelope(Lio/sentry/clientreport/DiscardReason;Lio/sentry/SentryEnvelope;)V
.end method

.method public abstract recordLostEnvelopeItem(Lio/sentry/clientreport/DiscardReason;Lio/sentry/SentryEnvelopeItem;)V
.end method

.method public abstract recordLostEvent(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;)V
.end method
