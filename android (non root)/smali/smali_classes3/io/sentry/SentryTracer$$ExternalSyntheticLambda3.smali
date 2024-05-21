.class public final synthetic Lio/sentry/SentryTracer$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/sentry/ScopeCallback;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/SentryTracer$$ExternalSyntheticLambda3;->f$0:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final run(Lio/sentry/IScope;)V
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryTracer$$ExternalSyntheticLambda3;->f$0:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p0, p1}, Lio/sentry/SentryTracer;->lambda$updateBaggageValues$3(Ljava/util/concurrent/atomic/AtomicReference;Lio/sentry/IScope;)V

    return-void
.end method
