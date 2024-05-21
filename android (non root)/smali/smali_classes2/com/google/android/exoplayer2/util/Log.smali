.class public final Lcom/google/android/exoplayer2/util/Log;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/util/Log$Logger;,
        Lcom/google/android/exoplayer2/util/Log$LogLevel;
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

.field private static logger:Lcom/google/android/exoplayer2/util/Log$Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 122
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/util/Log;->lock:Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/google/android/exoplayer2/util/Log$Logger;->DEFAULT:Lcom/google/android/exoplayer2/util/Log$Logger;

    sput-object v0, Lcom/google/android/exoplayer2/util/Log;->logger:Lcom/google/android/exoplayer2/util/Log$Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendThrowableString(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 293
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Log;->getThrowableString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    .line 294
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
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

    sget-object v0, Lcom/google/android/exoplayer2/util/Log;->lock:Ljava/lang/Object;

    .line 182
    monitor-enter v0

    :try_start_0
    sget v1, Lcom/google/android/exoplayer2/util/Log;->logLevel:I

    if-nez v1, :cond_0

    sget-object v1, Lcom/google/android/exoplayer2/util/Log;->logger:Lcom/google/android/exoplayer2/util/Log$Logger;

    .line 184
    invoke-interface {v1, p0, p1}, Lcom/google/android/exoplayer2/util/Log$Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
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

    .line 194
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/Log;->appendThrowableString(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    sget-object v0, Lcom/google/android/exoplayer2/util/Log;->lock:Ljava/lang/Object;

    .line 242
    monitor-enter v0

    :try_start_0
    sget v1, Lcom/google/android/exoplayer2/util/Log;->logLevel:I

    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    sget-object v1, Lcom/google/android/exoplayer2/util/Log;->logger:Lcom/google/android/exoplayer2/util/Log$Logger;

    .line 244
    invoke-interface {v1, p0, p1}, Lcom/google/android/exoplayer2/util/Log$Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
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

    .line 254
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/Log;->appendThrowableString(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getLogLevel()I
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    sget-object v0, Lcom/google/android/exoplayer2/util/Log;->lock:Ljava/lang/Object;

    .line 138
    monitor-enter v0

    :try_start_0
    sget v1, Lcom/google/android/exoplayer2/util/Log;->logLevel:I

    .line 139
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 140
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getThrowableString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    sget-object v0, Lcom/google/android/exoplayer2/util/Log;->lock:Ljava/lang/Object;

    .line 271
    monitor-enter v0

    if-nez p0, :cond_0

    .line 273
    :try_start_0
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    .line 274
    :cond_0
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Log;->isCausedByUnknownHostException(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "UnknownHostException (no network)"

    .line 282
    monitor-exit v0

    return-object p0

    :cond_1
    sget-boolean v1, Lcom/google/android/exoplayer2/util/Log;->logStackTraces:Z

    if-nez v1, :cond_2

    .line 284
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 286
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

    .line 288
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    sget-object v0, Lcom/google/android/exoplayer2/util/Log;->lock:Ljava/lang/Object;

    .line 202
    monitor-enter v0

    :try_start_0
    sget v1, Lcom/google/android/exoplayer2/util/Log;->logLevel:I

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    sget-object v1, Lcom/google/android/exoplayer2/util/Log;->logger:Lcom/google/android/exoplayer2/util/Log$Logger;

    .line 204
    invoke-interface {v1, p0, p1}, Lcom/google/android/exoplayer2/util/Log$Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
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

    .line 214
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/Log;->appendThrowableString(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static isCausedByUnknownHostException(Ljava/lang/Throwable;)Z
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    :goto_0
    if-eqz p0, :cond_1

    .line 303
    instance-of v0, p0, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 306
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

    sget-object v0, Lcom/google/android/exoplayer2/util/Log;->lock:Ljava/lang/Object;

    .line 149
    monitor-enter v0

    :try_start_0
    sput p0, Lcom/google/android/exoplayer2/util/Log;->logLevel:I

    .line 151
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

    sget-object v0, Lcom/google/android/exoplayer2/util/Log;->lock:Ljava/lang/Object;

    .line 161
    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/google/android/exoplayer2/util/Log;->logStackTraces:Z

    .line 163
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static setLogger(Lcom/google/android/exoplayer2/util/Log$Logger;)V
    .locals 1

    sget-object v0, Lcom/google/android/exoplayer2/util/Log;->lock:Ljava/lang/Object;

    .line 172
    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/google/android/exoplayer2/util/Log;->logger:Lcom/google/android/exoplayer2/util/Log$Logger;

    .line 174
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

    sget-object v0, Lcom/google/android/exoplayer2/util/Log;->lock:Ljava/lang/Object;

    .line 222
    monitor-enter v0

    :try_start_0
    sget v1, Lcom/google/android/exoplayer2/util/Log;->logLevel:I

    const/4 v2, 0x2

    if-gt v1, v2, :cond_0

    sget-object v1, Lcom/google/android/exoplayer2/util/Log;->logger:Lcom/google/android/exoplayer2/util/Log$Logger;

    .line 224
    invoke-interface {v1, p0, p1}, Lcom/google/android/exoplayer2/util/Log$Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
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

    .line 234
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/Log;->appendThrowableString(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
