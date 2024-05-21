.class public final Landroidx/work/impl/model/WorkProgressDao_Impl;
.super Ljava/lang/Object;
.source "WorkProgressDao_Impl.java"

# interfaces
.implements Landroidx/work/impl/model/WorkProgressDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __insertionAdapterOfWorkProgress:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Landroidx/work/impl/model/WorkProgress;",
            ">;"
        }
    .end annotation
.end field

.field private final __preparedStmtOfDelete:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfDeleteAll:Landroidx/room/SharedSQLiteStatement;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "__db"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 32
    new-instance v0, Landroidx/work/impl/model/WorkProgressDao_Impl$1;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/WorkProgressDao_Impl$1;-><init>(Landroidx/work/impl/model/WorkProgressDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__insertionAdapterOfWorkProgress:Landroidx/room/EntityInsertionAdapter;

    .line 53
    new-instance v0, Landroidx/work/impl/model/WorkProgressDao_Impl$2;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/WorkProgressDao_Impl$2;-><init>(Landroidx/work/impl/model/WorkProgressDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__preparedStmtOfDelete:Landroidx/room/SharedSQLiteStatement;

    .line 60
    new-instance v0, Landroidx/work/impl/model/WorkProgressDao_Impl$3;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/WorkProgressDao_Impl$3;-><init>(Landroidx/work/impl/model/WorkProgressDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__preparedStmtOfDeleteAll:Landroidx/room/SharedSQLiteStatement;

    return-void
.end method

.method public static getRequiredConverters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 152
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "workSpecId"
        }
    .end annotation

    iget-object v0, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 83
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__preparedStmtOfDelete:Landroidx/room/SharedSQLiteStatement;

    .line 84
    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 87
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 89
    :cond_0
    invoke-interface {v0, v1, p1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 91
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 93
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    iget-object p1, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 94
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 96
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    iget-object p0, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__preparedStmtOfDelete:Landroidx/room/SharedSQLiteStatement;

    .line 97
    invoke-virtual {p0, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object v1, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 96
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    iget-object p0, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__preparedStmtOfDelete:Landroidx/room/SharedSQLiteStatement;

    .line 97
    invoke-virtual {p0, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 98
    throw p1
.end method

.method public deleteAll()V
    .locals 3

    iget-object v0, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 103
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__preparedStmtOfDeleteAll:Landroidx/room/SharedSQLiteStatement;

    .line 104
    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    iget-object v1, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 105
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 107
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    iget-object v1, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 108
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 110
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    iget-object p0, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__preparedStmtOfDeleteAll:Landroidx/room/SharedSQLiteStatement;

    .line 111
    invoke-virtual {p0, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 110
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    iget-object p0, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__preparedStmtOfDeleteAll:Landroidx/room/SharedSQLiteStatement;

    .line 111
    invoke-virtual {p0, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 112
    throw v1
.end method

.method public getProgressForWorkSpecId(Ljava/lang/String;)Landroidx/work/Data;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "workSpecId"
        }
    .end annotation

    const-string v0, "SELECT progress FROM WorkProgress WHERE work_spec_id=?"

    const/4 v1, 0x1

    .line 118
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    if-nez p1, :cond_0

    .line 121
    invoke-virtual {v0, v1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 125
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object p0, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 p1, 0x0

    const/4 v1, 0x0

    .line 126
    invoke-static {p0, v0, p1, v1}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    .line 129
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 131
    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object p1, v1

    goto :goto_1

    .line 134
    :cond_1
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p1

    :goto_1
    if-nez p1, :cond_2

    goto :goto_2

    .line 139
    :cond_2
    invoke-static {p1}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, p1

    .line 146
    :cond_3
    :goto_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 147
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v1

    :catchall_0
    move-exception p1

    .line 146
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 147
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 148
    throw p1
.end method

.method public insert(Landroidx/work/impl/model/WorkProgress;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "progress"
        }
    .end annotation

    iget-object v0, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 71
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 72
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__insertionAdapterOfWorkProgress:Landroidx/room/EntityInsertionAdapter;

    .line 74
    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 75
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 77
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 78
    throw p1
.end method
