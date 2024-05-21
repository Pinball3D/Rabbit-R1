.class Lio/sentry/android/core/AnrV2Integration$AnrProcessor;
.super Ljava/lang/Object;
.source "AnrV2Integration.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/AnrV2Integration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AnrProcessor"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final hub:Lio/sentry/IHub;

.field private final options:Lio/sentry/android/core/SentryAndroidOptions;

.field private final threshold:J


# direct methods
.method constructor <init>(Landroid/content/Context;Lio/sentry/IHub;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/transport/ICurrentDateProvider;)V
    .locals 0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/AnrV2Integration$AnrProcessor;->context:Landroid/content/Context;

    iput-object p2, p0, Lio/sentry/android/core/AnrV2Integration$AnrProcessor;->hub:Lio/sentry/IHub;

    iput-object p3, p0, Lio/sentry/android/core/AnrV2Integration$AnrProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 124
    invoke-interface {p4}, Lio/sentry/transport/ICurrentDateProvider;->getCurrentTimeMillis()J

    move-result-wide p1

    sget-wide p3, Lio/sentry/android/core/AnrV2Integration;->NINETY_DAYS_THRESHOLD:J

    sub-long/2addr p1, p3

    iput-wide p1, p0, Lio/sentry/android/core/AnrV2Integration$AnrProcessor;->threshold:J

    return-void
.end method

.method private getDumpBytes(Ljava/io/InputStream;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 327
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v0, 0x400

    :try_start_0
    new-array v1, v0, [B

    :goto_0
    const/4 v2, 0x0

    .line 332
    invoke-virtual {p1, v1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 333
    invoke-virtual {p0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 336
    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 327
    :try_start_1
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
.end method

.method private parseThreadDump(Landroid/app/ApplicationExitInfo;Z)Lio/sentry/android/core/AnrV2Integration$ParseResult;
    .locals 4

    .line 299
    :try_start_0
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getTraceInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    if-nez p1, :cond_1

    .line 301
    :try_start_1
    new-instance p2, Lio/sentry/android/core/AnrV2Integration$ParseResult;

    sget-object v0, Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;->NO_DUMP:Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;

    invoke-direct {p2, v0}, Lio/sentry/android/core/AnrV2Integration$ParseResult;-><init>(Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz p1, :cond_0

    .line 304
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    :cond_0
    return-object p2

    .line 303
    :cond_1
    :try_start_3
    invoke-direct {p0, p1}, Lio/sentry/android/core/AnrV2Integration$AnrProcessor;->getDumpBytes(Ljava/io/InputStream;)[B

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz p1, :cond_2

    .line 304
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 309
    :cond_2
    :try_start_5
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p1, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 311
    :try_start_6
    invoke-static {p1}, Lio/sentry/android/core/internal/threaddump/Lines;->readLines(Ljava/io/BufferedReader;)Lio/sentry/android/core/internal/threaddump/Lines;

    move-result-object v1

    .line 313
    new-instance v2, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;

    iget-object v3, p0, Lio/sentry/android/core/AnrV2Integration$AnrProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-direct {v2, v3, p2}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;-><init>(Lio/sentry/SentryOptions;Z)V

    .line 314
    invoke-virtual {v2, v1}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->parse(Lio/sentry/android/core/internal/threaddump/Lines;)Ljava/util/List;

    move-result-object p2

    .line 315
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 317
    new-instance p2, Lio/sentry/android/core/AnrV2Integration$ParseResult;

    sget-object v1, Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;->ERROR:Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;

    invoke-direct {p2, v1, v0}, Lio/sentry/android/core/AnrV2Integration$ParseResult;-><init>(Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;[B)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 320
    :try_start_7
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    return-object p2

    .line 319
    :cond_3
    :try_start_8
    new-instance v1, Lio/sentry/android/core/AnrV2Integration$ParseResult;

    sget-object v2, Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;->DUMP:Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;

    invoke-direct {v1, v2, v0, p2}, Lio/sentry/android/core/AnrV2Integration$ParseResult;-><init>(Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;[BLjava/util/List;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 320
    :try_start_9
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    return-object v1

    :catchall_0
    move-exception p2

    .line 309
    :try_start_a
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_b
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :catchall_2
    move-exception p1

    iget-object p0, p0, Lio/sentry/android/core/AnrV2Integration$AnrProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 321
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v1, "Failed to parse ANR thread dump"

    invoke-interface {p0, p2, v1, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 322
    new-instance p0, Lio/sentry/android/core/AnrV2Integration$ParseResult;

    sget-object p1, Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;->ERROR:Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;

    invoke-direct {p0, p1, v0}, Lio/sentry/android/core/AnrV2Integration$ParseResult;-><init>(Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;[B)V

    return-object p0

    :catchall_3
    move-exception p2

    if-eqz p1, :cond_4

    .line 299
    :try_start_c
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    goto :goto_1

    :catchall_4
    move-exception p1

    :try_start_d
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw p2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    :catchall_5
    move-exception p1

    iget-object p0, p0, Lio/sentry/android/core/AnrV2Integration$AnrProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 305
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v0, "Failed to read ANR thread dump"

    invoke-interface {p0, p2, v0, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 306
    new-instance p0, Lio/sentry/android/core/AnrV2Integration$ParseResult;

    sget-object p1, Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;->NO_DUMP:Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;

    invoke-direct {p0, p1}, Lio/sentry/android/core/AnrV2Integration$ParseResult;-><init>(Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;)V

    return-object p0
.end method

.method private reportAsSentryEvent(Landroid/app/ApplicationExitInfo;Z)V
    .locals 11

    .line 236
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v8

    .line 238
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getImportance()I

    move-result v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v7, v0

    .line 240
    invoke-direct {p0, p1, v7}, Lio/sentry/android/core/AnrV2Integration$AnrProcessor;->parseThreadDump(Landroid/app/ApplicationExitInfo;Z)Lio/sentry/android/core/AnrV2Integration$ParseResult;

    move-result-object v10

    .line 241
    iget-object v0, v10, Lio/sentry/android/core/AnrV2Integration$ParseResult;->type:Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;

    sget-object v1, Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;->NO_DUMP:Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lio/sentry/android/core/AnrV2Integration$AnrProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 243
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 247
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Not reporting ANR event as there was no thread dump for the ANR %s"

    .line 244
    invoke-interface {p0, p2, v0, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 250
    :cond_1
    new-instance p1, Lio/sentry/android/core/AnrV2Integration$AnrV2Hint;

    iget-object v0, p0, Lio/sentry/android/core/AnrV2Integration$AnrProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 252
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getFlushTimeoutMillis()J

    move-result-wide v1

    iget-object v0, p0, Lio/sentry/android/core/AnrV2Integration$AnrProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 253
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    move-object v0, p1

    move-wide v4, v8

    move v6, p2

    invoke-direct/range {v0 .. v7}, Lio/sentry/android/core/AnrV2Integration$AnrV2Hint;-><init>(JLio/sentry/ILogger;JZZ)V

    .line 258
    invoke-static {p1}, Lio/sentry/util/HintUtils;->createWithTypeCheckHint(Ljava/lang/Object;)Lio/sentry/Hint;

    move-result-object p2

    .line 260
    new-instance v0, Lio/sentry/SentryEvent;

    invoke-direct {v0}, Lio/sentry/SentryEvent;-><init>()V

    .line 261
    iget-object v1, v10, Lio/sentry/android/core/AnrV2Integration$ParseResult;->type:Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;

    sget-object v2, Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;->ERROR:Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;

    if-ne v1, v2, :cond_2

    .line 262
    new-instance v1, Lio/sentry/protocol/Message;

    invoke-direct {v1}, Lio/sentry/protocol/Message;-><init>()V

    const-string v2, "Sentry Android SDK failed to parse system thread dump for this ANR. We recommend enabling [SentryOptions.isAttachAnrThreadDump] option to attach the thread dump as plain text and report this issue on GitHub."

    .line 263
    invoke-virtual {v1, v2}, Lio/sentry/protocol/Message;->setFormatted(Ljava/lang/String;)V

    .line 267
    invoke-virtual {v0, v1}, Lio/sentry/SentryEvent;->setMessage(Lio/sentry/protocol/Message;)V

    goto :goto_1

    .line 268
    :cond_2
    iget-object v1, v10, Lio/sentry/android/core/AnrV2Integration$ParseResult;->type:Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;

    sget-object v2, Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;->DUMP:Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;

    if-ne v1, v2, :cond_3

    .line 269
    iget-object v1, v10, Lio/sentry/android/core/AnrV2Integration$ParseResult;->threads:Ljava/util/List;

    invoke-virtual {v0, v1}, Lio/sentry/SentryEvent;->setThreads(Ljava/util/List;)V

    .line 271
    :cond_3
    :goto_1
    sget-object v1, Lio/sentry/SentryLevel;->FATAL:Lio/sentry/SentryLevel;

    invoke-virtual {v0, v1}, Lio/sentry/SentryEvent;->setLevel(Lio/sentry/SentryLevel;)V

    .line 272
    invoke-static {v8, v9}, Lio/sentry/DateUtils;->getDateTime(J)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/SentryEvent;->setTimestamp(Ljava/util/Date;)V

    iget-object v1, p0, Lio/sentry/android/core/AnrV2Integration$AnrProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 274
    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->isAttachAnrThreadDump()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 275
    iget-object v1, v10, Lio/sentry/android/core/AnrV2Integration$ParseResult;->dump:[B

    if-eqz v1, :cond_4

    .line 276
    iget-object v1, v10, Lio/sentry/android/core/AnrV2Integration$ParseResult;->dump:[B

    invoke-static {v1}, Lio/sentry/Attachment;->fromThreadDump([B)Lio/sentry/Attachment;

    move-result-object v1

    invoke-virtual {p2, v1}, Lio/sentry/Hint;->setThreadDump(Lio/sentry/Attachment;)V

    :cond_4
    iget-object v1, p0, Lio/sentry/android/core/AnrV2Integration$AnrProcessor;->hub:Lio/sentry/IHub;

    .line 280
    invoke-interface {v1, v0, p2}, Lio/sentry/IHub;->captureEvent(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    move-result-object p2

    .line 281
    sget-object v1, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    invoke-virtual {p2, v1}, Lio/sentry/protocol/SentryId;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 284
    invoke-virtual {p1}, Lio/sentry/android/core/AnrV2Integration$AnrV2Hint;->waitFlush()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p0, p0, Lio/sentry/android/core/AnrV2Integration$AnrProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 286
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 290
    invoke-virtual {v0}, Lio/sentry/SentryEvent;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "Timed out waiting to flush ANR event to disk. Event: %s"

    .line 287
    invoke-interface {p0, p1, v0, p2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method private reportNonEnrichedHistoricalAnrs(Ljava/util/List;Ljava/lang/Long;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/ApplicationExitInfo;",
            ">;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    .line 212
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 213
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ApplicationExitInfo;

    .line 214
    invoke-virtual {v0}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 215
    invoke-virtual {v0}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v1

    iget-wide v3, p0, Lio/sentry/android/core/AnrV2Integration$AnrProcessor;->threshold:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    iget-object v1, p0, Lio/sentry/android/core/AnrV2Integration$AnrProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 217
    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v3, "ANR happened too long ago %s."

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 218
    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 222
    invoke-virtual {v0}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gtz v1, :cond_2

    iget-object v1, p0, Lio/sentry/android/core/AnrV2Integration$AnrProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 224
    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v3, "ANR has already been reported %s."

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 225
    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 229
    invoke-direct {p0, v0, v1}, Lio/sentry/android/core/AnrV2Integration$AnrProcessor;->reportAsSentryEvent(Landroid/app/ApplicationExitInfo;Z)V

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lio/sentry/android/core/AnrV2Integration$AnrProcessor;->context:Landroid/content/Context;

    const-string v1, "activity"

    .line 131
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 134
    invoke-virtual {v0, v1, v2, v2}, Landroid/app/ActivityManager;->getHistoricalProcessExitReasons(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    .line 135
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    iget-object p0, p0, Lio/sentry/android/core/AnrV2Integration$AnrProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 136
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v1, "No records in historical exit reasons."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p0, v0, v1, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v3, p0, Lio/sentry/android/core/AnrV2Integration$AnrProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 140
    invoke-virtual {v3}, Lio/sentry/android/core/SentryAndroidOptions;->getEnvelopeDiskCache()Lio/sentry/cache/IEnvelopeCache;

    move-result-object v3

    .line 141
    instance-of v4, v3, Lio/sentry/cache/EnvelopeCache;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lio/sentry/android/core/AnrV2Integration$AnrProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 142
    invoke-virtual {v4}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableAutoSessionTracking()Z

    move-result v4

    if-eqz v4, :cond_1

    check-cast v3, Lio/sentry/cache/EnvelopeCache;

    .line 143
    invoke-virtual {v3}, Lio/sentry/cache/EnvelopeCache;->waitPreviousSessionFlush()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lio/sentry/android/core/AnrV2Integration$AnrProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 145
    invoke-virtual {v4}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v4

    sget-object v5, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v6, "Timed out waiting to flush previous session to its own file."

    new-array v7, v2, [Ljava/lang/Object;

    .line 146
    invoke-interface {v4, v5, v6, v7}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    invoke-virtual {v3}, Lio/sentry/cache/EnvelopeCache;->flushPreviousSession()V

    .line 159
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lio/sentry/android/core/AnrV2Integration$AnrProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 160
    invoke-static {v0}, Lio/sentry/android/core/cache/AndroidEnvelopeCache;->lastReportedAnr(Lio/sentry/SentryOptions;)Ljava/lang/Long;

    move-result-object v0

    .line 165
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ApplicationExitInfo;

    .line 166
    invoke-virtual {v5}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result v6

    const/4 v7, 0x6

    if-ne v6, v7, :cond_2

    .line 169
    invoke-interface {v3, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-object v1, v5

    :cond_3
    if-nez v1, :cond_4

    iget-object p0, p0, Lio/sentry/android/core/AnrV2Integration$AnrProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 176
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v1, "No ANRs have been found in the historical exit reasons list."

    new-array v2, v2, [Ljava/lang/Object;

    .line 177
    invoke-interface {p0, v0, v1, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 181
    :cond_4
    invoke-virtual {v1}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v4

    iget-wide v6, p0, Lio/sentry/android/core/AnrV2Integration$AnrProcessor;->threshold:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_5

    iget-object p0, p0, Lio/sentry/android/core/AnrV2Integration$AnrProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 183
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v1, "Latest ANR happened too long ago, returning early."

    new-array v2, v2, [Ljava/lang/Object;

    .line 184
    invoke-interface {p0, v0, v1, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_5
    if-eqz v0, :cond_6

    .line 189
    invoke-virtual {v1}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gtz v4, :cond_6

    iget-object p0, p0, Lio/sentry/android/core/AnrV2Integration$AnrProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 191
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v1, "Latest ANR has already been reported, returning early."

    new-array v2, v2, [Ljava/lang/Object;

    .line 192
    invoke-interface {p0, v0, v1, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_6
    iget-object v2, p0, Lio/sentry/android/core/AnrV2Integration$AnrProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 196
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->isReportHistoricalAnrs()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 198
    invoke-direct {p0, v3, v0}, Lio/sentry/android/core/AnrV2Integration$AnrProcessor;->reportNonEnrichedHistoricalAnrs(Ljava/util/List;Ljava/lang/Long;)V

    :cond_7
    const/4 v0, 0x1

    .line 203
    invoke-direct {p0, v1, v0}, Lio/sentry/android/core/AnrV2Integration$AnrProcessor;->reportAsSentryEvent(Landroid/app/ApplicationExitInfo;Z)V

    return-void
.end method
