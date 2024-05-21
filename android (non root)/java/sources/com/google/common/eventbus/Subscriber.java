package com.google.common.eventbus;

import com.google.common.base.Preconditions;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.Executor;
import javax.annotation.CheckForNull;

/* JADX INFO: Access modifiers changed from: package-private */
@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public class Subscriber {
    private EventBus bus;
    private final Executor executor;
    private final Method method;
    final Object target;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Subscriber create(EventBus eventBus, Object obj, Method method) {
        if (isDeclaredThreadSafe(method)) {
            return new Subscriber(eventBus, obj, method);
        }
        return new SynchronizedSubscriber(eventBus, obj, method);
    }

    private Subscriber(EventBus eventBus, Object obj, Method method) {
        this.bus = eventBus;
        this.target = Preconditions.checkNotNull(obj);
        this.method = method;
        method.setAccessible(true);
        this.executor = eventBus.executor();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void dispatchEvent(final Object obj) {
        this.executor.execute(new Runnable() { // from class: com.google.common.eventbus.Subscriber$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                Subscriber.this.m5574lambda$dispatchEvent$0$comgooglecommoneventbusSubscriber(obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$dispatchEvent$0$com-google-common-eventbus-Subscriber, reason: not valid java name */
    public /* synthetic */ void m5574lambda$dispatchEvent$0$comgooglecommoneventbusSubscriber(Object obj) {
        try {
            invokeSubscriberMethod(obj);
        } catch (InvocationTargetException e) {
            this.bus.handleSubscriberException(e.getCause(), context(obj));
        }
    }

    void invokeSubscriberMethod(Object obj) throws InvocationTargetException {
        try {
            this.method.invoke(this.target, Preconditions.checkNotNull(obj));
        } catch (IllegalAccessException e) {
            String valueOf = String.valueOf(obj);
            throw new Error(new StringBuilder(String.valueOf(valueOf).length() + 28).append("Method became inaccessible: ").append(valueOf).toString(), e);
        } catch (IllegalArgumentException e2) {
            String valueOf2 = String.valueOf(obj);
            throw new Error(new StringBuilder(String.valueOf(valueOf2).length() + 33).append("Method rejected target/argument: ").append(valueOf2).toString(), e2);
        } catch (InvocationTargetException e3) {
            if (e3.getCause() instanceof Error) {
                throw ((Error) e3.getCause());
            }
            throw e3;
        }
    }

    private SubscriberExceptionContext context(Object obj) {
        return new SubscriberExceptionContext(this.bus, obj, this.target, this.method);
    }

    public final int hashCode() {
        return ((this.method.hashCode() + 31) * 31) + System.identityHashCode(this.target);
    }

    public final boolean equals(@CheckForNull Object obj) {
        if (!(obj instanceof Subscriber)) {
            return false;
        }
        Subscriber subscriber = (Subscriber) obj;
        return this.target == subscriber.target && this.method.equals(subscriber.method);
    }

    private static boolean isDeclaredThreadSafe(Method method) {
        return method.getAnnotation(AllowConcurrentEvents.class) != null;
    }

    /* loaded from: classes3.dex */
    static final class SynchronizedSubscriber extends Subscriber {
        private SynchronizedSubscriber(EventBus eventBus, Object obj, Method method) {
            super(eventBus, obj, method);
        }

        @Override // com.google.common.eventbus.Subscriber
        void invokeSubscriberMethod(Object obj) throws InvocationTargetException {
            synchronized (this) {
                super.invokeSubscriberMethod(obj);
            }
        }
    }
}
