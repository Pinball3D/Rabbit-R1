.class final Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;
.super Ljava/lang/Object;
.source "AsyncHttpTransport.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/transport/AsyncHttpTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EnvelopeSender"
.end annotation


# instance fields
.field private final envelope:Lio/sentry/SentryEnvelope;

.field private final envelopeCache:Lio/sentry/cache/IEnvelopeCache;

.field private final failedResult:Lio/sentry/transport/TransportResult;

.field private final hint:Lio/sentry/Hint;

.field final synthetic this$0:Lio/sentry/transport/AsyncHttpTransport;


# direct methods
.method constructor <init>(Lio/sentry/transport/AsyncHttpTransport;Lio/sentry/SentryEnvelope;Lio/sentry/Hint;Lio/sentry/cache/IEnvelopeCache;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->this$0:Lio/sentry/transport/AsyncHttpTransport;

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    invoke-static {}, Lio/sentry/transport/TransportResult;->error()Lio/sentry/transport/TransportResult;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->failedResult:Lio/sentry/transport/TransportResult;

    const-string p1, "Envelope is required."

    .line 233
    invoke-static {p2, p1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/SentryEnvelope;

    iput-object p1, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->envelope:Lio/sentry/SentryEnvelope;

    iput-object p3, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->hint:Lio/sentry/Hint;

    const-string p1, "EnvelopeCache is required."

    .line 235
    invoke-static {p4, p1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/cache/IEnvelopeCache;

    iput-object p1, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->envelopeCache:Lio/sentry/cache/IEnvelopeCache;

    return-void
.end method

.method static synthetic access$500(Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;)Lio/sentry/Hint;
    .locals 0

    .line 223
    iget-object p0, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->hint:Lio/sentry/Hint;

    return-object p0
.end method

.method static synthetic access$600(Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;)Lio/sentry/SentryEnvelope;
    .locals 0

    .line 223
    iget-object p0, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->envelope:Lio/sentry/SentryEnvelope;

    return-object p0
.end method

.method private flush()Lio/sentry/transport/TransportResult;
    .locals 6

    const-string v0, "The transport failed to send the envelope with response code "

    iget-object v1, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->failedResult:Lio/sentry/transport/TransportResult;

    iget-object v2, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->envelope:Lio/sentry/SentryEnvelope;

    .line 269
    invoke-virtual {v2}, Lio/sentry/SentryEnvelope;->getHeader()Lio/sentry/SentryEnvelopeHeader;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lio/sentry/SentryEnvelopeHeader;->setSentAt(Ljava/util/Date;)V

    iget-object v2, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->envelopeCache:Lio/sentry/cache/IEnvelopeCache;

    iget-object v3, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->envelope:Lio/sentry/SentryEnvelope;

    iget-object v4, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->hint:Lio/sentry/Hint;

    .line 270
    invoke-interface {v2, v3, v4}, Lio/sentry/cache/IEnvelopeCache;->store(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)V

    iget-object v2, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->hint:Lio/sentry/Hint;

    .line 272
    const-class v3, Lio/sentry/hints/DiskFlushNotification;

    new-instance v4, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender$$ExternalSyntheticLambda1;-><init>(Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;)V

    invoke-static {v2, v3, v4}, Lio/sentry/util/HintUtils;->runIfHasType(Lio/sentry/Hint;Ljava/lang/Class;Lio/sentry/util/HintUtils$SentryConsumer;)V

    iget-object v2, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->this$0:Lio/sentry/transport/AsyncHttpTransport;

    .line 288
    invoke-static {v2}, Lio/sentry/transport/AsyncHttpTransport;->access$300(Lio/sentry/transport/AsyncHttpTransport;)Lio/sentry/transport/ITransportGate;

    move-result-object v2

    invoke-interface {v2}, Lio/sentry/transport/ITransportGate;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->this$0:Lio/sentry/transport/AsyncHttpTransport;

    .line 290
    invoke-static {v1}, Lio/sentry/transport/AsyncHttpTransport;->access$200(Lio/sentry/transport/AsyncHttpTransport;)Lio/sentry/SentryOptions;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    move-result-object v1

    iget-object v2, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->envelope:Lio/sentry/SentryEnvelope;

    invoke-interface {v1, v2}, Lio/sentry/clientreport/IClientReportRecorder;->attachReportToEnvelope(Lio/sentry/SentryEnvelope;)Lio/sentry/SentryEnvelope;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->this$0:Lio/sentry/transport/AsyncHttpTransport;

    .line 293
    invoke-static {v2}, Lio/sentry/transport/AsyncHttpTransport;->access$200(Lio/sentry/transport/AsyncHttpTransport;)Lio/sentry/SentryOptions;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getDateProvider()Lio/sentry/SentryDateProvider;

    move-result-object v2

    invoke-interface {v2}, Lio/sentry/SentryDateProvider;->now()Lio/sentry/SentryDate;

    move-result-object v2

    .line 295
    invoke-virtual {v1}, Lio/sentry/SentryEnvelope;->getHeader()Lio/sentry/SentryEnvelopeHeader;

    move-result-object v3

    .line 296
    invoke-virtual {v2}, Lio/sentry/SentryDate;->nanoTimestamp()J

    move-result-wide v4

    invoke-static {v4, v5}, Lio/sentry/DateUtils;->nanosToDate(J)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v3, v2}, Lio/sentry/SentryEnvelopeHeader;->setSentAt(Ljava/util/Date;)V

    iget-object v2, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->this$0:Lio/sentry/transport/AsyncHttpTransport;

    .line 298
    invoke-static {v2}, Lio/sentry/transport/AsyncHttpTransport;->access$400(Lio/sentry/transport/AsyncHttpTransport;)Lio/sentry/transport/HttpConnection;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/sentry/transport/HttpConnection;->send(Lio/sentry/SentryEnvelope;)Lio/sentry/transport/TransportResult;

    move-result-object v2

    .line 299
    invoke-virtual {v2}, Lio/sentry/transport/TransportResult;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->envelopeCache:Lio/sentry/cache/IEnvelopeCache;

    iget-object v3, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->envelope:Lio/sentry/SentryEnvelope;

    .line 300
    invoke-interface {v0, v3}, Lio/sentry/cache/IEnvelopeCache;->discard(Lio/sentry/SentryEnvelope;)V

    move-object v1, v2

    goto :goto_0

    .line 302
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 304
    invoke-virtual {v2}, Lio/sentry/transport/TransportResult;->getResponseCode()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->this$0:Lio/sentry/transport/AsyncHttpTransport;

    .line 306
    invoke-static {v3}, Lio/sentry/transport/AsyncHttpTransport;->access$200(Lio/sentry/transport/AsyncHttpTransport;)Lio/sentry/SentryOptions;

    move-result-object v3

    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v0, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 309
    invoke-virtual {v2}, Lio/sentry/transport/TransportResult;->getResponseCode()I

    move-result v3

    const/16 v4, 0x190

    if-lt v3, v4, :cond_1

    invoke-virtual {v2}, Lio/sentry/transport/TransportResult;->getResponseCode()I

    move-result v2

    const/16 v3, 0x1ad

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->hint:Lio/sentry/Hint;

    .line 310
    const-class v3, Lio/sentry/hints/Retryable;

    new-instance v4, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, v1}, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender$$ExternalSyntheticLambda2;-><init>(Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;Lio/sentry/SentryEnvelope;)V

    invoke-static {v2, v3, v4}, Lio/sentry/util/HintUtils;->runIfDoesNotHaveType(Lio/sentry/Hint;Ljava/lang/Class;Lio/sentry/util/HintUtils$SentryNullableConsumer;)V

    .line 320
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    iget-object v2, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->hint:Lio/sentry/Hint;

    .line 324
    const-class v3, Lio/sentry/hints/Retryable;

    new-instance v4, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender$$ExternalSyntheticLambda3;

    invoke-direct {v4}, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender$$ExternalSyntheticLambda3;-><init>()V

    new-instance v5, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender$$ExternalSyntheticLambda4;

    invoke-direct {v5, p0, v1}, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender$$ExternalSyntheticLambda4;-><init>(Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;Lio/sentry/SentryEnvelope;)V

    invoke-static {v2, v3, v4, v5}, Lio/sentry/util/HintUtils;->runIfHasType(Lio/sentry/Hint;Ljava/lang/Class;Lio/sentry/util/HintUtils$SentryConsumer;Lio/sentry/util/HintUtils$SentryHintFallback;)V

    .line 336
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "Sending the event failed."

    invoke-direct {p0, v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    :cond_2
    iget-object v0, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->hint:Lio/sentry/Hint;

    .line 340
    const-class v2, Lio/sentry/hints/Retryable;

    new-instance v3, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender$$ExternalSyntheticLambda5;

    invoke-direct {v3}, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender$$ExternalSyntheticLambda5;-><init>()V

    new-instance v4, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender$$ExternalSyntheticLambda6;

    invoke-direct {v4, p0}, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender$$ExternalSyntheticLambda6;-><init>(Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;)V

    invoke-static {v0, v2, v3, v4}, Lio/sentry/util/HintUtils;->runIfHasType(Lio/sentry/Hint;Ljava/lang/Class;Lio/sentry/util/HintUtils$SentryConsumer;Lio/sentry/util/HintUtils$SentryHintFallback;)V

    :goto_0
    return-object v1
.end method

.method static synthetic lambda$flush$3(Lio/sentry/hints/Retryable;)V
    .locals 1

    const/4 v0, 0x1

    .line 328
    invoke-interface {p0, v0}, Lio/sentry/hints/Retryable;->setRetry(Z)V

    return-void
.end method

.method static synthetic lambda$flush$5(Lio/sentry/hints/Retryable;)V
    .locals 1

    const/4 v0, 0x1

    .line 344
    invoke-interface {p0, v0}, Lio/sentry/hints/Retryable;->setRetry(Z)V

    return-void
.end method


# virtual methods
.method synthetic lambda$flush$1$io-sentry-transport-AsyncHttpTransport$EnvelopeSender(Lio/sentry/hints/DiskFlushNotification;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->envelope:Lio/sentry/SentryEnvelope;

    .line 276
    invoke-virtual {v0}, Lio/sentry/SentryEnvelope;->getHeader()Lio/sentry/SentryEnvelopeHeader;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryEnvelopeHeader;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/sentry/hints/DiskFlushNotification;->isFlushable(Lio/sentry/protocol/SentryId;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 277
    invoke-interface {p1}, Lio/sentry/hints/DiskFlushNotification;->markFlushed()V

    iget-object p0, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->this$0:Lio/sentry/transport/AsyncHttpTransport;

    .line 278
    invoke-static {p0}, Lio/sentry/transport/AsyncHttpTransport;->access$200(Lio/sentry/transport/AsyncHttpTransport;)Lio/sentry/SentryOptions;

    move-result-object p0

    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v0, "Disk flush envelope fired"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p0, p1, v0, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->this$0:Lio/sentry/transport/AsyncHttpTransport;

    .line 280
    invoke-static {p0}, Lio/sentry/transport/AsyncHttpTransport;->access$200(Lio/sentry/transport/AsyncHttpTransport;)Lio/sentry/SentryOptions;

    move-result-object p0

    .line 281
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v0, "Not firing envelope flush as there\'s an ongoing transaction"

    new-array v1, v1, [Ljava/lang/Object;

    .line 282
    invoke-interface {p0, p1, v0, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$flush$2$io-sentry-transport-AsyncHttpTransport$EnvelopeSender(Lio/sentry/SentryEnvelope;Ljava/lang/Object;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->this$0:Lio/sentry/transport/AsyncHttpTransport;

    .line 314
    invoke-static {p0}, Lio/sentry/transport/AsyncHttpTransport;->access$200(Lio/sentry/transport/AsyncHttpTransport;)Lio/sentry/SentryOptions;

    move-result-object p0

    .line 315
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    move-result-object p0

    sget-object p2, Lio/sentry/clientreport/DiscardReason;->NETWORK_ERROR:Lio/sentry/clientreport/DiscardReason;

    .line 316
    invoke-interface {p0, p2, p1}, Lio/sentry/clientreport/IClientReportRecorder;->recordLostEnvelope(Lio/sentry/clientreport/DiscardReason;Lio/sentry/SentryEnvelope;)V

    return-void
.end method

.method synthetic lambda$flush$4$io-sentry-transport-AsyncHttpTransport$EnvelopeSender(Lio/sentry/SentryEnvelope;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->this$0:Lio/sentry/transport/AsyncHttpTransport;

    .line 331
    invoke-static {v0}, Lio/sentry/transport/AsyncHttpTransport;->access$200(Lio/sentry/transport/AsyncHttpTransport;)Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    invoke-static {p3, p2, v0}, Lio/sentry/util/LogUtils;->logNotInstanceOf(Ljava/lang/Class;Ljava/lang/Object;Lio/sentry/ILogger;)V

    iget-object p0, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->this$0:Lio/sentry/transport/AsyncHttpTransport;

    .line 332
    invoke-static {p0}, Lio/sentry/transport/AsyncHttpTransport;->access$200(Lio/sentry/transport/AsyncHttpTransport;)Lio/sentry/SentryOptions;

    move-result-object p0

    .line 333
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    move-result-object p0

    sget-object p2, Lio/sentry/clientreport/DiscardReason;->NETWORK_ERROR:Lio/sentry/clientreport/DiscardReason;

    .line 334
    invoke-interface {p0, p2, p1}, Lio/sentry/clientreport/IClientReportRecorder;->recordLostEnvelope(Lio/sentry/clientreport/DiscardReason;Lio/sentry/SentryEnvelope;)V

    return-void
.end method

.method synthetic lambda$flush$6$io-sentry-transport-AsyncHttpTransport$EnvelopeSender(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->this$0:Lio/sentry/transport/AsyncHttpTransport;

    .line 347
    invoke-static {v0}, Lio/sentry/transport/AsyncHttpTransport;->access$200(Lio/sentry/transport/AsyncHttpTransport;)Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    invoke-static {p2, p1, v0}, Lio/sentry/util/LogUtils;->logNotInstanceOf(Ljava/lang/Class;Ljava/lang/Object;Lio/sentry/ILogger;)V

    iget-object p1, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->this$0:Lio/sentry/transport/AsyncHttpTransport;

    .line 348
    invoke-static {p1}, Lio/sentry/transport/AsyncHttpTransport;->access$200(Lio/sentry/transport/AsyncHttpTransport;)Lio/sentry/SentryOptions;

    move-result-object p1

    .line 349
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    move-result-object p1

    sget-object p2, Lio/sentry/clientreport/DiscardReason;->NETWORK_ERROR:Lio/sentry/clientreport/DiscardReason;

    iget-object p0, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->envelope:Lio/sentry/SentryEnvelope;

    .line 350
    invoke-interface {p1, p2, p0}, Lio/sentry/clientreport/IClientReportRecorder;->recordLostEnvelope(Lio/sentry/clientreport/DiscardReason;Lio/sentry/SentryEnvelope;)V

    return-void
.end method

.method synthetic lambda$run$0$io-sentry-transport-AsyncHttpTransport$EnvelopeSender(Lio/sentry/transport/TransportResult;Lio/sentry/hints/SubmissionResult;)V
    .locals 3

    .line 0
    iget-object p0, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->this$0:Lio/sentry/transport/AsyncHttpTransport;

    .line 254
    invoke-static {p0}, Lio/sentry/transport/AsyncHttpTransport;->access$200(Lio/sentry/transport/AsyncHttpTransport;)Lio/sentry/SentryOptions;

    move-result-object p0

    .line 255
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 259
    invoke-virtual {p1}, Lio/sentry/transport/TransportResult;->isSuccess()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Marking envelope submission result: %s"

    .line 256
    invoke-interface {p0, v0, v2, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 260
    invoke-virtual {p1}, Lio/sentry/transport/TransportResult;->isSuccess()Z

    move-result p0

    invoke-interface {p2, p0}, Lio/sentry/hints/SubmissionResult;->setResult(Z)V

    return-void
.end method

.method public run()V
    .locals 7

    iget-object v0, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->this$0:Lio/sentry/transport/AsyncHttpTransport;

    .line 240
    invoke-static {v0, p0}, Lio/sentry/transport/AsyncHttpTransport;->access$102(Lio/sentry/transport/AsyncHttpTransport;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    iget-object v0, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->failedResult:Lio/sentry/transport/TransportResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 243
    :try_start_0
    invoke-direct {p0}, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->flush()Lio/sentry/transport/TransportResult;

    move-result-object v0

    iget-object v3, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->this$0:Lio/sentry/transport/AsyncHttpTransport;

    .line 244
    invoke-static {v3}, Lio/sentry/transport/AsyncHttpTransport;->access$200(Lio/sentry/transport/AsyncHttpTransport;)Lio/sentry/SentryOptions;

    move-result-object v3

    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    sget-object v4, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v5, "Envelope flushed"

    new-array v6, v1, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5, v6}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->hint:Lio/sentry/Hint;

    .line 250
    const-class v3, Lio/sentry/hints/SubmissionResult;

    new-instance v4, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v0}, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender$$ExternalSyntheticLambda0;-><init>(Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;Lio/sentry/transport/TransportResult;)V

    invoke-static {v1, v3, v4}, Lio/sentry/util/HintUtils;->runIfHasType(Lio/sentry/Hint;Ljava/lang/Class;Lio/sentry/util/HintUtils$SentryConsumer;)V

    iget-object p0, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->this$0:Lio/sentry/transport/AsyncHttpTransport;

    .line 262
    invoke-static {p0, v2}, Lio/sentry/transport/AsyncHttpTransport;->access$102(Lio/sentry/transport/AsyncHttpTransport;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    return-void

    :catchall_0
    move-exception v3

    :try_start_1
    iget-object v4, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->this$0:Lio/sentry/transport/AsyncHttpTransport;

    .line 246
    invoke-static {v4}, Lio/sentry/transport/AsyncHttpTransport;->access$200(Lio/sentry/transport/AsyncHttpTransport;)Lio/sentry/SentryOptions;

    move-result-object v4

    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v4

    sget-object v5, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v6, "Envelope submission failed"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v4, v5, v3, v6, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 247
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    iget-object v3, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->hint:Lio/sentry/Hint;

    .line 250
    const-class v4, Lio/sentry/hints/SubmissionResult;

    new-instance v5, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, v0}, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender$$ExternalSyntheticLambda0;-><init>(Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;Lio/sentry/transport/TransportResult;)V

    invoke-static {v3, v4, v5}, Lio/sentry/util/HintUtils;->runIfHasType(Lio/sentry/Hint;Ljava/lang/Class;Lio/sentry/util/HintUtils$SentryConsumer;)V

    iget-object p0, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->this$0:Lio/sentry/transport/AsyncHttpTransport;

    .line 262
    invoke-static {p0, v2}, Lio/sentry/transport/AsyncHttpTransport;->access$102(Lio/sentry/transport/AsyncHttpTransport;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 263
    throw v1
.end method
