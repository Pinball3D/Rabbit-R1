package io.sentry;

import io.sentry.protocol.Contexts;
import io.sentry.protocol.Request;
import io.sentry.protocol.User;
import java.util.Collection;
import java.util.Map;

/* loaded from: classes3.dex */
public abstract class ScopeObserverAdapter implements IScopeObserver {
    @Override // io.sentry.IScopeObserver
    public void addBreadcrumb(Breadcrumb breadcrumb) {
    }

    @Override // io.sentry.IScopeObserver
    public void removeExtra(String str) {
    }

    @Override // io.sentry.IScopeObserver
    public void removeTag(String str) {
    }

    @Override // io.sentry.IScopeObserver
    public void setBreadcrumbs(Collection<Breadcrumb> collection) {
    }

    @Override // io.sentry.IScopeObserver
    public void setContexts(Contexts contexts) {
    }

    @Override // io.sentry.IScopeObserver
    public void setExtra(String str, String str2) {
    }

    @Override // io.sentry.IScopeObserver
    public void setExtras(Map<String, Object> map) {
    }

    @Override // io.sentry.IScopeObserver
    public void setFingerprint(Collection<String> collection) {
    }

    @Override // io.sentry.IScopeObserver
    public void setLevel(SentryLevel sentryLevel) {
    }

    @Override // io.sentry.IScopeObserver
    public void setRequest(Request request) {
    }

    @Override // io.sentry.IScopeObserver
    public void setTag(String str, String str2) {
    }

    @Override // io.sentry.IScopeObserver
    public void setTags(Map<String, String> map) {
    }

    @Override // io.sentry.IScopeObserver
    public void setTrace(SpanContext spanContext) {
    }

    @Override // io.sentry.IScopeObserver
    public void setTransaction(String str) {
    }

    @Override // io.sentry.IScopeObserver
    public void setUser(User user) {
    }
}
