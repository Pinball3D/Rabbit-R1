.class public final Landroidx/media3/exoplayer/offline/DefaultDownloadIndex;
.super Ljava/lang/Object;
.source "DefaultDownloadIndex.java"

# interfaces
.implements Landroidx/media3/exoplayer/offline/WritableDownloadIndex;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/offline/DefaultDownloadIndex$DownloadCursorImpl;
    }
.end annotation


# static fields
.field private static final COLUMNS:[Ljava/lang/String;

.field private static final COLUMN_BYTES_DOWNLOADED:Ljava/lang/String; = "bytes_downloaded"

.field private static final COLUMN_CONTENT_LENGTH:Ljava/lang/String; = "content_length"

.field private static final COLUMN_CUSTOM_CACHE_KEY:Ljava/lang/String; = "custom_cache_key"

.field private static final COLUMN_DATA:Ljava/lang/String; = "data"

.field private static final COLUMN_FAILURE_REASON:Ljava/lang/String; = "failure_reason"

.field private static final COLUMN_ID:Ljava/lang/String; = "id"

.field private static final COLUMN_INDEX_BYTES_DOWNLOADED:I = 0xd

.field private static final COLUMN_INDEX_CONTENT_LENGTH:I = 0x9

.field private static final COLUMN_INDEX_CUSTOM_CACHE_KEY:I = 0x4

.field private static final COLUMN_INDEX_DATA:I = 0x5

.field private static final COLUMN_INDEX_FAILURE_REASON:I = 0xb

.field private static final COLUMN_INDEX_ID:I = 0x0

.field private static final COLUMN_INDEX_KEY_SET_ID:I = 0xe

.field private static final COLUMN_INDEX_MIME_TYPE:I = 0x1

.field private static final COLUMN_INDEX_PERCENT_DOWNLOADED:I = 0xc

.field private static final COLUMN_INDEX_START_TIME_MS:I = 0x7

.field private static final COLUMN_INDEX_STATE:I = 0x6

.field private static final COLUMN_INDEX_STOP_REASON:I = 0xa

.field private static final COLUMN_INDEX_STREAM_KEYS:I = 0x3

.field private static final COLUMN_INDEX_UPDATE_TIME_MS:I = 0x8

.field private static final COLUMN_INDEX_URI:I = 0x2

.field private static final COLUMN_KEY_SET_ID:Ljava/lang/String; = "key_set_id"

.field private static final COLUMN_MIME_TYPE:Ljava/lang/String; = "mime_type"

.field private static final COLUMN_PERCENT_DOWNLOADED:Ljava/lang/String; = "percent_downloaded"

.field private static final COLUMN_START_TIME_MS:Ljava/lang/String; = "start_time_ms"

.field private static final COLUMN_STATE:Ljava/lang/String; = "state"

.field private static final COLUMN_STOP_REASON:Ljava/lang/String; = "stop_reason"

.field private static final COLUMN_STREAM_KEYS:Ljava/lang/String; = "stream_keys"

.field private static final COLUMN_UPDATE_TIME_MS:Ljava/lang/String; = "update_time_ms"

.field private static final COLUMN_URI:Ljava/lang/String; = "uri"

.field private static final TABLE_PREFIX:Ljava/lang/String; = "ExoPlayerDownloads"

.field private static final TABLE_SCHEMA:Ljava/lang/String; = "(id TEXT PRIMARY KEY NOT NULL,mime_type TEXT,uri TEXT NOT NULL,stream_keys TEXT NOT NULL,custom_cache_key TEXT,data BLOB NOT NULL,state INTEGER NOT NULL,start_time_ms INTEGER NOT NULL,update_time_ms INTEGER NOT NULL,content_length INTEGER NOT NULL,stop_reason INTEGER NOT NULL,failure_reason INTEGER NOT NULL,percent_downloaded REAL NOT NULL,bytes_downloaded INTEGER NOT NULL,key_set_id BLOB NOT NULL)"

.field static final TABLE_VERSION:I = 0x3

.field private static final TRUE:Ljava/lang/String; = "1"

.field private static final WHERE_ID_EQUALS:Ljava/lang/String; = "id = ?"

.field private static final WHERE_STATE_IS_DOWNLOADING:Ljava/lang/String; = "state = 2"

.field private static final WHERE_STATE_IS_TERMINAL:Ljava/lang/String;


# instance fields
.field private final databaseProvider:Landroidx/media3/database/DatabaseProvider;

.field private final initializationLock:Ljava/lang/Object;

.field private initialized:Z

.field private final name:Ljava/lang/String;

.field private final tableName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const/4 v0, 0x3

    const/4 v1, 0x4

    filled-new-array {v0, v1}, [I

    move-result-object v0

    .line 87
    invoke-static {v0}, Landroidx/media3/exoplayer/offline/DefaultDownloadIndex;->getStateQuery([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/offline/DefaultDownloadIndex;->WHERE_STATE_IS_TERMINAL:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "mime_type"

    const-string v3, "uri"

    const-string v4, "stream_keys"

    const-string v5, "custom_cache_key"

    const-string v6, "data"

    const-string v7, "state"

    const-string v8, "start_time_ms"

    const-string v9, "update_time_ms"

    const-string v10, "content_length"

    const-string v11, "stop_reason"

    const-string v12, "failure_reason"

    const-string v13, "percent_downloaded"

    const-string v14, "bytes_downloaded"

    const-string v15, "key_set_id"

    .line 89
    filled-new-array/range {v1 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/offline/DefaultDownloadIndex;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/media3/database/DatabaseProvider;)V
    .locals 1

    const-string v0, ""

    .line 165
    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/offline/DefaultDownloadIndex;-><init>(Landroidx/media3/database/DatabaseProvider;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/database/DatabaseProvider;Ljava/lang/String;)V
    .locals 1

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/media3/exoplayer/offline/DefaultDownloadIndex;->name:Ljava/lang/String;

    iput-object p1, p0, Landroidx/media3/exoplayer/offline/DefaultDownloadIndex;->databaseProvider:Landroidx/media3/database/DatabaseProvider;

    .line 179
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "ExoPlayerDownloads"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/offline/DefaultDownloadIndex;->tableName:Ljava/lang/String;

    .line 180
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/offline/DefaultDownloadIndex;->initializationLock:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$100(Landroid/database/Cursor;)Landroidx/media3/exoplayer/offline/Download;
    .locals 0

    .line 45
    invoke-static {p0}, Landroidx/media3/exoplayer/offline/DefaultDownloadIndex;->getDownloadForCurrentRow(Landroid/database/Cursor;)Landroidx/media3/exoplayer/offline/Download;

    move-result-object p0

    return-object p0
.end method

.method private static decodeStreamKeys(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroidx/media3/common/StreamKey;",
            ">;"
        }
    .end annotation

    .line 530
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 531
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const-string v1, ","

    .line 534
    invoke-static {p0, v1}, Landroidx/media3/common/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 535
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p0, v3

    const-string v5, "\\."

    .line 536
    invoke-static {v4, v5}, Landroidx/media3/common/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 537
    array-length v5, v4

    const/4 v6, 0x3

    const/4 v7, 0x1

    if-ne v5, v6, :cond_1

    move v5, v7

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    invoke-static {v5}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 538
    new-instance v5, Landroidx/media3/common/StreamKey;

    aget-object v6, v4, v2

    .line 540
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aget-object v7, v4, v7

    .line 541
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x2

    aget-object v4, v4, v8

    .line 542
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v5, v6, v7, v4}, Landroidx/media3/common/StreamKey;-><init>(III)V

    .line 538
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method static encodeStreamKeys(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/StreamKey;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 414
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 415
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/StreamKey;

    .line 416
    iget v3, v2, Landroidx/media3/common/StreamKey;->periodIndex:I

    .line 417
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2e

    .line 418
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v2, Landroidx/media3/common/StreamKey;->groupIndex:I

    .line 419
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 420
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v2, v2, Landroidx/media3/common/StreamKey;->streamIndex:I

    .line 421
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2c

    .line 422
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 424
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_1

    .line 425
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 427
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private ensureInitialized()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/database/DatabaseIOException;
        }
    .end annotation

    const-string v0, " (id TEXT PRIMARY KEY NOT NULL,mime_type TEXT,uri TEXT NOT NULL,stream_keys TEXT NOT NULL,custom_cache_key TEXT,data BLOB NOT NULL,state INTEGER NOT NULL,start_time_ms INTEGER NOT NULL,update_time_ms INTEGER NOT NULL,content_length INTEGER NOT NULL,stop_reason INTEGER NOT NULL,failure_reason INTEGER NOT NULL,percent_downloaded REAL NOT NULL,bytes_downloaded INTEGER NOT NULL,key_set_id BLOB NOT NULL)"

    const-string v1, "CREATE TABLE "

    const-string v2, "DROP TABLE IF EXISTS "

    iget-object v3, p0, Landroidx/media3/exoplayer/offline/DefaultDownloadIndex;->initializationLock:Ljava/lang/Object;

    .line 286
    monitor-enter v3

    :try_start_0
    iget-boolean v4, p0, Landroidx/media3/exoplayer/offline/DefaultDownloadIndex;->initialized:Z

    if-eqz v4, :cond_0

    .line 288
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-void

    :cond_0
    :try_start_1
    iget-object v4, p0, Landroidx/media3/exoplayer/offline/DefaultDownloadIndex;->databaseProvider:Landroidx/media3/database/DatabaseProvider;

    .line 291
    invoke-interface {v4}, Landroidx/media3/database/DatabaseProvider;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    iget-object v5, p0, Landroidx/media3/exoplayer/offline/DefaultDownloadIndex;->name:Ljava/lang/String;

    const/4 v6, 0x0

    .line 292
    invoke-static {v4, v6, v5}, Landroidx/media3/database/VersionTable;->getVersion(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_3

    iget-object v7, p0, Landroidx/media3/exoplayer/offline/DefaultDownloadIndex;->databaseProvider:Landroidx/media3/database/DatabaseProvider;

    .line 294
    invoke-interface {v7}, Landroidx/media3/database/DatabaseProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    .line 295
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v8, p0, Landroidx/media3/exoplayer/offline/DefaultDownloadIndex;->name:Ljava/lang/String;

    .line 297
    invoke-static {v7, v6, v8, v5}, Landroidx/media3/database/VersionTable;->setVersion(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;I)V

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 300
    invoke-direct {p0, v7}, Landroidx/media3/exoplayer/offline/DefaultDownloadIndex;->loadDownloadsFromVersion2(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v4

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 301
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/media3/exoplayer/offline/DefaultDownloadIndex;->tableName:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 302
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/media3/exoplayer/offline/DefaultDownloadIndex;->tableName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 303
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/offline/Download;

    .line 304
    invoke-direct {p0, v1, v7}, Landroidx/media3/exoplayer/offline/DefaultDownloadIndex;->putDownloadInternal(Landroidx/media3/exoplayer/offline/Download;Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_1

    .line 306
    :cond_2
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 308
    :try_start_3
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_2

    :catchall_0
    move-exception p0

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 309
    throw p0

    :cond_3
    :goto_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/offline/DefaultDownloadIndex;->initialized:Z
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 315
    :try_start_4
    monitor-exit v3

    return-void

    :catch_0
    move-exception p0

    .line 313
    new-instance v0, Landroidx/media3/database/DatabaseIOException;

    invoke-direct {v0, p0}, Landroidx/media3/database/DatabaseIOException;-><init>(Landroid/database/SQLException;)V

    throw v0

    :catchall_1
    move-exception p0

    .line 315
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method private getCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/database/DatabaseIOException;
        }
    .end annotation

    :try_start_0
    const-string v7, "start_time_ms ASC"

    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DefaultDownloadIndex;->databaseProvider:Landroidx/media3/database/DatabaseProvider;

    .line 397
    invoke-interface {v0}, Landroidx/media3/database/DatabaseProvider;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/offline/DefaultDownloadIndex;->tableName:Ljava/lang/String;

    sget-object v2, Landroidx/media3/exoplayer/offline/DefaultDownloadIndex;->COLUMNS:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    move-object v4, p2

    .line 398
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 407
    new-instance p1, Landroidx/media3/database/DatabaseIOException;

    invoke-direct {p1, p0}, Landroidx/media3/database/DatabaseIOException;-><init>(Landroid/database/SQLException;)V

    throw p1
.end method

.method private static getDownloadForCurrentRow(Landroid/database/Cursor;)Landroidx/media3/exoplayer/offline/Download;
    .locals 15

    const/16 v0, 0xe

    .line 447
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 448
    new-instance v1, Landroidx/media3/exoplayer/offline/DownloadRequest$Builder;

    const/4 v2, 0x0

    .line 450
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x2

    .line 451
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroidx/media3/exoplayer/offline/DownloadRequest$Builder;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v3, 0x1

    .line 452
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/media3/exoplayer/offline/DownloadRequest$Builder;->setMimeType(Ljava/lang/String;)Landroidx/media3/exoplayer/offline/DownloadRequest$Builder;

    move-result-object v1

    const/4 v3, 0x3

    .line 453
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/media3/exoplayer/offline/DefaultDownloadIndex;->decodeStreamKeys(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/media3/exoplayer/offline/DownloadRequest$Builder;->setStreamKeys(Ljava/util/List;)Landroidx/media3/exoplayer/offline/DownloadRequest$Builder;

    move-result-object v1

    .line 454
    array-length v3, v0

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/offline/DownloadRequest$Builder;->setKeySetId([B)Landroidx/media3/exoplayer/offline/DownloadRequest$Builder;

    move-result-object v0

    const/4 v1, 0x4

    .line 455
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/media3/exoplayer/offline/DownloadRequest$Builder;->setCustomCacheKey(Ljava/lang/String;)Landroidx/media3/exoplayer/offline/DownloadRequest$Builder;

    move-result-object v0

    const/4 v3, 0x5

    .line 456
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/media3/exoplayer/offline/DownloadRequest$Builder;->setData([B)Landroidx/media3/exoplayer/offline/DownloadRequest$Builder;

    move-result-object v0

    .line 457
    invoke-virtual {v0}, Landroidx/media3/exoplayer/offline/DownloadRequest$Builder;->build()Landroidx/media3/exoplayer/offline/DownloadRequest;

    move-result-object v4

    .line 458
    new-instance v14, Landroidx/media3/exoplayer/offline/DownloadProgress;

    invoke-direct {v14}, Landroidx/media3/exoplayer/offline/DownloadProgress;-><init>()V

    const/16 v0, 0xd

    .line 459
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v14, Landroidx/media3/exoplayer/offline/DownloadProgress;->bytesDownloaded:J

    const/16 v0, 0xc

    .line 460
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    iput v0, v14, Landroidx/media3/exoplayer/offline/DownloadProgress;->percentDownloaded:F

    const/4 v0, 0x6

    .line 461
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-ne v5, v1, :cond_1

    const/16 v0, 0xb

    .line 467
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    :cond_1
    move v13, v2

    .line 469
    new-instance v0, Landroidx/media3/exoplayer/offline/Download;

    const/4 v1, 0x7

    .line 472
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/16 v1, 0x8

    .line 473
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const/16 v1, 0x9

    .line 474
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const/16 v1, 0xa

    .line 475
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    move-object v3, v0

    invoke-direct/range {v3 .. v14}, Landroidx/media3/exoplayer/offline/Download;-><init>(Landroidx/media3/exoplayer/offline/DownloadRequest;IJJJIILandroidx/media3/exoplayer/offline/DownloadProgress;)V

    return-object v0
.end method

.method private static getDownloadForCurrentRowV2(Landroid/database/Cursor;)Landroidx/media3/exoplayer/offline/Download;
    .locals 15

    .line 500
    new-instance v0, Landroidx/media3/exoplayer/offline/DownloadRequest$Builder;

    const/4 v1, 0x0

    .line 502
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x2

    .line 503
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroidx/media3/exoplayer/offline/DownloadRequest$Builder;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v2, 0x1

    .line 504
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/media3/exoplayer/offline/DefaultDownloadIndex;->inferMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/offline/DownloadRequest$Builder;->setMimeType(Ljava/lang/String;)Landroidx/media3/exoplayer/offline/DownloadRequest$Builder;

    move-result-object v0

    const/4 v2, 0x3

    .line 505
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/media3/exoplayer/offline/DefaultDownloadIndex;->decodeStreamKeys(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/offline/DownloadRequest$Builder;->setStreamKeys(Ljava/util/List;)Landroidx/media3/exoplayer/offline/DownloadRequest$Builder;

    move-result-object v0

    const/4 v2, 0x4

    .line 506
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/media3/exoplayer/offline/DownloadRequest$Builder;->setCustomCacheKey(Ljava/lang/String;)Landroidx/media3/exoplayer/offline/DownloadRequest$Builder;

    move-result-object v0

    const/4 v3, 0x5

    .line 507
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/media3/exoplayer/offline/DownloadRequest$Builder;->setData([B)Landroidx/media3/exoplayer/offline/DownloadRequest$Builder;

    move-result-object v0

    .line 508
    invoke-virtual {v0}, Landroidx/media3/exoplayer/offline/DownloadRequest$Builder;->build()Landroidx/media3/exoplayer/offline/DownloadRequest;

    move-result-object v4

    .line 509
    new-instance v14, Landroidx/media3/exoplayer/offline/DownloadProgress;

    invoke-direct {v14}, Landroidx/media3/exoplayer/offline/DownloadProgress;-><init>()V

    const/16 v0, 0xd

    .line 510
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v14, Landroidx/media3/exoplayer/offline/DownloadProgress;->bytesDownloaded:J

    const/16 v0, 0xc

    .line 511
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    iput v0, v14, Landroidx/media3/exoplayer/offline/DownloadProgress;->percentDownloaded:F

    const/4 v0, 0x6

    .line 512
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-ne v5, v2, :cond_0

    const/16 v0, 0xb

    .line 517
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    :cond_0
    move v13, v1

    .line 518
    new-instance v0, Landroidx/media3/exoplayer/offline/Download;

    const/4 v1, 0x7

    .line 521
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/16 v1, 0x8

    .line 522
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const/16 v1, 0x9

    .line 523
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const/16 v1, 0xa

    .line 524
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    move-object v3, v0

    invoke-direct/range {v3 .. v14}, Landroidx/media3/exoplayer/offline/Download;-><init>(Landroidx/media3/exoplayer/offline/DownloadRequest;IJJJIILandroidx/media3/exoplayer/offline/DownloadProgress;)V

    return-object v0
.end method

.method private static varargs getStateQuery([I)Ljava/lang/String;
    .locals 3

    .line 431
    array-length v0, p0

    if-nez v0, :cond_0

    const-string p0, "1"

    return-object p0

    .line 434
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "state IN ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 436
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    if-lez v1, :cond_1

    const/16 v2, 0x2c

    .line 438
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 440
    :cond_1
    aget v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/16 p0, 0x29

    .line 442
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 443
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static inferMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "dash"

    .line 381
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "application/dash+xml"

    return-object p0

    :cond_0
    const-string v0, "hls"

    .line 383
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "application/x-mpegURL"

    return-object p0

    :cond_1
    const-string v0, "ss"

    .line 385
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "application/vnd.ms-sstr+xml"

    return-object p0

    :cond_2
    const-string p0, "video/x-unknown"

    return-object p0
.end method

.method private loadDownloadsFromVersion2(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/offline/Download;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 341
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v0, Landroidx/media3/exoplayer/offline/DefaultDownloadIndex;->tableName:Ljava/lang/String;

    move-object/from16 v3, p1

    .line 342
    invoke-static {v3, v2}, Landroidx/media3/common/util/Util;->tableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    const-string v4, "id"

    const-string v5, "title"

    const-string v6, "uri"

    const-string v7, "stream_keys"

    const-string v8, "custom_cache_key"

    const-string v9, "data"

    const-string v10, "state"

    const-string v11, "start_time_ms"

    const-string v12, "update_time_ms"

    const-string v13, "content_length"

    const-string v14, "stop_reason"

    const-string v15, "failure_reason"

    const-string v16, "percent_downloaded"

    const-string v17, "bytes_downloaded"

    .line 346
    filled-new-array/range {v4 .. v17}, [Ljava/lang/String;

    move-result-object v5

    iget-object v4, v0, Landroidx/media3/exoplayer/offline/DefaultDownloadIndex;->tableName:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p1

    .line 364
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 372
    :goto_0
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 373
    invoke-static {v2}, Landroidx/media3/exoplayer/offline/DefaultDownloadIndex;->getDownloadForCurrentRowV2(Landroid/database/Cursor;)Landroidx/media3/exoplayer/offline/Download;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 376
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v1

    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eqz v2, :cond_3

    .line 363
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v1
.end method

.method private putDownloadInternal(Landroidx/media3/exoplayer/offline/Download;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .line 320
    iget-object v0, p1, Landroidx/media3/exoplayer/offline/Download;->request:Landroidx/media3/exoplayer/offline/DownloadRequest;

    iget-object v0, v0, Landroidx/media3/exoplayer/offline/DownloadRequest;->keySetId:[B

    if-nez v0, :cond_0

    sget-object v0, Landroidx/media3/common/util/Util;->EMPTY_BYTE_ARRAY:[B

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroidx/media3/exoplayer/offline/Download;->request:Landroidx/media3/exoplayer/offline/DownloadRequest;

    iget-object v0, v0, Landroidx/media3/exoplayer/offline/DownloadRequest;->keySetId:[B

    .line 321
    :goto_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 322
    iget-object v2, p1, Landroidx/media3/exoplayer/offline/Download;->request:Landroidx/media3/exoplayer/offline/DownloadRequest;

    iget-object v2, v2, Landroidx/media3/exoplayer/offline/DownloadRequest;->id:Ljava/lang/String;

    const-string v3, "id"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget-object v2, p1, Landroidx/media3/exoplayer/offline/Download;->request:Landroidx/media3/exoplayer/offline/DownloadRequest;

    iget-object v2, v2, Landroidx/media3/exoplayer/offline/DownloadRequest;->mimeType:Ljava/lang/String;

    const-string v3, "mime_type"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-object v2, p1, Landroidx/media3/exoplayer/offline/Download;->request:Landroidx/media3/exoplayer/offline/DownloadRequest;

    iget-object v2, v2, Landroidx/media3/exoplayer/offline/DownloadRequest;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "uri"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iget-object v2, p1, Landroidx/media3/exoplayer/offline/Download;->request:Landroidx/media3/exoplayer/offline/DownloadRequest;

    iget-object v2, v2, Landroidx/media3/exoplayer/offline/DownloadRequest;->streamKeys:Ljava/util/List;

    invoke-static {v2}, Landroidx/media3/exoplayer/offline/DefaultDownloadIndex;->encodeStreamKeys(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "stream_keys"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget-object v2, p1, Landroidx/media3/exoplayer/offline/Download;->request:Landroidx/media3/exoplayer/offline/DownloadRequest;

    iget-object v2, v2, Landroidx/media3/exoplayer/offline/DownloadRequest;->customCacheKey:Ljava/lang/String;

    const-string v3, "custom_cache_key"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iget-object v2, p1, Landroidx/media3/exoplayer/offline/Download;->request:Landroidx/media3/exoplayer/offline/DownloadRequest;

    iget-object v2, v2, Landroidx/media3/exoplayer/offline/DownloadRequest;->data:[B

    const-string v3, "data"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 328
    iget v2, p1, Landroidx/media3/exoplayer/offline/Download;->state:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "state"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 329
    iget-wide v2, p1, Landroidx/media3/exoplayer/offline/Download;->startTimeMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "start_time_ms"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 330
    iget-wide v2, p1, Landroidx/media3/exoplayer/offline/Download;->updateTimeMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "update_time_ms"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 331
    iget-wide v2, p1, Landroidx/media3/exoplayer/offline/Download;->contentLength:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "content_length"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 332
    iget v2, p1, Landroidx/media3/exoplayer/offline/Download;->stopReason:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "stop_reason"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 333
    iget v2, p1, Landroidx/media3/exoplayer/offline/Download;->failureReason:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "failure_reason"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 334
    invoke-virtual {p1}, Landroidx/media3/exoplayer/offline/Download;->getPercentDownloaded()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v3, "percent_downloaded"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 335
    invoke-virtual {p1}, Landroidx/media3/exoplayer/offline/Download;->getBytesDownloaded()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v2, "bytes_downloaded"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "key_set_id"

    .line 336
    invoke-virtual {v1, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    iget-object p0, p0, Landroidx/media3/exoplayer/offline/DefaultDownloadIndex;->tableName:Ljava/lang/String;

    const/4 p1, 0x0

    .line 337
    invoke-virtual {p2, p0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void
.end method


# virtual methods
.method public getDownload(Ljava/lang/String;)Landroidx/media3/exoplayer/offline/Download;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/database/DatabaseIOException;
        }
    .end annotation

    .line 186
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DefaultDownloadIndex;->ensureInitialized()V

    :try_start_0
    const-string v0, "id = ?"

    .line 187
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroidx/media3/exoplayer/offline/DefaultDownloadIndex;->getCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_1

    if-eqz p0, :cond_0

    .line 193
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 191
    :cond_1
    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 192
    invoke-static {p0}, Landroidx/media3/exoplayer/offline/DefaultDownloadIndex;->getDownloadForCurrentRow(Landroid/database/Cursor;)Landroidx/media3/exoplayer/offline/Download;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p0, :cond_2

    .line 193
    :try_start_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_2
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_3

    .line 187
    :try_start_5
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_6
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw p1
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception p0

    .line 194
    new-instance p1, Landroidx/media3/database/DatabaseIOException;

    invoke-direct {p1, p0}, Landroidx/media3/database/DatabaseIOException;-><init>(Landroid/database/SQLException;)V

    throw p1
.end method

.method public varargs getDownloads([I)Landroidx/media3/exoplayer/offline/DownloadCursor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/database/DatabaseIOException;
        }
    .end annotation

    .line 200
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DefaultDownloadIndex;->ensureInitialized()V

    .line 201
    invoke-static {p1}, Landroidx/media3/exoplayer/offline/DefaultDownloadIndex;->getStateQuery([I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/offline/DefaultDownloadIndex;->getCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 202
    new-instance p1, Landroidx/media3/exoplayer/offline/DefaultDownloadIndex$DownloadCursorImpl;

    invoke-direct {p1, p0, v0}, Landroidx/media3/exoplayer/offline/DefaultDownloadIndex$DownloadCursorImpl;-><init>(Landroid/database/Cursor;Landroidx/media3/exoplayer/offline/DefaultDownloadIndex$1;)V

    return-object p1
.end method

.method public putDownload(Landroidx/media3/exoplayer/offline/Download;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/database/DatabaseIOException;
        }
    .end annotation

    .line 207
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DefaultDownloadIndex;->ensureInitialized()V

    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DefaultDownloadIndex;->databaseProvider:Landroidx/media3/database/DatabaseProvider;

    .line 209
    invoke-interface {v0}, Landroidx/media3/database/DatabaseProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 210
    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/offline/DefaultDownloadIndex;->putDownloadInternal(Landroidx/media3/exoplayer/offline/Download;Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 212
    new-instance p1, Landroidx/media3/database/DatabaseIOException;

    invoke-direct {p1, p0}, Landroidx/media3/database/DatabaseIOException;-><init>(Landroid/database/SQLException;)V

    throw p1
.end method

.method public removeDownload(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/database/DatabaseIOException;
        }
    .end annotation

    .line 218
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DefaultDownloadIndex;->ensureInitialized()V

    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DefaultDownloadIndex;->databaseProvider:Landroidx/media3/database/DatabaseProvider;

    .line 220
    invoke-interface {v0}, Landroidx/media3/database/DatabaseProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object p0, p0, Landroidx/media3/exoplayer/offline/DefaultDownloadIndex;->tableName:Ljava/lang/String;

    const-string v1, "id = ?"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 222
    new-instance p1, Landroidx/media3/database/DatabaseIOException;

    invoke-direct {p1, p0}, Landroidx/media3/database/DatabaseIOException;-><init>(Landroid/database/SQLException;)V

    throw p1
.end method

.method public setDownloadingStatesToQueued()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/database/DatabaseIOException;
        }
    .end annotation

    .line 228
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DefaultDownloadIndex;->ensureInitialized()V

    .line 230
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "state"

    const/4 v2, 0x0

    .line 231
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Landroidx/media3/exoplayer/offline/DefaultDownloadIndex;->databaseProvider:Landroidx/media3/database/DatabaseProvider;

    .line 232
    invoke-interface {v1}, Landroidx/media3/database/DatabaseProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object p0, p0, Landroidx/media3/exoplayer/offline/DefaultDownloadIndex;->tableName:Ljava/lang/String;

    const-string v2, "state = 2"

    const/4 v3, 0x0

    .line 233
    invoke-virtual {v1, p0, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 235
    new-instance v0, Landroidx/media3/database/DatabaseIOException;

    invoke-direct {v0, p0}, Landroidx/media3/database/DatabaseIOException;-><init>(Landroid/database/SQLException;)V

    throw v0
.end method

.method public setStatesToRemoving()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/database/DatabaseIOException;
        }
    .end annotation

    .line 241
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DefaultDownloadIndex;->ensureInitialized()V

    .line 243
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "state"

    const/4 v2, 0x5

    .line 244
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "failure_reason"

    const/4 v2, 0x0

    .line 247
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Landroidx/media3/exoplayer/offline/DefaultDownloadIndex;->databaseProvider:Landroidx/media3/database/DatabaseProvider;

    .line 248
    invoke-interface {v1}, Landroidx/media3/database/DatabaseProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object p0, p0, Landroidx/media3/exoplayer/offline/DefaultDownloadIndex;->tableName:Ljava/lang/String;

    const/4 v2, 0x0

    .line 249
    invoke-virtual {v1, p0, v0, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 251
    new-instance v0, Landroidx/media3/database/DatabaseIOException;

    invoke-direct {v0, p0}, Landroidx/media3/database/DatabaseIOException;-><init>(Landroid/database/SQLException;)V

    throw v0
.end method

.method public setStopReason(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/database/DatabaseIOException;
        }
    .end annotation

    .line 257
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DefaultDownloadIndex;->ensureInitialized()V

    .line 259
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "stop_reason"

    .line 260
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object p1, p0, Landroidx/media3/exoplayer/offline/DefaultDownloadIndex;->databaseProvider:Landroidx/media3/database/DatabaseProvider;

    .line 261
    invoke-interface {p1}, Landroidx/media3/database/DatabaseProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iget-object p0, p0, Landroidx/media3/exoplayer/offline/DefaultDownloadIndex;->tableName:Ljava/lang/String;

    sget-object v1, Landroidx/media3/exoplayer/offline/DefaultDownloadIndex;->WHERE_STATE_IS_TERMINAL:Ljava/lang/String;

    const/4 v2, 0x0

    .line 262
    invoke-virtual {p1, p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 264
    new-instance p1, Landroidx/media3/database/DatabaseIOException;

    invoke-direct {p1, p0}, Landroidx/media3/database/DatabaseIOException;-><init>(Landroid/database/SQLException;)V

    throw p1
.end method

.method public setStopReason(Ljava/lang/String;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/database/DatabaseIOException;
        }
    .end annotation

    const-string v0, " AND id = ?"

    .line 270
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DefaultDownloadIndex;->ensureInitialized()V

    .line 272
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "stop_reason"

    .line 273
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object p2, p0, Landroidx/media3/exoplayer/offline/DefaultDownloadIndex;->databaseProvider:Landroidx/media3/database/DatabaseProvider;

    .line 274
    invoke-interface {p2}, Landroidx/media3/database/DatabaseProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    iget-object p0, p0, Landroidx/media3/exoplayer/offline/DefaultDownloadIndex;->tableName:Ljava/lang/String;

    .line 275
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroidx/media3/exoplayer/offline/DefaultDownloadIndex;->WHERE_STATE_IS_TERMINAL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0, v1, v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 281
    new-instance p1, Landroidx/media3/database/DatabaseIOException;

    invoke-direct {p1, p0}, Landroidx/media3/database/DatabaseIOException;-><init>(Landroid/database/SQLException;)V

    throw p1
.end method
