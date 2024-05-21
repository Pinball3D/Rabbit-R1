.class public interface abstract Lio/sentry/IScope;
.super Ljava/lang/Object;
.source "IScope.java"


# virtual methods
.method public abstract addAttachment(Lio/sentry/Attachment;)V
.end method

.method public abstract addBreadcrumb(Lio/sentry/Breadcrumb;)V
.end method

.method public abstract addBreadcrumb(Lio/sentry/Breadcrumb;Lio/sentry/Hint;)V
.end method

.method public abstract addEventProcessor(Lio/sentry/EventProcessor;)V
.end method

.method public abstract clear()V
.end method

.method public abstract clearAttachments()V
.end method

.method public abstract clearBreadcrumbs()V
.end method

.method public abstract clearTransaction()V
.end method

.method public abstract clone()Lio/sentry/IScope;
.end method

.method public abstract endSession()Lio/sentry/Session;
.end method

.method public abstract getAttachments()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/Attachment;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBreadcrumbs()Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Lio/sentry/Breadcrumb;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getContexts()Lio/sentry/protocol/Contexts;
.end method

.method public abstract getEventProcessors()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/EventProcessor;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getExtras()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFingerprint()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLevel()Lio/sentry/SentryLevel;
.end method

.method public abstract getOptions()Lio/sentry/SentryOptions;
.end method

.method public abstract getPropagationContext()Lio/sentry/PropagationContext;
.end method

.method public abstract getRequest()Lio/sentry/protocol/Request;
.end method

.method public abstract getScreen()Ljava/lang/String;
.end method

.method public abstract getSession()Lio/sentry/Session;
.end method

.method public abstract getSpan()Lio/sentry/ISpan;
.end method

.method public abstract getTags()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTransaction()Lio/sentry/ITransaction;
.end method

.method public abstract getTransactionName()Ljava/lang/String;
.end method

.method public abstract getUser()Lio/sentry/protocol/User;
.end method

.method public abstract removeContexts(Ljava/lang/String;)V
.end method

.method public abstract removeExtra(Ljava/lang/String;)V
.end method

.method public abstract removeTag(Ljava/lang/String;)V
.end method

.method public abstract setContexts(Ljava/lang/String;Ljava/lang/Boolean;)V
.end method

.method public abstract setContexts(Ljava/lang/String;Ljava/lang/Character;)V
.end method

.method public abstract setContexts(Ljava/lang/String;Ljava/lang/Number;)V
.end method

.method public abstract setContexts(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract setContexts(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setContexts(Ljava/lang/String;Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract setContexts(Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method public abstract setExtra(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setFingerprint(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setLevel(Lio/sentry/SentryLevel;)V
.end method

.method public abstract setPropagationContext(Lio/sentry/PropagationContext;)V
.end method

.method public abstract setRequest(Lio/sentry/protocol/Request;)V
.end method

.method public abstract setScreen(Ljava/lang/String;)V
.end method

.method public abstract setTag(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setTransaction(Lio/sentry/ITransaction;)V
.end method

.method public abstract setTransaction(Ljava/lang/String;)V
.end method

.method public abstract setUser(Lio/sentry/protocol/User;)V
.end method

.method public abstract startSession()Lio/sentry/Scope$SessionPair;
.end method

.method public abstract withPropagationContext(Lio/sentry/Scope$IWithPropagationContext;)Lio/sentry/PropagationContext;
.end method

.method public abstract withSession(Lio/sentry/Scope$IWithSession;)Lio/sentry/Session;
.end method

.method public abstract withTransaction(Lio/sentry/Scope$IWithTransaction;)V
.end method
