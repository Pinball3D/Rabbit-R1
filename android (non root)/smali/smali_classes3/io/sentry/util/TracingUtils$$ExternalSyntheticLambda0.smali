.class public final synthetic Lio/sentry/util/TracingUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/sentry/Scope$IWithPropagationContext;


# instance fields
.field public final synthetic f$0:Lio/sentry/IScope;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/IScope;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/util/TracingUtils$$ExternalSyntheticLambda0;->f$0:Lio/sentry/IScope;

    return-void
.end method


# virtual methods
.method public final accept(Lio/sentry/PropagationContext;)V
    .locals 0

    iget-object p0, p0, Lio/sentry/util/TracingUtils$$ExternalSyntheticLambda0;->f$0:Lio/sentry/IScope;

    invoke-static {p0, p1}, Lio/sentry/util/TracingUtils;->lambda$startNewTrace$0(Lio/sentry/IScope;Lio/sentry/PropagationContext;)V

    return-void
.end method
