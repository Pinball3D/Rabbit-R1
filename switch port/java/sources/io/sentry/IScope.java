package io.sentry;

import io.sentry.Scope;
import io.sentry.protocol.Contexts;
import io.sentry.protocol.Request;
import io.sentry.protocol.User;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Queue;

/* loaded from: classes3.dex */
public interface IScope {
    void addAttachment(Attachment attachment);

    void addBreadcrumb(Breadcrumb breadcrumb);

    void addBreadcrumb(Breadcrumb breadcrumb, Hint hint);

    void addEventProcessor(EventProcessor eventProcessor);

    void clear();

    void clearAttachments();

    void clearBreadcrumbs();

    void clearTransaction();

    /* renamed from: clone */
    IScope m5626clone();

    Session endSession();

    List<Attachment> getAttachments();

    Queue<Breadcrumb> getBreadcrumbs();

    Contexts getContexts();

    List<EventProcessor> getEventProcessors();

    Map<String, Object> getExtras();

    List<String> getFingerprint();

    SentryLevel getLevel();

    SentryOptions getOptions();

    PropagationContext getPropagationContext();

    Request getRequest();

    String getScreen();

    Session getSession();

    ISpan getSpan();

    Map<String, String> getTags();

    ITransaction getTransaction();

    String getTransactionName();

    User getUser();

    void removeContexts(String str);

    void removeExtra(String str);

    void removeTag(String str);

    void setContexts(String str, Boolean bool);

    void setContexts(String str, Character ch);

    void setContexts(String str, Number number);

    void setContexts(String str, Object obj);

    void setContexts(String str, String str2);

    void setContexts(String str, Collection<?> collection);

    void setContexts(String str, Object[] objArr);

    void setExtra(String str, String str2);

    void setFingerprint(List<String> list);

    void setLevel(SentryLevel sentryLevel);

    void setPropagationContext(PropagationContext propagationContext);

    void setRequest(Request request);

    void setScreen(String str);

    void setTag(String str, String str2);

    void setTransaction(ITransaction iTransaction);

    void setTransaction(String str);

    void setUser(User user);

    Scope.SessionPair startSession();

    PropagationContext withPropagationContext(Scope.IWithPropagationContext iWithPropagationContext);

    Session withSession(Scope.IWithSession iWithSession);

    void withTransaction(Scope.IWithTransaction iWithTransaction);
}
