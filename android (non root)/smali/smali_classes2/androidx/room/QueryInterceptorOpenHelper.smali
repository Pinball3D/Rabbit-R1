.class public final Landroidx/room/QueryInterceptorOpenHelper;
.super Ljava/lang/Object;
.source "QueryInterceptorOpenHelper.kt"

# interfaces
.implements Landroidx/sqlite/db/SupportSQLiteOpenHelper;
.implements Landroidx/room/DelegatingOpenHelper;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0001\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u0015\u001a\u00020\u0016H\u0096\u0001J\u0011\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0019H\u0097\u0001R\u0014\u0010\t\u001a\u0004\u0018\u00010\nX\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u0003\u001a\u00020\u0001X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u00020\u00108VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0013\u001a\u00020\u00108VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0012\u00a8\u0006\u001a"
    }
    d2 = {
        "Landroidx/room/QueryInterceptorOpenHelper;",
        "Landroidx/sqlite/db/SupportSQLiteOpenHelper;",
        "Landroidx/room/DelegatingOpenHelper;",
        "delegate",
        "queryCallbackExecutor",
        "Ljava/util/concurrent/Executor;",
        "queryCallback",
        "Landroidx/room/RoomDatabase$QueryCallback;",
        "(Landroidx/sqlite/db/SupportSQLiteOpenHelper;Ljava/util/concurrent/Executor;Landroidx/room/RoomDatabase$QueryCallback;)V",
        "databaseName",
        "",
        "getDatabaseName",
        "()Ljava/lang/String;",
        "getDelegate",
        "()Landroidx/sqlite/db/SupportSQLiteOpenHelper;",
        "readableDatabase",
        "Landroidx/sqlite/db/SupportSQLiteDatabase;",
        "getReadableDatabase",
        "()Landroidx/sqlite/db/SupportSQLiteDatabase;",
        "writableDatabase",
        "getWritableDatabase",
        "close",
        "",
        "setWriteAheadLoggingEnabled",
        "enabled",
        "",
        "room-runtime_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final delegate:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

.field private final queryCallback:Landroidx/room/RoomDatabase$QueryCallback;

.field private final queryCallbackExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroidx/sqlite/db/SupportSQLiteOpenHelper;Ljava/util/concurrent/Executor;Landroidx/room/RoomDatabase$QueryCallback;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "queryCallbackExecutor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "queryCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/QueryInterceptorOpenHelper;->delegate:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    iput-object p2, p0, Landroidx/room/QueryInterceptorOpenHelper;->queryCallbackExecutor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroidx/room/QueryInterceptorOpenHelper;->queryCallback:Landroidx/room/RoomDatabase$QueryCallback;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Landroidx/room/QueryInterceptorOpenHelper;->delegate:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    invoke-interface {p0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->close()V

    return-void
.end method

.method public getDatabaseName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/room/QueryInterceptorOpenHelper;->delegate:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    invoke-interface {p0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDelegate()Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 0

    iget-object p0, p0, Landroidx/room/QueryInterceptorOpenHelper;->delegate:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    return-object p0
.end method

.method public getReadableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 3

    .line 37
    new-instance v0, Landroidx/room/QueryInterceptorDatabase;

    .line 38
    invoke-virtual {p0}, Landroidx/room/QueryInterceptorOpenHelper;->getDelegate()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v1

    invoke-interface {v1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getReadableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v1

    iget-object v2, p0, Landroidx/room/QueryInterceptorOpenHelper;->queryCallbackExecutor:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Landroidx/room/QueryInterceptorOpenHelper;->queryCallback:Landroidx/room/RoomDatabase$QueryCallback;

    .line 37
    invoke-direct {v0, v1, v2, p0}, Landroidx/room/QueryInterceptorDatabase;-><init>(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/util/concurrent/Executor;Landroidx/room/RoomDatabase$QueryCallback;)V

    check-cast v0, Landroidx/sqlite/db/SupportSQLiteDatabase;

    return-object v0
.end method

.method public getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 3

    .line 30
    new-instance v0, Landroidx/room/QueryInterceptorDatabase;

    .line 31
    invoke-virtual {p0}, Landroidx/room/QueryInterceptorOpenHelper;->getDelegate()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v1

    invoke-interface {v1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v1

    iget-object v2, p0, Landroidx/room/QueryInterceptorOpenHelper;->queryCallbackExecutor:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Landroidx/room/QueryInterceptorOpenHelper;->queryCallback:Landroidx/room/RoomDatabase$QueryCallback;

    .line 30
    invoke-direct {v0, v1, v2, p0}, Landroidx/room/QueryInterceptorDatabase;-><init>(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/util/concurrent/Executor;Landroidx/room/RoomDatabase$QueryCallback;)V

    check-cast v0, Landroidx/sqlite/db/SupportSQLiteDatabase;

    return-object v0
.end method

.method public setWriteAheadLoggingEnabled(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/room/QueryInterceptorOpenHelper;->delegate:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    invoke-interface {p0, p1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    return-void
.end method
