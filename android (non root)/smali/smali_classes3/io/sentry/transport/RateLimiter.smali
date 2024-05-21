.class public final Lio/sentry/transport/RateLimiter;
.super Ljava/lang/Object;
.source "RateLimiter.java"


# static fields
.field private static final HTTP_RETRY_AFTER_DEFAULT_DELAY_MILLIS:I = 0xea60


# instance fields
.field private final currentDateProvider:Lio/sentry/transport/ICurrentDateProvider;

.field private final options:Lio/sentry/SentryOptions;

.field private final sentryRetryAfterLimit:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/sentry/DataCategory;",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/sentry/SentryOptions;)V
    .locals 1

    .line 44
    invoke-static {}, Lio/sentry/transport/CurrentDateProvider;->getInstance()Lio/sentry/transport/ICurrentDateProvider;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lio/sentry/transport/RateLimiter;-><init>(Lio/sentry/transport/ICurrentDateProvider;Lio/sentry/SentryOptions;)V

    return-void
.end method

.method public constructor <init>(Lio/sentry/transport/ICurrentDateProvider;Lio/sentry/SentryOptions;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/transport/RateLimiter;->sentryRetryAfterLimit:Ljava/util/Map;

    iput-object p1, p0, Lio/sentry/transport/RateLimiter;->currentDateProvider:Lio/sentry/transport/ICurrentDateProvider;

    iput-object p2, p0, Lio/sentry/transport/RateLimiter;->options:Lio/sentry/SentryOptions;

    return-void
.end method

.method private applyRetryAfterOnlyIfLonger(Lio/sentry/DataCategory;Ljava/util/Date;)V
    .locals 1

    iget-object v0, p0, Lio/sentry/transport/RateLimiter;->sentryRetryAfterLimit:Ljava/util/Map;

    .line 278
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {p2, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object p0, p0, Lio/sentry/transport/RateLimiter;->sentryRetryAfterLimit:Ljava/util/Map;

    .line 282
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private getCategoryFromItemType(Ljava/lang/String;)Lio/sentry/DataCategory;
    .locals 1

    .line 163
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/4 v0, -0x1

    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p0, "transaction"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_1
    const-string p0, "session"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_2
    const-string p0, "check_in"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_3
    const-string p0, "event"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string p0, "profile"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_5
    const-string p0, "statsd"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_6
    const-string p0, "attachment"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 181
    sget-object p0, Lio/sentry/DataCategory;->Unknown:Lio/sentry/DataCategory;

    return-object p0

    .line 177
    :pswitch_0
    sget-object p0, Lio/sentry/DataCategory;->Transaction:Lio/sentry/DataCategory;

    return-object p0

    .line 167
    :pswitch_1
    sget-object p0, Lio/sentry/DataCategory;->Session:Lio/sentry/DataCategory;

    return-object p0

    .line 179
    :pswitch_2
    sget-object p0, Lio/sentry/DataCategory;->Monitor:Lio/sentry/DataCategory;

    return-object p0

    .line 165
    :pswitch_3
    sget-object p0, Lio/sentry/DataCategory;->Error:Lio/sentry/DataCategory;

    return-object p0

    .line 171
    :pswitch_4
    sget-object p0, Lio/sentry/DataCategory;->Profile:Lio/sentry/DataCategory;

    return-object p0

    .line 175
    :pswitch_5
    sget-object p0, Lio/sentry/DataCategory;->MetricBucket:Lio/sentry/DataCategory;

    return-object p0

    .line 169
    :pswitch_6
    sget-object p0, Lio/sentry/DataCategory;->Attachment:Lio/sentry/DataCategory;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7508a6dd -> :sswitch_6
        -0x3532305b -> :sswitch_5
        -0x12717657 -> :sswitch_4
        0x5c6729a -> :sswitch_3
        0x5b9b0fbc -> :sswitch_2
        0x76508296 -> :sswitch_1
        0x7fa0d2de -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isRetryAfter(Ljava/lang/String;)Z
    .locals 0

    .line 152
    invoke-direct {p0, p1}, Lio/sentry/transport/RateLimiter;->getCategoryFromItemType(Ljava/lang/String;)Lio/sentry/DataCategory;

    move-result-object p1

    .line 153
    invoke-virtual {p0, p1}, Lio/sentry/transport/RateLimiter;->isActiveForCategory(Lio/sentry/DataCategory;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$markHintWhenSendingFailed$0(Lio/sentry/hints/SubmissionResult;)V
    .locals 1

    const/4 v0, 0x0

    .line 140
    invoke-interface {p0, v0}, Lio/sentry/hints/SubmissionResult;->setResult(Z)V

    return-void
.end method

.method static synthetic lambda$markHintWhenSendingFailed$1(ZLio/sentry/hints/Retryable;)V
    .locals 0

    .line 141
    invoke-interface {p1, p0}, Lio/sentry/hints/Retryable;->setRetry(Z)V

    return-void
.end method

.method private static markHintWhenSendingFailed(Lio/sentry/Hint;Z)V
    .locals 2

    .line 140
    const-class v0, Lio/sentry/hints/SubmissionResult;

    new-instance v1, Lio/sentry/transport/RateLimiter$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lio/sentry/transport/RateLimiter$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0, v0, v1}, Lio/sentry/util/HintUtils;->runIfHasType(Lio/sentry/Hint;Ljava/lang/Class;Lio/sentry/util/HintUtils$SentryConsumer;)V

    .line 141
    const-class v0, Lio/sentry/hints/Retryable;

    new-instance v1, Lio/sentry/transport/RateLimiter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lio/sentry/transport/RateLimiter$$ExternalSyntheticLambda1;-><init>(Z)V

    invoke-static {p0, v0, v1}, Lio/sentry/util/HintUtils;->runIfHasType(Lio/sentry/Hint;Ljava/lang/Class;Lio/sentry/util/HintUtils$SentryConsumer;)V

    return-void
.end method

.method private parseRetryAfterOrDefault(Ljava/lang/String;)J
    .locals 2

    if-eqz p1, :cond_0

    .line 297
    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double/2addr p0, v0

    double-to-long p0, p0

    goto :goto_0

    :catch_0
    :cond_0
    const-wide/32 p0, 0xea60

    :goto_0
    return-wide p0
.end method


# virtual methods
.method public filter(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)Lio/sentry/SentryEnvelope;
    .locals 6

    .line 51
    invoke-virtual {p1}, Lio/sentry/SentryEnvelope;->getItems()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/sentry/SentryEnvelopeItem;

    .line 53
    invoke-virtual {v3}, Lio/sentry/SentryEnvelopeItem;->getHeader()Lio/sentry/SentryEnvelopeItemHeader;

    move-result-object v4

    invoke-virtual {v4}, Lio/sentry/SentryEnvelopeItemHeader;->getType()Lio/sentry/SentryItemType;

    move-result-object v4

    invoke-virtual {v4}, Lio/sentry/SentryItemType;->getItemType()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lio/sentry/transport/RateLimiter;->isRetryAfter(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez v2, :cond_1

    .line 55
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 58
    :cond_1
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lio/sentry/transport/RateLimiter;->options:Lio/sentry/SentryOptions;

    .line 60
    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    move-result-object v4

    sget-object v5, Lio/sentry/clientreport/DiscardReason;->RATELIMIT_BACKOFF:Lio/sentry/clientreport/DiscardReason;

    .line 61
    invoke-interface {v4, v5, v3}, Lio/sentry/clientreport/IClientReportRecorder;->recordLostEnvelopeItem(Lio/sentry/clientreport/DiscardReason;Lio/sentry/SentryEnvelopeItem;)V

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_6

    iget-object v0, p0, Lio/sentry/transport/RateLimiter;->options:Lio/sentry/SentryOptions;

    .line 67
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v3, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    .line 68
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%d items will be dropped due rate limiting."

    invoke-interface {v0, v3, v5, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    invoke-virtual {p1}, Lio/sentry/SentryEnvelope;->getItems()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/sentry/SentryEnvelopeItem;

    .line 73
    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 74
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 79
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object p0, p0, Lio/sentry/transport/RateLimiter;->options:Lio/sentry/SentryOptions;

    .line 80
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v0, "Envelope discarded due all items rate limited."

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {p0, p1, v0, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    invoke-static {p2, v2}, Lio/sentry/transport/RateLimiter;->markHintWhenSendingFailed(Lio/sentry/Hint;Z)V

    return-object v1

    .line 86
    :cond_5
    new-instance p0, Lio/sentry/SentryEnvelope;

    invoke-virtual {p1}, Lio/sentry/SentryEnvelope;->getHeader()Lio/sentry/SentryEnvelopeHeader;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lio/sentry/SentryEnvelope;-><init>(Lio/sentry/SentryEnvelopeHeader;Ljava/lang/Iterable;)V

    return-object p0

    :cond_6
    return-object p1
.end method

.method public isActiveForCategory(Lio/sentry/DataCategory;)Z
    .locals 4

    .line 93
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lio/sentry/transport/RateLimiter;->currentDateProvider:Lio/sentry/transport/ICurrentDateProvider;

    invoke-interface {v1}, Lio/sentry/transport/ICurrentDateProvider;->getCurrentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iget-object v1, p0, Lio/sentry/transport/RateLimiter;->sentryRetryAfterLimit:Ljava/util/Map;

    .line 96
    sget-object v2, Lio/sentry/DataCategory;->All:Lio/sentry/DataCategory;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 98
    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    .line 104
    :cond_0
    sget-object v1, Lio/sentry/DataCategory;->Unknown:Lio/sentry/DataCategory;

    invoke-virtual {v1, p1}, Lio/sentry/DataCategory;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    return v3

    :cond_1
    iget-object p0, p0, Lio/sentry/transport/RateLimiter;->sentryRetryAfterLimit:Ljava/util/Map;

    .line 109
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Date;

    if-eqz p0, :cond_2

    .line 111
    invoke-virtual {v0, p0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    :cond_2
    return v3
.end method

.method public isAnyRateLimitActive()Z
    .locals 4

    .line 119
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lio/sentry/transport/RateLimiter;->currentDateProvider:Lio/sentry/transport/ICurrentDateProvider;

    invoke-interface {v1}, Lio/sentry/transport/ICurrentDateProvider;->getCurrentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iget-object v1, p0, Lio/sentry/transport/RateLimiter;->sentryRetryAfterLimit:Ljava/util/Map;

    .line 121
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/DataCategory;

    iget-object v3, p0, Lio/sentry/transport/RateLimiter;->sentryRetryAfterLimit:Ljava/util/Map;

    .line 122
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Date;

    if-eqz v2, :cond_0

    .line 124
    invoke-virtual {v0, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public updateRetryAfterLimits(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    if-eqz v0, :cond_7

    const-string v2, ","

    const/4 v3, -0x1

    .line 199
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_8

    aget-object v0, v2, v6

    const-string v7, " "

    const-string v8, ""

    .line 202
    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v7, ":"

    .line 204
    invoke-virtual {v0, v7, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 208
    array-length v7, v0

    const/4 v9, 0x4

    if-le v7, v9, :cond_0

    aget-object v7, v0, v9

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    .line 210
    :goto_1
    array-length v9, v0

    if-lez v9, :cond_6

    .line 211
    aget-object v9, v0, v5

    .line 212
    invoke-direct {v1, v9}, Lio/sentry/transport/RateLimiter;->parseRetryAfterOrDefault(Ljava/lang/String;)J

    move-result-wide v9

    .line 214
    array-length v11, v0

    const/4 v12, 0x1

    if-le v11, v12, :cond_6

    .line 215
    aget-object v0, v0, v12

    .line 218
    new-instance v11, Ljava/util/Date;

    iget-object v12, v1, Lio/sentry/transport/RateLimiter;->currentDateProvider:Lio/sentry/transport/ICurrentDateProvider;

    .line 219
    invoke-interface {v12}, Lio/sentry/transport/ICurrentDateProvider;->getCurrentTimeMillis()J

    move-result-wide v12

    add-long/2addr v12, v9

    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    if-eqz v0, :cond_5

    .line 221
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, ";"

    .line 222
    invoke-virtual {v0, v9, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v10

    .line 224
    array-length v12, v10

    move v13, v5

    :goto_2
    if-ge v13, v12, :cond_6

    aget-object v14, v10, v13

    .line 225
    sget-object v15, Lio/sentry/DataCategory;->Unknown:Lio/sentry/DataCategory;

    .line 227
    :try_start_0
    invoke-static {v14}, Lio/sentry/util/StringUtils;->camelCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 229
    invoke-static {v0}, Lio/sentry/DataCategory;->valueOf(Ljava/lang/String;)Lio/sentry/DataCategory;

    move-result-object v0

    move-object v15, v0

    move-object/from16 p3, v2

    goto :goto_4

    :cond_1
    iget-object v0, v1, Lio/sentry/transport/RateLimiter;->options:Lio/sentry/SentryOptions;

    .line 231
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v5, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Couldn\'t capitalize: %s"
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 p3, v2

    :try_start_1
    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v5, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 p3, v2

    :goto_3
    iget-object v2, v1, Lio/sentry/transport/RateLimiter;->options:Lio/sentry/SentryOptions;

    .line 234
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v5, "Unknown category: %s"

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v2, v3, v0, v5, v14}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    :goto_4
    sget-object v0, Lio/sentry/DataCategory;->Unknown:Lio/sentry/DataCategory;

    invoke-virtual {v0, v15}, Lio/sentry/DataCategory;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, -0x1

    goto :goto_5

    .line 243
    :cond_2
    sget-object v0, Lio/sentry/DataCategory;->MetricBucket:Lio/sentry/DataCategory;

    invoke-virtual {v0, v15}, Lio/sentry/DataCategory;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v7, :cond_3

    .line 245
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v2, -0x1

    .line 246
    invoke-virtual {v7, v9, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 247
    array-length v3, v0

    if-lez v3, :cond_4

    const-string v3, "custom"

    invoke-static {v0, v3}, Lio/sentry/util/CollectionUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_5

    :cond_3
    const/4 v2, -0x1

    .line 252
    :cond_4
    invoke-direct {v1, v15, v11}, Lio/sentry/transport/RateLimiter;->applyRetryAfterOnlyIfLonger(Lio/sentry/DataCategory;Ljava/util/Date;)V

    :goto_5
    add-int/lit8 v13, v13, 0x1

    move v3, v2

    const/4 v5, 0x0

    move-object/from16 v2, p3

    goto :goto_2

    :cond_5
    move-object/from16 p3, v2

    move v2, v3

    .line 256
    sget-object v0, Lio/sentry/DataCategory;->All:Lio/sentry/DataCategory;

    invoke-direct {v1, v0, v11}, Lio/sentry/transport/RateLimiter;->applyRetryAfterOnlyIfLonger(Lio/sentry/DataCategory;Ljava/util/Date;)V

    goto :goto_6

    :cond_6
    move-object/from16 p3, v2

    move v2, v3

    :goto_6
    add-int/lit8 v6, v6, 0x1

    move v3, v2

    const/4 v5, 0x0

    move-object/from16 v2, p3

    goto/16 :goto_0

    :cond_7
    const/16 v0, 0x1ad

    move/from16 v2, p3

    if-ne v2, v0, :cond_8

    move-object/from16 v0, p2

    .line 262
    invoke-direct {v1, v0}, Lio/sentry/transport/RateLimiter;->parseRetryAfterOrDefault(Ljava/lang/String;)J

    move-result-wide v2

    .line 264
    new-instance v0, Ljava/util/Date;

    iget-object v4, v1, Lio/sentry/transport/RateLimiter;->currentDateProvider:Lio/sentry/transport/ICurrentDateProvider;

    invoke-interface {v4}, Lio/sentry/transport/ICurrentDateProvider;->getCurrentTimeMillis()J

    move-result-wide v4

    add-long/2addr v4, v2

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 265
    sget-object v2, Lio/sentry/DataCategory;->All:Lio/sentry/DataCategory;

    invoke-direct {v1, v2, v0}, Lio/sentry/transport/RateLimiter;->applyRetryAfterOnlyIfLonger(Lio/sentry/DataCategory;Ljava/util/Date;)V

    :cond_8
    return-void
.end method
