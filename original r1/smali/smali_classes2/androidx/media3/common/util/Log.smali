.class public final Landroidx/media3/common/util/Log;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/util/Log$Logger;,
        Landroidx/media3/common/util/Log$LogLevel;
    }
.end annotation


# static fields
.field public static final LOG_LEVEL_ALL:I = 0x0

.field public static final LOG_LEVEL_ERROR:I = 0x3

.field public static final LOG_LEVEL_INFO:I = 0x1

.field public static final LOG_LEVEL_OFF:I = 0x7fffffff

.field public static final LOG_LEVEL_WARNING:I = 0x2

.field private static final lock:Ljava/lang/Object;

.field private static logLevel:I = 0x0

.field private static logStackTraces:Z = true

.field private static logger:Landroidx/media3/common/util/Log$Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 123
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/media3/common/util/Log;->lock:Ljava/lang/Object;

    .line 132
    sget-object v0, Landroidx/media3/common/util/Log$Logger;->DEFAULT:Landroidx/media3/common/util/Log$Logger;

    sput-object v0, Landroidx/media3/common/util/Log;->logger:Landroidx/media3/common/util/Log$Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendThrowableString(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 294
    invoke-static {p1}, Landroidx/media3/common/util/Log;->getThrowableString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    .line 295
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\n  "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\n"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    sget-object v0, Landroidx/media3/common/util/Log;->lock:Ljava/lang/Object;

    .line 183
    monitor-enter v0

    :try_start_0
    sget v1, Landroidx/media3/common/util/Log;->logLevel:I

    if-nez v1, :cond_0

    sget-object v1, Landroidx/media3/common/util/Log;->logger:Landroidx/media3/common/util/Log$Logger;

    .line 185
    invoke-interface {v1, p0, p1}, Landroidx/media3/common/util/Log$Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 195
    invoke-static {p1, p2}, Landroidx/media3/common/util/Log;->appendThrowableString(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    sget-object v0, Landroidx/media3/common/util/Log;->lock:Ljava/lang/Object;

    .line 243
    monitor-enter v0

    :try_start_0
    sget v1, Landroidx/media3/common/util/Log;->logLevel:I

    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    sget-object v1, Landroidx/media3/common/util/Log;->logger:Landroidx/media3/common/util/Log$Logger;

    .line 245
    invoke-interface {v1, p0, p1}, Landroidx/media3/common/util/Log$Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 255
    invoke-static {p1, p2}, Landroidx/media3/common/util/Log;->appendThrowableString(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getLogLevel()I
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    sget-object v0, Landroidx/media3/common/util/Log;->lock:Ljava/lang/Object;

    .line 139
    monitor-enter v0

    :try_start_0
    sget v1, Landroidx/media3/common/util/Log;->logLevel:I

    .line 140
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 141
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getThrowableString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    sget-object v0, Landroidx/media3/common/util/Log;->lock:Ljava/lang/Object;

    .line 272
    monitor-enter v0

    if-nez p0, :cond_0

    .line 274
    :try_start_0
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    .line 275
    :cond_0
    invoke-static {p0}, Landroidx/media3/common/util/Log;->isCausedByUnknownHostException(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "UnknownHostException (no network)"

    .line 283
    monitor-exit v0

    return-object p0

    :cond_1
    sget-boolean v1, Landroidx/media3/common/util/Log;->logStackTraces:Z

    if-nez v1, :cond_2

    .line 285
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 287
    :cond_2
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v1, "\t"

    const-string v2, "    "

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 289
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    sget-object v0, Landroidx/media3/common/util/Log;->lock:Ljava/lang/Object;

    .line 203
    monitor-enter v0

    :try_start_0
    sget v1, Landroidx/media3/common/util/Log;->logLevel:I

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    sget-object v1, Landroidx/media3/common/util/Log;->logger:Landroidx/media3/common/util/Log$Logger;

    .line 205
    invoke-interface {v1, p0, p1}, Landroidx/media3/common/util/Log$Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 215
    invoke-static {p1, p2}, Landroidx/media3/common/util/Log;->appendThrowableString(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static isCausedByUnknownHostException(Ljava/lang/Throwable;)Z
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    :goto_0
    if-eqz p0, :cond_1

    .line 304
    instance-of v0, p0, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 307
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static setLogLevel(I)V
    .locals 1

    sget-object v0, Landroidx/media3/common/util/Log;->lock:Ljava/lang/Object;

    .line 150
    monitor-enter v0

    :try_start_0
    sput p0, Landroidx/media3/common/util/Log;->logLevel:I

    .line 152
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static setLogStackTraces(Z)V
    .locals 1

    sget-object v0, Landroidx/media3/common/util/Log;->lock:Ljava/lang/Object;

    .line 162
    monitor-enter v0

    :try_start_0
    sput-boolean p0, Landroidx/media3/common/util/Log;->logStackTraces:Z

    .line 164
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static setLogger(Landroidx/media3/common/util/Log$Logger;)V
    .locals 1

    sget-object v0, Landroidx/media3/common/util/Log;->lock:Ljava/lang/Object;

    .line 173
    monitor-enter v0

    :try_start_0
    sput-object p0, Landroidx/media3/common/util/Log;->logger:Landroidx/media3/common/util/Log$Logger;

    .line 175
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    sget-object v0, Landroidx/media3/common/util/Log;->lock:Ljava/lang/Object;

    .line 223
    monitor-enter v0

    :try_start_0
    sget v1, Landroidx/media3/common/util/Log;->logLevel:I

    const/4 v2, 0x2

    if-gt v1, v2, :cond_0

    sget-object v1, Landroidx/media3/common/util/Log;->logger:Landroidx/media3/common/util/Log$Logger;

    .line 225
    invoke-interface {v1, p0, p1}, Landroidx/media3/common/util/Log$Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 235
    invoke-static {p1, p2}, Landroidx/media3/common/util/Log;->appendThrowableString(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
