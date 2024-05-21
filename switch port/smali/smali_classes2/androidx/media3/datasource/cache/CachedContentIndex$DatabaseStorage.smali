.class final Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;
.super Ljava/lang/Object;
.source "CachedContentIndex.java"

# interfaces
.implements Landroidx/media3/datasource/cache/CachedContentIndex$Storage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/datasource/cache/CachedContentIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DatabaseStorage"
.end annotation


# static fields
.field private static final COLUMNS:[Ljava/lang/String;

.field private static final COLUMN_ID:Ljava/lang/String; = "id"

.field private static final COLUMN_INDEX_ID:I = 0x0

.field private static final COLUMN_INDEX_KEY:I = 0x1

.field private static final COLUMN_INDEX_METADATA:I = 0x2

.field private static final COLUMN_KEY:Ljava/lang/String; = "key"

.field private static final COLUMN_METADATA:Ljava/lang/String; = "metadata"

.field private static final TABLE_PREFIX:Ljava/lang/String; = "ExoPlayerCacheIndex"

.field private static final TABLE_SCHEMA:Ljava/lang/String; = "(id INTEGER PRIMARY KEY NOT NULL,key TEXT NOT NULL,metadata BLOB NOT NULL)"

.field private static final TABLE_VERSION:I = 0x1

.field private static final WHERE_ID_EQUALS:Ljava/lang/String; = "id = ?"


# instance fields
.field private final databaseProvider:Landroidx/media3/database/DatabaseProvider;

.field private hexUid:Ljava/lang/String;

.field private final pendingUpdates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/media3/datasource/cache/CachedContent;",
            ">;"
        }
    .end annotation
.end field

.field private tableName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "key"

    const-string v1, "metadata"

    const-string v2, "id"

    .line 762
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/media3/database/DatabaseProvider;)V
    .locals 0

    .line 784
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;->databaseProvider:Landroidx/media3/database/DatabaseProvider;

    .line 786
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;->pendingUpdates:Landroid/util/SparseArray;

    return-void
.end method

.method private addOrUpdateRow(Landroid/database/sqlite/SQLiteDatabase;Landroidx/media3/datasource/cache/CachedContent;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 948
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 949
    invoke-virtual {p2}, Landroidx/media3/datasource/cache/CachedContent;->getMetadata()Landroidx/media3/datasource/cache/DefaultContentMetadata;

    move-result-object v1

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v1, v2}, Landroidx/media3/datasource/cache/CachedContentIndex;->access$200(Landroidx/media3/datasource/cache/DefaultContentMetadata;Ljava/io/DataOutputStream;)V

    .line 950
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 952
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 953
    iget v2, p2, Landroidx/media3/datasource/cache/CachedContent;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "key"

    .line 954
    iget-object p2, p2, Landroidx/media3/datasource/cache/CachedContent;->key:Ljava/lang/String;

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "metadata"

    .line 955
    invoke-virtual {v1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    iget-object p0, p0, Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;->tableName:Ljava/lang/String;

    .line 956
    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void
.end method

.method public static delete(Landroidx/media3/database/DatabaseProvider;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/database/DatabaseIOException;
        }
    .end annotation

    .line 780
    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;->delete(Landroidx/media3/database/DatabaseProvider;Ljava/lang/String;)V

    return-void
.end method

.method private static delete(Landroidx/media3/database/DatabaseProvider;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/database/DatabaseIOException;
        }
    .end annotation

    .line 962
    :try_start_0
    invoke-static {p1}, Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;->getTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 963
    invoke-interface {p0}, Landroidx/media3/database/DatabaseProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 964
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    .line 966
    :try_start_1
    invoke-static {p0, v1, p1}, Landroidx/media3/database/VersionTable;->removeVersion(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    .line 968
    invoke-static {p0, v0}, Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 969
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 971
    :try_start_2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 972
    throw p1
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    .line 974
    new-instance p1, Landroidx/media3/database/DatabaseIOException;

    invoke-direct {p1, p0}, Landroidx/media3/database/DatabaseIOException;-><init>(Landroid/database/SQLException;)V

    throw p1
.end method

.method private deleteRow(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 1

    iget-object p0, p0, Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;->tableName:Ljava/lang/String;

    .line 943
    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    const-string v0, "id = ?"

    .line 942
    invoke-virtual {p1, p0, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private static dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 2

    .line 979
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DROP TABLE IF EXISTS "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private getCursor()Landroid/database/Cursor;
    .locals 9

    iget-object v0, p0, Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;->databaseProvider:Landroidx/media3/database/DatabaseProvider;

    .line 920
    invoke-interface {v0}, Landroidx/media3/database/DatabaseProvider;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object p0, p0, Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;->tableName:Ljava/lang/String;

    .line 922
    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Ljava/lang/String;

    sget-object v3, Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;->COLUMNS:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 921
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method private static getTableName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 983
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ExoPlayerCacheIndex"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initializeTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/database/DatabaseIOException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;->hexUid:Ljava/lang/String;

    .line 935
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    .line 932
    invoke-static {p1, v1, v0, v1}, Landroidx/media3/database/VersionTable;->setVersion(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;I)V

    iget-object v0, p0, Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;->tableName:Ljava/lang/String;

    .line 937
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0}, Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 938
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TABLE "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;->tableName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " (id INTEGER PRIMARY KEY NOT NULL,key TEXT NOT NULL,metadata BLOB NOT NULL)"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public delete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/database/DatabaseIOException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;->databaseProvider:Landroidx/media3/database/DatabaseProvider;

    iget-object p0, p0, Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;->hexUid:Ljava/lang/String;

    .line 810
    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0}, Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;->delete(Landroidx/media3/database/DatabaseProvider;Ljava/lang/String;)V

    return-void
.end method

.method public exists()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/database/DatabaseIOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;->databaseProvider:Landroidx/media3/database/DatabaseProvider;

    .line 799
    invoke-interface {v0}, Landroidx/media3/database/DatabaseProvider;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object p0, p0, Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;->hexUid:Ljava/lang/String;

    .line 801
    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const/4 v1, 0x1

    .line 798
    invoke-static {v0, v1, p0}, Landroidx/media3/database/VersionTable;->getVersion(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :catch_0
    move-exception p0

    .line 804
    new-instance v0, Landroidx/media3/database/DatabaseIOException;

    invoke-direct {v0, p0}, Landroidx/media3/database/DatabaseIOException;-><init>(Landroid/database/SQLException;)V

    throw v0
.end method

.method public initialize(J)V
    .locals 0

    .line 791
    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;->hexUid:Ljava/lang/String;

    .line 792
    invoke-static {p1}, Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;->getTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;->tableName:Ljava/lang/String;

    return-void
.end method

.method public load(Ljava/util/HashMap;Landroid/util/SparseArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/media3/datasource/cache/CachedContent;",
            ">;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;->pendingUpdates:Landroid/util/SparseArray;

    .line 817
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    :try_start_0
    iget-object v0, p0, Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;->databaseProvider:Landroidx/media3/database/DatabaseProvider;

    .line 821
    invoke-interface {v0}, Landroidx/media3/database/DatabaseProvider;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v3, p0, Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;->hexUid:Ljava/lang/String;

    .line 823
    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 820
    invoke-static {v0, v2, v3}, Landroidx/media3/database/VersionTable;->getVersion(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;->databaseProvider:Landroidx/media3/database/DatabaseProvider;

    .line 825
    invoke-interface {v0}, Landroidx/media3/database/DatabaseProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 826
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 828
    :try_start_1
    invoke-direct {p0, v0}, Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;->initializeTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 829
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 831
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 832
    throw p0

    .line 835
    :cond_1
    :goto_1
    invoke-direct {p0}, Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;->getCursor()Landroid/database/Cursor;

    move-result-object p0
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 836
    :goto_2
    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 837
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 838
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x2

    .line 839
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    .line 841
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 842
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 843
    invoke-static {v4}, Landroidx/media3/datasource/cache/CachedContentIndex;->access$100(Ljava/io/DataInputStream;)Landroidx/media3/datasource/cache/DefaultContentMetadata;

    move-result-object v4

    .line 845
    new-instance v5, Landroidx/media3/datasource/cache/CachedContent;

    invoke-direct {v5, v0, v3, v4}, Landroidx/media3/datasource/cache/CachedContent;-><init>(ILjava/lang/String;Landroidx/media3/datasource/cache/DefaultContentMetadata;)V

    .line 846
    iget-object v0, v5, Landroidx/media3/datasource/cache/CachedContent;->key:Ljava/lang/String;

    invoke-virtual {p1, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 847
    iget v0, v5, Landroidx/media3/datasource/cache/CachedContent;->id:I

    iget-object v3, v5, Landroidx/media3/datasource/cache/CachedContent;->key:Ljava/lang/String;

    invoke-virtual {p2, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :cond_2
    if-eqz p0, :cond_3

    .line 849
    :try_start_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_3
    return-void

    :catchall_1
    move-exception v0

    if-eqz p0, :cond_4

    .line 835
    :try_start_5
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p0

    :try_start_6
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    throw v0
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception p0

    .line 851
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 852
    invoke-virtual {p2}, Landroid/util/SparseArray;->clear()V

    .line 853
    new-instance p1, Landroidx/media3/database/DatabaseIOException;

    invoke-direct {p1, p0}, Landroidx/media3/database/DatabaseIOException;-><init>(Landroid/database/SQLException;)V

    throw p1
.end method

.method public onRemove(Landroidx/media3/datasource/cache/CachedContent;Z)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p0, p0, Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;->pendingUpdates:Landroid/util/SparseArray;

    .line 912
    iget p1, p1, Landroidx/media3/datasource/cache/CachedContent;->id:I

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;->pendingUpdates:Landroid/util/SparseArray;

    .line 914
    iget p1, p1, Landroidx/media3/datasource/cache/CachedContent;->id:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onUpdate(Landroidx/media3/datasource/cache/CachedContent;)V
    .locals 1

    iget-object p0, p0, Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;->pendingUpdates:Landroid/util/SparseArray;

    .line 906
    iget v0, p1, Landroidx/media3/datasource/cache/CachedContent;->id:I

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public storeFully(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/media3/datasource/cache/CachedContent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;->databaseProvider:Landroidx/media3/database/DatabaseProvider;

    .line 860
    invoke-interface {v0}, Landroidx/media3/database/DatabaseProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 861
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 863
    :try_start_1
    invoke-direct {p0, v0}, Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;->initializeTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 864
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/datasource/cache/CachedContent;

    .line 865
    invoke-direct {p0, v0, v1}, Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;->addOrUpdateRow(Landroid/database/sqlite/SQLiteDatabase;Landroidx/media3/datasource/cache/CachedContent;)V

    goto :goto_0

    .line 867
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    iget-object p0, p0, Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;->pendingUpdates:Landroid/util/SparseArray;

    .line 868
    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 870
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 871
    throw p0
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    .line 873
    new-instance p1, Landroidx/media3/database/DatabaseIOException;

    invoke-direct {p1, p0}, Landroidx/media3/database/DatabaseIOException;-><init>(Landroid/database/SQLException;)V

    throw p1
.end method

.method public storeIncremental(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/media3/datasource/cache/CachedContent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p1, p0, Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;->pendingUpdates:Landroid/util/SparseArray;

    .line 879
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object p1, p0, Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;->databaseProvider:Landroidx/media3/database/DatabaseProvider;

    .line 883
    invoke-interface {p1}, Landroidx/media3/database/DatabaseProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    .line 884
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    :goto_0
    :try_start_1
    iget-object v1, p0, Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;->pendingUpdates:Landroid/util/SparseArray;

    .line 886
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;->pendingUpdates:Landroid/util/SparseArray;

    .line 887
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/datasource/cache/CachedContent;

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;->pendingUpdates:Landroid/util/SparseArray;

    .line 889
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-direct {p0, p1, v1}, Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;->deleteRow(Landroid/database/sqlite/SQLiteDatabase;I)V

    goto :goto_1

    .line 891
    :cond_1
    invoke-direct {p0, p1, v1}, Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;->addOrUpdateRow(Landroid/database/sqlite/SQLiteDatabase;Landroidx/media3/datasource/cache/CachedContent;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 894
    :cond_2
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    iget-object p0, p0, Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;->pendingUpdates:Landroid/util/SparseArray;

    .line 895
    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 897
    :try_start_2
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 898
    throw p0
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    .line 900
    new-instance p1, Landroidx/media3/database/DatabaseIOException;

    invoke-direct {p1, p0}, Landroidx/media3/database/DatabaseIOException;-><init>(Landroid/database/SQLException;)V

    throw p1
.end method
