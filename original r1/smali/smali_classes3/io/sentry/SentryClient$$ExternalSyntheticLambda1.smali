.class public final synthetic Lio/sentry/SentryClient$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/sentry/Scope$IWithSession;


# instance fields
.field public final synthetic f$0:Lio/sentry/SentryClient;

.field public final synthetic f$1:Lio/sentry/SentryEvent;

.field public final synthetic f$2:Lio/sentry/Hint;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/SentryClient;Lio/sentry/SentryEvent;Lio/sentry/Hint;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/SentryClient$$ExternalSyntheticLambda1;->f$0:Lio/sentry/SentryClient;

    iput-object p2, p0, Lio/sentry/SentryClient$$ExternalSyntheticLambda1;->f$1:Lio/sentry/SentryEvent;

    iput-object p3, p0, Lio/sentry/SentryClient$$ExternalSyntheticLambda1;->f$2:Lio/sentry/Hint;

    return-void
.end method


# virtual methods
.method public final accept(Lio/sentry/Session;)V
    .locals 2

    iget-object v0, p0, Lio/sentry/SentryClient$$ExternalSyntheticLambda1;->f$0:Lio/sentry/SentryClient;

    iget-object v1, p0, Lio/sentry/SentryClient$$ExternalSyntheticLambda1;->f$1:Lio/sentry/SentryEvent;

    iget-object p0, p0, Lio/sentry/SentryClient$$ExternalSyntheticLambda1;->f$2:Lio/sentry/Hint;

    invoke-virtual {v0, v1, p0, p1}, Lio/sentry/SentryClient;->lambda$updateSessionData$1$io-sentry-SentryClient(Lio/sentry/SentryEvent;Lio/sentry/Hint;Lio/sentry/Session;)V

    return-void
.end method
