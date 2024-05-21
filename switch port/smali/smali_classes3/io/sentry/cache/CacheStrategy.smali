.class abstract Lio/sentry/cache/CacheStrategy;
.super Ljava/lang/Object;
.source "CacheStrategy.java"


# static fields
.field protected static final UTF_8:Ljava/nio/charset/Charset;


# instance fields
.field protected final directory:Ljava/io/File;

.field private final maxSize:I

.field protected final options:Lio/sentry/SentryOptions;

.field protected final serializer:Lio/sentry/ISerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    .line 37
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lio/sentry/cache/CacheStrategy;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method constructor <init>(Lio/sentry/SentryOptions;Ljava/lang/String;I)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Directory is required."

    .line 48
    invoke-static {p2, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "SentryOptions is required."

    .line 49
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/SentryOptions;

    iput-object v0, p0, Lio/sentry/cache/CacheStrategy;->options:Lio/sentry/SentryOptions;

    .line 51
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/ISerializer;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/cache/CacheStrategy;->serializer:Lio/sentry/ISerializer;

    .line 52
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lio/sentry/cache/CacheStrategy;->directory:Ljava/io/File;

    iput p3, p0, Lio/sentry/cache/CacheStrategy;->maxSize:I

    return-void
.end method

.method private buildNewEnvelope(Lio/sentry/SentryEnvelope;Lio/sentry/SentryEnvelopeItem;)Lio/sentry/SentryEnvelope;
    .locals 2

    .line 281
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 283
    invoke-virtual {p1}, Lio/sentry/SentryEnvelope;->getItems()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/SentryEnvelopeItem;

    .line 284
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 286
    :cond_0
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    new-instance p2, Lio/sentry/SentryEnvelope;

    invoke-virtual {p1}, Lio/sentry/SentryEnvelope;->getHeader()Lio/sentry/SentryEnvelopeHeader;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Lio/sentry/SentryEnvelope;-><init>(Lio/sentry/SentryEnvelopeHeader;Ljava/lang/Iterable;)V

    return-object p2
.end method

.method private getFirstSession(Lio/sentry/SentryEnvelope;)Lio/sentry/Session;
    .locals 2

    .line 228
    invoke-virtual {p1}, Lio/sentry/SentryEnvelope;->getItems()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/SentryEnvelopeItem;

    .line 229
    invoke-direct {p0, v0}, Lio/sentry/cache/CacheStrategy;->isSessionType(Lio/sentry/SentryEnvelopeItem;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 234
    :cond_0
    invoke-direct {p0, v0}, Lio/sentry/cache/CacheStrategy;->readSession(Lio/sentry/SentryEnvelopeItem;)Lio/sentry/Session;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private isSessionType(Lio/sentry/SentryEnvelopeItem;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 254
    :cond_0
    invoke-virtual {p1}, Lio/sentry/SentryEnvelopeItem;->getHeader()Lio/sentry/SentryEnvelopeItemHeader;

    move-result-object p0

    invoke-virtual {p0}, Lio/sentry/SentryEnvelopeItemHeader;->getType()Lio/sentry/SentryItemType;

    move-result-object p0

    sget-object p1, Lio/sentry/SentryItemType;->Session:Lio/sentry/SentryItemType;

    invoke-virtual {p0, p1}, Lio/sentry/SentryItemType;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isValidEnvelope(Lio/sentry/SentryEnvelope;)Z
    .locals 0

    .line 292
    invoke-virtual {p1}, Lio/sentry/SentryEnvelope;->getItems()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private isValidSession(Lio/sentry/Session;)Z
    .locals 1

    .line 240
    invoke-virtual {p1}, Lio/sentry/Session;->getStatus()Lio/sentry/Session$State;

    move-result-object p0

    sget-object v0, Lio/sentry/Session$State;->Ok:Lio/sentry/Session$State;

    invoke-virtual {p0, v0}, Lio/sentry/Session$State;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 244
    :cond_0
    invoke-virtual {p1}, Lio/sentry/Session;->getSessionId()Ljava/util/UUID;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method static synthetic lambda$sortFilesOldestToNewest$0(Ljava/io/File;Ljava/io/File;)I
    .locals 2

    .line 83
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method private moveInitFlagIfNecessary(Ljava/io/File;[Ljava/io/File;)V
    .locals 10

    .line 122
    invoke-direct {p0, p1}, Lio/sentry/cache/CacheStrategy;->readEnvelope(Ljava/io/File;)Lio/sentry/SentryEnvelope;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 124
    invoke-direct {p0, p1}, Lio/sentry/cache/CacheStrategy;->isValidEnvelope(Lio/sentry/SentryEnvelope;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Lio/sentry/cache/CacheStrategy;->options:Lio/sentry/SentryOptions;

    .line 129
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    move-result-object v0

    sget-object v1, Lio/sentry/clientreport/DiscardReason;->CACHE_OVERFLOW:Lio/sentry/clientreport/DiscardReason;

    .line 130
    invoke-interface {v0, v1, p1}, Lio/sentry/clientreport/IClientReportRecorder;->recordLostEnvelope(Lio/sentry/clientreport/DiscardReason;Lio/sentry/SentryEnvelope;)V

    .line 132
    invoke-direct {p0, p1}, Lio/sentry/cache/CacheStrategy;->getFirstSession(Lio/sentry/SentryEnvelope;)Lio/sentry/Session;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 134
    invoke-direct {p0, p1}, Lio/sentry/cache/CacheStrategy;->isValidSession(Lio/sentry/Session;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_4

    .line 139
    :cond_1
    invoke-virtual {p1}, Lio/sentry/Session;->getInit()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 140
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_4

    .line 145
    :cond_2
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_b

    aget-object v2, p2, v1

    .line 146
    invoke-direct {p0, v2}, Lio/sentry/cache/CacheStrategy;->readEnvelope(Ljava/io/File;)Lio/sentry/SentryEnvelope;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 148
    invoke-direct {p0, v3}, Lio/sentry/cache/CacheStrategy;->isValidEnvelope(Lio/sentry/SentryEnvelope;)Z

    move-result v4

    if-nez v4, :cond_3

    goto/16 :goto_3

    .line 153
    :cond_3
    invoke-virtual {v3}, Lio/sentry/SentryEnvelope;->getItems()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 155
    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_8

    .line 156
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/sentry/SentryEnvelopeItem;

    .line 158
    invoke-direct {p0, v5}, Lio/sentry/cache/CacheStrategy;->isSessionType(Lio/sentry/SentryEnvelopeItem;)Z

    move-result v7

    if-nez v7, :cond_5

    goto :goto_1

    .line 162
    :cond_5
    invoke-direct {p0, v5}, Lio/sentry/cache/CacheStrategy;->readSession(Lio/sentry/SentryEnvelopeItem;)Lio/sentry/Session;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 164
    invoke-direct {p0, v5}, Lio/sentry/cache/CacheStrategy;->isValidSession(Lio/sentry/Session;)Z

    move-result v7

    if-nez v7, :cond_6

    goto :goto_1

    .line 168
    :cond_6
    invoke-virtual {v5}, Lio/sentry/Session;->getInit()Ljava/lang/Boolean;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 169
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object p0, p0, Lio/sentry/cache/CacheStrategy;->options:Lio/sentry/SentryOptions;

    .line 171
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 172
    invoke-virtual {p1}, Lio/sentry/Session;->getSessionId()Ljava/util/UUID;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Session %s has 2 times the init flag."

    invoke-interface {p0, p2, v0, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 176
    :cond_7
    invoke-virtual {p1}, Lio/sentry/Session;->getSessionId()Ljava/util/UUID;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 177
    invoke-virtual {p1}, Lio/sentry/Session;->getSessionId()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v5}, Lio/sentry/Session;->getSessionId()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 178
    invoke-virtual {v5}, Lio/sentry/Session;->setInitAsTrue()V

    :try_start_0
    iget-object v7, p0, Lio/sentry/cache/CacheStrategy;->serializer:Lio/sentry/ISerializer;

    .line 180
    invoke-static {v7, v5}, Lio/sentry/SentryEnvelopeItem;->fromSession(Lio/sentry/ISerializer;Lio/sentry/Session;)Lio/sentry/SentryEnvelopeItem;

    move-result-object v6

    .line 183
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v4

    iget-object v5, p0, Lio/sentry/cache/CacheStrategy;->options:Lio/sentry/SentryOptions;

    .line 186
    invoke-virtual {v5}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v5

    sget-object v7, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 191
    invoke-virtual {p1}, Lio/sentry/Session;->getSessionId()Ljava/util/UUID;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    const-string v9, "Failed to create new envelope item for the session %s"

    .line 187
    invoke-interface {v5, v7, v4, v9, v8}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    :goto_2
    if-eqz v6, :cond_a

    .line 199
    invoke-direct {p0, v3, v6}, Lio/sentry/cache/CacheStrategy;->buildNewEnvelope(Lio/sentry/SentryEnvelope;Lio/sentry/SentryEnvelopeItem;)Lio/sentry/SentryEnvelope;

    move-result-object p1

    .line 201
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 202
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result p2

    if-nez p2, :cond_9

    iget-object p2, p0, Lio/sentry/cache/CacheStrategy;->options:Lio/sentry/SentryOptions;

    .line 204
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p2

    sget-object v3, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 208
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "File can\'t be deleted: %s"

    .line 205
    invoke-interface {p2, v3, v5, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    :cond_9
    invoke-direct {p0, p1, v2, v0, v1}, Lio/sentry/cache/CacheStrategy;->saveNewEnvelope(Lio/sentry/SentryEnvelope;Ljava/io/File;J)V

    goto :goto_4

    :cond_a
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_b
    :goto_4
    return-void
.end method

.method private readEnvelope(Ljava/io/File;)Lio/sentry/SentryEnvelope;
    .locals 2

    .line 218
    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object p1, p0, Lio/sentry/cache/CacheStrategy;->serializer:Lio/sentry/ISerializer;

    .line 219
    invoke-interface {p1, v0}, Lio/sentry/ISerializer;->deserializeEnvelope(Ljava/io/InputStream;)Lio/sentry/SentryEnvelope;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 220
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 218
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    iget-object p0, p0, Lio/sentry/cache/CacheStrategy;->options:Lio/sentry/SentryOptions;

    .line 221
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v1, "Failed to deserialize the envelope."

    invoke-interface {p0, v0, v1, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private readSession(Lio/sentry/SentryEnvelopeItem;)Lio/sentry/Session;
    .locals 3

    .line 258
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    .line 260
    invoke-virtual {p1}, Lio/sentry/SentryEnvelopeItem;->getData()[B

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    sget-object p1, Lio/sentry/cache/CacheStrategy;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object p1, p0, Lio/sentry/cache/CacheStrategy;->serializer:Lio/sentry/ISerializer;

    .line 261
    const-class v1, Lio/sentry/Session;

    invoke-interface {p1, v0, v1}, Lio/sentry/ISerializer;->deserialize(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/Session;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 262
    :try_start_2
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-object p1

    :catchall_0
    move-exception p1

    .line 258
    :try_start_3
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    iget-object p0, p0, Lio/sentry/cache/CacheStrategy;->options:Lio/sentry/SentryOptions;

    .line 263
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v1, "Failed to deserialize the session."

    invoke-interface {p0, v0, v1, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private saveNewEnvelope(Lio/sentry/SentryEnvelope;Ljava/io/File;J)V
    .locals 2

    .line 270
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v1, p0, Lio/sentry/cache/CacheStrategy;->serializer:Lio/sentry/ISerializer;

    .line 271
    invoke-interface {v1, p1, v0}, Lio/sentry/ISerializer;->serialize(Lio/sentry/SentryEnvelope;Ljava/io/OutputStream;)V

    .line 273
    invoke-virtual {p2, p3, p4}, Ljava/io/File;->setLastModified(J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 274
    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 270
    :try_start_3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    :try_start_4
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    iget-object p0, p0, Lio/sentry/cache/CacheStrategy;->options:Lio/sentry/SentryOptions;

    .line 275
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string p3, "Failed to serialize the new envelope to the disk."

    invoke-interface {p0, p2, p3, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private sortFilesOldestToNewest([Ljava/io/File;)V
    .locals 1

    .line 82
    array-length p0, p1

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    .line 83
    new-instance p0, Lio/sentry/cache/CacheStrategy$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Lio/sentry/cache/CacheStrategy$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected isDirectoryValid()Z
    .locals 3

    iget-object v0, p0, Lio/sentry/cache/CacheStrategy;->directory:Ljava/io/File;

    .line 63
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/sentry/cache/CacheStrategy;->directory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/sentry/cache/CacheStrategy;->directory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    iget-object v0, p0, Lio/sentry/cache/CacheStrategy;->options:Lio/sentry/SentryOptions;

    .line 65
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    iget-object p0, p0, Lio/sentry/cache/CacheStrategy;->directory:Ljava/io/File;

    .line 69
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "The directory for caching files is inaccessible.: %s"

    .line 66
    invoke-interface {v0, v1, v2, p0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0
.end method

.method protected rotateCacheIfNeeded([Ljava/io/File;)V
    .locals 7

    .line 93
    array-length v0, p1

    iget v1, p0, Lio/sentry/cache/CacheStrategy;->maxSize:I

    if-lt v0, v1, :cond_1

    iget-object v1, p0, Lio/sentry/cache/CacheStrategy;->options:Lio/sentry/SentryOptions;

    .line 96
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v3, "Cache folder if full (respecting maxSize). Rotating files"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    .line 97
    invoke-interface {v1, v2, v3, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v1, p0, Lio/sentry/cache/CacheStrategy;->maxSize:I

    sub-int v1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 100
    invoke-direct {p0, p1}, Lio/sentry/cache/CacheStrategy;->sortFilesOldestToNewest([Ljava/io/File;)V

    .line 102
    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/File;

    :goto_0
    if-ge v4, v1, :cond_1

    .line 106
    aget-object v2, p1, v4

    .line 109
    invoke-direct {p0, v2, v0}, Lio/sentry/cache/CacheStrategy;->moveInitFlagIfNecessary(Ljava/io/File;[Ljava/io/File;)V

    .line 111
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lio/sentry/cache/CacheStrategy;->options:Lio/sentry/SentryOptions;

    .line 113
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    sget-object v5, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 114
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v6, "File can\'t be deleted: %s"

    invoke-interface {v3, v5, v6, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
