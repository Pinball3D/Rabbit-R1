.class public final synthetic Lio/sentry/android/core/SpanFrameMetricsCollector$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lio/sentry/ISpan;

    check-cast p2, Lio/sentry/ISpan;

    invoke-static {p1, p2}, Lio/sentry/android/core/SpanFrameMetricsCollector;->lambda$new$0(Lio/sentry/ISpan;Lio/sentry/ISpan;)I

    move-result p0

    return p0
.end method
