package com.google.common.util.concurrent;

import com.google.common.base.Supplier;
import com.google.common.util.concurrent.Service;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public abstract class AbstractIdleService implements Service {
    private final Service delegate;
    private final Supplier<String> threadNameSupplier;

    protected abstract void shutDown() throws Exception;

    protected abstract void startUp() throws Exception;

    /* loaded from: classes3.dex */
    private final class ThreadNameSupplier implements Supplier<String> {
        private ThreadNameSupplier() {
        }

        @Override // com.google.common.base.Supplier
        public String get() {
            String serviceName = AbstractIdleService.this.serviceName();
            String valueOf = String.valueOf(AbstractIdleService.this.state());
            return new StringBuilder(String.valueOf(serviceName).length() + 1 + String.valueOf(valueOf).length()).append(serviceName).append(" ").append(valueOf).toString();
        }
    }

    /* loaded from: classes3.dex */
    private final class DelegateService extends AbstractService {
        private DelegateService() {
        }

        @Override // com.google.common.util.concurrent.AbstractService
        protected final void doStart() {
            MoreExecutors.renamingDecorator(AbstractIdleService.this.executor(), (Supplier<String>) AbstractIdleService.this.threadNameSupplier).execute(new Runnable() { // from class: com.google.common.util.concurrent.AbstractIdleService.DelegateService.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        AbstractIdleService.this.startUp();
                        DelegateService.this.notifyStarted();
                    } catch (Throwable th) {
                        DelegateService.this.notifyFailed(th);
                    }
                }
            });
        }

        @Override // com.google.common.util.concurrent.AbstractService
        protected final void doStop() {
            MoreExecutors.renamingDecorator(AbstractIdleService.this.executor(), (Supplier<String>) AbstractIdleService.this.threadNameSupplier).execute(new Runnable() { // from class: com.google.common.util.concurrent.AbstractIdleService.DelegateService.2
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        AbstractIdleService.this.shutDown();
                        DelegateService.this.notifyStopped();
                    } catch (Throwable th) {
                        DelegateService.this.notifyFailed(th);
                    }
                }
            });
        }

        @Override // com.google.common.util.concurrent.AbstractService
        public String toString() {
            return AbstractIdleService.this.toString();
        }
    }

    protected AbstractIdleService() {
        this.threadNameSupplier = new ThreadNameSupplier();
        this.delegate = new DelegateService();
    }

    protected Executor executor() {
        return new Executor() { // from class: com.google.common.util.concurrent.AbstractIdleService.1
            @Override // java.util.concurrent.Executor
            public void execute(Runnable runnable) {
                MoreExecutors.newThread((String) AbstractIdleService.this.threadNameSupplier.get(), runnable).start();
            }
        };
    }

    public String toString() {
        String serviceName = serviceName();
        String valueOf = String.valueOf(state());
        return new StringBuilder(String.valueOf(serviceName).length() + 3 + String.valueOf(valueOf).length()).append(serviceName).append(" [").append(valueOf).append("]").toString();
    }

    @Override // com.google.common.util.concurrent.Service
    public final boolean isRunning() {
        return this.delegate.isRunning();
    }

    @Override // com.google.common.util.concurrent.Service
    public final Service.State state() {
        return this.delegate.state();
    }

    @Override // com.google.common.util.concurrent.Service
    public final void addListener(Service.Listener listener, Executor executor) {
        this.delegate.addListener(listener, executor);
    }

    @Override // com.google.common.util.concurrent.Service
    public final Throwable failureCause() {
        return this.delegate.failureCause();
    }

    @Override // com.google.common.util.concurrent.Service
    public final Service startAsync() {
        this.delegate.startAsync();
        return this;
    }

    @Override // com.google.common.util.concurrent.Service
    public final Service stopAsync() {
        this.delegate.stopAsync();
        return this;
    }

    @Override // com.google.common.util.concurrent.Service
    public final void awaitRunning() {
        this.delegate.awaitRunning();
    }

    @Override // com.google.common.util.concurrent.Service
    public final void awaitRunning(long j, TimeUnit timeUnit) throws TimeoutException {
        this.delegate.awaitRunning(j, timeUnit);
    }

    @Override // com.google.common.util.concurrent.Service
    public final void awaitTerminated() {
        this.delegate.awaitTerminated();
    }

    @Override // com.google.common.util.concurrent.Service
    public final void awaitTerminated(long j, TimeUnit timeUnit) throws TimeoutException {
        this.delegate.awaitTerminated(j, timeUnit);
    }

    protected String serviceName() {
        return getClass().getSimpleName();
    }
}
