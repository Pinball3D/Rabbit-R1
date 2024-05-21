.class public final synthetic Lio/sentry/SentryTracer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/sentry/ScopeCallback;


# instance fields
.field public final synthetic f$0:Lio/sentry/SentryTracer;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/SentryTracer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/SentryTracer$$ExternalSyntheticLambda0;->f$0:Lio/sentry/SentryTracer;

    return-void
.end method


# virtual methods
.method public final run(Lio/sentry/IScope;)V
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryTracer$$ExternalSyntheticLambda0;->f$0:Lio/sentry/SentryTracer;

    invoke-virtual {p0, p1}, Lio/sentry/SentryTracer;->lambda$finish$1$io-sentry-SentryTracer(Lio/sentry/IScope;)V

    return-void
.end method
