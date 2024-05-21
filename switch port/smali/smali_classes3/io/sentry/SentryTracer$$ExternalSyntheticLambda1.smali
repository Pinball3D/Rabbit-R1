.class public final synthetic Lio/sentry/SentryTracer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/sentry/SpanFinishedCallback;


# instance fields
.field public final synthetic f$0:Lio/sentry/SentryTracer;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/SentryTracer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/SentryTracer$$ExternalSyntheticLambda1;->f$0:Lio/sentry/SentryTracer;

    return-void
.end method


# virtual methods
.method public final execute(Lio/sentry/Span;)V
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryTracer$$ExternalSyntheticLambda1;->f$0:Lio/sentry/SentryTracer;

    invoke-virtual {p0, p1}, Lio/sentry/SentryTracer;->lambda$createChild$2$io-sentry-SentryTracer(Lio/sentry/Span;)V

    return-void
.end method
