.class public final synthetic Lio/sentry/util/HintUtils$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/sentry/util/HintUtils$SentryHintFallback;


# instance fields
.field public final synthetic f$0:Lio/sentry/util/HintUtils$SentryNullableConsumer;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/util/HintUtils$SentryNullableConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/util/HintUtils$$ExternalSyntheticLambda1;->f$0:Lio/sentry/util/HintUtils$SentryNullableConsumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 0

    iget-object p0, p0, Lio/sentry/util/HintUtils$$ExternalSyntheticLambda1;->f$0:Lio/sentry/util/HintUtils$SentryNullableConsumer;

    invoke-static {p0, p1, p2}, Lio/sentry/util/HintUtils;->lambda$runIfDoesNotHaveType$1(Lio/sentry/util/HintUtils$SentryNullableConsumer;Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method
