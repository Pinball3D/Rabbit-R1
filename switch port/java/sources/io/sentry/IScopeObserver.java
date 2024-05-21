package io.sentry;

import io.sentry.protocol.Contexts;
import io.sentry.protocol.Request;
import io.sentry.protocol.User;
import java.util.Collection;
import java.util.Map;

/* loaded from: classes3.dex */
public interface IScopeObserver {
    void addBreadcrumb(Breadcrumb breadcrumb);

    void removeExtra(String str);

    void removeTag(String str);

    void setBreadcrumbs(Collection<Breadcrumb> collection);

    void setContexts(Contexts contexts);

    void setExtra(String str, String str2);

    void setExtras(Map<String, Object> map);

    void setFingerprint(Collection<String> collection);

    void setLevel(SentryLevel sentryLevel);

    void setRequest(Request request);

    void setTag(String str, String str2);

    void setTags(Map<String, String> map);

    void setTrace(SpanContext spanContext);

    void setTransaction(String str);

    void setUser(User user);
}
