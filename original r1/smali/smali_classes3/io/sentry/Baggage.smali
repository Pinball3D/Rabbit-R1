.class public final Lio/sentry/Baggage;
.super Ljava/lang/Object;
.source "Baggage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/Baggage$DSCKeys;
    }
.end annotation


# static fields
.field static final CHARSET:Ljava/lang/String; = "UTF-8"

.field static final MAX_BAGGAGE_LIST_MEMBER_COUNT:Ljava/lang/Integer;

.field static final MAX_BAGGAGE_STRING_LENGTH:Ljava/lang/Integer;

.field static final SENTRY_BAGGAGE_PREFIX:Ljava/lang/String; = "sentry-"


# instance fields
.field final keyValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final logger:Lio/sentry/ILogger;

.field private mutable:Z

.field final thirdPartyHeader:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x2000

    .line 30
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lio/sentry/Baggage;->MAX_BAGGAGE_STRING_LENGTH:Ljava/lang/Integer;

    const/16 v0, 0x40

    .line 31
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lio/sentry/Baggage;->MAX_BAGGAGE_LIST_MEMBER_COUNT:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Lio/sentry/Baggage;)V
    .locals 3

    .line 155
    iget-object v0, p1, Lio/sentry/Baggage;->keyValues:Ljava/util/Map;

    iget-object v1, p1, Lio/sentry/Baggage;->thirdPartyHeader:Ljava/lang/String;

    iget-boolean v2, p1, Lio/sentry/Baggage;->mutable:Z

    iget-object p1, p1, Lio/sentry/Baggage;->logger:Lio/sentry/ILogger;

    invoke-direct {p0, v0, v1, v2, p1}, Lio/sentry/Baggage;-><init>(Ljava/util/Map;Ljava/lang/String;ZLio/sentry/ILogger;)V

    return-void
.end method

.method public constructor <init>(Lio/sentry/ILogger;)V
    .locals 3

    .line 150
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2, p1}, Lio/sentry/Baggage;-><init>(Ljava/util/Map;Ljava/lang/String;ZLio/sentry/ILogger;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;ZLio/sentry/ILogger;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Lio/sentry/ILogger;",
            ")V"
        }
    .end annotation

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/Baggage;->keyValues:Ljava/util/Map;

    iput-object p4, p0, Lio/sentry/Baggage;->logger:Lio/sentry/ILogger;

    iput-boolean p3, p0, Lio/sentry/Baggage;->mutable:Z

    iput-object p2, p0, Lio/sentry/Baggage;->thirdPartyHeader:Ljava/lang/String;

    return-void
.end method

.method private static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const-string v0, "UTF-8"

    .line 246
    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const-string p0, "UTF-8"

    .line 242
    invoke-static {p1, p0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "\\+"

    const-string v0, "%20"

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static fromEvent(Lio/sentry/SentryEvent;Lio/sentry/SentryOptions;)Lio/sentry/Baggage;
    .locals 3

    .line 132
    new-instance v0, Lio/sentry/Baggage;

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/sentry/Baggage;-><init>(Lio/sentry/ILogger;)V

    .line 133
    invoke-virtual {p0}, Lio/sentry/SentryEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/protocol/Contexts;->getTrace()Lio/sentry/SpanContext;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 134
    invoke-virtual {v1}, Lio/sentry/SpanContext;->getTraceId()Lio/sentry/protocol/SentryId;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/protocol/SentryId;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lio/sentry/Baggage;->setTraceId(Ljava/lang/String;)V

    .line 135
    new-instance v1, Lio/sentry/Dsn;

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getDsn()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lio/sentry/Dsn;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lio/sentry/Dsn;->getPublicKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/sentry/Baggage;->setPublicKey(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lio/sentry/SentryEvent;->getRelease()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/sentry/Baggage;->setRelease(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Lio/sentry/SentryEvent;->getEnvironment()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/sentry/Baggage;->setEnvironment(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lio/sentry/SentryEvent;->getUser()Lio/sentry/protocol/User;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 139
    invoke-static {p1}, Lio/sentry/Baggage;->getSegment(Lio/sentry/protocol/User;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v2

    :goto_1
    invoke-virtual {v0, p1}, Lio/sentry/Baggage;->setUserSegment(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lio/sentry/SentryEvent;->getTransaction()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/sentry/Baggage;->setTransaction(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v0, v2}, Lio/sentry/Baggage;->setSampleRate(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v0, v2}, Lio/sentry/Baggage;->setSampled(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v0}, Lio/sentry/Baggage;->freeze()V

    return-object v0
.end method

.method public static fromHeader(Ljava/lang/String;)Lio/sentry/Baggage;
    .locals 2

    .line 42
    invoke-static {}, Lio/sentry/HubAdapter;->getInstance()Lio/sentry/HubAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/HubAdapter;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    const/4 v1, 0x0

    .line 41
    invoke-static {p0, v1, v0}, Lio/sentry/Baggage;->fromHeader(Ljava/lang/String;ZLio/sentry/ILogger;)Lio/sentry/Baggage;

    move-result-object p0

    return-object p0
.end method

.method public static fromHeader(Ljava/lang/String;Lio/sentry/ILogger;)Lio/sentry/Baggage;
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-static {p0, v0, p1}, Lio/sentry/Baggage;->fromHeader(Ljava/lang/String;ZLio/sentry/ILogger;)Lio/sentry/Baggage;

    move-result-object p0

    return-object p0
.end method

.method public static fromHeader(Ljava/lang/String;ZLio/sentry/ILogger;)Lio/sentry/Baggage;
    .locals 12

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 86
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, ","

    const/4 v3, 0x1

    if-eqz p0, :cond_2

    const/4 v4, -0x1

    .line 92
    :try_start_0
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 93
    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_2

    aget-object v8, v4, v7

    .line 94
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v10, "sentry-"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v9, :cond_0

    :try_start_1
    const-string v9, "="

    .line 98
    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 99
    invoke-virtual {v8, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 100
    invoke-static {v10}, Lio/sentry/Baggage;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    add-int/lit8 v9, v9, 0x1

    .line 101
    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 102
    invoke-static {v9}, Lio/sentry/Baggage;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 104
    invoke-interface {v0, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v3, v6

    goto :goto_1

    :catchall_0
    move-exception v9

    .line 107
    :try_start_2
    sget-object v10, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v11, "Unable to decode baggage key value pair %s"

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-interface {p2, v10, v9, v11, v8}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    .line 114
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 118
    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v5, "Unable to decode baggage header %s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, v4, p1, v5, p0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x0

    goto :goto_2

    .line 124
    :cond_3
    invoke-static {v2, v1}, Lio/sentry/util/StringUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    .line 125
    :goto_2
    new-instance p1, Lio/sentry/Baggage;

    invoke-direct {p1, v0, p0, v3, p2}, Lio/sentry/Baggage;-><init>(Ljava/util/Map;Ljava/lang/String;ZLio/sentry/ILogger;)V

    return-object p1
.end method

.method public static fromHeader(Ljava/util/List;)Lio/sentry/Baggage;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/sentry/Baggage;"
        }
    .end annotation

    .line 48
    invoke-static {}, Lio/sentry/HubAdapter;->getInstance()Lio/sentry/HubAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/HubAdapter;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    const/4 v1, 0x0

    .line 47
    invoke-static {p0, v1, v0}, Lio/sentry/Baggage;->fromHeader(Ljava/util/List;ZLio/sentry/ILogger;)Lio/sentry/Baggage;

    move-result-object p0

    return-object p0
.end method

.method public static fromHeader(Ljava/util/List;Lio/sentry/ILogger;)Lio/sentry/Baggage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lio/sentry/ILogger;",
            ")",
            "Lio/sentry/Baggage;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 61
    invoke-static {p0, v0, p1}, Lio/sentry/Baggage;->fromHeader(Ljava/util/List;ZLio/sentry/ILogger;)Lio/sentry/Baggage;

    move-result-object p0

    return-object p0
.end method

.method public static fromHeader(Ljava/util/List;ZLio/sentry/ILogger;)Lio/sentry/Baggage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Lio/sentry/ILogger;",
            ")",
            "Lio/sentry/Baggage;"
        }
    .end annotation

    if-eqz p0, :cond_0

    const-string v0, ","

    .line 73
    invoke-static {v0, p0}, Lio/sentry/util/StringUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    .line 72
    invoke-static {p0, p1, p2}, Lio/sentry/Baggage;->fromHeader(Ljava/lang/String;ZLio/sentry/ILogger;)Lio/sentry/Baggage;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 75
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lio/sentry/Baggage;->fromHeader(Ljava/lang/String;ZLio/sentry/ILogger;)Lio/sentry/Baggage;

    move-result-object p0

    return-object p0
.end method

.method private static getSegment(Lio/sentry/protocol/User;)Ljava/lang/String;
    .locals 1

    .line 407
    invoke-virtual {p0}, Lio/sentry/protocol/User;->getSegment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 408
    invoke-virtual {p0}, Lio/sentry/protocol/User;->getSegment()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 411
    :cond_0
    invoke-virtual {p0}, Lio/sentry/protocol/User;->getData()Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, "segment"

    .line 413
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static isHighQualityTransactionName(Lio/sentry/protocol/TransactionNameSource;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 447
    sget-object v0, Lio/sentry/protocol/TransactionNameSource;->URL:Lio/sentry/protocol/TransactionNameSource;

    .line 448
    invoke-virtual {v0, p0}, Lio/sentry/protocol/TransactionNameSource;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static sampleRate(Lio/sentry/TracesSamplingDecision;)Ljava/lang/Double;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 424
    :cond_0
    invoke-virtual {p0}, Lio/sentry/TracesSamplingDecision;->getSampleRate()Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method private static sampleRateToString(Ljava/lang/Double;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 428
    invoke-static {p0, v0}, Lio/sentry/util/SampleRateUtils;->isValidTracesSampleRate(Ljava/lang/Double;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 432
    :cond_0
    new-instance v0, Ljava/text/DecimalFormat;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 433
    invoke-static {v1}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v1

    const-string v2, "#.################"

    invoke-direct {v0, v2, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    .line 434
    invoke-virtual {v0, p0}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static sampled(Lio/sentry/TracesSamplingDecision;)Ljava/lang/Boolean;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 442
    :cond_0
    invoke-virtual {p0}, Lio/sentry/TracesSamplingDecision;->getSampled()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public freeze()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/sentry/Baggage;->mutable:Z

    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lio/sentry/Baggage;->keyValues:Ljava/util/Map;

    .line 255
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getEnvironment()Ljava/lang/String;
    .locals 1

    const-string v0, "sentry-environment"

    .line 280
    invoke-virtual {p0, v0}, Lio/sentry/Baggage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPublicKey()Ljava/lang/String;
    .locals 1

    const-string v0, "sentry-public_key"

    .line 270
    invoke-virtual {p0, v0}, Lio/sentry/Baggage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRelease()Ljava/lang/String;
    .locals 1

    const-string v0, "sentry-release"

    .line 290
    invoke-virtual {p0, v0}, Lio/sentry/Baggage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSampleRate()Ljava/lang/String;
    .locals 1

    const-string v0, "sentry-sample_rate"

    .line 330
    invoke-virtual {p0, v0}, Lio/sentry/Baggage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSampleRateDouble()Ljava/lang/Double;
    .locals 4

    .line 453
    invoke-virtual {p0}, Lio/sentry/Baggage;->getSampleRate()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 456
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    .line 457
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const/4 v3, 0x0

    invoke-static {p0, v3}, Lio/sentry/util/SampleRateUtils;->isValidTracesSampleRate(Ljava/lang/Double;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 458
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    return-object v0
.end method

.method public getSampled()Ljava/lang/String;
    .locals 1

    const-string v0, "sentry-sampled"

    .line 335
    invoke-virtual {p0, v0}, Lio/sentry/Baggage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getThirdPartyHeader()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/Baggage;->thirdPartyHeader:Ljava/lang/String;

    return-object p0
.end method

.method public getTraceId()Ljava/lang/String;
    .locals 1

    const-string v0, "sentry-trace_id"

    .line 260
    invoke-virtual {p0, v0}, Lio/sentry/Baggage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTransaction()Ljava/lang/String;
    .locals 1

    const-string v0, "sentry-transaction"

    .line 320
    invoke-virtual {p0, v0}, Lio/sentry/Baggage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUnknown()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 357
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iget-object p0, p0, Lio/sentry/Baggage;->keyValues:Ljava/util/Map;

    .line 358
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 359
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 360
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 361
    sget-object v3, Lio/sentry/Baggage$DSCKeys;->ALL:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v1, :cond_0

    const-string v3, "sentry-"

    const-string v4, ""

    .line 363
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 364
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    const-string v0, "sentry-user_id"

    .line 300
    invoke-virtual {p0, v0}, Lio/sentry/Baggage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUserSegment()Ljava/lang/String;
    .locals 1

    const-string v0, "sentry-user_segment"

    .line 310
    invoke-virtual {p0, v0}, Lio/sentry/Baggage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isMutable()Z
    .locals 0

    iget-boolean p0, p0, Lio/sentry/Baggage;->mutable:Z

    return p0
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lio/sentry/Baggage;->mutable:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lio/sentry/Baggage;->keyValues:Ljava/util/Map;

    .line 351
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setEnvironment(Ljava/lang/String;)V
    .locals 1

    const-string v0, "sentry-environment"

    .line 285
    invoke-virtual {p0, v0, p1}, Lio/sentry/Baggage;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPublicKey(Ljava/lang/String;)V
    .locals 1

    const-string v0, "sentry-public_key"

    .line 275
    invoke-virtual {p0, v0, p1}, Lio/sentry/Baggage;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRelease(Ljava/lang/String;)V
    .locals 1

    const-string v0, "sentry-release"

    .line 295
    invoke-virtual {p0, v0, p1}, Lio/sentry/Baggage;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSampleRate(Ljava/lang/String;)V
    .locals 1

    const-string v0, "sentry-sample_rate"

    .line 340
    invoke-virtual {p0, v0, p1}, Lio/sentry/Baggage;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSampled(Ljava/lang/String;)V
    .locals 1

    const-string v0, "sentry-sampled"

    .line 345
    invoke-virtual {p0, v0, p1}, Lio/sentry/Baggage;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTraceId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "sentry-trace_id"

    .line 265
    invoke-virtual {p0, v0, p1}, Lio/sentry/Baggage;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTransaction(Ljava/lang/String;)V
    .locals 1

    const-string v0, "sentry-transaction"

    .line 325
    invoke-virtual {p0, v0, p1}, Lio/sentry/Baggage;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "sentry-user_id"

    .line 305
    invoke-virtual {p0, v0, p1}, Lio/sentry/Baggage;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setUserSegment(Ljava/lang/String;)V
    .locals 1

    const-string v0, "sentry-user_segment"

    .line 315
    invoke-virtual {p0, v0, p1}, Lio/sentry/Baggage;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setValuesFromScope(Lio/sentry/IScope;Lio/sentry/SentryOptions;)V
    .locals 2

    .line 394
    invoke-interface {p1}, Lio/sentry/IScope;->getPropagationContext()Lio/sentry/PropagationContext;

    move-result-object v0

    .line 395
    invoke-interface {p1}, Lio/sentry/IScope;->getUser()Lio/sentry/protocol/User;

    move-result-object p1

    .line 396
    invoke-virtual {v0}, Lio/sentry/PropagationContext;->getTraceId()Lio/sentry/protocol/SentryId;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/protocol/SentryId;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/Baggage;->setTraceId(Ljava/lang/String;)V

    .line 397
    new-instance v0, Lio/sentry/Dsn;

    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getDsn()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/sentry/Dsn;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lio/sentry/Dsn;->getPublicKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/Baggage;->setPublicKey(Ljava/lang/String;)V

    .line 398
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getRelease()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/Baggage;->setRelease(Ljava/lang/String;)V

    .line 399
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getEnvironment()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lio/sentry/Baggage;->setEnvironment(Ljava/lang/String;)V

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 400
    invoke-static {p1}, Lio/sentry/Baggage;->getSegment(Lio/sentry/protocol/User;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    invoke-virtual {p0, p1}, Lio/sentry/Baggage;->setUserSegment(Ljava/lang/String;)V

    .line 401
    invoke-virtual {p0, p2}, Lio/sentry/Baggage;->setTransaction(Ljava/lang/String;)V

    .line 402
    invoke-virtual {p0, p2}, Lio/sentry/Baggage;->setSampleRate(Ljava/lang/String;)V

    .line 403
    invoke-virtual {p0, p2}, Lio/sentry/Baggage;->setSampled(Ljava/lang/String;)V

    return-void
.end method

.method public setValuesFromTransaction(Lio/sentry/ITransaction;Lio/sentry/protocol/User;Lio/sentry/SentryOptions;Lio/sentry/TracesSamplingDecision;)V
    .locals 2

    .line 378
    invoke-interface {p1}, Lio/sentry/ITransaction;->getSpanContext()Lio/sentry/SpanContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SpanContext;->getTraceId()Lio/sentry/protocol/SentryId;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/protocol/SentryId;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/Baggage;->setTraceId(Ljava/lang/String;)V

    .line 379
    new-instance v0, Lio/sentry/Dsn;

    invoke-virtual {p3}, Lio/sentry/SentryOptions;->getDsn()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/sentry/Dsn;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lio/sentry/Dsn;->getPublicKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/Baggage;->setPublicKey(Ljava/lang/String;)V

    .line 380
    invoke-virtual {p3}, Lio/sentry/SentryOptions;->getRelease()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/Baggage;->setRelease(Ljava/lang/String;)V

    .line 381
    invoke-virtual {p3}, Lio/sentry/SentryOptions;->getEnvironment()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lio/sentry/Baggage;->setEnvironment(Ljava/lang/String;)V

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 382
    invoke-static {p2}, Lio/sentry/Baggage;->getSegment(Lio/sentry/protocol/User;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, p3

    :goto_0
    invoke-virtual {p0, p2}, Lio/sentry/Baggage;->setUserSegment(Ljava/lang/String;)V

    .line 384
    invoke-interface {p1}, Lio/sentry/ITransaction;->getTransactionNameSource()Lio/sentry/protocol/TransactionNameSource;

    move-result-object p2

    invoke-static {p2}, Lio/sentry/Baggage;->isHighQualityTransactionName(Lio/sentry/protocol/TransactionNameSource;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 385
    invoke-interface {p1}, Lio/sentry/ITransaction;->getName()Ljava/lang/String;

    move-result-object p3

    .line 383
    :cond_1
    invoke-virtual {p0, p3}, Lio/sentry/Baggage;->setTransaction(Ljava/lang/String;)V

    .line 387
    invoke-static {p4}, Lio/sentry/Baggage;->sampleRate(Lio/sentry/TracesSamplingDecision;)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p1}, Lio/sentry/Baggage;->sampleRateToString(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/sentry/Baggage;->setSampleRate(Ljava/lang/String;)V

    .line 388
    invoke-static {p4}, Lio/sentry/Baggage;->sampled(Lio/sentry/TracesSamplingDecision;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lio/sentry/util/StringUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/sentry/Baggage;->setSampled(Ljava/lang/String;)V

    return-void
.end method

.method public toHeaderString(Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ","

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 190
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 191
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x2c

    .line 192
    invoke-static {p1, v4}, Lio/sentry/util/StringUtils;->countOf(Ljava/lang/String;C)I

    move-result p1

    add-int/2addr p1, v2

    move-object v4, v1

    goto :goto_0

    :cond_0
    const-string p1, ""

    move-object v4, p1

    move p1, v3

    .line 196
    :goto_0
    new-instance v5, Ljava/util/TreeSet;

    iget-object v6, p0, Lio/sentry/Baggage;->keyValues:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 197
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, p0, Lio/sentry/Baggage;->keyValues:Ljava/util/Map;

    .line 198
    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_1

    sget-object v8, Lio/sentry/Baggage;->MAX_BAGGAGE_LIST_MEMBER_COUNT:Ljava/lang/Integer;

    .line 201
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-lt p1, v9, :cond_2

    iget-object v7, p0, Lio/sentry/Baggage;->logger:Lio/sentry/ILogger;

    .line 202
    sget-object v9, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v10, "Not adding baggage value %s as the total number of list members would exceed the maximum of %s."

    filled-new-array {v6, v8}, [Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v7, v9, v10, v6}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 209
    :cond_2
    :try_start_0
    invoke-direct {p0, v6}, Lio/sentry/Baggage;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 210
    invoke-direct {p0, v7}, Lio/sentry/Baggage;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 211
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 213
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    .line 214
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    add-int/2addr v10, v9

    sget-object v9, Lio/sentry/Baggage;->MAX_BAGGAGE_STRING_LENGTH:Ljava/lang/Integer;

    .line 215
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-le v10, v11, :cond_3

    iget-object v8, p0, Lio/sentry/Baggage;->logger:Lio/sentry/ILogger;

    .line 216
    sget-object v10, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v11, "Not adding baggage value %s as the total header value length would exceed the maximum of %s."

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v6, v12, v3

    aput-object v9, v12, v2

    invoke-interface {v8, v10, v11, v12}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    add-int/lit8 p1, p1, 0x1

    .line 223
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v1

    goto :goto_1

    :catchall_0
    move-exception v8

    iget-object v9, p0, Lio/sentry/Baggage;->logger:Lio/sentry/ILogger;

    .line 227
    sget-object v10, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v11, "Unable to encode baggage key value pair (key=%s,value=%s)."

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v9, v10, v8, v11, v6}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 238
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toTraceContext()Lio/sentry/TraceContext;
    .locals 12

    .line 470
    invoke-virtual {p0}, Lio/sentry/Baggage;->getTraceId()Ljava/lang/String;

    move-result-object v0

    .line 471
    invoke-virtual {p0}, Lio/sentry/Baggage;->getPublicKey()Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    .line 474
    new-instance v11, Lio/sentry/TraceContext;

    new-instance v2, Lio/sentry/protocol/SentryId;

    invoke-direct {v2, v0}, Lio/sentry/protocol/SentryId;-><init>(Ljava/lang/String;)V

    .line 478
    invoke-virtual {p0}, Lio/sentry/Baggage;->getRelease()Ljava/lang/String;

    move-result-object v4

    .line 479
    invoke-virtual {p0}, Lio/sentry/Baggage;->getEnvironment()Ljava/lang/String;

    move-result-object v5

    .line 480
    invoke-virtual {p0}, Lio/sentry/Baggage;->getUserId()Ljava/lang/String;

    move-result-object v6

    .line 481
    invoke-virtual {p0}, Lio/sentry/Baggage;->getUserSegment()Ljava/lang/String;

    move-result-object v7

    .line 482
    invoke-virtual {p0}, Lio/sentry/Baggage;->getTransaction()Ljava/lang/String;

    move-result-object v8

    .line 483
    invoke-virtual {p0}, Lio/sentry/Baggage;->getSampleRate()Ljava/lang/String;

    move-result-object v9

    .line 484
    invoke-virtual {p0}, Lio/sentry/Baggage;->getSampled()Ljava/lang/String;

    move-result-object v10

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lio/sentry/TraceContext;-><init>(Lio/sentry/protocol/SentryId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    invoke-virtual {p0}, Lio/sentry/Baggage;->getUnknown()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v11, p0}, Lio/sentry/TraceContext;->setUnknown(Ljava/util/Map;)V

    return-object v11

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
