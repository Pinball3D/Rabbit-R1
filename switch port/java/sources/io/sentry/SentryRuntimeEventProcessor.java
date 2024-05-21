package io.sentry;

import io.sentry.protocol.SentryRuntime;
import io.sentry.protocol.SentryTransaction;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class SentryRuntimeEventProcessor implements EventProcessor {
    private final String javaVendor;
    private final String javaVersion;

    public SentryRuntimeEventProcessor(String str, String str2) {
        this.javaVersion = str;
        this.javaVendor = str2;
    }

    public SentryRuntimeEventProcessor() {
        this(System.getProperty("java.version"), System.getProperty("java.vendor"));
    }

    @Override // io.sentry.EventProcessor
    public SentryEvent process(SentryEvent sentryEvent, Hint hint) {
        return (SentryEvent) process(sentryEvent);
    }

    @Override // io.sentry.EventProcessor
    public SentryTransaction process(SentryTransaction sentryTransaction, Hint hint) {
        return (SentryTransaction) process(sentryTransaction);
    }

    private <T extends SentryBaseEvent> T process(T t) {
        if (t.getContexts().getRuntime() == null) {
            t.getContexts().setRuntime(new SentryRuntime());
        }
        SentryRuntime runtime = t.getContexts().getRuntime();
        if (runtime != null && runtime.getName() == null && runtime.getVersion() == null) {
            runtime.setName(this.javaVendor);
            runtime.setVersion(this.javaVersion);
        }
        return t;
    }
}
