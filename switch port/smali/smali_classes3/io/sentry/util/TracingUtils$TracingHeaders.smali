.class public final Lio/sentry/util/TracingUtils$TracingHeaders;
.super Ljava/lang/Object;
.source "TracingUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/util/TracingUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TracingHeaders"
.end annotation


# instance fields
.field private final baggageHeader:Lio/sentry/BaggageHeader;

.field private final sentryTraceHeader:Lio/sentry/SentryTraceHeader;


# direct methods
.method public constructor <init>(Lio/sentry/SentryTraceHeader;Lio/sentry/BaggageHeader;)V
    .locals 0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/util/TracingUtils$TracingHeaders;->sentryTraceHeader:Lio/sentry/SentryTraceHeader;

    iput-object p2, p0, Lio/sentry/util/TracingUtils$TracingHeaders;->baggageHeader:Lio/sentry/BaggageHeader;

    return-void
.end method


# virtual methods
.method public getBaggageHeader()Lio/sentry/BaggageHeader;
    .locals 0

    iget-object p0, p0, Lio/sentry/util/TracingUtils$TracingHeaders;->baggageHeader:Lio/sentry/BaggageHeader;

    return-object p0
.end method

.method public getSentryTraceHeader()Lio/sentry/SentryTraceHeader;
    .locals 0

    iget-object p0, p0, Lio/sentry/util/TracingUtils$TracingHeaders;->sentryTraceHeader:Lio/sentry/SentryTraceHeader;

    return-object p0
.end method
