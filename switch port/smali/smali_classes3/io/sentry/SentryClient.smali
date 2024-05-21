.class public final Lio/sentry/SentryClient;
.super Ljava/lang/Object;
.source "SentryClient.java"

# interfaces
.implements Lio/sentry/ISentryClient;
.implements Lio/sentry/metrics/IMetricsClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/SentryClient$SortBreadcrumbsByDate;
    }
.end annotation


# static fields
.field static final SENTRY_PROTOCOL_VERSION:Ljava/lang/String; = "7"


# instance fields
.field private enabled:Z

.field private final metricsAggregator:Lio/sentry/IMetricsAggregator;

.field private final options:Lio/sentry/SentryOptions;

.field private final random:Ljava/security/SecureRandom;

.field private final sortBreadcrumbsByDate:Lio/sentry/SentryClient$SortBreadcrumbsByDate;

.field private final transport:Lio/sentry/transport/ITransport;


# direct methods
.method constructor <init>(Lio/sentry/SentryOptions;)V
    .locals 3

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lio/sentry/SentryClient$SortBreadcrumbsByDate;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/sentry/SentryClient$SortBreadcrumbsByDate;-><init>(Lio/sentry/SentryClient$1;)V

    iput-object v0, p0, Lio/sentry/SentryClient;->sortBreadcrumbsByDate:Lio/sentry/SentryClient$SortBreadcrumbsByDate;

    const-string v0, "SentryOptions is required."

    .line 53
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/SentryOptions;

    iput-object v0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/sentry/SentryClient;->enabled:Z

    .line 56
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getTransportFactory()Lio/sentry/ITransportFactory;

    move-result-object v0

    .line 57
    instance-of v2, v0, Lio/sentry/NoOpTransportFactory;

    if-eqz v2, :cond_0

    .line 58
    new-instance v0, Lio/sentry/AsyncHttpTransportFactory;

    invoke-direct {v0}, Lio/sentry/AsyncHttpTransportFactory;-><init>()V

    .line 59
    invoke-virtual {p1, v0}, Lio/sentry/SentryOptions;->setTransportFactory(Lio/sentry/ITransportFactory;)V

    .line 62
    :cond_0
    new-instance v2, Lio/sentry/RequestDetailsResolver;

    invoke-direct {v2, p1}, Lio/sentry/RequestDetailsResolver;-><init>(Lio/sentry/SentryOptions;)V

    .line 63
    invoke-virtual {v2}, Lio/sentry/RequestDetailsResolver;->resolve()Lio/sentry/RequestDetails;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Lio/sentry/ITransportFactory;->create(Lio/sentry/SentryOptions;Lio/sentry/RequestDetails;)Lio/sentry/transport/ITransport;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/SentryClient;->transport:Lio/sentry/transport/ITransport;

    .line 66
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->isEnableMetrics()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    new-instance v0, Lio/sentry/MetricsAggregator;

    invoke-direct {v0, p1, p0}, Lio/sentry/MetricsAggregator;-><init>(Lio/sentry/SentryOptions;Lio/sentry/metrics/IMetricsClient;)V

    goto :goto_0

    .line 68
    :cond_1
    invoke-static {}, Lio/sentry/metrics/NoopMetricsAggregator;->getInstance()Lio/sentry/metrics/NoopMetricsAggregator;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lio/sentry/SentryClient;->metricsAggregator:Lio/sentry/IMetricsAggregator;

    .line 70
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getSampleRate()Ljava/lang/Double;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    :goto_1
    iput-object v1, p0, Lio/sentry/SentryClient;->random:Ljava/security/SecureRandom;

    return-void
.end method

.method private addScopeAttachmentsToHint(Lio/sentry/IScope;Lio/sentry/Hint;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 259
    invoke-interface {p1}, Lio/sentry/IScope;->getAttachments()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p2, p0}, Lio/sentry/Hint;->addAttachments(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private applyScope(Lio/sentry/CheckIn;Lio/sentry/IScope;)Lio/sentry/CheckIn;
    .locals 1

    if-eqz p2, :cond_1

    .line 817
    invoke-interface {p2}, Lio/sentry/IScope;->getSpan()Lio/sentry/ISpan;

    move-result-object p0

    .line 818
    invoke-virtual {p1}, Lio/sentry/CheckIn;->getContexts()Lio/sentry/MonitorContexts;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/MonitorContexts;->getTrace()Lio/sentry/SpanContext;

    move-result-object v0

    if-nez v0, :cond_1

    if-nez p0, :cond_0

    .line 821
    invoke-virtual {p1}, Lio/sentry/CheckIn;->getContexts()Lio/sentry/MonitorContexts;

    move-result-object p0

    .line 822
    invoke-interface {p2}, Lio/sentry/IScope;->getPropagationContext()Lio/sentry/PropagationContext;

    move-result-object p2

    invoke-static {p2}, Lio/sentry/TransactionContext;->fromPropagationContext(Lio/sentry/PropagationContext;)Lio/sentry/TransactionContext;

    move-result-object p2

    invoke-virtual {p0, p2}, Lio/sentry/MonitorContexts;->setTrace(Lio/sentry/SpanContext;)V

    goto :goto_0

    .line 824
    :cond_0
    invoke-virtual {p1}, Lio/sentry/CheckIn;->getContexts()Lio/sentry/MonitorContexts;

    move-result-object p2

    invoke-interface {p0}, Lio/sentry/ISpan;->getSpanContext()Lio/sentry/SpanContext;

    move-result-object p0

    invoke-virtual {p2, p0}, Lio/sentry/MonitorContexts;->setTrace(Lio/sentry/SpanContext;)V

    :cond_1
    :goto_0
    return-object p1
.end method

.method private applyScope(Lio/sentry/SentryBaseEvent;Lio/sentry/IScope;)Lio/sentry/SentryBaseEvent;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/sentry/SentryBaseEvent;",
            ">(TT;",
            "Lio/sentry/IScope;",
            ")TT;"
        }
    .end annotation

    if-eqz p2, :cond_a

    .line 834
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getRequest()Lio/sentry/protocol/Request;

    move-result-object v0

    if-nez v0, :cond_0

    .line 835
    invoke-interface {p2}, Lio/sentry/IScope;->getRequest()Lio/sentry/protocol/Request;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/sentry/SentryBaseEvent;->setRequest(Lio/sentry/protocol/Request;)V

    .line 837
    :cond_0
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getUser()Lio/sentry/protocol/User;

    move-result-object v0

    if-nez v0, :cond_1

    .line 838
    invoke-interface {p2}, Lio/sentry/IScope;->getUser()Lio/sentry/protocol/User;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/sentry/SentryBaseEvent;->setUser(Lio/sentry/protocol/User;)V

    .line 840
    :cond_1
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getTags()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_2

    .line 841
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p2}, Lio/sentry/IScope;->getTags()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1, v0}, Lio/sentry/SentryBaseEvent;->setTags(Ljava/util/Map;)V

    goto :goto_1

    .line 843
    :cond_2
    invoke-interface {p2}, Lio/sentry/IScope;->getTags()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 844
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getTags()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 845
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getTags()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 849
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getBreadcrumbs()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_5

    .line 850
    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {p2}, Lio/sentry/IScope;->getBreadcrumbs()Ljava/util/Queue;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, p0}, Lio/sentry/SentryBaseEvent;->setBreadcrumbs(Ljava/util/List;)V

    goto :goto_2

    .line 852
    :cond_5
    invoke-interface {p2}, Lio/sentry/IScope;->getBreadcrumbs()Ljava/util/Queue;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/sentry/SentryClient;->sortBreadcrumbsByDate(Lio/sentry/SentryBaseEvent;Ljava/util/Collection;)V

    .line 854
    :goto_2
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getExtras()Ljava/util/Map;

    move-result-object p0

    if-nez p0, :cond_6

    .line 855
    new-instance p0, Ljava/util/HashMap;

    invoke-interface {p2}, Lio/sentry/IScope;->getExtras()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1, p0}, Lio/sentry/SentryBaseEvent;->setExtras(Ljava/util/Map;)V

    goto :goto_4

    .line 857
    :cond_6
    invoke-interface {p2}, Lio/sentry/IScope;->getExtras()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 858
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getExtras()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 859
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getExtras()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 863
    :cond_8
    :goto_4
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object p0

    .line 864
    new-instance v0, Lio/sentry/protocol/Contexts;

    invoke-interface {p2}, Lio/sentry/IScope;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object p2

    invoke-direct {v0, p2}, Lio/sentry/protocol/Contexts;-><init>(Lio/sentry/protocol/Contexts;)V

    invoke-virtual {v0}, Lio/sentry/protocol/Contexts;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_9
    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 865
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/sentry/protocol/Contexts;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 866
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lio/sentry/protocol/Contexts;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_a
    return-object p1
.end method

.method private applyScope(Lio/sentry/SentryEvent;Lio/sentry/IScope;Lio/sentry/Hint;)Lio/sentry/SentryEvent;
    .locals 2

    if-eqz p2, :cond_5

    .line 785
    invoke-direct {p0, p1, p2}, Lio/sentry/SentryClient;->applyScope(Lio/sentry/SentryBaseEvent;Lio/sentry/IScope;)Lio/sentry/SentryBaseEvent;

    .line 787
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getTransaction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 788
    invoke-interface {p2}, Lio/sentry/IScope;->getTransactionName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/sentry/SentryEvent;->setTransaction(Ljava/lang/String;)V

    .line 790
    :cond_0
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getFingerprints()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    .line 791
    invoke-interface {p2}, Lio/sentry/IScope;->getFingerprint()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/sentry/SentryEvent;->setFingerprints(Ljava/util/List;)V

    .line 794
    :cond_1
    invoke-interface {p2}, Lio/sentry/IScope;->getLevel()Lio/sentry/SentryLevel;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 795
    invoke-interface {p2}, Lio/sentry/IScope;->getLevel()Lio/sentry/SentryLevel;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/sentry/SentryEvent;->setLevel(Lio/sentry/SentryLevel;)V

    .line 798
    :cond_2
    invoke-interface {p2}, Lio/sentry/IScope;->getSpan()Lio/sentry/ISpan;

    move-result-object v0

    .line 799
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/protocol/Contexts;->getTrace()Lio/sentry/SpanContext;

    move-result-object v1

    if-nez v1, :cond_4

    if-nez v0, :cond_3

    .line 802
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v0

    .line 803
    invoke-interface {p2}, Lio/sentry/IScope;->getPropagationContext()Lio/sentry/PropagationContext;

    move-result-object v1

    invoke-static {v1}, Lio/sentry/TransactionContext;->fromPropagationContext(Lio/sentry/PropagationContext;)Lio/sentry/TransactionContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/Contexts;->setTrace(Lio/sentry/SpanContext;)V

    goto :goto_0

    .line 805
    :cond_3
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v1

    invoke-interface {v0}, Lio/sentry/ISpan;->getSpanContext()Lio/sentry/SpanContext;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/sentry/protocol/Contexts;->setTrace(Lio/sentry/SpanContext;)V

    .line 809
    :cond_4
    :goto_0
    invoke-interface {p2}, Lio/sentry/IScope;->getEventProcessors()Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p1, p3, p2}, Lio/sentry/SentryClient;->processEvent(Lio/sentry/SentryEvent;Lio/sentry/Hint;Ljava/util/List;)Lio/sentry/SentryEvent;

    move-result-object p1

    :cond_5
    return-object p1
.end method

.method private buildEnvelope(Lio/sentry/CheckIn;Lio/sentry/TraceContext;)Lio/sentry/SentryEnvelope;
    .locals 2

    .line 484
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 487
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/ISerializer;

    move-result-object v1

    invoke-static {v1, p1}, Lio/sentry/SentryEnvelopeItem;->fromCheckIn(Lio/sentry/ISerializer;Lio/sentry/CheckIn;)Lio/sentry/SentryEnvelopeItem;

    move-result-object v1

    .line 488
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 490
    new-instance v1, Lio/sentry/SentryEnvelopeHeader;

    .line 491
    invoke-virtual {p1}, Lio/sentry/CheckIn;->getCheckInId()Lio/sentry/protocol/SentryId;

    move-result-object p1

    iget-object p0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getSdkVersion()Lio/sentry/protocol/SdkVersion;

    move-result-object p0

    invoke-direct {v1, p1, p0, p2}, Lio/sentry/SentryEnvelopeHeader;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/protocol/SdkVersion;Lio/sentry/TraceContext;)V

    .line 493
    new-instance p0, Lio/sentry/SentryEnvelope;

    invoke-direct {p0, v1, v0}, Lio/sentry/SentryEnvelope;-><init>(Lio/sentry/SentryEnvelopeHeader;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method private buildEnvelope(Lio/sentry/SentryBaseEvent;Ljava/util/List;Lio/sentry/Session;Lio/sentry/TraceContext;Lio/sentry/ProfilingTraceData;)Lio/sentry/SentryEnvelope;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/SentryBaseEvent;",
            "Ljava/util/List<",
            "Lio/sentry/Attachment;",
            ">;",
            "Lio/sentry/Session;",
            "Lio/sentry/TraceContext;",
            "Lio/sentry/ProfilingTraceData;",
            ")",
            "Lio/sentry/SentryEnvelope;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lio/sentry/exception/SentryEnvelopeException;
        }
    .end annotation

    .line 319
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 323
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/ISerializer;

    move-result-object v2

    invoke-static {v2, p1}, Lio/sentry/SentryEnvelopeItem;->fromEvent(Lio/sentry/ISerializer;Lio/sentry/SentryBaseEvent;)Lio/sentry/SentryEnvelopeItem;

    move-result-object v2

    .line 324
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p3, :cond_1

    iget-object v2, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 330
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/ISerializer;

    move-result-object v2

    invoke-static {v2, p3}, Lio/sentry/SentryEnvelopeItem;->fromSession(Lio/sentry/ISerializer;Lio/sentry/Session;)Lio/sentry/SentryEnvelopeItem;

    move-result-object p3

    .line 331
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz p5, :cond_2

    iget-object p3, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 337
    invoke-virtual {p3}, Lio/sentry/SentryOptions;->getMaxTraceFileSize()J

    move-result-wide v2

    iget-object p3, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    invoke-virtual {p3}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/ISerializer;

    move-result-object p3

    .line 336
    invoke-static {p5, v2, v3, p3}, Lio/sentry/SentryEnvelopeItem;->fromProfilingTrace(Lio/sentry/ProfilingTraceData;JLio/sentry/ISerializer;)Lio/sentry/SentryEnvelopeItem;

    move-result-object p3

    .line 338
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez p1, :cond_2

    .line 341
    new-instance p1, Lio/sentry/protocol/SentryId;

    invoke-virtual {p5}, Lio/sentry/ProfilingTraceData;->getProfileId()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Lio/sentry/protocol/SentryId;-><init>(Ljava/lang/String;)V

    :cond_2
    if-eqz p2, :cond_3

    .line 346
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/sentry/Attachment;

    iget-object p5, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 349
    invoke-virtual {p5}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/ISerializer;

    move-result-object p5

    iget-object v2, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 350
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    iget-object v3, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 352
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getMaxAttachmentSize()J

    move-result-wide v3

    .line 348
    invoke-static {p5, v2, p3, v3, v4}, Lio/sentry/SentryEnvelopeItem;->fromAttachment(Lio/sentry/ISerializer;Lio/sentry/ILogger;Lio/sentry/Attachment;J)Lio/sentry/SentryEnvelopeItem;

    move-result-object p3

    .line 353
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 357
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    .line 358
    new-instance p2, Lio/sentry/SentryEnvelopeHeader;

    iget-object p0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 359
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getSdkVersion()Lio/sentry/protocol/SdkVersion;

    move-result-object p0

    invoke-direct {p2, p1, p0, p4}, Lio/sentry/SentryEnvelopeHeader;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/protocol/SdkVersion;Lio/sentry/TraceContext;)V

    .line 361
    new-instance p0, Lio/sentry/SentryEnvelope;

    invoke-direct {p0, p2, v0}, Lio/sentry/SentryEnvelope;-><init>(Lio/sentry/SentryEnvelopeHeader;Ljava/lang/Iterable;)V

    return-object p0

    :cond_4
    return-object v1
.end method

.method private buildEnvelope(Lio/sentry/UserFeedback;)Lio/sentry/SentryEnvelope;
    .locals 2

    .line 470
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 473
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/ISerializer;

    move-result-object v1

    invoke-static {v1, p1}, Lio/sentry/SentryEnvelopeItem;->fromUserFeedback(Lio/sentry/ISerializer;Lio/sentry/UserFeedback;)Lio/sentry/SentryEnvelopeItem;

    move-result-object v1

    .line 474
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 476
    new-instance v1, Lio/sentry/SentryEnvelopeHeader;

    .line 477
    invoke-virtual {p1}, Lio/sentry/UserFeedback;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object p1

    iget-object p0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getSdkVersion()Lio/sentry/protocol/SdkVersion;

    move-result-object p0

    invoke-direct {v1, p1, p0}, Lio/sentry/SentryEnvelopeHeader;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/protocol/SdkVersion;)V

    .line 479
    new-instance p0, Lio/sentry/SentryEnvelope;

    invoke-direct {p0, v1, v0}, Lio/sentry/SentryEnvelope;-><init>(Lio/sentry/SentryEnvelopeHeader;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method private executeBeforeSend(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/SentryEvent;
    .locals 1

    iget-object v0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 885
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getBeforeSend()Lio/sentry/SentryOptions$BeforeSendCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 888
    :try_start_0
    invoke-interface {v0, p1, p2}, Lio/sentry/SentryOptions$BeforeSendCallback;->execute(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/SentryEvent;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 891
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v0, "The BeforeSend callback threw an exception. It will be added as breadcrumb and continue."

    .line 892
    invoke-interface {p0, p2, v0, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :cond_0
    :goto_0
    return-object p1
.end method

.method private executeBeforeSendTransaction(Lio/sentry/protocol/SentryTransaction;Lio/sentry/Hint;)Lio/sentry/protocol/SentryTransaction;
    .locals 1

    iget-object v0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 907
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getBeforeSendTransaction()Lio/sentry/SentryOptions$BeforeSendTransactionCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 910
    :try_start_0
    invoke-interface {v0, p1, p2}, Lio/sentry/SentryOptions$BeforeSendTransactionCallback;->execute(Lio/sentry/protocol/SentryTransaction;Lio/sentry/Hint;)Lio/sentry/protocol/SentryTransaction;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 913
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v0, "The BeforeSendTransaction callback threw an exception. It will be added as breadcrumb and continue."

    .line 914
    invoke-interface {p0, p2, v0, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :cond_0
    :goto_0
    return-object p1
.end method

.method private filterForTransaction(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/sentry/Attachment;",
            ">;)",
            "Ljava/util/List<",
            "Lio/sentry/Attachment;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 772
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 773
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/Attachment;

    .line 774
    invoke-virtual {v0}, Lio/sentry/Attachment;->isAddToTransactions()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 775
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method private getAttachments(Lio/sentry/Hint;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/Hint;",
            ")",
            "Ljava/util/List<",
            "Lio/sentry/Attachment;",
            ">;"
        }
    .end annotation

    .line 290
    invoke-virtual {p1}, Lio/sentry/Hint;->getAttachments()Ljava/util/List;

    move-result-object p0

    .line 292
    invoke-virtual {p1}, Lio/sentry/Hint;->getScreenshot()Lio/sentry/Attachment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 294
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    :cond_0
    invoke-virtual {p1}, Lio/sentry/Hint;->getViewHierarchy()Lio/sentry/Attachment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 299
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    :cond_1
    invoke-virtual {p1}, Lio/sentry/Hint;->getThreadDump()Lio/sentry/Attachment;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 304
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object p0
.end method

.method static synthetic lambda$captureEvent$0(Lio/sentry/Session;)V
    .locals 0

    return-void
.end method

.method private processEvent(Lio/sentry/SentryEvent;Lio/sentry/Hint;Ljava/util/List;)Lio/sentry/SentryEvent;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/SentryEvent;",
            "Lio/sentry/Hint;",
            "Ljava/util/List<",
            "Lio/sentry/EventProcessor;",
            ">;)",
            "Lio/sentry/SentryEvent;"
        }
    .end annotation

    .line 372
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/EventProcessor;

    .line 376
    :try_start_0
    instance-of v1, v0, Lio/sentry/BackfillingEventProcessor;

    .line 377
    const-class v2, Lio/sentry/hints/Backfillable;

    invoke-static {p2, v2}, Lio/sentry/util/HintUtils;->hasType(Lio/sentry/Hint;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 379
    invoke-interface {v0, p1, p2}, Lio/sentry/EventProcessor;->process(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/SentryEvent;

    move-result-object p1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    if-nez v1, :cond_2

    .line 381
    invoke-interface {v0, p1, p2}, Lio/sentry/EventProcessor;->process(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/SentryEvent;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 385
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 390
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "An exception occurred while processing event by processor: %s"

    .line 386
    invoke-interface {v2, v3, v1, v5, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    if-nez p1, :cond_0

    iget-object p2, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 395
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p2

    sget-object p3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 399
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Event was dropped by a processor: %s"

    .line 396
    invoke-interface {p2, p3, v1, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 401
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    move-result-object p0

    sget-object p2, Lio/sentry/clientreport/DiscardReason;->EVENT_PROCESSOR:Lio/sentry/clientreport/DiscardReason;

    sget-object p3, Lio/sentry/DataCategory;->Error:Lio/sentry/DataCategory;

    .line 402
    invoke-interface {p0, p2, p3}, Lio/sentry/clientreport/IClientReportRecorder;->recordLostEvent(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;)V

    :cond_3
    return-object p1
.end method

.method private processTransaction(Lio/sentry/protocol/SentryTransaction;Lio/sentry/Hint;Ljava/util/List;)Lio/sentry/protocol/SentryTransaction;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/protocol/SentryTransaction;",
            "Lio/sentry/Hint;",
            "Ljava/util/List<",
            "Lio/sentry/EventProcessor;",
            ">;)",
            "Lio/sentry/protocol/SentryTransaction;"
        }
    .end annotation

    .line 414
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/EventProcessor;

    .line 416
    :try_start_0
    invoke-interface {v0, p1, p2}, Lio/sentry/EventProcessor;->process(Lio/sentry/protocol/SentryTransaction;Lio/sentry/Hint;)Lio/sentry/protocol/SentryTransaction;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 419
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 424
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "An exception occurred while processing transaction by processor: %s"

    .line 420
    invoke-interface {v2, v3, v1, v5, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    if-nez p1, :cond_0

    iget-object p2, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 429
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p2

    sget-object p3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 433
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Transaction was dropped by a processor: %s"

    .line 430
    invoke-interface {p2, p3, v1, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 435
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    move-result-object p0

    sget-object p2, Lio/sentry/clientreport/DiscardReason;->EVENT_PROCESSOR:Lio/sentry/clientreport/DiscardReason;

    sget-object p3, Lio/sentry/DataCategory;->Transaction:Lio/sentry/DataCategory;

    .line 436
    invoke-interface {p0, p2, p3}, Lio/sentry/clientreport/IClientReportRecorder;->recordLostEvent(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;)V

    :cond_1
    return-object p1
.end method

.method private sample()Z
    .locals 6

    iget-object v0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 982
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getSampleRate()Ljava/lang/Double;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/sentry/SentryClient;->random:Ljava/security/SecureRandom;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 983
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getSampleRate()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-object p0, p0, Lio/sentry/SentryClient;->random:Ljava/security/SecureRandom;

    .line 984
    invoke-virtual {p0}, Ljava/security/SecureRandom;->nextDouble()D

    move-result-wide v4

    cmpg-double p0, v2, v4

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private sendEnvelope(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 603
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getBeforeEnvelopeCallback()Lio/sentry/SentryOptions$BeforeEnvelopeCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 606
    :try_start_0
    invoke-interface {v0, p1, p2}, Lio/sentry/SentryOptions$BeforeEnvelopeCallback;->execute(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 609
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "The BeforeEnvelope callback threw an exception."

    .line 610
    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    if-nez p2, :cond_1

    iget-object p0, p0, Lio/sentry/SentryClient;->transport:Lio/sentry/transport/ITransport;

    .line 614
    invoke-interface {p0, p1}, Lio/sentry/transport/ITransport;->send(Lio/sentry/SentryEnvelope;)V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lio/sentry/SentryClient;->transport:Lio/sentry/transport/ITransport;

    .line 616
    invoke-interface {p0, p1, p2}, Lio/sentry/transport/ITransport;->send(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)V

    .line 618
    :goto_1
    invoke-virtual {p1}, Lio/sentry/SentryEnvelope;->getHeader()Lio/sentry/SentryEnvelopeHeader;

    move-result-object p0

    invoke-virtual {p0}, Lio/sentry/SentryEnvelopeHeader;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object p0

    if-eqz p0, :cond_2

    goto :goto_2

    .line 619
    :cond_2
    sget-object p0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    :goto_2
    return-object p0
.end method

.method private shouldApplyScopeData(Lio/sentry/CheckIn;Lio/sentry/Hint;)Z
    .locals 1

    .line 86
    invoke-static {p2}, Lio/sentry/util/HintUtils;->shouldApplyScopeData(Lio/sentry/Hint;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 90
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 94
    invoke-virtual {p1}, Lio/sentry/CheckIn;->getCheckInId()Lio/sentry/protocol/SentryId;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Check-in was cached so not applying scope: %s"

    .line 91
    invoke-interface {p0, p2, v0, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0
.end method

.method private shouldApplyScopeData(Lio/sentry/SentryBaseEvent;Lio/sentry/Hint;)Z
    .locals 1

    .line 75
    invoke-static {p2}, Lio/sentry/util/HintUtils;->shouldApplyScopeData(Lio/sentry/Hint;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 79
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 80
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Event was cached so not applying scope: %s"

    invoke-interface {p0, p2, v0, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0
.end method

.method private shouldSendSessionUpdateForDroppedEvent(Lio/sentry/Session;Lio/sentry/Session;)Z
    .locals 3

    const/4 p0, 0x0

    if-nez p2, :cond_0

    return p0

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    return v0

    .line 274
    :cond_1
    invoke-virtual {p2}, Lio/sentry/Session;->getStatus()Lio/sentry/Session$State;

    move-result-object v1

    sget-object v2, Lio/sentry/Session$State;->Crashed:Lio/sentry/Session$State;

    if-ne v1, v2, :cond_2

    .line 275
    invoke-virtual {p1}, Lio/sentry/Session;->getStatus()Lio/sentry/Session$State;

    move-result-object v1

    sget-object v2, Lio/sentry/Session$State;->Crashed:Lio/sentry/Session$State;

    if-eq v1, v2, :cond_2

    return v0

    .line 281
    :cond_2
    invoke-virtual {p2}, Lio/sentry/Session;->errorCount()I

    move-result p2

    if-lez p2, :cond_3

    invoke-virtual {p1}, Lio/sentry/Session;->errorCount()I

    move-result p1

    if-gtz p1, :cond_3

    return v0

    :cond_3
    return p0
.end method

.method private sortBreadcrumbsByDate(Lio/sentry/SentryBaseEvent;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/SentryBaseEvent;",
            "Ljava/util/Collection<",
            "Lio/sentry/Breadcrumb;",
            ">;)V"
        }
    .end annotation

    .line 875
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getBreadcrumbs()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 877
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 878
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Lio/sentry/SentryClient;->sortBreadcrumbsByDate:Lio/sentry/SentryClient$SortBreadcrumbsByDate;

    .line 879
    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public captureCheckIn(Lio/sentry/CheckIn;Lio/sentry/IScope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
    .locals 4

    if-nez p3, :cond_0

    .line 708
    new-instance p3, Lio/sentry/Hint;

    invoke-direct {p3}, Lio/sentry/Hint;-><init>()V

    .line 711
    :cond_0
    invoke-virtual {p1}, Lio/sentry/CheckIn;->getEnvironment()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 712
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getEnvironment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/sentry/CheckIn;->setEnvironment(Ljava/lang/String;)V

    .line 715
    :cond_1
    invoke-virtual {p1}, Lio/sentry/CheckIn;->getRelease()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 716
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getRelease()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/sentry/CheckIn;->setRelease(Ljava/lang/String;)V

    .line 719
    :cond_2
    invoke-direct {p0, p1, p3}, Lio/sentry/SentryClient;->shouldApplyScopeData(Lio/sentry/CheckIn;Lio/sentry/Hint;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 720
    invoke-direct {p0, p1, p2}, Lio/sentry/SentryClient;->applyScope(Lio/sentry/CheckIn;Lio/sentry/IScope;)Lio/sentry/CheckIn;

    move-result-object p1

    :cond_3
    iget-object v0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 723
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getIgnoredCheckIns()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lio/sentry/CheckIn;->getMonitorSlug()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/sentry/util/CheckInUtils;->isIgnored(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 725
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 729
    invoke-virtual {p1}, Lio/sentry/CheckIn;->getMonitorSlug()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p3, "Check-in was dropped as slug %s is ignored"

    .line 726
    invoke-interface {p0, p2, p3, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 734
    sget-object p0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    return-object p0

    :cond_4
    iget-object v0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 737
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    invoke-virtual {p1}, Lio/sentry/CheckIn;->getCheckInId()Lio/sentry/protocol/SentryId;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Capturing check-in: %s"

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 739
    invoke-virtual {p1}, Lio/sentry/CheckIn;->getCheckInId()Lio/sentry/protocol/SentryId;

    move-result-object v0

    if-eqz p2, :cond_6

    .line 744
    :try_start_0
    invoke-interface {p2}, Lio/sentry/IScope;->getTransaction()Lio/sentry/ITransaction;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 746
    invoke-interface {v1}, Lio/sentry/ITransaction;->traceContext()Lio/sentry/TraceContext;

    move-result-object p2

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 749
    invoke-static {p2, v1}, Lio/sentry/util/TracingUtils;->maybeUpdateBaggage(Lio/sentry/IScope;Lio/sentry/SentryOptions;)Lio/sentry/PropagationContext;

    move-result-object p2

    .line 750
    invoke-virtual {p2}, Lio/sentry/PropagationContext;->traceContext()Lio/sentry/TraceContext;

    move-result-object p2

    goto :goto_0

    :cond_6
    const/4 p2, 0x0

    .line 754
    :goto_0
    invoke-direct {p0, p1, p2}, Lio/sentry/SentryClient;->buildEnvelope(Lio/sentry/CheckIn;Lio/sentry/TraceContext;)Lio/sentry/SentryEnvelope;

    move-result-object p1

    .line 756
    invoke-virtual {p3}, Lio/sentry/Hint;->clear()V

    .line 757
    invoke-direct {p0, p1, p3}, Lio/sentry/SentryClient;->sendEnvelope(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    iget-object p0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 759
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string p3, "Capturing check-in %s failed."

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, p2, p1, p3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 761
    sget-object p0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    :goto_1
    return-object p0
.end method

.method public captureEnvelope(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
    .locals 1

    const-string v0, "SentryEnvelope is required."

    .line 585
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-nez p2, :cond_0

    .line 588
    new-instance p2, Lio/sentry/Hint;

    invoke-direct {p2}, Lio/sentry/Hint;-><init>()V

    .line 592
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lio/sentry/Hint;->clear()V

    .line 593
    invoke-direct {p0, p1, p2}, Lio/sentry/SentryClient;->sendEnvelope(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    iget-object p0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 595
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v0, "Failed to capture envelope."

    invoke-interface {p0, p2, v0, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 597
    sget-object p0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    return-object p0
.end method

.method public captureEvent(Lio/sentry/SentryEvent;Lio/sentry/IScope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
    .locals 12

    const-string v0, "SentryEvent is required."

    .line 102
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-nez p3, :cond_0

    .line 105
    new-instance p3, Lio/sentry/Hint;

    invoke-direct {p3}, Lio/sentry/Hint;-><init>()V

    .line 108
    :cond_0
    invoke-direct {p0, p1, p3}, Lio/sentry/SentryClient;->shouldApplyScopeData(Lio/sentry/SentryBaseEvent;Lio/sentry/Hint;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    invoke-direct {p0, p2, p3}, Lio/sentry/SentryClient;->addScopeAttachmentsToHint(Lio/sentry/IScope;Lio/sentry/Hint;)V

    :cond_1
    iget-object v0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 112
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Capturing event: %s"

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_2

    .line 115
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 116
    invoke-virtual {v1, v0}, Lio/sentry/SentryOptions;->containsIgnoredExceptionForType(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 118
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 122
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    const-string v0, "Event was dropped as the exception %s is ignored"

    .line 119
    invoke-interface {p1, p2, v0, p3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 124
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    move-result-object p0

    sget-object p1, Lio/sentry/clientreport/DiscardReason;->EVENT_PROCESSOR:Lio/sentry/clientreport/DiscardReason;

    sget-object p2, Lio/sentry/DataCategory;->Error:Lio/sentry/DataCategory;

    .line 125
    invoke-interface {p0, p1, p2}, Lio/sentry/clientreport/IClientReportRecorder;->recordLostEvent(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;)V

    .line 126
    sget-object p0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    return-object p0

    .line 130
    :cond_2
    invoke-direct {p0, p1, p3}, Lio/sentry/SentryClient;->shouldApplyScopeData(Lio/sentry/SentryBaseEvent;Lio/sentry/Hint;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 134
    invoke-direct {p0, p1, p2, p3}, Lio/sentry/SentryClient;->applyScope(Lio/sentry/SentryEvent;Lio/sentry/IScope;Lio/sentry/Hint;)Lio/sentry/SentryEvent;

    move-result-object p1

    if-nez p1, :cond_3

    iget-object p0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 137
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string p2, "Event was dropped by applyScope"

    new-array p3, v1, [Ljava/lang/Object;

    invoke-interface {p0, p1, p2, p3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    sget-object p0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    return-object p0

    :cond_3
    iget-object v0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 142
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getEventProcessors()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p3, v0}, Lio/sentry/SentryClient;->processEvent(Lio/sentry/SentryEvent;Lio/sentry/Hint;Ljava/util/List;)Lio/sentry/SentryEvent;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 145
    invoke-direct {p0, p1, p3}, Lio/sentry/SentryClient;->executeBeforeSend(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/SentryEvent;

    move-result-object p1

    if-nez p1, :cond_4

    iget-object v0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 148
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v3, "Event was dropped by beforeSend"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 150
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    move-result-object v0

    sget-object v2, Lio/sentry/clientreport/DiscardReason;->BEFORE_SEND:Lio/sentry/clientreport/DiscardReason;

    sget-object v3, Lio/sentry/DataCategory;->Error:Lio/sentry/DataCategory;

    .line 151
    invoke-interface {v0, v2, v3}, Lio/sentry/clientreport/IClientReportRecorder;->recordLostEvent(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;)V

    :cond_4
    if-nez p1, :cond_5

    .line 156
    sget-object p0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    return-object p0

    :cond_5
    const/4 v0, 0x0

    if-eqz p2, :cond_6

    .line 161
    new-instance v2, Lio/sentry/SentryClient$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lio/sentry/SentryClient$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p2, v2}, Lio/sentry/IScope;->withSession(Lio/sentry/Scope$IWithSession;)Lio/sentry/Session;

    move-result-object v2

    goto :goto_0

    :cond_6
    move-object v2, v0

    :goto_0
    if-eqz p1, :cond_a

    if-eqz v2, :cond_8

    .line 166
    invoke-virtual {v2}, Lio/sentry/Session;->isTerminated()Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_1

    :cond_7
    move-object v3, v0

    goto :goto_2

    .line 167
    :cond_8
    :goto_1
    invoke-virtual {p0, p1, p3, p2}, Lio/sentry/SentryClient;->updateSessionData(Lio/sentry/SentryEvent;Lio/sentry/Hint;Lio/sentry/IScope;)Lio/sentry/Session;

    move-result-object v3

    .line 170
    :goto_2
    invoke-direct {p0}, Lio/sentry/SentryClient;->sample()Z

    move-result v4

    if-nez v4, :cond_9

    iget-object v4, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 172
    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v4

    sget-object v5, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 176
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v6, "Event %s was dropped due to sampling decision."

    .line 173
    invoke-interface {v4, v5, v6, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 178
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    move-result-object p1

    sget-object v4, Lio/sentry/clientreport/DiscardReason;->SAMPLE_RATE:Lio/sentry/clientreport/DiscardReason;

    sget-object v5, Lio/sentry/DataCategory;->Error:Lio/sentry/DataCategory;

    .line 179
    invoke-interface {p1, v4, v5}, Lio/sentry/clientreport/IClientReportRecorder;->recordLostEvent(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;)V

    move-object v7, v0

    goto :goto_3

    :cond_9
    move-object v7, p1

    :goto_3
    move-object v9, v3

    goto :goto_4

    :cond_a
    move-object v7, p1

    move-object v9, v0

    .line 186
    :goto_4
    invoke-direct {p0, v2, v9}, Lio/sentry/SentryClient;->shouldSendSessionUpdateForDroppedEvent(Lio/sentry/Session;Lio/sentry/Session;)Z

    move-result p1

    if-nez v7, :cond_b

    if-nez p1, :cond_b

    iget-object p0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 190
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string p2, "Not sending session update for dropped event as it did not cause the session health to change."

    new-array p3, v1, [Ljava/lang/Object;

    .line 191
    invoke-interface {p0, p1, p2, p3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    sget-object p0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    return-object p0

    .line 197
    :cond_b
    sget-object p1, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    if-eqz v7, :cond_c

    .line 198
    invoke-virtual {v7}, Lio/sentry/SentryEvent;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 199
    invoke-virtual {v7}, Lio/sentry/SentryEvent;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object p1

    .line 204
    :cond_c
    :try_start_0
    const-class v2, Lio/sentry/hints/Backfillable;

    invoke-static {p3, v2}, Lio/sentry/util/HintUtils;->hasType(Lio/sentry/Hint;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_d

    if-eqz v7, :cond_f

    iget-object v2, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 207
    invoke-static {v7, v2}, Lio/sentry/Baggage;->fromEvent(Lio/sentry/SentryEvent;Lio/sentry/SentryOptions;)Lio/sentry/Baggage;

    move-result-object v2

    .line 208
    invoke-virtual {v2}, Lio/sentry/Baggage;->toTraceContext()Lio/sentry/TraceContext;

    move-result-object v2

    goto :goto_5

    :cond_d
    if-eqz p2, :cond_f

    .line 211
    invoke-interface {p2}, Lio/sentry/IScope;->getTransaction()Lio/sentry/ITransaction;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 213
    invoke-interface {v2}, Lio/sentry/ITransaction;->traceContext()Lio/sentry/TraceContext;

    move-result-object v2

    :goto_5
    move-object v10, v2

    goto :goto_6

    :cond_e
    iget-object v2, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 216
    invoke-static {p2, v2}, Lio/sentry/util/TracingUtils;->maybeUpdateBaggage(Lio/sentry/IScope;Lio/sentry/SentryOptions;)Lio/sentry/PropagationContext;

    move-result-object v2

    .line 217
    invoke-virtual {v2}, Lio/sentry/PropagationContext;->traceContext()Lio/sentry/TraceContext;

    move-result-object v2

    goto :goto_5

    :cond_f
    move-object v10, v0

    :goto_6
    if-eqz v7, :cond_10

    .line 222
    invoke-direct {p0, p3}, Lio/sentry/SentryClient;->getAttachments(Lio/sentry/Hint;)Ljava/util/List;

    move-result-object v2

    move-object v8, v2

    goto :goto_7

    :cond_10
    move-object v8, v0

    :goto_7
    const/4 v11, 0x0

    move-object v6, p0

    .line 224
    invoke-direct/range {v6 .. v11}, Lio/sentry/SentryClient;->buildEnvelope(Lio/sentry/SentryBaseEvent;Ljava/util/List;Lio/sentry/Session;Lio/sentry/TraceContext;Lio/sentry/ProfilingTraceData;)Lio/sentry/SentryEnvelope;

    move-result-object v2

    .line 226
    invoke-virtual {p3}, Lio/sentry/Hint;->clear()V

    if-eqz v2, :cond_11

    .line 228
    invoke-direct {p0, v2, p3}, Lio/sentry/SentryClient;->sendEnvelope(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lio/sentry/exception/SentryEnvelopeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    move-exception v2

    iget-object p0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 231
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v3, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v4, "Capturing event %s failed."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, v3, v2, v4, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    sget-object p1, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    :cond_11
    :goto_8
    if-eqz p2, :cond_13

    .line 240
    invoke-interface {p2}, Lio/sentry/IScope;->getTransaction()Lio/sentry/ITransaction;

    move-result-object p0

    if-eqz p0, :cond_13

    .line 242
    const-class p2, Lio/sentry/hints/TransactionEnd;

    invoke-static {p3, p2}, Lio/sentry/util/HintUtils;->hasType(Lio/sentry/Hint;Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_13

    .line 243
    invoke-static {p3}, Lio/sentry/util/HintUtils;->getSentrySdkHint(Lio/sentry/Hint;)Ljava/lang/Object;

    move-result-object p2

    .line 244
    instance-of v2, p2, Lio/sentry/hints/DiskFlushNotification;

    if-eqz v2, :cond_12

    .line 245
    check-cast p2, Lio/sentry/hints/DiskFlushNotification;

    invoke-interface {p0}, Lio/sentry/ITransaction;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v0

    invoke-interface {p2, v0}, Lio/sentry/hints/DiskFlushNotification;->setFlushable(Lio/sentry/protocol/SentryId;)V

    .line 246
    sget-object p2, Lio/sentry/SpanStatus;->ABORTED:Lio/sentry/SpanStatus;

    invoke-interface {p0, p2, v1, p3}, Lio/sentry/ITransaction;->forceFinish(Lio/sentry/SpanStatus;ZLio/sentry/Hint;)V

    goto :goto_9

    .line 248
    :cond_12
    sget-object p2, Lio/sentry/SpanStatus;->ABORTED:Lio/sentry/SpanStatus;

    invoke-interface {p0, p2, v1, v0}, Lio/sentry/ITransaction;->forceFinish(Lio/sentry/SpanStatus;ZLio/sentry/Hint;)V

    :cond_13
    :goto_9
    return-object p1
.end method

.method public captureMetrics(Lio/sentry/metrics/EncodedMetrics;)Lio/sentry/protocol/SentryId;
    .locals 4

    .line 997
    invoke-static {p1}, Lio/sentry/SentryEnvelopeItem;->fromMetrics(Lio/sentry/metrics/EncodedMetrics;)Lio/sentry/SentryEnvelopeItem;

    move-result-object p1

    .line 998
    new-instance v0, Lio/sentry/SentryEnvelopeHeader;

    new-instance v1, Lio/sentry/protocol/SentryId;

    invoke-direct {v1}, Lio/sentry/protocol/SentryId;-><init>()V

    iget-object v2, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 999
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getSdkVersion()Lio/sentry/protocol/SdkVersion;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lio/sentry/SentryEnvelopeHeader;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/protocol/SdkVersion;Lio/sentry/TraceContext;)V

    .line 1001
    new-instance v1, Lio/sentry/SentryEnvelope;

    .line 1002
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lio/sentry/SentryEnvelope;-><init>(Lio/sentry/SentryEnvelopeHeader;Ljava/lang/Iterable;)V

    .line 1003
    invoke-virtual {p0, v1}, Lio/sentry/SentryClient;->captureEnvelope(Lio/sentry/SentryEnvelope;)Lio/sentry/protocol/SentryId;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 1004
    :cond_0
    sget-object p0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    :goto_0
    return-object p0
.end method

.method public captureSession(Lio/sentry/Session;Lio/sentry/Hint;)V
    .locals 2

    const-string v0, "Session is required."

    .line 561
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 563
    invoke-virtual {p1}, Lio/sentry/Session;->getRelease()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lio/sentry/Session;->getRelease()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 572
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/ISerializer;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getSdkVersion()Lio/sentry/protocol/SdkVersion;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lio/sentry/SentryEnvelope;->from(Lio/sentry/ISerializer;Lio/sentry/Session;Lio/sentry/protocol/SdkVersion;)Lio/sentry/SentryEnvelope;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 578
    invoke-virtual {p0, p1, p2}, Lio/sentry/SentryClient;->captureEnvelope(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    return-void

    :catch_0
    move-exception p1

    iget-object p0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 574
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v0, "Failed to capture session."

    invoke-interface {p0, p2, v0, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_1
    :goto_0
    iget-object p0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 565
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "Sessions can\'t be captured without setting a release."

    .line 566
    invoke-interface {p0, p1, v0, p2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public captureTransaction(Lio/sentry/protocol/SentryTransaction;Lio/sentry/TraceContext;Lio/sentry/IScope;Lio/sentry/Hint;Lio/sentry/ProfilingTraceData;)Lio/sentry/protocol/SentryId;
    .locals 7

    const-string v0, "Transaction is required."

    .line 629
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-nez p4, :cond_0

    .line 632
    new-instance p4, Lio/sentry/Hint;

    invoke-direct {p4}, Lio/sentry/Hint;-><init>()V

    .line 635
    :cond_0
    invoke-direct {p0, p1, p4}, Lio/sentry/SentryClient;->shouldApplyScopeData(Lio/sentry/SentryBaseEvent;Lio/sentry/Hint;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 636
    invoke-direct {p0, p3, p4}, Lio/sentry/SentryClient;->addScopeAttachmentsToHint(Lio/sentry/IScope;Lio/sentry/Hint;)V

    :cond_1
    iget-object v0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 640
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 641
    invoke-virtual {p1}, Lio/sentry/protocol/SentryTransaction;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Capturing transaction: %s"

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 643
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    .line 644
    invoke-virtual {p1}, Lio/sentry/protocol/SentryTransaction;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 645
    invoke-virtual {p1}, Lio/sentry/protocol/SentryTransaction;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v0

    .line 648
    :cond_2
    invoke-direct {p0, p1, p4}, Lio/sentry/SentryClient;->shouldApplyScopeData(Lio/sentry/SentryBaseEvent;Lio/sentry/Hint;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 649
    invoke-direct {p0, p1, p3}, Lio/sentry/SentryClient;->applyScope(Lio/sentry/SentryBaseEvent;Lio/sentry/IScope;)Lio/sentry/SentryBaseEvent;

    move-result-object p1

    check-cast p1, Lio/sentry/protocol/SentryTransaction;

    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    .line 652
    invoke-interface {p3}, Lio/sentry/IScope;->getEventProcessors()Ljava/util/List;

    move-result-object p3

    invoke-direct {p0, p1, p4, p3}, Lio/sentry/SentryClient;->processTransaction(Lio/sentry/protocol/SentryTransaction;Lio/sentry/Hint;Ljava/util/List;)Lio/sentry/protocol/SentryTransaction;

    move-result-object p1

    :cond_3
    if-nez p1, :cond_4

    iget-object p3, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 656
    invoke-virtual {p3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p3

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v3, "Transaction was dropped by applyScope"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-interface {p3, v1, v3, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    if-eqz p1, :cond_5

    iget-object p3, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 661
    invoke-virtual {p3}, Lio/sentry/SentryOptions;->getEventProcessors()Ljava/util/List;

    move-result-object p3

    invoke-direct {p0, p1, p4, p3}, Lio/sentry/SentryClient;->processTransaction(Lio/sentry/protocol/SentryTransaction;Lio/sentry/Hint;Ljava/util/List;)Lio/sentry/protocol/SentryTransaction;

    move-result-object p1

    :cond_5
    if-nez p1, :cond_6

    iget-object p0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 665
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string p2, "Transaction was dropped by Event processors."

    new-array p3, v2, [Ljava/lang/Object;

    invoke-interface {p0, p1, p2, p3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 666
    sget-object p0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    return-object p0

    .line 669
    :cond_6
    invoke-direct {p0, p1, p4}, Lio/sentry/SentryClient;->executeBeforeSendTransaction(Lio/sentry/protocol/SentryTransaction;Lio/sentry/Hint;)Lio/sentry/protocol/SentryTransaction;

    move-result-object p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 673
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string p3, "Transaction was dropped by beforeSendTransaction."

    new-array p4, v2, [Ljava/lang/Object;

    .line 674
    invoke-interface {p1, p2, p3, p4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 676
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    move-result-object p0

    sget-object p1, Lio/sentry/clientreport/DiscardReason;->BEFORE_SEND:Lio/sentry/clientreport/DiscardReason;

    sget-object p2, Lio/sentry/DataCategory;->Transaction:Lio/sentry/DataCategory;

    .line 677
    invoke-interface {p0, p1, p2}, Lio/sentry/clientreport/IClientReportRecorder;->recordLostEvent(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;)V

    .line 678
    sget-object p0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    return-object p0

    .line 685
    :cond_7
    :try_start_0
    invoke-direct {p0, p4}, Lio/sentry/SentryClient;->getAttachments(Lio/sentry/Hint;)Ljava/util/List;

    move-result-object p3

    invoke-direct {p0, p3}, Lio/sentry/SentryClient;->filterForTransaction(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p5

    .line 683
    invoke-direct/range {v1 .. v6}, Lio/sentry/SentryClient;->buildEnvelope(Lio/sentry/SentryBaseEvent;Ljava/util/List;Lio/sentry/Session;Lio/sentry/TraceContext;Lio/sentry/ProfilingTraceData;)Lio/sentry/SentryEnvelope;

    move-result-object p1

    .line 690
    invoke-virtual {p4}, Lio/sentry/Hint;->clear()V

    if-eqz p1, :cond_8

    .line 692
    invoke-direct {p0, p1, p4}, Lio/sentry/SentryClient;->sendEnvelope(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lio/sentry/exception/SentryEnvelopeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 695
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string p3, "Capturing transaction %s failed."

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p4

    invoke-interface {p0, p2, p1, p3, p4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 697
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    :cond_8
    :goto_0
    return-object v0
.end method

.method public captureUserFeedback(Lio/sentry/UserFeedback;)V
    .locals 4

    const-string v0, "SentryEvent is required."

    .line 445
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 447
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    invoke-virtual {p1}, Lio/sentry/UserFeedback;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/SentryId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 448
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Capturing userFeedback without a Sentry Id."

    invoke-interface {p0, p1, v1, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 452
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 453
    invoke-virtual {p1}, Lio/sentry/UserFeedback;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Capturing userFeedback: %s"

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 456
    :try_start_0
    invoke-direct {p0, p1}, Lio/sentry/SentryClient;->buildEnvelope(Lio/sentry/UserFeedback;)Lio/sentry/SentryEnvelope;

    move-result-object v0

    const/4 v1, 0x0

    .line 457
    invoke-direct {p0, v0, v1}, Lio/sentry/SentryClient;->sendEnvelope(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object p0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 460
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 465
    invoke-virtual {p1}, Lio/sentry/UserFeedback;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Capturing user feedback %s failed."

    .line 461
    invoke-interface {p0, v1, v0, v2, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x0

    .line 928
    invoke-virtual {p0, v0}, Lio/sentry/SentryClient;->close(Z)V

    return-void
.end method

.method public close(Z)V
    .locals 6

    iget-object v0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 933
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Closing SentryClient."

    invoke-interface {v0, v1, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lio/sentry/SentryClient;->metricsAggregator:Lio/sentry/IMetricsAggregator;

    .line 935
    invoke-interface {v0}, Lio/sentry/IMetricsAggregator;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 937
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v3, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v4, "Failed to close the metrics aggregator."

    invoke-interface {v1, v3, v4, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 940
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getShutdownTimeoutMillis()J

    move-result-wide v0

    :goto_1
    invoke-virtual {p0, v0, v1}, Lio/sentry/SentryClient;->flush(J)V

    iget-object v0, p0, Lio/sentry/SentryClient;->transport:Lio/sentry/transport/ITransport;

    .line 941
    invoke-interface {v0, p1}, Lio/sentry/transport/ITransport;->close(Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    iget-object v0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 944
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v3, "Failed to close the connection to the Sentry Server."

    .line 945
    invoke-interface {v0, v1, v3, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    iget-object p1, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 947
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getEventProcessors()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/EventProcessor;

    .line 948
    instance-of v1, v0, Ljava/io/Closeable;

    if-eqz v1, :cond_1

    .line 950
    :try_start_2
    move-object v1, v0

    check-cast v1, Ljava/io/Closeable;

    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v1

    iget-object v3, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 953
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    sget-object v4, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v5, "Failed to close the event processor {}."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 954
    invoke-interface {v3, v4, v5, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_2
    iput-boolean v2, p0, Lio/sentry/SentryClient;->enabled:Z

    return-void
.end method

.method public flush(J)V
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryClient;->transport:Lio/sentry/transport/ITransport;

    .line 967
    invoke-interface {p0, p1, p2}, Lio/sentry/transport/ITransport;->flush(J)V

    return-void
.end method

.method public getMetricsAggregator()Lio/sentry/IMetricsAggregator;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryClient;->metricsAggregator:Lio/sentry/IMetricsAggregator;

    return-object p0
.end method

.method public getRateLimiter()Lio/sentry/transport/RateLimiter;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryClient;->transport:Lio/sentry/transport/ITransport;

    .line 972
    invoke-interface {p0}, Lio/sentry/transport/ITransport;->getRateLimiter()Lio/sentry/transport/RateLimiter;

    move-result-object p0

    return-object p0
.end method

.method public isEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lio/sentry/SentryClient;->enabled:Z

    return p0
.end method

.method public isHealthy()Z
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryClient;->transport:Lio/sentry/transport/ITransport;

    .line 977
    invoke-interface {p0}, Lio/sentry/transport/ITransport;->isHealthy()Z

    move-result p0

    return p0
.end method

.method synthetic lambda$updateSessionData$1$io-sentry-SentryClient(Lio/sentry/SentryEvent;Lio/sentry/Hint;Lio/sentry/Session;)V
    .locals 4

    .line 0
    const/4 v0, 0x0

    if-eqz p3, :cond_5

    .line 516
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->isCrashed()Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 517
    sget-object p0, Lio/sentry/Session$State;->Crashed:Lio/sentry/Session$State;

    goto :goto_0

    :cond_0
    move-object p0, v1

    .line 521
    :goto_0
    sget-object v2, Lio/sentry/Session$State;->Crashed:Lio/sentry/Session$State;

    if-eq v2, p0, :cond_1

    invoke-virtual {p1}, Lio/sentry/SentryEvent;->isErrored()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 526
    :cond_2
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getRequest()Lio/sentry/protocol/Request;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getRequest()Lio/sentry/protocol/Request;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/protocol/Request;->getHeaders()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 527
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getRequest()Lio/sentry/protocol/Request;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/protocol/Request;->getHeaders()Ljava/util/Map;

    move-result-object v2

    const-string v3, "user-agent"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 528
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getRequest()Lio/sentry/protocol/Request;

    move-result-object p1

    invoke-virtual {p1}, Lio/sentry/protocol/Request;->getHeaders()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_1

    :cond_3
    move-object p1, v1

    .line 532
    :goto_1
    invoke-static {p2}, Lio/sentry/util/HintUtils;->getSentrySdkHint(Lio/sentry/Hint;)Ljava/lang/Object;

    move-result-object p2

    .line 534
    instance-of v2, p2, Lio/sentry/hints/AbnormalExit;

    if-eqz v2, :cond_4

    .line 535
    check-cast p2, Lio/sentry/hints/AbnormalExit;

    invoke-interface {p2}, Lio/sentry/hints/AbnormalExit;->mechanism()Ljava/lang/String;

    move-result-object v1

    .line 536
    sget-object p0, Lio/sentry/Session$State;->Abnormal:Lio/sentry/Session$State;

    .line 539
    :cond_4
    invoke-virtual {p3, p0, p1, v0, v1}, Lio/sentry/Session;->update(Lio/sentry/Session$State;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 541
    invoke-virtual {p3}, Lio/sentry/Session;->isTerminated()Z

    move-result p0

    if-eqz p0, :cond_6

    .line 542
    invoke-virtual {p3}, Lio/sentry/Session;->end()V

    goto :goto_2

    :cond_5
    iget-object p0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 547
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string p2, "Session is null on scope.withSession"

    new-array p3, v0, [Ljava/lang/Object;

    .line 548
    invoke-interface {p0, p1, p2, p3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    :goto_2
    return-void
.end method

.method updateSessionData(Lio/sentry/SentryEvent;Lio/sentry/Hint;Lio/sentry/IScope;)Lio/sentry/Session;
    .locals 1

    .line 509
    invoke-static {p2}, Lio/sentry/util/HintUtils;->shouldApplyScopeData(Lio/sentry/Hint;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    .line 511
    new-instance v0, Lio/sentry/SentryClient$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2}, Lio/sentry/SentryClient$$ExternalSyntheticLambda1;-><init>(Lio/sentry/SentryClient;Lio/sentry/SentryEvent;Lio/sentry/Hint;)V

    .line 512
    invoke-interface {p3, v0}, Lio/sentry/IScope;->withSession(Lio/sentry/Scope$IWithSession;)Lio/sentry/Session;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 552
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "Scope is null on client.captureEvent"

    invoke-interface {p0, p1, p3, p2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
