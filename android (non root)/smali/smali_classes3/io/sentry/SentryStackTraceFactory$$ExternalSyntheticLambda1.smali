.class public final synthetic Lio/sentry/SentryStackTraceFactory$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/sentry/util/CollectionUtils$Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lio/sentry/protocol/SentryStackFrame;

    invoke-static {p1}, Lio/sentry/SentryStackTraceFactory;->lambda$getInAppCallStack$1(Lio/sentry/protocol/SentryStackFrame;)Z

    move-result p0

    return p0
.end method
