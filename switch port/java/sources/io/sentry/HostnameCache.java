package io.sentry;

import io.sentry.util.Objects;
import java.net.InetAddress;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class HostnameCache {
    private static HostnameCache INSTANCE;
    private final long cacheDuration;
    private final ExecutorService executorService;
    private volatile long expirationTimestamp;
    private final Callable<InetAddress> getLocalhost;
    private volatile String hostname;
    private final AtomicBoolean updateRunning;
    private static final long HOSTNAME_CACHE_DURATION = TimeUnit.HOURS.toMillis(5);
    private static final long GET_HOSTNAME_TIMEOUT = TimeUnit.SECONDS.toMillis(1);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static HostnameCache getInstance() {
        if (INSTANCE == null) {
            INSTANCE = new HostnameCache();
        }
        return INSTANCE;
    }

    private HostnameCache() {
        this(HOSTNAME_CACHE_DURATION);
    }

    HostnameCache(long j) {
        this(j, new Callable() { // from class: io.sentry.HostnameCache$$ExternalSyntheticLambda0
            @Override // java.util.concurrent.Callable
            public final Object call() {
                InetAddress localHost;
                localHost = InetAddress.getLocalHost();
                return localHost;
            }
        });
    }

    HostnameCache(long j, Callable<InetAddress> callable) {
        this.updateRunning = new AtomicBoolean(false);
        this.executorService = Executors.newSingleThreadExecutor(new HostnameCacheThreadFactory());
        this.cacheDuration = j;
        this.getLocalhost = (Callable) Objects.requireNonNull(callable, "getLocalhost is required");
        updateCache();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void close() {
        this.executorService.shutdown();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isClosed() {
        return this.executorService.isShutdown();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getHostname() {
        if (this.expirationTimestamp < System.currentTimeMillis() && this.updateRunning.compareAndSet(false, true)) {
            updateCache();
        }
        return this.hostname;
    }

    private void updateCache() {
        try {
            this.executorService.submit(new Callable() { // from class: io.sentry.HostnameCache$$ExternalSyntheticLambda1
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return HostnameCache.this.m5618lambda$updateCache$1$iosentryHostnameCache();
                }
            }).get(GET_HOSTNAME_TIMEOUT, TimeUnit.MILLISECONDS);
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            handleCacheUpdateFailure();
        } catch (RuntimeException | ExecutionException | TimeoutException unused2) {
            handleCacheUpdateFailure();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$updateCache$1$io-sentry-HostnameCache, reason: not valid java name */
    public /* synthetic */ Void m5618lambda$updateCache$1$iosentryHostnameCache() throws Exception {
        try {
            this.hostname = this.getLocalhost.call().getCanonicalHostName();
            this.expirationTimestamp = System.currentTimeMillis() + this.cacheDuration;
            this.updateRunning.set(false);
            return null;
        } catch (Throwable th) {
            this.updateRunning.set(false);
            throw th;
        }
    }

    private void handleCacheUpdateFailure() {
        this.expirationTimestamp = System.currentTimeMillis() + TimeUnit.SECONDS.toMillis(1L);
    }

    /* loaded from: classes3.dex */
    private static final class HostnameCacheThreadFactory implements ThreadFactory {
        private int cnt;

        private HostnameCacheThreadFactory() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            StringBuilder sb = new StringBuilder("SentryHostnameCache-");
            int i = this.cnt;
            this.cnt = i + 1;
            Thread thread = new Thread(runnable, sb.append(i).toString());
            thread.setDaemon(true);
            return thread;
        }
    }
}
