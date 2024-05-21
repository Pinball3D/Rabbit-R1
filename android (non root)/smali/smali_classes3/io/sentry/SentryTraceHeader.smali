.class public final Lio/sentry/SentryTraceHeader;
.super Ljava/lang/Object;
.source "SentryTraceHeader.java"


# static fields
.field public static final SENTRY_TRACE_HEADER:Ljava/lang/String; = "sentry-trace"


# instance fields
.field private final sampled:Ljava/lang/Boolean;

.field private final spanId:Lio/sentry/SpanId;

.field private final traceId:Lio/sentry/protocol/SentryId;


# direct methods
.method public constructor <init>(Lio/sentry/protocol/SentryId;Lio/sentry/SpanId;Ljava/lang/Boolean;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/SentryTraceHeader;->traceId:Lio/sentry/protocol/SentryId;

    iput-object p2, p0, Lio/sentry/SentryTraceHeader;->spanId:Lio/sentry/SpanId;

    iput-object p3, p0, Lio/sentry/SentryTraceHeader;->sampled:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/sentry/exception/InvalidSentryTraceHeaderException;
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "-"

    const/4 v1, -0x1

    .line 26
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 27
    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    .line 29
    array-length v1, v0

    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    const-string v1, "1"

    .line 30
    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lio/sentry/SentryTraceHeader;->sampled:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lio/sentry/SentryTraceHeader;->sampled:Ljava/lang/Boolean;

    .line 35
    :goto_0
    :try_start_0
    new-instance v1, Lio/sentry/protocol/SentryId;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-direct {v1, v2}, Lio/sentry/protocol/SentryId;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lio/sentry/SentryTraceHeader;->traceId:Lio/sentry/protocol/SentryId;

    .line 36
    new-instance v1, Lio/sentry/SpanId;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-direct {v1, v0}, Lio/sentry/SpanId;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lio/sentry/SentryTraceHeader;->spanId:Lio/sentry/SpanId;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 38
    new-instance v0, Lio/sentry/exception/InvalidSentryTraceHeaderException;

    invoke-direct {v0, p1, p0}, Lio/sentry/exception/InvalidSentryTraceHeaderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 28
    :cond_1
    new-instance p0, Lio/sentry/exception/InvalidSentryTraceHeaderException;

    invoke-direct {p0, p1}, Lio/sentry/exception/InvalidSentryTraceHeaderException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    const-string p0, "sentry-trace"

    return-object p0
.end method

.method public getSpanId()Lio/sentry/SpanId;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryTraceHeader;->spanId:Lio/sentry/SpanId;

    return-object p0
.end method

.method public getTraceId()Lio/sentry/protocol/SentryId;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryTraceHeader;->traceId:Lio/sentry/protocol/SentryId;

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lio/sentry/SentryTraceHeader;->sampled:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lio/sentry/SentryTraceHeader;->traceId:Lio/sentry/protocol/SentryId;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object p0, p0, Lio/sentry/SentryTraceHeader;->spanId:Lio/sentry/SpanId;

    aput-object p0, v1, v2

    .line 48
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "1"

    goto :goto_0

    :cond_0
    const-string p0, "0"

    :goto_0
    const/4 v0, 0x2

    aput-object p0, v1, v0

    const-string p0, "%s-%s-%s"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v0, p0, Lio/sentry/SentryTraceHeader;->traceId:Lio/sentry/protocol/SentryId;

    iget-object p0, p0, Lio/sentry/SentryTraceHeader;->spanId:Lio/sentry/SpanId;

    .line 50
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%s-%s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isSampled()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryTraceHeader;->sampled:Ljava/lang/Boolean;

    return-object p0
.end method
