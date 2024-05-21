package io.sentry;

import io.sentry.Scope;
import io.sentry.protocol.Contexts;
import io.sentry.protocol.Request;
import io.sentry.protocol.User;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Queue;

/* loaded from: classes3.dex */
public final class NoOpScope implements IScope {
    private static final NoOpScope instance = new NoOpScope();
    private final SentryOptions emptyOptions = SentryOptions.empty();

    public static NoOpScope getInstance() {
        return instance;
    }

    @Override // io.sentry.IScope
    public void addAttachment(Attachment attachment) {
    }

    @Override // io.sentry.IScope
    public void addBreadcrumb(Breadcrumb breadcrumb) {
    }

    @Override // io.sentry.IScope
    public void addBreadcrumb(Breadcrumb breadcrumb, Hint hint) {
    }

    @Override // io.sentry.IScope
    public void addEventProcessor(EventProcessor eventProcessor) {
    }

    @Override // io.sentry.IScope
    public void clear() {
    }

    @Override // io.sentry.IScope
    public void clearAttachments() {
    }

    @Override // io.sentry.IScope
    public void clearBreadcrumbs() {
    }

    @Override // io.sentry.IScope
    public void clearTransaction() {
    }

    @Override // io.sentry.IScope
    public Session endSession() {
        return null;
    }

    @Override // io.sentry.IScope
    public SentryLevel getLevel() {
        return null;
    }

    @Override // io.sentry.IScope
    public SentryOptions getOptions() {
        return this.emptyOptions;
    }

    @Override // io.sentry.IScope
    public Request getRequest() {
        return null;
    }

    @Override // io.sentry.IScope
    public String getScreen() {
        return null;
    }

    @Override // io.sentry.IScope
    public Session getSession() {
        return null;
    }

    @Override // io.sentry.IScope
    public ISpan getSpan() {
        return null;
    }

    @Override // io.sentry.IScope
    public ITransaction getTransaction() {
        return null;
    }

    @Override // io.sentry.IScope
    public String getTransactionName() {
        return null;
    }

    @Override // io.sentry.IScope
    public User getUser() {
        return null;
    }

    @Override // io.sentry.IScope
    public void removeContexts(String str) {
    }

    @Override // io.sentry.IScope
    public void removeExtra(String str) {
    }

    @Override // io.sentry.IScope
    public void removeTag(String str) {
    }

    @Override // io.sentry.IScope
    public void setContexts(String str, Boolean bool) {
    }

    @Override // io.sentry.IScope
    public void setContexts(String str, Character ch) {
    }

    @Override // io.sentry.IScope
    public void setContexts(String str, Number number) {
    }

    @Override // io.sentry.IScope
    public void setContexts(String str, Object obj) {
    }

    @Override // io.sentry.IScope
    public void setContexts(String str, String str2) {
    }

    @Override // io.sentry.IScope
    public void setContexts(String str, Collection<?> collection) {
    }

    @Override // io.sentry.IScope
    public void setContexts(String str, Object[] objArr) {
    }

    @Override // io.sentry.IScope
    public void setExtra(String str, String str2) {
    }

    @Override // io.sentry.IScope
    public void setFingerprint(List<String> list) {
    }

    @Override // io.sentry.IScope
    public void setLevel(SentryLevel sentryLevel) {
    }

    @Override // io.sentry.IScope
    public void setPropagationContext(PropagationContext propagationContext) {
    }

    @Override // io.sentry.IScope
    public void setRequest(Request request) {
    }

    @Override // io.sentry.IScope
    public void setScreen(String str) {
    }

    @Override // io.sentry.IScope
    public void setTag(String str, String str2) {
    }

    @Override // io.sentry.IScope
    public void setTransaction(ITransaction iTransaction) {
    }

    @Override // io.sentry.IScope
    public void setTransaction(String str) {
    }

    @Override // io.sentry.IScope
    public void setUser(User user) {
    }

    @Override // io.sentry.IScope
    public Scope.SessionPair startSession() {
        return null;
    }

    @Override // io.sentry.IScope
    public Session withSession(Scope.IWithSession iWithSession) {
        return null;
    }

    @Override // io.sentry.IScope
    public void withTransaction(Scope.IWithTransaction iWithTransaction) {
    }

    private NoOpScope() {
    }

    @Override // io.sentry.IScope
    public List<String> getFingerprint() {
        return new ArrayList();
    }

    @Override // io.sentry.IScope
    public Queue<Breadcrumb> getBreadcrumbs() {
        return new ArrayDeque();
    }

    @Override // io.sentry.IScope
    public Map<String, String> getTags() {
        return new HashMap();
    }

    @Override // io.sentry.IScope
    public Map<String, Object> getExtras() {
        return new HashMap();
    }

    @Override // io.sentry.IScope
    public Contexts getContexts() {
        return new Contexts();
    }

    @Override // io.sentry.IScope
    public List<Attachment> getAttachments() {
        return new ArrayList();
    }

    @Override // io.sentry.IScope
    public List<EventProcessor> getEventProcessors() {
        return new ArrayList();
    }

    @Override // io.sentry.IScope
    public PropagationContext getPropagationContext() {
        return new PropagationContext();
    }

    @Override // io.sentry.IScope
    public PropagationContext withPropagationContext(Scope.IWithPropagationContext iWithPropagationContext) {
        return new PropagationContext();
    }

    @Override // io.sentry.IScope
    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public IScope m5624clone() {
        return getInstance();
    }
}
