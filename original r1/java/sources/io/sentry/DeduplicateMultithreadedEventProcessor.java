package io.sentry;

import io.sentry.UncaughtExceptionHandlerIntegration;
import io.sentry.hints.EventDropReason;
import io.sentry.protocol.SentryException;
import io.sentry.util.HintUtils;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes3.dex */
public final class DeduplicateMultithreadedEventProcessor implements EventProcessor {
    private final SentryOptions options;
    private final Map<String, Long> processedEvents = Collections.synchronizedMap(new HashMap());

    public DeduplicateMultithreadedEventProcessor(SentryOptions sentryOptions) {
        this.options = sentryOptions;
    }

    @Override // io.sentry.EventProcessor
    public SentryEvent process(SentryEvent sentryEvent, Hint hint) {
        SentryException unhandledException;
        String type;
        Long threadId;
        if (!HintUtils.hasType(hint, UncaughtExceptionHandlerIntegration.UncaughtExceptionHint.class) || (unhandledException = sentryEvent.getUnhandledException()) == null || (type = unhandledException.getType()) == null || (threadId = unhandledException.getThreadId()) == null) {
            return sentryEvent;
        }
        Long l = this.processedEvents.get(type);
        if (l != null && !l.equals(threadId)) {
            this.options.getLogger().log(SentryLevel.INFO, "Event %s has been dropped due to multi-threaded deduplication", sentryEvent.getEventId());
            HintUtils.setEventDropReason(hint, EventDropReason.MULTITHREADED_DEDUPLICATION);
            return null;
        }
        this.processedEvents.put(type, threadId);
        return sentryEvent;
    }
}
