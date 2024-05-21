package io.sentry;

import io.sentry.hints.AbnormalExit;
import io.sentry.hints.Cached;
import io.sentry.protocol.DebugImage;
import io.sentry.protocol.DebugMeta;
import io.sentry.protocol.SentryException;
import io.sentry.protocol.SentryTransaction;
import io.sentry.protocol.User;
import io.sentry.util.HintUtils;
import io.sentry.util.Objects;
import java.io.Closeable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public final class MainEventProcessor implements EventProcessor, Closeable {
    private volatile HostnameCache hostnameCache = null;
    private final SentryOptions options;
    private final SentryExceptionFactory sentryExceptionFactory;
    private final SentryThreadFactory sentryThreadFactory;

    HostnameCache getHostnameCache() {
        return this.hostnameCache;
    }

    public MainEventProcessor(SentryOptions sentryOptions) {
        SentryOptions sentryOptions2 = (SentryOptions) Objects.requireNonNull(sentryOptions, "The SentryOptions is required.");
        this.options = sentryOptions2;
        SentryStackTraceFactory sentryStackTraceFactory = new SentryStackTraceFactory(sentryOptions2);
        this.sentryExceptionFactory = new SentryExceptionFactory(sentryStackTraceFactory);
        this.sentryThreadFactory = new SentryThreadFactory(sentryStackTraceFactory, sentryOptions2);
    }

    MainEventProcessor(SentryOptions sentryOptions, SentryThreadFactory sentryThreadFactory, SentryExceptionFactory sentryExceptionFactory) {
        this.options = (SentryOptions) Objects.requireNonNull(sentryOptions, "The SentryOptions is required.");
        this.sentryThreadFactory = (SentryThreadFactory) Objects.requireNonNull(sentryThreadFactory, "The SentryThreadFactory is required.");
        this.sentryExceptionFactory = (SentryExceptionFactory) Objects.requireNonNull(sentryExceptionFactory, "The SentryExceptionFactory is required.");
    }

    @Override // io.sentry.EventProcessor
    public SentryEvent process(SentryEvent sentryEvent, Hint hint) {
        setCommons(sentryEvent);
        setExceptions(sentryEvent);
        setDebugMeta(sentryEvent);
        setModules(sentryEvent);
        if (shouldApplyScopeData(sentryEvent, hint)) {
            processNonCachedEvent(sentryEvent);
            setThreads(sentryEvent, hint);
        }
        return sentryEvent;
    }

    private void setDebugMeta(SentryBaseEvent sentryBaseEvent) {
        ArrayList arrayList = new ArrayList();
        if (this.options.getProguardUuid() != null) {
            DebugImage debugImage = new DebugImage();
            debugImage.setType(DebugImage.PROGUARD);
            debugImage.setUuid(this.options.getProguardUuid());
            arrayList.add(debugImage);
        }
        for (String str : this.options.getBundleIds()) {
            DebugImage debugImage2 = new DebugImage();
            debugImage2.setType(DebugImage.JVM);
            debugImage2.setDebugId(str);
            arrayList.add(debugImage2);
        }
        if (arrayList.isEmpty()) {
            return;
        }
        DebugMeta debugMeta = sentryBaseEvent.getDebugMeta();
        if (debugMeta == null) {
            debugMeta = new DebugMeta();
        }
        if (debugMeta.getImages() == null) {
            debugMeta.setImages(arrayList);
        } else {
            debugMeta.getImages().addAll(arrayList);
        }
        sentryBaseEvent.setDebugMeta(debugMeta);
    }

    private void setModules(SentryEvent sentryEvent) {
        Map<String, String> orLoadModules = this.options.getModulesLoader().getOrLoadModules();
        if (orLoadModules == null) {
            return;
        }
        Map<String, String> modules = sentryEvent.getModules();
        if (modules == null) {
            sentryEvent.setModules(orLoadModules);
        } else {
            modules.putAll(orLoadModules);
        }
    }

    private boolean shouldApplyScopeData(SentryBaseEvent sentryBaseEvent, Hint hint) {
        if (HintUtils.shouldApplyScopeData(hint)) {
            return true;
        }
        this.options.getLogger().log(SentryLevel.DEBUG, "Event was cached so not applying data relevant to the current app execution/version: %s", sentryBaseEvent.getEventId());
        return false;
    }

    private void processNonCachedEvent(SentryBaseEvent sentryBaseEvent) {
        setRelease(sentryBaseEvent);
        setEnvironment(sentryBaseEvent);
        setServerName(sentryBaseEvent);
        setDist(sentryBaseEvent);
        setSdk(sentryBaseEvent);
        setTags(sentryBaseEvent);
        mergeUser(sentryBaseEvent);
    }

    @Override // io.sentry.EventProcessor
    public SentryTransaction process(SentryTransaction sentryTransaction, Hint hint) {
        setCommons(sentryTransaction);
        setDebugMeta(sentryTransaction);
        if (shouldApplyScopeData(sentryTransaction, hint)) {
            processNonCachedEvent(sentryTransaction);
        }
        return sentryTransaction;
    }

    private void setCommons(SentryBaseEvent sentryBaseEvent) {
        setPlatform(sentryBaseEvent);
    }

    private void setPlatform(SentryBaseEvent sentryBaseEvent) {
        if (sentryBaseEvent.getPlatform() == null) {
            sentryBaseEvent.setPlatform(SentryBaseEvent.DEFAULT_PLATFORM);
        }
    }

    private void setRelease(SentryBaseEvent sentryBaseEvent) {
        if (sentryBaseEvent.getRelease() == null) {
            sentryBaseEvent.setRelease(this.options.getRelease());
        }
    }

    private void setEnvironment(SentryBaseEvent sentryBaseEvent) {
        if (sentryBaseEvent.getEnvironment() == null) {
            sentryBaseEvent.setEnvironment(this.options.getEnvironment());
        }
    }

    private void setServerName(SentryBaseEvent sentryBaseEvent) {
        if (sentryBaseEvent.getServerName() == null) {
            sentryBaseEvent.setServerName(this.options.getServerName());
        }
        if (this.options.isAttachServerName() && sentryBaseEvent.getServerName() == null) {
            ensureHostnameCache();
            if (this.hostnameCache != null) {
                sentryBaseEvent.setServerName(this.hostnameCache.getHostname());
            }
        }
    }

    private void ensureHostnameCache() {
        if (this.hostnameCache == null) {
            synchronized (this) {
                if (this.hostnameCache == null) {
                    this.hostnameCache = HostnameCache.getInstance();
                }
            }
        }
    }

    private void setDist(SentryBaseEvent sentryBaseEvent) {
        if (sentryBaseEvent.getDist() == null) {
            sentryBaseEvent.setDist(this.options.getDist());
        }
    }

    private void setSdk(SentryBaseEvent sentryBaseEvent) {
        if (sentryBaseEvent.getSdk() == null) {
            sentryBaseEvent.setSdk(this.options.getSdkVersion());
        }
    }

    private void setTags(SentryBaseEvent sentryBaseEvent) {
        if (sentryBaseEvent.getTags() == null) {
            sentryBaseEvent.setTags(new HashMap(this.options.getTags()));
            return;
        }
        for (Map.Entry<String, String> entry : this.options.getTags().entrySet()) {
            if (!sentryBaseEvent.getTags().containsKey(entry.getKey())) {
                sentryBaseEvent.setTag(entry.getKey(), entry.getValue());
            }
        }
    }

    private void mergeUser(SentryBaseEvent sentryBaseEvent) {
        User user = sentryBaseEvent.getUser();
        if (user == null) {
            user = new User();
            sentryBaseEvent.setUser(user);
        }
        if (user.getIpAddress() == null) {
            user.setIpAddress(IpAddressUtils.DEFAULT_IP_ADDRESS);
        }
    }

    private void setExceptions(SentryEvent sentryEvent) {
        Throwable throwableMechanism = sentryEvent.getThrowableMechanism();
        if (throwableMechanism != null) {
            sentryEvent.setExceptions(this.sentryExceptionFactory.getSentryExceptions(throwableMechanism));
        }
    }

    private void setThreads(SentryEvent sentryEvent, Hint hint) {
        if (sentryEvent.getThreads() == null) {
            List<SentryException> exceptions = sentryEvent.getExceptions();
            ArrayList arrayList = null;
            if (exceptions != null && !exceptions.isEmpty()) {
                for (SentryException sentryException : exceptions) {
                    if (sentryException.getMechanism() != null && sentryException.getThreadId() != null) {
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                        }
                        arrayList.add(sentryException.getThreadId());
                    }
                }
            }
            if (this.options.isAttachThreads() || HintUtils.hasType(hint, AbnormalExit.class)) {
                Object sentrySdkHint = HintUtils.getSentrySdkHint(hint);
                sentryEvent.setThreads(this.sentryThreadFactory.getCurrentThreads(arrayList, sentrySdkHint instanceof AbnormalExit ? ((AbnormalExit) sentrySdkHint).ignoreCurrentThread() : false));
            } else if (this.options.isAttachStacktrace()) {
                if ((exceptions == null || exceptions.isEmpty()) && !isCachedHint(hint)) {
                    sentryEvent.setThreads(this.sentryThreadFactory.getCurrentThread());
                }
            }
        }
    }

    private boolean isCachedHint(Hint hint) {
        return HintUtils.hasType(hint, Cached.class);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.hostnameCache != null) {
            this.hostnameCache.close();
        }
    }

    boolean isClosed() {
        if (this.hostnameCache != null) {
            return this.hostnameCache.isClosed();
        }
        return true;
    }
}
