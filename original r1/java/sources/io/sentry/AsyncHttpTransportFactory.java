package io.sentry;

import io.sentry.transport.AsyncHttpTransport;
import io.sentry.transport.ITransport;
import io.sentry.transport.RateLimiter;
import io.sentry.util.Objects;

/* loaded from: classes3.dex */
public final class AsyncHttpTransportFactory implements ITransportFactory {
    @Override // io.sentry.ITransportFactory
    public ITransport create(SentryOptions sentryOptions, RequestDetails requestDetails) {
        Objects.requireNonNull(sentryOptions, "options is required");
        Objects.requireNonNull(requestDetails, "requestDetails is required");
        return new AsyncHttpTransport(sentryOptions, new RateLimiter(sentryOptions), sentryOptions.getTransportGate(), requestDetails);
    }
}
