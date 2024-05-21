package io.sentry;

import io.sentry.exception.SentryEnvelopeException;
import io.sentry.protocol.SdkVersion;
import io.sentry.protocol.SentryId;
import io.sentry.util.Objects;
import java.io.IOException;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public final class SentryEnvelope {
    private final SentryEnvelopeHeader header;
    private final Iterable<SentryEnvelopeItem> items;

    public SentryEnvelopeHeader getHeader() {
        return this.header;
    }

    public Iterable<SentryEnvelopeItem> getItems() {
        return this.items;
    }

    public SentryEnvelope(SentryEnvelopeHeader sentryEnvelopeHeader, Iterable<SentryEnvelopeItem> iterable) {
        this.header = (SentryEnvelopeHeader) Objects.requireNonNull(sentryEnvelopeHeader, "SentryEnvelopeHeader is required.");
        this.items = (Iterable) Objects.requireNonNull(iterable, "SentryEnvelope items are required.");
    }

    public SentryEnvelope(SentryId sentryId, SdkVersion sdkVersion, Iterable<SentryEnvelopeItem> iterable) {
        this.header = new SentryEnvelopeHeader(sentryId, sdkVersion);
        this.items = (Iterable) Objects.requireNonNull(iterable, "SentryEnvelope items are required.");
    }

    public SentryEnvelope(SentryId sentryId, SdkVersion sdkVersion, SentryEnvelopeItem sentryEnvelopeItem) {
        Objects.requireNonNull(sentryEnvelopeItem, "SentryEnvelopeItem is required.");
        this.header = new SentryEnvelopeHeader(sentryId, sdkVersion);
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(sentryEnvelopeItem);
        this.items = arrayList;
    }

    public static SentryEnvelope from(ISerializer iSerializer, Session session, SdkVersion sdkVersion) throws IOException {
        Objects.requireNonNull(iSerializer, "Serializer is required.");
        Objects.requireNonNull(session, "session is required.");
        return new SentryEnvelope((SentryId) null, sdkVersion, SentryEnvelopeItem.fromSession(iSerializer, session));
    }

    public static SentryEnvelope from(ISerializer iSerializer, SentryBaseEvent sentryBaseEvent, SdkVersion sdkVersion) throws IOException {
        Objects.requireNonNull(iSerializer, "Serializer is required.");
        Objects.requireNonNull(sentryBaseEvent, "item is required.");
        return new SentryEnvelope(sentryBaseEvent.getEventId(), sdkVersion, SentryEnvelopeItem.fromEvent(iSerializer, sentryBaseEvent));
    }

    public static SentryEnvelope from(ISerializer iSerializer, ProfilingTraceData profilingTraceData, long j, SdkVersion sdkVersion) throws SentryEnvelopeException {
        Objects.requireNonNull(iSerializer, "Serializer is required.");
        Objects.requireNonNull(profilingTraceData, "Profiling trace data is required.");
        return new SentryEnvelope(new SentryId(profilingTraceData.getProfileId()), sdkVersion, SentryEnvelopeItem.fromProfilingTrace(profilingTraceData, j, iSerializer));
    }
}
