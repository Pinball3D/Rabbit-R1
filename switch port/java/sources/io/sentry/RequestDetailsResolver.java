package io.sentry;

import io.sentry.util.Objects;
import java.net.URI;
import java.util.HashMap;

/* loaded from: classes3.dex */
final class RequestDetailsResolver {
    private static final String SENTRY_AUTH = "X-Sentry-Auth";
    private static final String USER_AGENT = "User-Agent";
    private final SentryOptions options;

    public RequestDetailsResolver(SentryOptions sentryOptions) {
        this.options = (SentryOptions) Objects.requireNonNull(sentryOptions, "options is required");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public RequestDetails resolve() {
        Dsn dsn = new Dsn(this.options.getDsn());
        URI sentryUri = dsn.getSentryUri();
        String uri = sentryUri.resolve(sentryUri.getPath() + "/envelope/").toString();
        String publicKey = dsn.getPublicKey();
        String secretKey = dsn.getSecretKey();
        String str = "Sentry sentry_version=7,sentry_client=" + this.options.getSentryClientName() + ",sentry_key=" + publicKey + ((secretKey == null || secretKey.length() <= 0) ? "" : ",sentry_secret=" + secretKey);
        String sentryClientName = this.options.getSentryClientName();
        HashMap hashMap = new HashMap();
        hashMap.put("User-Agent", sentryClientName);
        hashMap.put(SENTRY_AUTH, str);
        return new RequestDetails(uri, hashMap);
    }
}
