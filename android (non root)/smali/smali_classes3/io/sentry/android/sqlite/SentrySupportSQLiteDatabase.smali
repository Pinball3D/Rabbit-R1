.class public final Lio/sentry/android/sqlite/SentrySupportSQLiteDatabase;
.super Ljava/lang/Object;
.source "SentrySupportSQLiteDatabase.kt"

# interfaces
.implements Landroidx/sqlite/db/SupportSQLiteDatabase;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0002\u0008\n\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\t\u0010%\u001a\u00020&H\u0096\u0001J\t\u0010\'\u001a\u00020&H\u0096\u0001J\u0011\u0010(\u001a\u00020&2\u0006\u0010)\u001a\u00020*H\u0096\u0001J\u0011\u0010+\u001a\u00020&2\u0006\u0010)\u001a\u00020*H\u0096\u0001J\t\u0010,\u001a\u00020&H\u0096\u0001J\u0010\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u00020\tH\u0016J4\u00100\u001a\u00020 2\u0006\u00101\u001a\u00020\t2\u0008\u00102\u001a\u0004\u0018\u00010\t2\u0012\u00103\u001a\u000e\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u000105\u0018\u000104H\u0096\u0001\u00a2\u0006\u0002\u00106J\t\u00107\u001a\u00020&H\u0097\u0001J\t\u00108\u001a\u00020\rH\u0096\u0001J\t\u00109\u001a\u00020&H\u0096\u0001J+\u0010:\u001a\u00020&2\u0006\u0010/\u001a\u00020\t2\u0014\u0008\u0001\u0010;\u001a\u000e\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u000105\u0018\u000104H\u0016\u00a2\u0006\u0002\u0010<J\u0010\u0010=\u001a\u00020&2\u0006\u0010/\u001a\u00020\tH\u0016J\'\u0010=\u001a\u00020&2\u0006\u0010/\u001a\u00020\t2\u0010\u0010;\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010504H\u0016\u00a2\u0006\u0002\u0010<J\t\u0010>\u001a\u00020\rH\u0096\u0001J!\u0010?\u001a\u00020\u00152\u0006\u00101\u001a\u00020\t2\u0006\u0010@\u001a\u00020 2\u0006\u0010A\u001a\u00020BH\u0096\u0001J\u0011\u0010C\u001a\u00020\r2\u0006\u0010D\u001a\u00020 H\u0096\u0001J\u0010\u0010E\u001a\u00020F2\u0006\u0010E\u001a\u00020GH\u0016J\u001a\u0010E\u001a\u00020F2\u0006\u0010E\u001a\u00020G2\u0008\u0010H\u001a\u0004\u0018\u00010IH\u0016J\u0010\u0010E\u001a\u00020F2\u0006\u0010E\u001a\u00020\tH\u0016J\'\u0010E\u001a\u00020F2\u0006\u0010E\u001a\u00020\t2\u0010\u0010;\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010504H\u0016\u00a2\u0006\u0002\u0010JJ\u0011\u0010K\u001a\u00020&2\u0006\u0010L\u001a\u00020\rH\u0097\u0001J\u0011\u0010M\u001a\u00020&2\u0006\u0010N\u001a\u00020OH\u0096\u0001J\u0011\u0010P\u001a\u00020&2\u0006\u0010Q\u001a\u00020 H\u0096\u0001J\u0011\u0010R\u001a\u00020\u00152\u0006\u0010S\u001a\u00020\u0015H\u0096\u0001J\t\u0010T\u001a\u00020&H\u0096\u0001JD\u0010U\u001a\u00020 2\u0006\u00101\u001a\u00020\t2\u0006\u0010@\u001a\u00020 2\u0006\u0010A\u001a\u00020B2\u0008\u00102\u001a\u0004\u0018\u00010\t2\u0012\u00103\u001a\u000e\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u000105\u0018\u000104H\u0096\u0001\u00a2\u0006\u0002\u0010VJ\t\u0010W\u001a\u00020\rH\u0096\u0001J\u0011\u0010W\u001a\u00020\r2\u0006\u0010X\u001a\u00020\u0015H\u0096\u0001R(\u0010\u0006\u001a\u0016\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\u0008\u0018\u00010\u00078VX\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000c\u001a\u00020\rX\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\u000eR\u0012\u0010\u000f\u001a\u00020\rX\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u000eR\u0014\u0010\u0010\u001a\u00020\r8VX\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u000eR\u0012\u0010\u0011\u001a\u00020\rX\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u000eR\u0012\u0010\u0012\u001a\u00020\rX\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u000eR\u0014\u0010\u0013\u001a\u00020\r8WX\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u000eR\u0012\u0010\u0014\u001a\u00020\u0015X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0017R\u0018\u0010\u0018\u001a\u00020\u0015X\u0096\u000f\u00a2\u0006\u000c\u001a\u0004\u0008\u0019\u0010\u0017\"\u0004\u0008\u001a\u0010\u001bR\u0014\u0010\u001c\u001a\u0004\u0018\u00010\tX\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u001eR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u001f\u001a\u00020 X\u0096\u000f\u00a2\u0006\u000c\u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$\u00a8\u0006Y"
    }
    d2 = {
        "Lio/sentry/android/sqlite/SentrySupportSQLiteDatabase;",
        "Landroidx/sqlite/db/SupportSQLiteDatabase;",
        "delegate",
        "sqLiteSpanManager",
        "Lio/sentry/android/sqlite/SQLiteSpanManager;",
        "(Landroidx/sqlite/db/SupportSQLiteDatabase;Lio/sentry/android/sqlite/SQLiteSpanManager;)V",
        "attachedDbs",
        "",
        "Landroid/util/Pair;",
        "",
        "getAttachedDbs",
        "()Ljava/util/List;",
        "isDatabaseIntegrityOk",
        "",
        "()Z",
        "isDbLockedByCurrentThread",
        "isExecPerConnectionSQLSupported",
        "isOpen",
        "isReadOnly",
        "isWriteAheadLoggingEnabled",
        "maximumSize",
        "",
        "getMaximumSize",
        "()J",
        "pageSize",
        "getPageSize",
        "setPageSize",
        "(J)V",
        "path",
        "getPath",
        "()Ljava/lang/String;",
        "version",
        "",
        "getVersion",
        "()I",
        "setVersion",
        "(I)V",
        "beginTransaction",
        "",
        "beginTransactionNonExclusive",
        "beginTransactionWithListener",
        "transactionListener",
        "Landroid/database/sqlite/SQLiteTransactionListener;",
        "beginTransactionWithListenerNonExclusive",
        "close",
        "compileStatement",
        "Landroidx/sqlite/db/SupportSQLiteStatement;",
        "sql",
        "delete",
        "table",
        "whereClause",
        "whereArgs",
        "",
        "",
        "(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I",
        "disableWriteAheadLogging",
        "enableWriteAheadLogging",
        "endTransaction",
        "execPerConnectionSQL",
        "bindArgs",
        "(Ljava/lang/String;[Ljava/lang/Object;)V",
        "execSQL",
        "inTransaction",
        "insert",
        "conflictAlgorithm",
        "values",
        "Landroid/content/ContentValues;",
        "needUpgrade",
        "newVersion",
        "query",
        "Landroid/database/Cursor;",
        "Landroidx/sqlite/db/SupportSQLiteQuery;",
        "cancellationSignal",
        "Landroid/os/CancellationSignal;",
        "(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;",
        "setForeignKeyConstraintsEnabled",
        "enabled",
        "setLocale",
        "locale",
        "Ljava/util/Locale;",
        "setMaxSqlCacheSize",
        "cacheSize",
        "setMaximumSize",
        "numBytes",
        "setTransactionSuccessful",
        "update",
        "(Ljava/lang/String;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;)I",
        "yieldIfContendedSafely",
        "sleepAfterYieldDelayMillis",
        "sentry-android-sqlite_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final delegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

.field private final sqLiteSpanManager:Lio/sentry/android/sqlite/SQLiteSpanManager;


# direct methods
.method public constructor <init>(Landroidx/sqlite/db/SupportSQLiteDatabase;Lio/sentry/android/sqlite/SQLiteSpanManager;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sqLiteSpanManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/sqlite/SentrySupportSQLiteDatabase;->delegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    iput-object p2, p0, Lio/sentry/android/sqlite/SentrySupportSQLiteDatabase;->sqLiteSpanManager:Lio/sentry/android/sqlite/SQLiteSpanManager;

    return-void
.end method

.method public static final synthetic access$getDelegate$p(Lio/sentry/android/sqlite/SentrySupportSQLiteDatabase;)Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 0

    .line 20
    iget-object p0, p0, Lio/sentry/android/sqlite/SentrySupportSQLiteDatabase;->delegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    return-object p0
.end method


# virtual methods
.method public beginTransaction()V
    .locals 0

    iget-object p0, p0, Lio/sentry/android/sqlite/SentrySupportSQLiteDatabase;->delegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->beginTransaction()V

    return-void
.end method

.method public beginTransactionNonExclusive()V
    .locals 0

    iget-object p0, p0, Lio/sentry/android/sqlite/SentrySupportSQLiteDatabase;->delegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->beginTransactionNonExclusive()V

    return-void
.end method

.method public beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V
    .locals 1

    const-string v0, "transactionListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lio/sentry/android/sqlite/SentrySupportSQLiteDatabase;->delegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {p0, p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V

    return-void
.end method

.method public beginTransactionWithListenerNonExclusive(Landroid/database/sqlite/SQLiteTransactionListener;)V
    .locals 1

    const-string v0, "transactionListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lio/sentry/android/sqlite/SentrySupportSQLiteDatabase;->delegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {p0, p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->beginTransactionWithListenerNonExclusive(Landroid/database/sqlite/SQLiteTransactionListener;)V

    return-void
.end method

.method public close()V
    .locals 0

    iget-object p0, p0, Lio/sentry/android/sqlite/SentrySupportSQLiteDatabase;->delegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->close()V

    return-void
.end method

.method public compileStatement(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteStatement;
    .locals 2

    const-string v0, "sql"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    new-instance v0, Lio/sentry/android/sqlite/SentrySupportSQLiteStatement;

    iget-object v1, p0, Lio/sentry/android/sqlite/SentrySupportSQLiteDatabase;->delegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {v1, p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v1

    iget-object p0, p0, Lio/sentry/android/sqlite/SentrySupportSQLiteDatabase;->sqLiteSpanManager:Lio/sentry/android/sqlite/SQLiteSpanManager;

    invoke-direct {v0, v1, p0, p1}, Lio/sentry/android/sqlite/SentrySupportSQLiteStatement;-><init>(Landroidx/sqlite/db/SupportSQLiteStatement;Lio/sentry/android/sqlite/SQLiteSpanManager;Ljava/lang/String;)V

    check-cast v0, Landroidx/sqlite/db/SupportSQLiteStatement;

    return-object v0
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 1

    const-string v0, "table"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lio/sentry/android/sqlite/SentrySupportSQLiteDatabase;->delegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {p0, p1, p2, p3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public disableWriteAheadLogging()V
    .locals 0

    iget-object p0, p0, Lio/sentry/android/sqlite/SentrySupportSQLiteDatabase;->delegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->disableWriteAheadLogging()V

    return-void
.end method

.method public enableWriteAheadLogging()Z
    .locals 0

    iget-object p0, p0, Lio/sentry/android/sqlite/SentrySupportSQLiteDatabase;->delegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->enableWriteAheadLogging()Z

    move-result p0

    return p0
.end method

.method public endTransaction()V
    .locals 0

    iget-object p0, p0, Lio/sentry/android/sqlite/SentrySupportSQLiteDatabase;->delegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->endTransaction()V

    return-void
.end method

.method public execPerConnectionSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const-string v0, "sql"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/sentry/android/sqlite/SentrySupportSQLiteDatabase;->sqLiteSpanManager:Lio/sentry/android/sqlite/SQLiteSpanManager;

    .line 40
    new-instance v1, Lio/sentry/android/sqlite/SentrySupportSQLiteDatabase$execPerConnectionSQL$1;

    invoke-direct {v1, p0, p1, p2}, Lio/sentry/android/sqlite/SentrySupportSQLiteDatabase$execPerConnectionSQL$1;-><init>(Lio/sentry/android/sqlite/SentrySupportSQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, p1, v1}, Lio/sentry/android/sqlite/SQLiteSpanManager;->performSql(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    return-void
.end method

.method public execSQL(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    const-string v0, "sql"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/sentry/android/sqlite/SentrySupportSQLiteDatabase;->sqLiteSpanManager:Lio/sentry/android/sqlite/SQLiteSpanManager;

    .line 74
    new-instance v1, Lio/sentry/android/sqlite/SentrySupportSQLiteDatabase$execSQL$1;

    invoke-direct {v1, p0, p1}, Lio/sentry/android/sqlite/SentrySupportSQLiteDatabase$execSQL$1;-><init>(Lio/sentry/android/sqlite/SentrySupportSQLiteDatabase;Ljava/lang/String;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, p1, v1}, Lio/sentry/android/sqlite/SQLiteSpanManager;->performSql(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    return-void
.end method

.method public execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    const-string v0, "sql"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bindArgs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/sentry/android/sqlite/SentrySupportSQLiteDatabase;->sqLiteSpanManager:Lio/sentry/android/sqlite/SQLiteSpanManager;

    .line 81
    new-instance v1, Lio/sentry/android/sqlite/SentrySupportSQLiteDatabase$execSQL$2;

    invoke-direct {v1, p0, p1, p2}, Lio/sentry/android/sqlite/SentrySupportSQLiteDatabase$execSQL$2;-><init>(Lio/sentry/android/sqlite/SentrySupportSQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, p1, v1}, Lio/sentry/android/sqlite/SQLiteSpanManager;->performSql(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    return-void
.end method

.method public getAttachedDbs()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lio/sentry/android/sqlite/SentrySupportSQLiteDatabase;->delegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->getAttachedDbs()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getMaximumSize()J
    .locals 2

    iget-object p0, p0, Lio/sentry/android/sqlite/SentrySupportSQLiteDatabase;->delegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->getMaximumSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPageSize()J
    .locals 2

    iget-object p0, p0, Lio/sentry/android/sqlite/SentrySupportSQLiteDatabase;->delegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->getPageSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/android/sqlite/SentrySupportSQLiteDatabase;->delegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVersion()I
    .locals 0

    iget-object p0, p0, Lio/sentry/android/sqlite/SentrySupportSQLiteDatabase;->delegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->getVersion()I

    move-result p0

    return p0
.end method

.method public inTransaction()Z
    .locals 0

    iget-object p0, p0, Lio/sentry/android/sqlite/SentrySupportSQLiteDatabase;->delegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result p0

    return p0
.end method

.method public insert(Ljava/lang/String;ILandroid/content/ContentValues;)J
    .locals 1

    const-string v0, "table"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lio/sentry/android/sqlite/SentrySupportSQLiteDatabase;->delegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {p0, p1, p2, p3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->insert(Ljava/lang/String;ILandroid/content/ContentValues;)J

    move-result-wide p0

    return-wide p0
.end method

.method public isDatabaseIntegrityOk()Z
    .locals 0

    iget-object p0, p0, Lio/sentry/android/sqlite/SentrySupportSQLiteDatabase;->delegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->isDatabaseIntegrityOk()Z

    move-result p0

    return p0
.end method

.method public isDbLockedByCurrentThread()Z
    .locals 0

    iget-object p0, p0, Lio/sentry/android/sqlite/SentrySupportSQLiteDatabase;->delegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->isDbLockedByCurrentThread()Z

    move-result p0

    return p0
.end method

.method public isExecPerConnectionSQLSupported()Z
    .locals 0

    iget-object p0, p0, Lio/sentry/android/sqlite/SentrySupportSQLiteDatabase;->delegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->isExecPerConnectionSQLSupported()Z

    move-result p0

    return p0
.end method

.method public isOpen()Z
    .locals 0

    iget-object p0, p0, Lio/sentry/android/sqlite/SentrySupportSQLiteDatabase;->delegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->isOpen()Z

    move-result p0

    return p0
.end method

.method public isReadOnly()Z
    .locals 0

    iget-object p0, p0, Lio/sentry/android/sqlite/SentrySupportSQLiteDatabase;->delegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->isReadOnly()Z

    move-result p0

    return p0
.end method

.method public isWriteAheadLoggingEnabled()Z
    .locals 0

    iget-object p0, p0, Lio/sentry/android/sqlite/SentrySupportSQLiteDatabase;->delegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->isWriteAheadLoggingEnabled()Z

    move-result p0

    return p0
.end method

.method public needUpgrade(I)Z
    .locals 0

    iget-object p0, p0, Lio/sentry/android/sqlite/SentrySupportSQLiteDatabase;->delegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {p0, p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->needUpgrade(I)Z

    move-result p0

    return p0
.end method

.method public query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;
    .locals 3

    const-string v0, "query"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/sentry/android/sqlite/SentrySupportSQLiteDatabase;->sqLiteSpanManager:Lio/sentry/android/sqlite/SQLiteSpanManager;

    .line 58
    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteQuery;->getSql()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lio/sentry/android/sqlite/SentrySupportSQLiteDatabase$query$3;

    invoke-direct {v2, p0, p1}, Lio/sentry/android/sqlite/SentrySupportSQLiteDatabase$query$3;-><init>(Lio/sentry/android/sqlite/SentrySupportSQLiteDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1, v2}, Lio/sentry/android/sqlite/SQLiteSpanManager;->performSql(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/database/Cursor;

    return-object p0
.end method

.method public query(Landroidx/sqlite/db/SupportSQLiteQuery;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 3

    const-string v0, "query"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/sentry/android/sqlite/SentrySupportSQLiteDatabase;->sqLiteSpanManager:Lio/sentry/android/sqlite/SQLiteSpanManager;

    .line 67
    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteQuery;->getSql()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lio/sentry/android/sqlite/SentrySupportSQLiteDatabase$query$4;

    invoke-direct {v2, p0, p1, p2}, Lio/sentry/android/sqlite/SentrySupportSQLiteDatabase$query$4;-><init>(Lio/sentry/android/sqlite/SentrySupportSQLiteDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Landroid/os/CancellationSignal;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1, v2}, Lio/sentry/android/sqlite/SQLiteSpanManager;->performSql(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/database/Cursor;

    return-object p0
.end method

.method public query(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    const-string v0, "query"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/sentry/android/sqlite/SentrySupportSQLiteDatabase;->sqLiteSpanManager:Lio/sentry/android/sqlite/SQLiteSpanManager;

    .line 46
    new-instance v1, Lio/sentry/android/sqlite/SentrySupportSQLiteDatabase$query$1;

    invoke-direct {v1, p0, p1}, Lio/sentry/android/sqlite/SentrySupportSQLiteDatabase$query$1;-><init>(Lio/sentry/android/sqlite/SentrySupportSQLiteDatabase;Ljava/lang/String;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, p1, v1}, Lio/sentry/android/sqlite/SQLiteSpanManager;->performSql(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/database/Cursor;

    return-object p0
.end method

.method public query(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;
    .locals 2

    const-string v0, "query"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bindArgs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/sentry/android/sqlite/SentrySupportSQLiteDatabase;->sqLiteSpanManager:Lio/sentry/android/sqlite/SQLiteSpanManager;

    .line 52
    new-instance v1, Lio/sentry/android/sqlite/SentrySupportSQLiteDatabase$query$2;

    invoke-direct {v1, p0, p1, p2}, Lio/sentry/android/sqlite/SentrySupportSQLiteDatabase$query$2;-><init>(Lio/sentry/android/sqlite/SentrySupportSQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, p1, v1}, Lio/sentry/android/sqlite/SQLiteSpanManager;->performSql(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/database/Cursor;

    return-object p0
.end method

.method public setForeignKeyConstraintsEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lio/sentry/android/sqlite/SentrySupportSQLiteDatabase;->delegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {p0, p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->setForeignKeyConstraintsEnabled(Z)V

    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 1

    const-string v0, "locale"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lio/sentry/android/sqlite/SentrySupportSQLiteDatabase;->delegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {p0, p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->setLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public setMaxSqlCacheSize(I)V
    .locals 0

    iget-object p0, p0, Lio/sentry/android/sqlite/SentrySupportSQLiteDatabase;->delegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {p0, p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->setMaxSqlCacheSize(I)V

    return-void
.end method

.method public setMaximumSize(J)J
    .locals 0

    iget-object p0, p0, Lio/sentry/android/sqlite/SentrySupportSQLiteDatabase;->delegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {p0, p1, p2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->setMaximumSize(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public setPageSize(J)V
    .locals 0

    iget-object p0, p0, Lio/sentry/android/sqlite/SentrySupportSQLiteDatabase;->delegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {p0, p1, p2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->setPageSize(J)V

    return-void
.end method

.method public setTransactionSuccessful()V
    .locals 0

    iget-object p0, p0, Lio/sentry/android/sqlite/SentrySupportSQLiteDatabase;->delegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->setTransactionSuccessful()V

    return-void
.end method

.method public setVersion(I)V
    .locals 0

    iget-object p0, p0, Lio/sentry/android/sqlite/SentrySupportSQLiteDatabase;->delegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {p0, p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->setVersion(I)V

    return-void
.end method

.method public update(Ljava/lang/String;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 7

    const-string v0, "table"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lio/sentry/android/sqlite/SentrySupportSQLiteDatabase;->delegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Landroidx/sqlite/db/SupportSQLiteDatabase;->update(Ljava/lang/String;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public yieldIfContendedSafely()Z
    .locals 0

    iget-object p0, p0, Lio/sentry/android/sqlite/SentrySupportSQLiteDatabase;->delegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->yieldIfContendedSafely()Z

    move-result p0

    return p0
.end method

.method public yieldIfContendedSafely(J)Z
    .locals 0

    iget-object p0, p0, Lio/sentry/android/sqlite/SentrySupportSQLiteDatabase;->delegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {p0, p1, p2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->yieldIfContendedSafely(J)Z

    move-result p0

    return p0
.end method
