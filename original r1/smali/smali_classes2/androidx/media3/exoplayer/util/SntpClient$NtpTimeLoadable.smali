.class final Landroidx/media3/exoplayer/util/SntpClient$NtpTimeLoadable;
.super Ljava/lang/Object;
.source "SntpClient.java"

# interfaces
.implements Landroidx/media3/exoplayer/upstream/Loader$Loadable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/util/SntpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NtpTimeLoadable"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/util/SntpClient$1;)V
    .locals 0

    .line 286
    invoke-direct {p0}, Landroidx/media3/exoplayer/util/SntpClient$NtpTimeLoadable;-><init>()V

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

    .line 294
    invoke-static {}, Landroidx/media3/exoplayer/util/SntpClient;->access$100()Ljava/lang/Object;

    move-result-object p0

    monitor-enter p0

    .line 295
    :try_start_0
    invoke-static {}, Landroidx/media3/exoplayer/util/SntpClient;->access$200()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 296
    :try_start_1
    invoke-static {}, Landroidx/media3/exoplayer/util/SntpClient;->access$300()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 297
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-void

    .line 299
    :cond_0
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 300
    :try_start_4
    invoke-static {}, Landroidx/media3/exoplayer/util/SntpClient;->access$400()J

    move-result-wide v0

    .line 301
    invoke-static {}, Landroidx/media3/exoplayer/util/SntpClient;->access$200()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 302
    :try_start_5
    invoke-static {v0, v1}, Landroidx/media3/exoplayer/util/SntpClient;->access$502(J)J

    const/4 v0, 0x1

    .line 303
    invoke-static {v0}, Landroidx/media3/exoplayer/util/SntpClient;->access$302(Z)Z

    .line 304
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 305
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    return-void

    :catchall_0
    move-exception v0

    .line 304
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

    .line 299
    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v1

    :catchall_2
    move-exception v0

    .line 305
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw v0
.end method
