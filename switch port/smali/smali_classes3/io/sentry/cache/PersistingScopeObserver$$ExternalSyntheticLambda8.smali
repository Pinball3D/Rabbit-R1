.class public final synthetic Lio/sentry/cache/PersistingScopeObserver$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/sentry/cache/PersistingScopeObserver;

.field public final synthetic f$1:Lio/sentry/protocol/Contexts;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/cache/PersistingScopeObserver;Lio/sentry/protocol/Contexts;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/cache/PersistingScopeObserver$$ExternalSyntheticLambda8;->f$0:Lio/sentry/cache/PersistingScopeObserver;

    iput-object p2, p0, Lio/sentry/cache/PersistingScopeObserver$$ExternalSyntheticLambda8;->f$1:Lio/sentry/protocol/Contexts;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lio/sentry/cache/PersistingScopeObserver$$ExternalSyntheticLambda8;->f$0:Lio/sentry/cache/PersistingScopeObserver;

    iget-object p0, p0, Lio/sentry/cache/PersistingScopeObserver$$ExternalSyntheticLambda8;->f$1:Lio/sentry/protocol/Contexts;

    invoke-virtual {v0, p0}, Lio/sentry/cache/PersistingScopeObserver;->lambda$setContexts$9$io-sentry-cache-PersistingScopeObserver(Lio/sentry/protocol/Contexts;)V

    return-void
.end method
