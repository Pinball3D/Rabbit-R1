.class public final Landroidx/media3/datasource/RawResourceDataSource;
.super Landroidx/media3/datasource/BaseDataSource;
.source "RawResourceDataSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;
    }
.end annotation


# static fields
.field public static final RAW_RESOURCE_SCHEME:Ljava/lang/String; = "rawresource"


# instance fields
.field private assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

.field private bytesRemaining:J

.field private inputStream:Ljava/io/InputStream;

.field private opened:Z

.field private final packageName:Ljava/lang/String;

.field private final resources:Landroid/content/res/Resources;

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 112
    invoke-direct {p0, v0}, Landroidx/media3/datasource/BaseDataSource;-><init>(Z)V

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/datasource/RawResourceDataSource;->resources:Landroid/content/res/Resources;

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/datasource/RawResourceDataSource;->packageName:Ljava/lang/String;

    return-void
.end method

.method public static buildRawResourceUri(I)Landroid/net/Uri;
    .locals 2

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rawresource:///"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/datasource/RawResourceDataSource;->uri:Landroid/net/Uri;

    const/16 v1, 0x7d0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Landroidx/media3/datasource/RawResourceDataSource;->inputStream:Ljava/io/InputStream;

    if-eqz v3, :cond_0

    .line 297
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    iput-object v0, p0, Landroidx/media3/datasource/RawResourceDataSource;->inputStream:Ljava/io/InputStream;

    :try_start_1
    iget-object v3, p0, Landroidx/media3/datasource/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    if-eqz v3, :cond_1

    .line 306
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    iput-object v0, p0, Landroidx/media3/datasource/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    iget-boolean v0, p0, Landroidx/media3/datasource/RawResourceDataSource;->opened:Z

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Landroidx/media3/datasource/RawResourceDataSource;->opened:Z

    .line 315
    invoke-virtual {p0}, Landroidx/media3/datasource/RawResourceDataSource;->transferEnded()V

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v3

    .line 309
    :try_start_2
    new-instance v4, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;

    invoke-direct {v4, v0, v3, v1}, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    iput-object v0, p0, Landroidx/media3/datasource/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    iget-boolean v0, p0, Landroidx/media3/datasource/RawResourceDataSource;->opened:Z

    if-eqz v0, :cond_3

    iput-boolean v2, p0, Landroidx/media3/datasource/RawResourceDataSource;->opened:Z

    .line 315
    invoke-virtual {p0}, Landroidx/media3/datasource/RawResourceDataSource;->transferEnded()V

    .line 317
    :cond_3
    throw v1

    :catchall_1
    move-exception v3

    goto :goto_1

    :catch_1
    move-exception v3

    .line 300
    :try_start_3
    new-instance v4, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;

    invoke-direct {v4, v0, v3, v1}, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    iput-object v0, p0, Landroidx/media3/datasource/RawResourceDataSource;->inputStream:Ljava/io/InputStream;

    :try_start_4
    iget-object v4, p0, Landroidx/media3/datasource/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    if-eqz v4, :cond_4

    .line 306
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_4
    iput-object v0, p0, Landroidx/media3/datasource/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    iget-boolean v0, p0, Landroidx/media3/datasource/RawResourceDataSource;->opened:Z

    if-eqz v0, :cond_5

    iput-boolean v2, p0, Landroidx/media3/datasource/RawResourceDataSource;->opened:Z

    .line 315
    invoke-virtual {p0}, Landroidx/media3/datasource/RawResourceDataSource;->transferEnded()V

    .line 318
    :cond_5
    throw v3

    :catchall_2
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v3

    .line 309
    :try_start_5
    new-instance v4, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;

    invoke-direct {v4, v0, v3, v1}, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_2
    iput-object v0, p0, Landroidx/media3/datasource/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    iget-boolean v0, p0, Landroidx/media3/datasource/RawResourceDataSource;->opened:Z

    if-eqz v0, :cond_6

    iput-boolean v2, p0, Landroidx/media3/datasource/RawResourceDataSource;->opened:Z

    .line 315
    invoke-virtual {p0}, Landroidx/media3/datasource/RawResourceDataSource;->transferEnded()V

    .line 317
    :cond_6
    throw v1
.end method

.method public getUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Landroidx/media3/datasource/RawResourceDataSource;->uri:Landroid/net/Uri;

    return-object p0
.end method

.method public open(Landroidx/media3/datasource/DataSpec;)J
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    .line 119
    iget-object v2, v1, Landroidx/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->normalizeScheme()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v0, Landroidx/media3/datasource/RawResourceDataSource;->uri:Landroid/net/Uri;

    const-string v3, "rawresource"

    .line 123
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    const/16 v4, 0x7d5

    const/16 v5, 0x3ec

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v3, :cond_5

    .line 124
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v8, "android.resource"

    invoke-static {v8, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 125
    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v6, :cond_0

    .line 126
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v9, "\\d+"

    invoke-virtual {v3, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_1

    .line 135
    :cond_0
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 136
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, "/"

    .line 137
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 138
    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 140
    :cond_1
    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    .line 141
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v5, ""

    goto :goto_0

    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, ":"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, v0, Landroidx/media3/datasource/RawResourceDataSource;->resources:Landroid/content/res/Resources;

    const-string v8, "raw"

    iget-object v9, v0, Landroidx/media3/datasource/RawResourceDataSource;->packageName:Ljava/lang/String;

    .line 143
    invoke-virtual {v5, v3, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    .line 146
    :cond_3
    new-instance v0, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;

    const-string v1, "Resource not found."

    invoke-direct {v0, v1, v7, v4}, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0

    .line 152
    :cond_4
    new-instance v0, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported URI scheme ("

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "). Only rawresource and android.resource are supported."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v7, v5}, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0

    .line 128
    :cond_5
    :goto_1
    :try_start_0
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3

    .line 164
    :goto_2
    invoke-virtual/range {p0 .. p1}, Landroidx/media3/datasource/RawResourceDataSource;->transferInitializing(Landroidx/media3/datasource/DataSpec;)V

    :try_start_1
    iget-object v5, v0, Landroidx/media3/datasource/RawResourceDataSource;->resources:Landroid/content/res/Resources;

    .line 168
    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    iput-object v3, v0, Landroidx/media3/datasource/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    const/16 v4, 0x7d0

    if-eqz v3, :cond_10

    .line 182
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v8

    .line 183
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v2, v0, Landroidx/media3/datasource/RawResourceDataSource;->inputStream:Ljava/io/InputStream;

    const-wide/16 v10, -0x1

    cmp-long v5, v8, v10

    const/16 v12, 0x7d8

    if-eqz v5, :cond_7

    .line 193
    :try_start_2
    iget-wide v13, v1, Landroidx/media3/datasource/DataSpec;->position:J

    cmp-long v13, v13, v8

    if-gtz v13, :cond_6

    goto :goto_3

    .line 195
    :cond_6
    new-instance v0, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;

    invoke-direct {v0, v7, v7, v12}, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0

    .line 200
    :cond_7
    :goto_3
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v13

    .line 201
    iget-wide v6, v1, Landroidx/media3/datasource/DataSpec;->position:J

    add-long/2addr v6, v13

    .line 202
    invoke-virtual {v2, v6, v7}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide v6

    sub-long/2addr v6, v13

    .line 204
    iget-wide v13, v1, Landroidx/media3/datasource/DataSpec;->position:J

    cmp-long v13, v6, v13

    if-nez v13, :cond_f

    const-wide/16 v13, 0x0

    if-nez v5, :cond_a

    .line 215
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 216
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    cmp-long v5, v5, v13

    if-nez v5, :cond_8

    iput-wide v10, v0, Landroidx/media3/datasource/RawResourceDataSource;->bytesRemaining:J

    goto :goto_4

    .line 219
    :cond_8
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v7

    sub-long/2addr v5, v7

    iput-wide v5, v0, Landroidx/media3/datasource/RawResourceDataSource;->bytesRemaining:J

    cmp-long v2, v5, v13

    if-ltz v2, :cond_9

    goto :goto_4

    .line 222
    :cond_9
    new-instance v0, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v12}, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0

    :cond_a
    sub-long/2addr v8, v6

    iput-wide v8, v0, Landroidx/media3/datasource/RawResourceDataSource;->bytesRemaining:J
    :try_end_2
    .catch Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    cmp-long v2, v8, v13

    if-ltz v2, :cond_e

    .line 241
    :goto_4
    iget-wide v2, v1, Landroidx/media3/datasource/DataSpec;->length:J

    cmp-long v2, v2, v10

    if-eqz v2, :cond_c

    iget-wide v2, v0, Landroidx/media3/datasource/RawResourceDataSource;->bytesRemaining:J

    cmp-long v4, v2, v10

    if-nez v4, :cond_b

    .line 243
    iget-wide v2, v1, Landroidx/media3/datasource/DataSpec;->length:J

    goto :goto_5

    :cond_b
    iget-wide v4, v1, Landroidx/media3/datasource/DataSpec;->length:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    :goto_5
    iput-wide v2, v0, Landroidx/media3/datasource/RawResourceDataSource;->bytesRemaining:J

    :cond_c
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroidx/media3/datasource/RawResourceDataSource;->opened:Z

    .line 246
    invoke-virtual/range {p0 .. p1}, Landroidx/media3/datasource/RawResourceDataSource;->transferStarted(Landroidx/media3/datasource/DataSpec;)V

    .line 247
    iget-wide v2, v1, Landroidx/media3/datasource/DataSpec;->length:J

    cmp-long v2, v2, v10

    if-eqz v2, :cond_d

    iget-wide v0, v1, Landroidx/media3/datasource/DataSpec;->length:J

    goto :goto_6

    :cond_d
    iget-wide v0, v0, Landroidx/media3/datasource/RawResourceDataSource;->bytesRemaining:J

    :goto_6
    return-wide v0

    .line 231
    :cond_e
    :try_start_3
    new-instance v0, Landroidx/media3/datasource/DataSourceException;

    invoke-direct {v0, v12}, Landroidx/media3/datasource/DataSourceException;-><init>(I)V

    throw v0

    .line 207
    :cond_f
    new-instance v0, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v12}, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0
    :try_end_3
    .catch Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    .line 237
    new-instance v1, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v0, v4}, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1

    :catch_1
    move-exception v0

    .line 235
    throw v0

    :cond_10
    move-object v3, v7

    .line 176
    new-instance v0, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "Resource is compressed: "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3, v4}, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0

    :catch_2
    move-exception v0

    move-object v3, v7

    .line 170
    new-instance v1, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;

    invoke-direct {v1, v3, v0, v4}, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1

    :catch_3
    move-object v3, v7

    .line 130
    new-instance v0, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;

    const-string v1, "Resource identifier must be an integer."

    invoke-direct {v0, v1, v3, v5}, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0
.end method

.method public read([BII)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-wide v0, p0, Landroidx/media3/datasource/RawResourceDataSource;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, -0x1

    if-nez v2, :cond_1

    return v3

    :cond_1
    const-wide/16 v4, -0x1

    cmp-long v2, v0, v4

    const/16 v6, 0x7d0

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    int-to-long v7, p3

    .line 261
    :try_start_0
    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    :goto_0
    iget-object v0, p0, Landroidx/media3/datasource/RawResourceDataSource;->inputStream:Ljava/io/InputStream;

    .line 262
    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p1, v3, :cond_4

    iget-wide p0, p0, Landroidx/media3/datasource/RawResourceDataSource;->bytesRemaining:J

    cmp-long p0, p0, v4

    if-nez p0, :cond_3

    return v3

    .line 271
    :cond_3
    new-instance p0, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;

    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    const-string p2, "End of stream reached having not read sufficient data."

    invoke-direct {p0, p2, p1, v6}, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p0

    :cond_4
    iget-wide p2, p0, Landroidx/media3/datasource/RawResourceDataSource;->bytesRemaining:J

    cmp-long v0, p2, v4

    if-eqz v0, :cond_5

    int-to-long v0, p1

    sub-long/2addr p2, v0

    iput-wide p2, p0, Landroidx/media3/datasource/RawResourceDataSource;->bytesRemaining:J

    .line 281
    :cond_5
    invoke-virtual {p0, p1}, Landroidx/media3/datasource/RawResourceDataSource;->bytesTransferred(I)V

    return p1

    :catch_0
    move-exception p0

    .line 264
    new-instance p1, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p0, v6}, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p1
.end method
