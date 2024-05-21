.class public final Lcom/google/android/exoplayer2/upstream/ContentDataSource;
.super Lcom/google/android/exoplayer2/upstream/BaseDataSource;
.source "ContentDataSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;
    }
.end annotation


# instance fields
.field private assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

.field private bytesRemaining:J

.field private inputStream:Ljava/io/FileInputStream;

.field private opened:Z

.field private final resolver:Landroid/content/ContentResolver;

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/BaseDataSource;-><init>(Z)V

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->resolver:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->uri:Landroid/net/Uri;

    const/16 v1, 0x7d0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->inputStream:Ljava/io/FileInputStream;

    if-eqz v3, :cond_0

    .line 206
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->inputStream:Ljava/io/FileInputStream;

    :try_start_1
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    if-eqz v3, :cond_1

    .line 214
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->opened:Z

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->opened:Z

    .line 222
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->transferEnded()V

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v3

    .line 217
    :try_start_2
    new-instance v4, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;

    invoke-direct {v4, v3, v1}, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;I)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->opened:Z

    if-eqz v0, :cond_3

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->opened:Z

    .line 222
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->transferEnded()V

    .line 224
    :cond_3
    throw v1

    :catchall_1
    move-exception v3

    goto :goto_1

    :catch_1
    move-exception v3

    .line 209
    :try_start_3
    new-instance v4, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;

    invoke-direct {v4, v3, v1}, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;I)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->inputStream:Ljava/io/FileInputStream;

    :try_start_4
    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    if-eqz v4, :cond_4

    .line 214
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_4
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->opened:Z

    if-eqz v0, :cond_5

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->opened:Z

    .line 222
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->transferEnded()V

    .line 225
    :cond_5
    throw v3

    :catchall_2
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v3

    .line 217
    :try_start_5
    new-instance v4, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;

    invoke-direct {v4, v3, v1}, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;I)V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_2
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->opened:Z

    if-eqz v0, :cond_6

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->opened:Z

    .line 222
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->transferEnded()V

    .line 224
    :cond_6
    throw v1
.end method

.method public getUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->uri:Landroid/net/Uri;

    return-object p0
.end method

.method public open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "Could not open file descriptor for: "

    const/16 v3, 0x7d0

    .line 76
    :try_start_0
    iget-object v4, v1, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    iput-object v4, v0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->uri:Landroid/net/Uri;

    .line 79
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->transferInitializing(Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    const-string v5, "content"

    .line 82
    iget-object v6, v1, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    .line 83
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v7, "android.provider.extra.ACCEPT_ORIGINAL_MEDIA_FORMAT"

    .line 85
    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v7, v0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->resolver:Landroid/content/ContentResolver;

    const-string v8, "*/*"

    .line 87
    invoke-virtual {v7, v4, v8, v5}, Landroid/content/ContentResolver;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v5

    goto :goto_0

    :cond_0
    iget-object v5, v0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->resolver:Landroid/content/ContentResolver;

    const-string v7, "r"

    .line 91
    invoke-virtual {v5, v4, v7}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v5

    :goto_0
    iput-object v5, v0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    if-eqz v5, :cond_b

    .line 101
    invoke-virtual {v5}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v7

    .line 102
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {v5}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v2, v0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->inputStream:Ljava/io/FileInputStream;

    const-wide/16 v9, -0x1

    cmp-long v4, v7, v9

    const/16 v11, 0x7d8

    const/4 v12, 0x0

    if-eqz v4, :cond_2

    .line 111
    iget-wide v13, v1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    cmp-long v13, v13, v7

    if-gtz v13, :cond_1

    goto :goto_1

    .line 113
    :cond_1
    new-instance v0, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;

    invoke-direct {v0, v12, v11}, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;I)V

    throw v0

    .line 116
    :cond_2
    :goto_1
    invoke-virtual {v5}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v13

    move-wide v15, v7

    .line 117
    iget-wide v6, v1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    add-long/2addr v6, v13

    .line 118
    invoke-virtual {v2, v6, v7}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide v6

    sub-long/2addr v6, v13

    .line 120
    iget-wide v13, v1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    cmp-long v8, v6, v13

    if-nez v8, :cond_a

    const-wide/16 v13, 0x0

    if-nez v4, :cond_5

    .line 129
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 130
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    cmp-long v4, v6, v13

    if-nez v4, :cond_3

    iput-wide v9, v0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->bytesRemaining:J

    goto :goto_2

    .line 134
    :cond_3
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v15

    sub-long/2addr v6, v15

    iput-wide v6, v0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->bytesRemaining:J

    cmp-long v2, v6, v13

    if-ltz v2, :cond_4

    goto :goto_2

    .line 137
    :cond_4
    new-instance v0, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;

    invoke-direct {v0, v12, v11}, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;I)V

    throw v0

    :cond_5
    sub-long v7, v15, v6

    iput-wide v7, v0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->bytesRemaining:J
    :try_end_0
    .catch Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v2, v7, v13

    if-ltz v2, :cond_9

    .line 158
    :goto_2
    iget-wide v2, v1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    cmp-long v2, v2, v9

    if-eqz v2, :cond_7

    iget-wide v2, v0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->bytesRemaining:J

    cmp-long v4, v2, v9

    if-nez v4, :cond_6

    .line 160
    iget-wide v2, v1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    goto :goto_3

    :cond_6
    iget-wide v6, v1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    :goto_3
    iput-wide v2, v0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->bytesRemaining:J

    :cond_7
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->opened:Z

    .line 163
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->transferStarted(Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    .line 164
    iget-wide v2, v1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    cmp-long v2, v2, v9

    if-eqz v2, :cond_8

    iget-wide v0, v1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    goto :goto_4

    :cond_8
    iget-wide v0, v0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->bytesRemaining:J

    :goto_4
    return-wide v0

    .line 144
    :cond_9
    :try_start_1
    new-instance v0, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;

    invoke-direct {v0, v12, v11}, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;I)V

    throw v0

    .line 123
    :cond_a
    new-instance v0, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;

    invoke-direct {v0, v12, v11}, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;I)V

    throw v0

    .line 96
    :cond_b
    new-instance v0, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;

    new-instance v1, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v3}, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;I)V

    throw v0
    :try_end_1
    .catch Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    .line 151
    new-instance v1, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;

    .line 153
    instance-of v2, v0, Ljava/io/FileNotFoundException;

    if-eqz v2, :cond_c

    const/16 v3, 0x7d5

    .line 155
    :cond_c
    invoke-direct {v1, v0, v3}, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;I)V

    throw v1

    :catch_1
    move-exception v0

    .line 149
    throw v0
.end method

.method public read([BII)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, -0x1

    if-nez v2, :cond_1

    return v3

    :cond_1
    const-wide/16 v4, -0x1

    cmp-long v2, v0, v4

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    int-to-long v6, p3

    .line 178
    :try_start_0
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->inputStream:Ljava/io/FileInputStream;

    .line 179
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/FileInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/FileInputStream;->read([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p1, v3, :cond_3

    return v3

    :cond_3
    iget-wide p2, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->bytesRemaining:J

    cmp-long v0, p2, v4

    if-eqz v0, :cond_4

    int-to-long v0, p1

    sub-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->bytesRemaining:J

    .line 190
    :cond_4
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->bytesTransferred(I)V

    return p1

    :catch_0
    move-exception p0

    .line 181
    new-instance p1, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;

    const/16 p2, 0x7d0

    invoke-direct {p1, p0, p2}, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;I)V

    throw p1
.end method
