.class public final Lio/sentry/OutboxSender;
.super Lio/sentry/DirectoryProcessor;
.source "OutboxSender.java"

# interfaces
.implements Lio/sentry/IEnvelopeSender;


# static fields
.field private static final UTF_8:Ljava/nio/charset/Charset;


# instance fields
.field private final envelopeReader:Lio/sentry/IEnvelopeReader;

.field private final hub:Lio/sentry/IHub;

.field private final logger:Lio/sentry/ILogger;

.field private final serializer:Lio/sentry/ISerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    .line 37
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lio/sentry/OutboxSender;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Lio/sentry/IHub;Lio/sentry/IEnvelopeReader;Lio/sentry/ISerializer;Lio/sentry/ILogger;JI)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-wide v3, p5

    move v5, p7

    .line 51
    invoke-direct/range {v0 .. v5}, Lio/sentry/DirectoryProcessor;-><init>(Lio/sentry/IHub;Lio/sentry/ILogger;JI)V

    const-string p5, "Hub is required."

    .line 52
    invoke-static {p1, p5}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/IHub;

    iput-object p1, p0, Lio/sentry/OutboxSender;->hub:Lio/sentry/IHub;

    const-string p1, "Envelope reader is required."

    .line 53
    invoke-static {p2, p1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/IEnvelopeReader;

    iput-object p1, p0, Lio/sentry/OutboxSender;->envelopeReader:Lio/sentry/IEnvelopeReader;

    const-string p1, "Serializer is required."

    .line 54
    invoke-static {p3, p1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/ISerializer;

    iput-object p1, p0, Lio/sentry/OutboxSender;->serializer:Lio/sentry/ISerializer;

    const-string p1, "Logger is required."

    .line 55
    invoke-static {p4, p1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/ILogger;

    iput-object p1, p0, Lio/sentry/OutboxSender;->logger:Lio/sentry/ILogger;

    return-void
.end method

.method private extractSamplingDecision(Lio/sentry/TraceContext;)Lio/sentry/TracesSamplingDecision;
    .locals 5

    const/4 v0, 0x1

    .line 258
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 237
    invoke-virtual {p1}, Lio/sentry/TraceContext;->getSampleRate()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 240
    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x0

    .line 241
    invoke-static {v1, v2}, Lio/sentry/util/SampleRateUtils;->isValidTracesSampleRate(Ljava/lang/Double;Z)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, p0, Lio/sentry/OutboxSender;->logger:Lio/sentry/ILogger;

    .line 242
    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Invalid sample rate parsed from TraceContext: %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 247
    :cond_0
    new-instance v2, Lio/sentry/TracesSamplingDecision;

    invoke-direct {v2, v0, v1}, Lio/sentry/TracesSamplingDecision;-><init>(Ljava/lang/Boolean;Ljava/lang/Double;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    iget-object p0, p0, Lio/sentry/OutboxSender;->logger:Lio/sentry/ILogger;

    .line 250
    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v2, "Unable to parse sample rate from TraceContext: %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, v1, v2, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 258
    :cond_1
    :goto_0
    new-instance p0, Lio/sentry/TracesSamplingDecision;

    invoke-direct {p0, v0}, Lio/sentry/TracesSamplingDecision;-><init>(Ljava/lang/Boolean;)V

    return-object p0
.end method

.method static synthetic lambda$processEnvelope$1(Lio/sentry/hints/Resettable;)V
    .locals 0

    .line 230
    invoke-interface {p0}, Lio/sentry/hints/Resettable;->reset()V

    return-void
.end method

.method private logEnvelopeItemNull(Lio/sentry/SentryEnvelopeItem;I)V
    .locals 1

    iget-object p0, p0, Lio/sentry/OutboxSender;->logger:Lio/sentry/ILogger;

    .line 262
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 265
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 266
    invoke-virtual {p1}, Lio/sentry/SentryEnvelopeItem;->getHeader()Lio/sentry/SentryEnvelopeItemHeader;

    move-result-object p1

    invoke-virtual {p1}, Lio/sentry/SentryEnvelopeItemHeader;->getType()Lio/sentry/SentryItemType;

    move-result-object p1

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Item %d of type %s returned null by the parser."

    .line 262
    invoke-interface {p0, v0, p2, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private logItemCaptured(I)V
    .locals 2

    iget-object p0, p0, Lio/sentry/OutboxSender;->logger:Lio/sentry/ILogger;

    .line 280
    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Item %d is being captured."

    invoke-interface {p0, v0, v1, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private logTimeout(Lio/sentry/protocol/SentryId;)V
    .locals 2

    iget-object p0, p0, Lio/sentry/OutboxSender;->logger:Lio/sentry/ILogger;

    .line 284
    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v1, "Timed out waiting for event id submission: %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, v0, v1, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private logUnexpectedEventId(Lio/sentry/SentryEnvelope;Lio/sentry/protocol/SentryId;I)V
    .locals 1

    iget-object p0, p0, Lio/sentry/OutboxSender;->logger:Lio/sentry/ILogger;

    .line 271
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 274
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 275
    invoke-virtual {p1}, Lio/sentry/SentryEnvelope;->getHeader()Lio/sentry/SentryEnvelopeHeader;

    move-result-object p1

    invoke-virtual {p1}, Lio/sentry/SentryEnvelopeHeader;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object p1

    filled-new-array {p3, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Item %d of has a different event id (%s) to the envelope header (%s)"

    .line 271
    invoke-interface {p0, v0, p2, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private processEnvelope(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/sentry/OutboxSender;->logger:Lio/sentry/ILogger;

    .line 118
    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 121
    invoke-virtual {p1}, Lio/sentry/SentryEnvelope;->getItems()Ljava/lang/Iterable;

    move-result-object v2

    invoke-static {v2}, Lio/sentry/util/CollectionUtils;->size(Ljava/lang/Iterable;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Processing Envelope with %d item(s)"

    .line 118
    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    invoke-virtual {p1}, Lio/sentry/SentryEnvelope;->getItems()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/SentryEnvelopeItem;

    add-int/lit8 v1, v1, 0x1

    .line 127
    invoke-virtual {v2}, Lio/sentry/SentryEnvelopeItem;->getHeader()Lio/sentry/SentryEnvelopeItemHeader;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v2, p0, Lio/sentry/OutboxSender;->logger:Lio/sentry/ILogger;

    .line 128
    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "Item %d has no header"

    invoke-interface {v2, v3, v5, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 131
    :cond_0
    sget-object v3, Lio/sentry/SentryItemType;->Event:Lio/sentry/SentryItemType;

    invoke-virtual {v2}, Lio/sentry/SentryEnvelopeItem;->getHeader()Lio/sentry/SentryEnvelopeItemHeader;

    move-result-object v4

    invoke-virtual {v4}, Lio/sentry/SentryEnvelopeItemHeader;->getType()Lio/sentry/SentryItemType;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/sentry/SentryItemType;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "Item failed to process."

    if-eqz v3, :cond_5

    .line 132
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/ByteArrayInputStream;

    .line 134
    invoke-virtual {v2}, Lio/sentry/SentryEnvelopeItem;->getData()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    sget-object v7, Lio/sentry/OutboxSender;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v5, p0, Lio/sentry/OutboxSender;->serializer:Lio/sentry/ISerializer;

    .line 135
    const-class v6, Lio/sentry/SentryEvent;

    invoke-interface {v5, v3, v6}, Lio/sentry/ISerializer;->deserialize(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/sentry/SentryEvent;

    if-nez v5, :cond_1

    .line 137
    invoke-direct {p0, v2, v1}, Lio/sentry/OutboxSender;->logEnvelopeItemNull(Lio/sentry/SentryEnvelopeItem;I)V

    goto :goto_1

    .line 139
    :cond_1
    invoke-virtual {v5}, Lio/sentry/SentryEvent;->getSdk()Lio/sentry/protocol/SdkVersion;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 140
    invoke-virtual {v5}, Lio/sentry/SentryEvent;->getSdk()Lio/sentry/protocol/SdkVersion;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/protocol/SdkVersion;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lio/sentry/util/HintUtils;->setIsFromHybridSdk(Lio/sentry/Hint;Ljava/lang/String;)V

    .line 142
    :cond_2
    invoke-virtual {p1}, Lio/sentry/SentryEnvelope;->getHeader()Lio/sentry/SentryEnvelopeHeader;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/SentryEnvelopeHeader;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 143
    invoke-virtual {p1}, Lio/sentry/SentryEnvelope;->getHeader()Lio/sentry/SentryEnvelopeHeader;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/SentryEnvelopeHeader;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v2

    invoke-virtual {v5}, Lio/sentry/SentryEvent;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v6

    invoke-virtual {v2, v6}, Lio/sentry/protocol/SentryId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 144
    invoke-virtual {v5}, Lio/sentry/SentryEvent;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v2

    invoke-direct {p0, p1, v2, v1}, Lio/sentry/OutboxSender;->logUnexpectedEventId(Lio/sentry/SentryEnvelope;Lio/sentry/protocol/SentryId;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    :try_start_2
    invoke-virtual {v3}, Ljava/io/Reader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/16 :goto_0

    :cond_3
    :try_start_3
    iget-object v2, p0, Lio/sentry/OutboxSender;->hub:Lio/sentry/IHub;

    .line 147
    invoke-interface {v2, v5, p2}, Lio/sentry/IHub;->captureEvent(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    .line 148
    invoke-direct {p0, v1}, Lio/sentry/OutboxSender;->logItemCaptured(I)V

    .line 150
    invoke-direct {p0, p2}, Lio/sentry/OutboxSender;->waitFlush(Lio/sentry/Hint;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 151
    invoke-virtual {v5}, Lio/sentry/SentryEvent;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v2

    invoke-direct {p0, v2}, Lio/sentry/OutboxSender;->logTimeout(Lio/sentry/protocol/SentryId;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 155
    :try_start_4
    invoke-virtual {v3}, Ljava/io/Reader;->close()V

    goto/16 :goto_6

    :cond_4
    :goto_1
    invoke-virtual {v3}, Ljava/io/Reader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto/16 :goto_5

    :catchall_0
    move-exception v2

    .line 132
    :try_start_5
    invoke-virtual {v3}, Ljava/io/Reader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v3

    :try_start_6
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v2

    iget-object v3, p0, Lio/sentry/OutboxSender;->logger:Lio/sentry/ILogger;

    .line 156
    sget-object v5, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-interface {v3, v5, v4, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 158
    :cond_5
    sget-object v3, Lio/sentry/SentryItemType;->Transaction:Lio/sentry/SentryItemType;

    invoke-virtual {v2}, Lio/sentry/SentryEnvelopeItem;->getHeader()Lio/sentry/SentryEnvelopeItemHeader;

    move-result-object v5

    invoke-virtual {v5}, Lio/sentry/SentryEnvelopeItemHeader;->getType()Lio/sentry/SentryItemType;

    move-result-object v5

    invoke-virtual {v3, v5}, Lio/sentry/SentryItemType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 159
    :try_start_7
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/ByteArrayInputStream;

    .line 161
    invoke-virtual {v2}, Lio/sentry/SentryEnvelopeItem;->getData()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    sget-object v7, Lio/sentry/OutboxSender;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :try_start_8
    iget-object v5, p0, Lio/sentry/OutboxSender;->serializer:Lio/sentry/ISerializer;

    .line 163
    const-class v6, Lio/sentry/protocol/SentryTransaction;

    .line 164
    invoke-interface {v5, v3, v6}, Lio/sentry/ISerializer;->deserialize(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/sentry/protocol/SentryTransaction;

    if-nez v5, :cond_6

    .line 166
    invoke-direct {p0, v2, v1}, Lio/sentry/OutboxSender;->logEnvelopeItemNull(Lio/sentry/SentryEnvelopeItem;I)V

    goto :goto_3

    .line 168
    :cond_6
    invoke-virtual {p1}, Lio/sentry/SentryEnvelope;->getHeader()Lio/sentry/SentryEnvelopeHeader;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/SentryEnvelopeHeader;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 169
    invoke-virtual {p1}, Lio/sentry/SentryEnvelope;->getHeader()Lio/sentry/SentryEnvelopeHeader;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/SentryEnvelopeHeader;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v2

    invoke-virtual {v5}, Lio/sentry/protocol/SentryTransaction;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v6

    invoke-virtual {v2, v6}, Lio/sentry/protocol/SentryId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 170
    invoke-virtual {v5}, Lio/sentry/protocol/SentryTransaction;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v2

    invoke-direct {p0, p1, v2, v1}, Lio/sentry/OutboxSender;->logUnexpectedEventId(Lio/sentry/SentryEnvelope;Lio/sentry/protocol/SentryId;I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 192
    :try_start_9
    invoke-virtual {v3}, Ljava/io/Reader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto/16 :goto_0

    .line 175
    :cond_7
    :try_start_a
    invoke-virtual {p1}, Lio/sentry/SentryEnvelope;->getHeader()Lio/sentry/SentryEnvelopeHeader;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/SentryEnvelopeHeader;->getTraceContext()Lio/sentry/TraceContext;

    move-result-object v2

    .line 176
    invoke-virtual {v5}, Lio/sentry/protocol/SentryTransaction;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v6

    invoke-virtual {v6}, Lio/sentry/protocol/Contexts;->getTrace()Lio/sentry/SpanContext;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 180
    invoke-virtual {v5}, Lio/sentry/protocol/SentryTransaction;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v6

    .line 181
    invoke-virtual {v6}, Lio/sentry/protocol/Contexts;->getTrace()Lio/sentry/SpanContext;

    move-result-object v6

    .line 182
    invoke-direct {p0, v2}, Lio/sentry/OutboxSender;->extractSamplingDecision(Lio/sentry/TraceContext;)Lio/sentry/TracesSamplingDecision;

    move-result-object v7

    invoke-virtual {v6, v7}, Lio/sentry/SpanContext;->setSamplingDecision(Lio/sentry/TracesSamplingDecision;)V

    :cond_8
    iget-object v6, p0, Lio/sentry/OutboxSender;->hub:Lio/sentry/IHub;

    .line 184
    invoke-interface {v6, v5, v2, p2}, Lio/sentry/IHub;->captureTransaction(Lio/sentry/protocol/SentryTransaction;Lio/sentry/TraceContext;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    .line 185
    invoke-direct {p0, v1}, Lio/sentry/OutboxSender;->logItemCaptured(I)V

    .line 187
    invoke-direct {p0, p2}, Lio/sentry/OutboxSender;->waitFlush(Lio/sentry/Hint;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 188
    invoke-virtual {v5}, Lio/sentry/protocol/SentryTransaction;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v2

    invoke-direct {p0, v2}, Lio/sentry/OutboxSender;->logTimeout(Lio/sentry/protocol/SentryId;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 192
    :try_start_b
    invoke-virtual {v3}, Ljava/io/Reader;->close()V

    goto/16 :goto_6

    :cond_9
    :goto_3
    invoke-virtual {v3}, Ljava/io/Reader;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_5

    :catchall_3
    move-exception v2

    .line 159
    :try_start_c
    invoke-virtual {v3}, Ljava/io/Reader;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception v3

    :try_start_d
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    :catchall_5
    move-exception v2

    iget-object v3, p0, Lio/sentry/OutboxSender;->logger:Lio/sentry/ILogger;

    .line 193
    sget-object v5, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-interface {v3, v5, v4, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 197
    :cond_a
    new-instance v3, Lio/sentry/SentryEnvelope;

    .line 199
    invoke-virtual {p1}, Lio/sentry/SentryEnvelope;->getHeader()Lio/sentry/SentryEnvelopeHeader;

    move-result-object v4

    invoke-virtual {v4}, Lio/sentry/SentryEnvelopeHeader;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v4

    invoke-virtual {p1}, Lio/sentry/SentryEnvelope;->getHeader()Lio/sentry/SentryEnvelopeHeader;

    move-result-object v5

    invoke-virtual {v5}, Lio/sentry/SentryEnvelopeHeader;->getSdkVersion()Lio/sentry/protocol/SdkVersion;

    move-result-object v5

    invoke-direct {v3, v4, v5, v2}, Lio/sentry/SentryEnvelope;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/protocol/SdkVersion;Lio/sentry/SentryEnvelopeItem;)V

    iget-object v4, p0, Lio/sentry/OutboxSender;->hub:Lio/sentry/IHub;

    .line 200
    invoke-interface {v4, v3, p2}, Lio/sentry/IHub;->captureEnvelope(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    iget-object v3, p0, Lio/sentry/OutboxSender;->logger:Lio/sentry/ILogger;

    .line 201
    sget-object v4, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 204
    invoke-virtual {v2}, Lio/sentry/SentryEnvelopeItem;->getHeader()Lio/sentry/SentryEnvelopeItemHeader;

    move-result-object v5

    invoke-virtual {v5}, Lio/sentry/SentryEnvelopeItemHeader;->getType()Lio/sentry/SentryItemType;

    move-result-object v5

    invoke-virtual {v5}, Lio/sentry/SentryItemType;->getItemType()Ljava/lang/String;

    move-result-object v5

    .line 205
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "%s item %d is being captured."

    .line 201
    invoke-interface {v3, v4, v6, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    invoke-direct {p0, p2}, Lio/sentry/OutboxSender;->waitFlush(Lio/sentry/Hint;)Z

    move-result v3

    if-nez v3, :cond_b

    iget-object p0, p0, Lio/sentry/OutboxSender;->logger:Lio/sentry/ILogger;

    .line 208
    sget-object p1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 211
    invoke-virtual {v2}, Lio/sentry/SentryEnvelopeItem;->getHeader()Lio/sentry/SentryEnvelopeItemHeader;

    move-result-object p2

    invoke-virtual {p2}, Lio/sentry/SentryEnvelopeItemHeader;->getType()Lio/sentry/SentryItemType;

    move-result-object p2

    invoke-virtual {p2}, Lio/sentry/SentryItemType;->getItemType()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "Timed out waiting for item type submission: %s"

    .line 208
    invoke-interface {p0, p1, v0, p2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    .line 216
    :cond_b
    :goto_5
    invoke-static {p2}, Lio/sentry/util/HintUtils;->getSentrySdkHint(Lio/sentry/Hint;)Ljava/lang/Object;

    move-result-object v2

    .line 217
    instance-of v3, v2, Lio/sentry/hints/SubmissionResult;

    if-eqz v3, :cond_c

    .line 218
    check-cast v2, Lio/sentry/hints/SubmissionResult;

    invoke-interface {v2}, Lio/sentry/hints/SubmissionResult;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_c

    iget-object p0, p0, Lio/sentry/OutboxSender;->logger:Lio/sentry/ILogger;

    .line 221
    sget-object p1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 224
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "Envelope had a failed capture at item %d. No more items will be sent."

    .line 221
    invoke-interface {p0, p1, v0, p2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    .line 230
    :cond_c
    const-class v2, Lio/sentry/hints/Resettable;

    new-instance v3, Lio/sentry/OutboxSender$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lio/sentry/OutboxSender$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p2, v2, v3}, Lio/sentry/util/HintUtils;->runIfHasType(Lio/sentry/Hint;Ljava/lang/Class;Lio/sentry/util/HintUtils$SentryConsumer;)V

    goto/16 :goto_0

    :cond_d
    :goto_6
    return-void
.end method

.method private waitFlush(Lio/sentry/Hint;)Z
    .locals 1

    .line 288
    invoke-static {p1}, Lio/sentry/util/HintUtils;->getSentrySdkHint(Lio/sentry/Hint;)Ljava/lang/Object;

    move-result-object p1

    .line 289
    instance-of v0, p1, Lio/sentry/hints/Flushable;

    if-eqz v0, :cond_0

    .line 290
    check-cast p1, Lio/sentry/hints/Flushable;

    invoke-interface {p1}, Lio/sentry/hints/Flushable;->waitFlush()Z

    move-result p0

    return p0

    .line 292
    :cond_0
    const-class v0, Lio/sentry/hints/Flushable;

    iget-object p0, p0, Lio/sentry/OutboxSender;->logger:Lio/sentry/ILogger;

    invoke-static {v0, p1, p0}, Lio/sentry/util/LogUtils;->logNotInstanceOf(Ljava/lang/Class;Ljava/lang/Object;Lio/sentry/ILogger;)V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method protected isRelevantFileName(Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_0

    const-string p0, "session"

    .line 103
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "previous_session"

    .line 104
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "startup_crash"

    .line 105
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method synthetic lambda$processFile$0$io-sentry-OutboxSender(Ljava/io/File;Lio/sentry/hints/Retryable;)V
    .locals 5

    .line 0
    const-string v0, "Failed to delete: %s"

    .line 86
    invoke-interface {p2}, Lio/sentry/hints/Retryable;->isRetry()Z

    move-result p2

    if-nez p2, :cond_0

    .line 88
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lio/sentry/OutboxSender;->logger:Lio/sentry/ILogger;

    .line 89
    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-interface {p2, v1, v0, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    iget-object p0, p0, Lio/sentry/OutboxSender;->logger:Lio/sentry/ILogger;

    .line 92
    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, v1, p2, v0, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public bridge synthetic processDirectory(Ljava/io/File;)V
    .locals 0

    .line 33
    invoke-super {p0, p1}, Lio/sentry/DirectoryProcessor;->processDirectory(Ljava/io/File;)V

    return-void
.end method

.method public processEnvelopeFile(Ljava/lang/String;Lio/sentry/Hint;)V
    .locals 1

    const-string v0, "Path is required."

    .line 111
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 113
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lio/sentry/OutboxSender;->processFile(Ljava/io/File;Lio/sentry/Hint;)V

    return-void
.end method

.method protected processFile(Ljava/io/File;Lio/sentry/Hint;)V
    .locals 7

    const-string v0, "File is required."

    .line 60
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/OutboxSender;->isRelevantFileName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lio/sentry/OutboxSender;->logger:Lio/sentry/ILogger;

    .line 63
    sget-object p2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "File \'%s\' should be ignored."

    invoke-interface {p0, p2, v0, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 67
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v1, p0, Lio/sentry/OutboxSender;->envelopeReader:Lio/sentry/IEnvelopeReader;

    .line 68
    invoke-interface {v1, v0}, Lio/sentry/IEnvelopeReader;->read(Ljava/io/InputStream;)Lio/sentry/SentryEnvelope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    iget-object v1, p0, Lio/sentry/OutboxSender;->logger:Lio/sentry/ILogger;

    .line 70
    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v5, "Stream from path %s resulted in a null envelope."

    new-array v3, v3, [Ljava/lang/Object;

    .line 73
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v2

    .line 70
    invoke-interface {v1, v4, v5, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 75
    :cond_1
    invoke-direct {p0, v1, p2}, Lio/sentry/OutboxSender;->processEnvelope(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)V

    iget-object v1, p0, Lio/sentry/OutboxSender;->logger:Lio/sentry/ILogger;

    .line 76
    sget-object v4, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v5, "File \'%s\' is done."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v2

    invoke-interface {v1, v4, v5, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 81
    const-class v0, Lio/sentry/hints/Retryable;

    iget-object v1, p0, Lio/sentry/OutboxSender;->logger:Lio/sentry/ILogger;

    new-instance v2, Lio/sentry/OutboxSender$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lio/sentry/OutboxSender$$ExternalSyntheticLambda0;-><init>(Lio/sentry/OutboxSender;Ljava/io/File;)V

    goto :goto_2

    :catchall_0
    move-exception v1

    .line 67
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_5
    iget-object v1, p0, Lio/sentry/OutboxSender;->logger:Lio/sentry/ILogger;

    .line 79
    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Error processing envelope."

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 81
    const-class v0, Lio/sentry/hints/Retryable;

    iget-object v1, p0, Lio/sentry/OutboxSender;->logger:Lio/sentry/ILogger;

    new-instance v2, Lio/sentry/OutboxSender$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lio/sentry/OutboxSender$$ExternalSyntheticLambda0;-><init>(Lio/sentry/OutboxSender;Ljava/io/File;)V

    :goto_2
    invoke-static {p2, v0, v1, v2}, Lio/sentry/util/HintUtils;->runIfHasTypeLogIfNot(Lio/sentry/Hint;Ljava/lang/Class;Lio/sentry/ILogger;Lio/sentry/util/HintUtils$SentryConsumer;)V

    return-void

    :goto_3
    const-class v1, Lio/sentry/hints/Retryable;

    iget-object v2, p0, Lio/sentry/OutboxSender;->logger:Lio/sentry/ILogger;

    new-instance v3, Lio/sentry/OutboxSender$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Lio/sentry/OutboxSender$$ExternalSyntheticLambda0;-><init>(Lio/sentry/OutboxSender;Ljava/io/File;)V

    invoke-static {p2, v1, v2, v3}, Lio/sentry/util/HintUtils;->runIfHasTypeLogIfNot(Lio/sentry/Hint;Ljava/lang/Class;Lio/sentry/ILogger;Lio/sentry/util/HintUtils$SentryConsumer;)V

    .line 96
    throw v0
.end method
