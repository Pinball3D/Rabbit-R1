.class public final Landroidx/work/impl/WorkDatabase_Impl;
.super Landroidx/work/impl/WorkDatabase;
.source "WorkDatabase_Impl.java"


# instance fields
.field private volatile _dependencyDao:Landroidx/work/impl/model/DependencyDao;

.field private volatile _preferenceDao:Landroidx/work/impl/model/PreferenceDao;

.field private volatile _rawWorkInfoDao:Landroidx/work/impl/model/RawWorkInfoDao;

.field private volatile _systemIdInfoDao:Landroidx/work/impl/model/SystemIdInfoDao;

.field private volatile _workNameDao:Landroidx/work/impl/model/WorkNameDao;

.field private volatile _workProgressDao:Landroidx/work/impl/model/WorkProgressDao;

.field private volatile _workSpecDao:Landroidx/work/impl/model/WorkSpecDao;

.field private volatile _workTagDao:Landroidx/work/impl/model/WorkTagDao;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Landroidx/work/impl/WorkDatabase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 50
    iget-object p0, p0, Landroidx/work/impl/WorkDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 50
    iget-object p0, p0, Landroidx/work/impl/WorkDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1000(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 50
    iget-object p0, p0, Landroidx/work/impl/WorkDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 50
    iget-object p0, p0, Landroidx/work/impl/WorkDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 50
    iget-object p0, p0, Landroidx/work/impl/WorkDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 50
    iget-object p0, p0, Landroidx/work/impl/WorkDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 50
    iget-object p0, p0, Landroidx/work/impl/WorkDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$602(Landroidx/work/impl/WorkDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 0

    .line 50
    iput-object p1, p0, Landroidx/work/impl/WorkDatabase_Impl;->mDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

    return-object p1
.end method

.method static synthetic access$700(Landroidx/work/impl/WorkDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Landroidx/work/impl/WorkDatabase_Impl;->internalInitInvalidationTracker(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method static synthetic access$800(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 50
    iget-object p0, p0, Landroidx/work/impl/WorkDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$900(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 50
    iget-object p0, p0, Landroidx/work/impl/WorkDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public clearAllTables()V
    .locals 4

    const-string v0, "VACUUM"

    const-string v1, "PRAGMA wal_checkpoint(FULL)"

    .line 282
    invoke-super {p0}, Landroidx/work/impl/WorkDatabase;->assertNotMainThread()V

    .line 283
    invoke-super {p0}, Landroidx/work/impl/WorkDatabase;->getOpenHelper()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v2

    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v2

    .line 289
    :try_start_0
    invoke-super {p0}, Landroidx/work/impl/WorkDatabase;->beginTransaction()V

    const-string v3, "PRAGMA defer_foreign_keys = TRUE"

    .line 291
    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `Dependency`"

    .line 293
    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `WorkSpec`"

    .line 294
    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `WorkTag`"

    .line 295
    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `SystemIdInfo`"

    .line 296
    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `WorkName`"

    .line 297
    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `WorkProgress`"

    .line 298
    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `Preference`"

    .line 299
    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 300
    invoke-super {p0}, Landroidx/work/impl/WorkDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    invoke-super {p0}, Landroidx/work/impl/WorkDatabase;->endTransaction()V

    .line 306
    invoke-interface {v2, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 307
    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result p0

    if-nez p0, :cond_0

    .line 308
    invoke-interface {v2, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v3

    .line 302
    invoke-super {p0}, Landroidx/work/impl/WorkDatabase;->endTransaction()V

    .line 306
    invoke-interface {v2, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 307
    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result p0

    if-nez p0, :cond_1

    .line 308
    invoke-interface {v2, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 310
    :cond_1
    throw v3
.end method

.method protected createInvalidationTracker()Landroidx/room/InvalidationTracker;
    .locals 10

    .line 275
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 276
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 277
    new-instance v1, Landroidx/room/InvalidationTracker;

    const-string v3, "Dependency"

    const-string v4, "WorkSpec"

    const-string v5, "WorkTag"

    const-string v6, "SystemIdInfo"

    const-string v7, "WorkName"

    const-string v8, "WorkProgress"

    const-string v9, "Preference"

    filled-new-array/range {v3 .. v9}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v0, v2, v3}, Landroidx/room/InvalidationTracker;-><init>(Landroidx/room/RoomDatabase;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    return-object v1
.end method

.method protected createOpenHelper(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "configuration"
        }
    .end annotation

    .line 69
    new-instance v0, Landroidx/room/RoomOpenHelper;

    new-instance v1, Landroidx/work/impl/WorkDatabase_Impl$1;

    const/16 v2, 0x14

    invoke-direct {v1, p0, v2}, Landroidx/work/impl/WorkDatabase_Impl$1;-><init>(Landroidx/work/impl/WorkDatabase_Impl;I)V

    const-string p0, "7d73d21f1bd82c9e5268b6dcf9fde2cb"

    const-string v2, "3071c8717539de5d5353f4c8cd59a032"

    invoke-direct {v0, p1, v1, p0, v2}, Landroidx/room/RoomOpenHelper;-><init>(Landroidx/room/DatabaseConfiguration;Landroidx/room/RoomOpenHelper$Delegate;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object p0, p1, Landroidx/room/DatabaseConfiguration;->context:Landroid/content/Context;

    invoke-static {p0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->builder(Landroid/content/Context;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object p0

    iget-object v1, p1, Landroidx/room/DatabaseConfiguration;->name:Ljava/lang/String;

    .line 266
    invoke-virtual {p0, v1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->name(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object p0

    .line 267
    invoke-virtual {p0, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->callback(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object p0

    .line 268
    invoke-virtual {p0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->build()Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;

    move-result-object p0

    .line 269
    iget-object p1, p1, Landroidx/room/DatabaseConfiguration;->sqliteOpenHelperFactory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;->create(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object p0

    return-object p0
.end method

.method public dependencyDao()Landroidx/work/impl/model/DependencyDao;
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_dependencyDao:Landroidx/work/impl/model/DependencyDao;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_dependencyDao:Landroidx/work/impl/model/DependencyDao;

    return-object p0

    .line 361
    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_dependencyDao:Landroidx/work/impl/model/DependencyDao;

    if-nez v0, :cond_1

    .line 363
    new-instance v0, Landroidx/work/impl/model/DependencyDao_Impl;

    invoke-direct {v0, p0}, Landroidx/work/impl/model/DependencyDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_dependencyDao:Landroidx/work/impl/model/DependencyDao;

    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_dependencyDao:Landroidx/work/impl/model/DependencyDao;

    .line 365
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 366
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAutoMigrations(Ljava/util/Map;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "autoMigrationSpecsMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/room/migration/AutoMigrationSpec;",
            ">;",
            "Landroidx/room/migration/AutoMigrationSpec;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/room/migration/Migration;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x6

    new-array p0, p0, [Landroidx/room/migration/Migration;

    .line 336
    new-instance p1, Landroidx/work/impl/WorkDatabase_AutoMigration_13_14_Impl;

    invoke-direct {p1}, Landroidx/work/impl/WorkDatabase_AutoMigration_13_14_Impl;-><init>()V

    const/4 v0, 0x0

    aput-object p1, p0, v0

    new-instance p1, Landroidx/work/impl/WorkDatabase_AutoMigration_14_15_Impl;

    invoke-direct {p1}, Landroidx/work/impl/WorkDatabase_AutoMigration_14_15_Impl;-><init>()V

    const/4 v0, 0x1

    aput-object p1, p0, v0

    new-instance p1, Landroidx/work/impl/WorkDatabase_AutoMigration_16_17_Impl;

    invoke-direct {p1}, Landroidx/work/impl/WorkDatabase_AutoMigration_16_17_Impl;-><init>()V

    const/4 v0, 0x2

    aput-object p1, p0, v0

    new-instance p1, Landroidx/work/impl/WorkDatabase_AutoMigration_17_18_Impl;

    invoke-direct {p1}, Landroidx/work/impl/WorkDatabase_AutoMigration_17_18_Impl;-><init>()V

    const/4 v0, 0x3

    aput-object p1, p0, v0

    new-instance p1, Landroidx/work/impl/WorkDatabase_AutoMigration_18_19_Impl;

    invoke-direct {p1}, Landroidx/work/impl/WorkDatabase_AutoMigration_18_19_Impl;-><init>()V

    const/4 v0, 0x4

    aput-object p1, p0, v0

    new-instance p1, Landroidx/work/impl/WorkDatabase_AutoMigration_19_20_Impl;

    invoke-direct {p1}, Landroidx/work/impl/WorkDatabase_AutoMigration_19_20_Impl;-><init>()V

    const/4 v0, 0x5

    aput-object p1, p0, v0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getRequiredAutoMigrationSpecs()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/room/migration/AutoMigrationSpec;",
            ">;>;"
        }
    .end annotation

    .line 329
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0
.end method

.method protected getRequiredTypeConverters()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;>;"
        }
    .end annotation

    .line 315
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 316
    const-class v0, Landroidx/work/impl/model/WorkSpecDao;

    invoke-static {}, Landroidx/work/impl/model/WorkSpecDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    const-class v0, Landroidx/work/impl/model/DependencyDao;

    invoke-static {}, Landroidx/work/impl/model/DependencyDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    const-class v0, Landroidx/work/impl/model/WorkTagDao;

    invoke-static {}, Landroidx/work/impl/model/WorkTagDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    const-class v0, Landroidx/work/impl/model/SystemIdInfoDao;

    invoke-static {}, Landroidx/work/impl/model/SystemIdInfoDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    const-class v0, Landroidx/work/impl/model/WorkNameDao;

    invoke-static {}, Landroidx/work/impl/model/WorkNameDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    const-class v0, Landroidx/work/impl/model/WorkProgressDao;

    invoke-static {}, Landroidx/work/impl/model/WorkProgressDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    const-class v0, Landroidx/work/impl/model/PreferenceDao;

    invoke-static {}, Landroidx/work/impl/model/PreferenceDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    const-class v0, Landroidx/work/impl/model/RawWorkInfoDao;

    invoke-static {}, Landroidx/work/impl/model/RawWorkInfoDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public preferenceDao()Landroidx/work/impl/model/PreferenceDao;
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_preferenceDao:Landroidx/work/impl/model/PreferenceDao;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_preferenceDao:Landroidx/work/impl/model/PreferenceDao;

    return-object p0

    .line 431
    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_preferenceDao:Landroidx/work/impl/model/PreferenceDao;

    if-nez v0, :cond_1

    .line 433
    new-instance v0, Landroidx/work/impl/model/PreferenceDao_Impl;

    invoke-direct {v0, p0}, Landroidx/work/impl/model/PreferenceDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_preferenceDao:Landroidx/work/impl/model/PreferenceDao;

    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_preferenceDao:Landroidx/work/impl/model/PreferenceDao;

    .line 435
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 436
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public rawWorkInfoDao()Landroidx/work/impl/model/RawWorkInfoDao;
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_rawWorkInfoDao:Landroidx/work/impl/model/RawWorkInfoDao;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_rawWorkInfoDao:Landroidx/work/impl/model/RawWorkInfoDao;

    return-object p0

    .line 445
    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_rawWorkInfoDao:Landroidx/work/impl/model/RawWorkInfoDao;

    if-nez v0, :cond_1

    .line 447
    new-instance v0, Landroidx/work/impl/model/RawWorkInfoDao_Impl;

    invoke-direct {v0, p0}, Landroidx/work/impl/model/RawWorkInfoDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_rawWorkInfoDao:Landroidx/work/impl/model/RawWorkInfoDao;

    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_rawWorkInfoDao:Landroidx/work/impl/model/RawWorkInfoDao;

    .line 449
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 450
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public systemIdInfoDao()Landroidx/work/impl/model/SystemIdInfoDao;
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_systemIdInfoDao:Landroidx/work/impl/model/SystemIdInfoDao;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_systemIdInfoDao:Landroidx/work/impl/model/SystemIdInfoDao;

    return-object p0

    .line 389
    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_systemIdInfoDao:Landroidx/work/impl/model/SystemIdInfoDao;

    if-nez v0, :cond_1

    .line 391
    new-instance v0, Landroidx/work/impl/model/SystemIdInfoDao_Impl;

    invoke-direct {v0, p0}, Landroidx/work/impl/model/SystemIdInfoDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_systemIdInfoDao:Landroidx/work/impl/model/SystemIdInfoDao;

    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_systemIdInfoDao:Landroidx/work/impl/model/SystemIdInfoDao;

    .line 393
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 394
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public workNameDao()Landroidx/work/impl/model/WorkNameDao;
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_workNameDao:Landroidx/work/impl/model/WorkNameDao;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_workNameDao:Landroidx/work/impl/model/WorkNameDao;

    return-object p0

    .line 403
    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_workNameDao:Landroidx/work/impl/model/WorkNameDao;

    if-nez v0, :cond_1

    .line 405
    new-instance v0, Landroidx/work/impl/model/WorkNameDao_Impl;

    invoke-direct {v0, p0}, Landroidx/work/impl/model/WorkNameDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_workNameDao:Landroidx/work/impl/model/WorkNameDao;

    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_workNameDao:Landroidx/work/impl/model/WorkNameDao;

    .line 407
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 408
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public workProgressDao()Landroidx/work/impl/model/WorkProgressDao;
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_workProgressDao:Landroidx/work/impl/model/WorkProgressDao;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_workProgressDao:Landroidx/work/impl/model/WorkProgressDao;

    return-object p0

    .line 417
    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_workProgressDao:Landroidx/work/impl/model/WorkProgressDao;

    if-nez v0, :cond_1

    .line 419
    new-instance v0, Landroidx/work/impl/model/WorkProgressDao_Impl;

    invoke-direct {v0, p0}, Landroidx/work/impl/model/WorkProgressDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_workProgressDao:Landroidx/work/impl/model/WorkProgressDao;

    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_workProgressDao:Landroidx/work/impl/model/WorkProgressDao;

    .line 421
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 422
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public workSpecDao()Landroidx/work/impl/model/WorkSpecDao;
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_workSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_workSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    return-object p0

    .line 347
    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_workSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    if-nez v0, :cond_1

    .line 349
    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl;

    invoke-direct {v0, p0}, Landroidx/work/impl/model/WorkSpecDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_workSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_workSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    .line 351
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 352
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public workTagDao()Landroidx/work/impl/model/WorkTagDao;
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_workTagDao:Landroidx/work/impl/model/WorkTagDao;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_workTagDao:Landroidx/work/impl/model/WorkTagDao;

    return-object p0

    .line 375
    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_workTagDao:Landroidx/work/impl/model/WorkTagDao;

    if-nez v0, :cond_1

    .line 377
    new-instance v0, Landroidx/work/impl/model/WorkTagDao_Impl;

    invoke-direct {v0, p0}, Landroidx/work/impl/model/WorkTagDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_workTagDao:Landroidx/work/impl/model/WorkTagDao;

    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_workTagDao:Landroidx/work/impl/model/WorkTagDao;

    .line 379
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 380
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
