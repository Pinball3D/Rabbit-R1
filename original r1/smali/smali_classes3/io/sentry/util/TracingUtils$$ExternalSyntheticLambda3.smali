.class public final synthetic Lio/sentry/util/TracingUtils$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/sentry/ScopeCallback;


# instance fields
.field public final synthetic f$0:Lio/sentry/util/TracingUtils$PropagationContextHolder;

.field public final synthetic f$1:Lio/sentry/SentryOptions;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/util/TracingUtils$PropagationContextHolder;Lio/sentry/SentryOptions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/util/TracingUtils$$ExternalSyntheticLambda3;->f$0:Lio/sentry/util/TracingUtils$PropagationContextHolder;

    iput-object p2, p0, Lio/sentry/util/TracingUtils$$ExternalSyntheticLambda3;->f$1:Lio/sentry/SentryOptions;

    return-void
.end method


# virtual methods
.method public final run(Lio/sentry/IScope;)V
    .locals 1

    iget-object v0, p0, Lio/sentry/util/TracingUtils$$ExternalSyntheticLambda3;->f$0:Lio/sentry/util/TracingUtils$PropagationContextHolder;

    iget-object p0, p0, Lio/sentry/util/TracingUtils$$ExternalSyntheticLambda3;->f$1:Lio/sentry/SentryOptions;

    invoke-static {v0, p0, p1}, Lio/sentry/util/TracingUtils;->lambda$trace$2(Lio/sentry/util/TracingUtils$PropagationContextHolder;Lio/sentry/SentryOptions;Lio/sentry/IScope;)V

    return-void
.end method
