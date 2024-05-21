.class public final Lio/sentry/TransactionContext;
.super Lio/sentry/SpanContext;
.source "TransactionContext.java"


# static fields
.field private static final DEFAULT_NAME:Ljava/lang/String; = "<unlabeled transaction>"

.field private static final DEFAULT_NAME_SOURCE:Lio/sentry/protocol/TransactionNameSource;

.field private static final DEFAULT_OPERATION:Ljava/lang/String; = "default"


# instance fields
.field private baggage:Lio/sentry/Baggage;

.field private instrumenter:Lio/sentry/Instrumenter;

.field private isForNextAppStart:Z

.field private name:Ljava/lang/String;

.field private parentSamplingDecision:Lio/sentry/TracesSamplingDecision;

.field private transactionNameSource:Lio/sentry/protocol/TransactionNameSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    sget-object v0, Lio/sentry/protocol/TransactionNameSource;->CUSTOM:Lio/sentry/protocol/TransactionNameSource;

    sput-object v0, Lio/sentry/TransactionContext;->DEFAULT_NAME_SOURCE:Lio/sentry/protocol/TransactionNameSource;

    return-void
.end method

.method public constructor <init>(Lio/sentry/protocol/SentryId;Lio/sentry/SpanId;Lio/sentry/SpanId;Lio/sentry/TracesSamplingDecision;Lio/sentry/Baggage;)V
    .locals 6

    const-string v3, "default"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    .line 138
    invoke-direct/range {v0 .. v5}, Lio/sentry/SpanContext;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/SpanId;Ljava/lang/String;Lio/sentry/SpanId;Lio/sentry/TracesSamplingDecision;)V

    .line 20
    sget-object p1, Lio/sentry/Instrumenter;->SENTRY:Lio/sentry/Instrumenter;

    iput-object p1, p0, Lio/sentry/TransactionContext;->instrumenter:Lio/sentry/Instrumenter;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lio/sentry/TransactionContext;->isForNextAppStart:Z

    const-string p1, "<unlabeled transaction>"

    iput-object p1, p0, Lio/sentry/TransactionContext;->name:Ljava/lang/String;

    iput-object p4, p0, Lio/sentry/TransactionContext;->parentSamplingDecision:Lio/sentry/TracesSamplingDecision;

    sget-object p1, Lio/sentry/TransactionContext;->DEFAULT_NAME_SOURCE:Lio/sentry/protocol/TransactionNameSource;

    iput-object p1, p0, Lio/sentry/TransactionContext;->transactionNameSource:Lio/sentry/protocol/TransactionNameSource;

    iput-object p5, p0, Lio/sentry/TransactionContext;->baggage:Lio/sentry/Baggage;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/sentry/protocol/TransactionNameSource;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 95
    invoke-direct {p0, p1, p2, p3, v0}, Lio/sentry/TransactionContext;-><init>(Ljava/lang/String;Lio/sentry/protocol/TransactionNameSource;Ljava/lang/String;Lio/sentry/TracesSamplingDecision;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/sentry/protocol/TransactionNameSource;Ljava/lang/String;Lio/sentry/TracesSamplingDecision;)V
    .locals 0

    .line 125
    invoke-direct {p0, p3}, Lio/sentry/SpanContext;-><init>(Ljava/lang/String;)V

    .line 20
    sget-object p3, Lio/sentry/Instrumenter;->SENTRY:Lio/sentry/Instrumenter;

    iput-object p3, p0, Lio/sentry/TransactionContext;->instrumenter:Lio/sentry/Instrumenter;

    const/4 p3, 0x0

    iput-boolean p3, p0, Lio/sentry/TransactionContext;->isForNextAppStart:Z

    const-string p3, "name is required"

    .line 126
    invoke-static {p1, p3}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lio/sentry/TransactionContext;->name:Ljava/lang/String;

    iput-object p2, p0, Lio/sentry/TransactionContext;->transactionNameSource:Lio/sentry/protocol/TransactionNameSource;

    .line 128
    invoke-virtual {p0, p4}, Lio/sentry/TransactionContext;->setSamplingDecision(Lio/sentry/TracesSamplingDecision;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 87
    invoke-direct {p0, p1, p2, v0}, Lio/sentry/TransactionContext;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/sentry/TracesSamplingDecision;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lio/sentry/TracesSamplingDecision;)V
    .locals 1

    .line 109
    sget-object v0, Lio/sentry/protocol/TransactionNameSource;->CUSTOM:Lio/sentry/protocol/TransactionNameSource;

    invoke-direct {p0, p1, v0, p2, p3}, Lio/sentry/TransactionContext;-><init>(Ljava/lang/String;Lio/sentry/protocol/TransactionNameSource;Ljava/lang/String;Lio/sentry/TracesSamplingDecision;)V

    return-void
.end method

.method public static fromPropagationContext(Lio/sentry/PropagationContext;)Lio/sentry/TransactionContext;
    .locals 8

    .line 60
    invoke-virtual {p0}, Lio/sentry/PropagationContext;->isSampled()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 62
    :cond_0
    new-instance v1, Lio/sentry/TracesSamplingDecision;

    invoke-direct {v1, v0}, Lio/sentry/TracesSamplingDecision;-><init>(Ljava/lang/Boolean;)V

    .line 64
    :goto_0
    invoke-virtual {p0}, Lio/sentry/PropagationContext;->getBaggage()Lio/sentry/Baggage;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 67
    invoke-virtual {v7}, Lio/sentry/Baggage;->freeze()V

    .line 69
    invoke-virtual {v7}, Lio/sentry/Baggage;->getSampleRateDouble()Ljava/lang/Double;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 70
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v1, :cond_2

    .line 72
    new-instance v2, Lio/sentry/TracesSamplingDecision;

    invoke-direct {v2, v0, v1}, Lio/sentry/TracesSamplingDecision;-><init>(Ljava/lang/Boolean;Ljava/lang/Double;)V

    move-object v6, v2

    goto :goto_2

    .line 74
    :cond_2
    new-instance v1, Lio/sentry/TracesSamplingDecision;

    invoke-direct {v1, v0}, Lio/sentry/TracesSamplingDecision;-><init>(Ljava/lang/Boolean;)V

    :cond_3
    move-object v6, v1

    .line 78
    :goto_2
    new-instance v0, Lio/sentry/TransactionContext;

    .line 79
    invoke-virtual {p0}, Lio/sentry/PropagationContext;->getTraceId()Lio/sentry/protocol/SentryId;

    move-result-object v3

    .line 80
    invoke-virtual {p0}, Lio/sentry/PropagationContext;->getSpanId()Lio/sentry/SpanId;

    move-result-object v4

    .line 81
    invoke-virtual {p0}, Lio/sentry/PropagationContext;->getParentSpanId()Lio/sentry/SpanId;

    move-result-object v5

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lio/sentry/TransactionContext;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/SpanId;Lio/sentry/SpanId;Lio/sentry/TracesSamplingDecision;Lio/sentry/Baggage;)V

    return-object v0
.end method

.method public static fromSentryTrace(Ljava/lang/String;Ljava/lang/String;Lio/sentry/SentryTraceHeader;)Lio/sentry/TransactionContext;
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 38
    invoke-virtual {p2}, Lio/sentry/SentryTraceHeader;->isSampled()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    move-object v6, v0

    goto :goto_0

    .line 40
    :cond_0
    new-instance v1, Lio/sentry/TracesSamplingDecision;

    invoke-direct {v1, v0}, Lio/sentry/TracesSamplingDecision;-><init>(Ljava/lang/Boolean;)V

    move-object v6, v1

    .line 42
    :goto_0
    new-instance v0, Lio/sentry/TransactionContext;

    .line 44
    invoke-virtual {p2}, Lio/sentry/SentryTraceHeader;->getTraceId()Lio/sentry/protocol/SentryId;

    move-result-object v3

    new-instance v4, Lio/sentry/SpanId;

    invoke-direct {v4}, Lio/sentry/SpanId;-><init>()V

    .line 46
    invoke-virtual {p2}, Lio/sentry/SentryTraceHeader;->getSpanId()Lio/sentry/SpanId;

    move-result-object v5

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lio/sentry/TransactionContext;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/SpanId;Lio/sentry/SpanId;Lio/sentry/TracesSamplingDecision;Lio/sentry/Baggage;)V

    .line 50
    invoke-virtual {v0, p0}, Lio/sentry/TransactionContext;->setName(Ljava/lang/String;)V

    .line 51
    sget-object p0, Lio/sentry/protocol/TransactionNameSource;->CUSTOM:Lio/sentry/protocol/TransactionNameSource;

    invoke-virtual {v0, p0}, Lio/sentry/TransactionContext;->setTransactionNameSource(Lio/sentry/protocol/TransactionNameSource;)V

    .line 52
    invoke-virtual {v0, p1}, Lio/sentry/TransactionContext;->setOperation(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getBaggage()Lio/sentry/Baggage;
    .locals 0

    iget-object p0, p0, Lio/sentry/TransactionContext;->baggage:Lio/sentry/Baggage;

    return-object p0
.end method

.method public getInstrumenter()Lio/sentry/Instrumenter;
    .locals 0

    iget-object p0, p0, Lio/sentry/TransactionContext;->instrumenter:Lio/sentry/Instrumenter;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/TransactionContext;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getParentSampled()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lio/sentry/TransactionContext;->parentSamplingDecision:Lio/sentry/TracesSamplingDecision;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 154
    :cond_0
    invoke-virtual {p0}, Lio/sentry/TracesSamplingDecision;->getSampled()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getParentSamplingDecision()Lio/sentry/TracesSamplingDecision;
    .locals 0

    iget-object p0, p0, Lio/sentry/TransactionContext;->parentSamplingDecision:Lio/sentry/TracesSamplingDecision;

    return-object p0
.end method

.method public getTransactionNameSource()Lio/sentry/protocol/TransactionNameSource;
    .locals 0

    iget-object p0, p0, Lio/sentry/TransactionContext;->transactionNameSource:Lio/sentry/protocol/TransactionNameSource;

    return-object p0
.end method

.method public isForNextAppStart()Z
    .locals 0

    iget-boolean p0, p0, Lio/sentry/TransactionContext;->isForNextAppStart:Z

    return p0
.end method

.method public setForNextAppStart(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/sentry/TransactionContext;->isForNextAppStart:Z

    return-void
.end method

.method public setInstrumenter(Lio/sentry/Instrumenter;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/TransactionContext;->instrumenter:Lio/sentry/Instrumenter;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "name is required"

    .line 198
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lio/sentry/TransactionContext;->name:Ljava/lang/String;

    return-void
.end method

.method public setParentSampled(Ljava/lang/Boolean;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lio/sentry/TransactionContext;->parentSamplingDecision:Lio/sentry/TracesSamplingDecision;

    goto :goto_0

    .line 169
    :cond_0
    new-instance v0, Lio/sentry/TracesSamplingDecision;

    invoke-direct {v0, p1}, Lio/sentry/TracesSamplingDecision;-><init>(Ljava/lang/Boolean;)V

    iput-object v0, p0, Lio/sentry/TransactionContext;->parentSamplingDecision:Lio/sentry/TracesSamplingDecision;

    :goto_0
    return-void
.end method

.method public setParentSampled(Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iput-object v0, p0, Lio/sentry/TransactionContext;->parentSamplingDecision:Lio/sentry/TracesSamplingDecision;

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 178
    new-instance p2, Lio/sentry/TracesSamplingDecision;

    invoke-direct {p2, p1}, Lio/sentry/TracesSamplingDecision;-><init>(Ljava/lang/Boolean;)V

    iput-object p2, p0, Lio/sentry/TransactionContext;->parentSamplingDecision:Lio/sentry/TracesSamplingDecision;

    goto :goto_0

    .line 180
    :cond_1
    new-instance v1, Lio/sentry/TracesSamplingDecision;

    invoke-direct {v1, p1, v0, p2, v0}, Lio/sentry/TracesSamplingDecision;-><init>(Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Boolean;Ljava/lang/Double;)V

    iput-object v1, p0, Lio/sentry/TransactionContext;->parentSamplingDecision:Lio/sentry/TracesSamplingDecision;

    :goto_0
    return-void
.end method

.method public setTransactionNameSource(Lio/sentry/protocol/TransactionNameSource;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/TransactionContext;->transactionNameSource:Lio/sentry/protocol/TransactionNameSource;

    return-void
.end method
