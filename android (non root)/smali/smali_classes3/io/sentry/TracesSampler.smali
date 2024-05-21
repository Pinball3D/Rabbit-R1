.class final Lio/sentry/TracesSampler;
.super Ljava/lang/Object;
.source "TracesSampler.java"


# static fields
.field private static final DEFAULT_TRACES_SAMPLE_RATE:Ljava/lang/Double;


# instance fields
.field private final options:Lio/sentry/SentryOptions;

.field private final random:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 10
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lio/sentry/TracesSampler;->DEFAULT_TRACES_SAMPLE_RATE:Ljava/lang/Double;

    return-void
.end method

.method public constructor <init>(Lio/sentry/SentryOptions;)V
    .locals 1

    const-string v0, "options are required"

    .line 16
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/SentryOptions;

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-direct {p0, p1, v0}, Lio/sentry/TracesSampler;-><init>(Lio/sentry/SentryOptions;Ljava/security/SecureRandom;)V

    return-void
.end method

.method constructor <init>(Lio/sentry/SentryOptions;Ljava/security/SecureRandom;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/TracesSampler;->options:Lio/sentry/SentryOptions;

    iput-object p2, p0, Lio/sentry/TracesSampler;->random:Ljava/security/SecureRandom;

    return-void
.end method

.method private sample(Ljava/lang/Double;)Z
    .locals 2

    .line 92
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iget-object p0, p0, Lio/sentry/TracesSampler;->random:Ljava/security/SecureRandom;

    invoke-virtual {p0}, Ljava/security/SecureRandom;->nextDouble()D

    move-result-wide p0

    cmpg-double p0, v0, p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method sample(Lio/sentry/SamplingContext;)Lio/sentry/TracesSamplingDecision;
    .locals 9

    .line 28
    invoke-virtual {p1}, Lio/sentry/SamplingContext;->getTransactionContext()Lio/sentry/TransactionContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/TransactionContext;->getSamplingDecision()Lio/sentry/TracesSamplingDecision;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lio/sentry/TracesSampler;->options:Lio/sentry/SentryOptions;

    .line 34
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getProfilesSampler()Lio/sentry/SentryOptions$ProfilesSamplerCallback;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lio/sentry/TracesSampler;->options:Lio/sentry/SentryOptions;

    .line 36
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getProfilesSampler()Lio/sentry/SentryOptions$ProfilesSamplerCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/sentry/SentryOptions$ProfilesSamplerCallback;->sample(Lio/sentry/SamplingContext;)Ljava/lang/Double;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lio/sentry/TracesSampler;->options:Lio/sentry/SentryOptions;

    .line 39
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v4, "Error in the \'ProfilesSamplerCallback\' callback."

    .line 40
    invoke-interface {v2, v3, v4, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_2

    iget-object v0, p0, Lio/sentry/TracesSampler;->options:Lio/sentry/SentryOptions;

    .line 44
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getProfilesSampleRate()Ljava/lang/Double;

    move-result-object v0

    :cond_2
    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 46
    invoke-direct {p0, v0}, Lio/sentry/TracesSampler;->sample(Ljava/lang/Double;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object v4, p0, Lio/sentry/TracesSampler;->options:Lio/sentry/SentryOptions;

    .line 48
    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getTracesSampler()Lio/sentry/SentryOptions$TracesSamplerCallback;

    move-result-object v4

    if-eqz v4, :cond_4

    :try_start_1
    iget-object v4, p0, Lio/sentry/TracesSampler;->options:Lio/sentry/SentryOptions;

    .line 51
    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getTracesSampler()Lio/sentry/SentryOptions$TracesSamplerCallback;

    move-result-object v4

    invoke-interface {v4, p1}, Lio/sentry/SentryOptions$TracesSamplerCallback;->sample(Lio/sentry/SamplingContext;)Ljava/lang/Double;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v4

    iget-object v5, p0, Lio/sentry/TracesSampler;->options:Lio/sentry/SentryOptions;

    .line 54
    invoke-virtual {v5}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v5

    sget-object v6, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v7, "Error in the \'TracesSamplerCallback\' callback."

    .line 55
    invoke-interface {v5, v6, v7, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v4, v1

    :goto_2
    if-eqz v4, :cond_4

    .line 58
    new-instance p1, Lio/sentry/TracesSamplingDecision;

    .line 59
    invoke-direct {p0, v4}, Lio/sentry/TracesSampler;->sample(Ljava/lang/Double;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-direct {p1, p0, v4, v3, v0}, Lio/sentry/TracesSamplingDecision;-><init>(Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Boolean;Ljava/lang/Double;)V

    return-object p1

    .line 64
    :cond_4
    invoke-virtual {p1}, Lio/sentry/SamplingContext;->getTransactionContext()Lio/sentry/TransactionContext;

    move-result-object p1

    invoke-virtual {p1}, Lio/sentry/TransactionContext;->getParentSamplingDecision()Lio/sentry/TracesSamplingDecision;

    move-result-object p1

    if-eqz p1, :cond_5

    return-object p1

    :cond_5
    iget-object p1, p0, Lio/sentry/TracesSampler;->options:Lio/sentry/SentryOptions;

    .line 69
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getTracesSampleRate()Ljava/lang/Double;

    move-result-object p1

    iget-object v4, p0, Lio/sentry/TracesSampler;->options:Lio/sentry/SentryOptions;

    .line 70
    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getEnableTracing()Ljava/lang/Boolean;

    move-result-object v4

    .line 72
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    sget-object v4, Lio/sentry/TracesSampler;->DEFAULT_TRACES_SAMPLE_RATE:Ljava/lang/Double;

    goto :goto_3

    :cond_6
    move-object v4, v1

    :goto_3
    if-nez p1, :cond_7

    move-object p1, v4

    :cond_7
    iget-object v4, p0, Lio/sentry/TracesSampler;->options:Lio/sentry/SentryOptions;

    .line 76
    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getBackpressureMonitor()Lio/sentry/backpressure/IBackpressureMonitor;

    move-result-object v4

    invoke-interface {v4}, Lio/sentry/backpressure/IBackpressureMonitor;->getDownsampleFactor()I

    move-result v4

    int-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    if-nez p1, :cond_8

    move-object p1, v1

    goto :goto_4

    .line 78
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    :goto_4
    if-eqz p1, :cond_9

    .line 81
    new-instance v1, Lio/sentry/TracesSamplingDecision;

    .line 82
    invoke-direct {p0, p1}, Lio/sentry/TracesSampler;->sample(Ljava/lang/Double;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-direct {v1, p0, p1, v3, v0}, Lio/sentry/TracesSamplingDecision;-><init>(Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Boolean;Ljava/lang/Double;)V

    return-object v1

    .line 88
    :cond_9
    new-instance p0, Lio/sentry/TracesSamplingDecision;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, v1, v0, v1}, Lio/sentry/TracesSamplingDecision;-><init>(Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Boolean;Ljava/lang/Double;)V

    return-object p0
.end method
