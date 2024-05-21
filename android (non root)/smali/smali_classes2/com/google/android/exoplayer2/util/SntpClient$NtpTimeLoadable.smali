.class final Lcom/google/android/exoplayer2/util/SntpClient$NtpTimeLoadable;
.super Ljava/lang/Object;
.source "SntpClient.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/Loader$Loadable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/util/SntpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NtpTimeLoadable"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/util/SntpClient$1;)V
    .locals 0

    .line 284
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/SntpClient$NtpTimeLoadable;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelLoad()V
    .locals 0

    return-void
.end method

.method public load()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 292
    invoke-static {}, Lcom/google/android/exoplayer2/util/SntpClient;->access$100()Ljava/lang/Object;

    move-result-object p0

    monitor-enter p0

    .line 293
    :try_start_0
    invoke-static {}, Lcom/google/android/exoplayer2/util/SntpClient;->access$200()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 294
    :try_start_1
    invoke-static {}, Lcom/google/android/exoplayer2/util/SntpClient;->access$300()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 295
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-void

    .line 297
    :cond_0
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 298
    :try_start_4
    invoke-static {}, Lcom/google/android/exoplayer2/util/SntpClient;->access$400()J

    move-result-wide v0

    .line 299
    invoke-static {}, Lcom/google/android/exoplayer2/util/SntpClient;->access$200()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 300
    :try_start_5
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/SntpClient;->access$502(J)J

    const/4 v0, 0x1

    .line 301
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/SntpClient;->access$302(Z)Z

    .line 302
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 303
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    return-void

    :catchall_0
    move-exception v0

    .line 302
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_1
    move-exception v1

    .line 297
    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v1

    :catchall_2
    move-exception v0

    .line 303
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw v0
.end method
