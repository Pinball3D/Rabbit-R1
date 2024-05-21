.class public interface abstract Lio/sentry/IScopeObserver;
.super Ljava/lang/Object;
.source "IScopeObserver.java"


# virtual methods
.method public abstract addBreadcrumb(Lio/sentry/Breadcrumb;)V
.end method

.method public abstract removeExtra(Ljava/lang/String;)V
.end method

.method public abstract removeTag(Ljava/lang/String;)V
.end method

.method public abstract setBreadcrumbs(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lio/sentry/Breadcrumb;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setContexts(Lio/sentry/protocol/Contexts;)V
.end method

.method public abstract setExtra(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setExtras(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setFingerprint(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setLevel(Lio/sentry/SentryLevel;)V
.end method

.method public abstract setRequest(Lio/sentry/protocol/Request;)V
.end method

.method public abstract setTag(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setTags(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setTrace(Lio/sentry/SpanContext;)V
.end method

.method public abstract setTransaction(Ljava/lang/String;)V
.end method

.method public abstract setUser(Lio/sentry/protocol/User;)V
.end method
