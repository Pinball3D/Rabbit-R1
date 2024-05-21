.class public interface abstract Landroidx/sqlite/db/SupportSQLiteDatabase;
.super Ljava/lang/Object;
.source "SupportSQLiteDatabase.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0002\u0008\n\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010!\u001a\u00020\"H&J\u0008\u0010#\u001a\u00020\"H&J\u0010\u0010$\u001a\u00020\"2\u0006\u0010%\u001a\u00020&H&J\u0010\u0010\'\u001a\u00020\"2\u0006\u0010%\u001a\u00020&H&J\u0010\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020\u0005H&J3\u0010+\u001a\u00020\u001c2\u0006\u0010,\u001a\u00020\u00052\u0008\u0010-\u001a\u0004\u0018\u00010\u00052\u0012\u0010.\u001a\u000e\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u000100\u0018\u00010/H&\u00a2\u0006\u0002\u00101J\u0008\u00102\u001a\u00020\"H\'J\u0008\u00103\u001a\u00020\tH&J\u0008\u00104\u001a\u00020\"H&J+\u00105\u001a\u00020\"2\u0006\u0010*\u001a\u00020\u00052\u0014\u0008\u0001\u00106\u001a\u000e\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u000100\u0018\u00010/H\u0016\u00a2\u0006\u0002\u00107J\u0010\u00108\u001a\u00020\"2\u0006\u0010*\u001a\u00020\u0005H&J\'\u00108\u001a\u00020\"2\u0006\u0010*\u001a\u00020\u00052\u0010\u00106\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u0001000/H&\u00a2\u0006\u0002\u00107J\u0008\u00109\u001a\u00020\tH&J \u0010:\u001a\u00020\u00112\u0006\u0010,\u001a\u00020\u00052\u0006\u0010;\u001a\u00020\u001c2\u0006\u0010<\u001a\u00020=H&J\u0010\u0010>\u001a\u00020\t2\u0006\u0010?\u001a\u00020\u001cH&J\u0010\u0010@\u001a\u00020A2\u0006\u0010@\u001a\u00020BH&J\u001a\u0010@\u001a\u00020A2\u0006\u0010@\u001a\u00020B2\u0008\u0010C\u001a\u0004\u0018\u00010DH\'J\u0010\u0010@\u001a\u00020A2\u0006\u0010@\u001a\u00020\u0005H&J\'\u0010@\u001a\u00020A2\u0006\u0010@\u001a\u00020\u00052\u0010\u00106\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u0001000/H&\u00a2\u0006\u0002\u0010EJ\u0010\u0010F\u001a\u00020\"2\u0006\u0010G\u001a\u00020\tH\'J\u0010\u0010H\u001a\u00020\"2\u0006\u0010I\u001a\u00020JH&J\u0010\u0010K\u001a\u00020\"2\u0006\u0010L\u001a\u00020\u001cH&J\u0010\u0010M\u001a\u00020\u00112\u0006\u0010N\u001a\u00020\u0011H&J\u0008\u0010O\u001a\u00020\"H&JC\u0010P\u001a\u00020\u001c2\u0006\u0010,\u001a\u00020\u00052\u0006\u0010;\u001a\u00020\u001c2\u0006\u0010<\u001a\u00020=2\u0008\u0010-\u001a\u0004\u0018\u00010\u00052\u0012\u0010.\u001a\u000e\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u000100\u0018\u00010/H&\u00a2\u0006\u0002\u0010QJ\u0008\u0010R\u001a\u00020\tH&J\u0010\u0010R\u001a\u00020\t2\u0006\u0010S\u001a\u00020\u0011H&R(\u0010\u0002\u001a\u0016\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0004\u0018\u00010\u00038fX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007R\u0012\u0010\u0008\u001a\u00020\tX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\nR\u0012\u0010\u000b\u001a\u00020\tX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\nR\u0014\u0010\u000c\u001a\u00020\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\nR\u0012\u0010\r\u001a\u00020\tX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\nR\u0012\u0010\u000e\u001a\u00020\tX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\nR\u0014\u0010\u000f\u001a\u00020\t8gX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\nR\u0012\u0010\u0010\u001a\u00020\u0011X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013R\u0018\u0010\u0014\u001a\u00020\u0011X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0015\u0010\u0013\"\u0004\u0008\u0016\u0010\u0017R\u0014\u0010\u0018\u001a\u0004\u0018\u00010\u0005X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u001aR\u0018\u0010\u001b\u001a\u00020\u001cX\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 \u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006T\u00c0\u0006\u0001"
    }
    d2 = {
        "Landroidx/sqlite/db/SupportSQLiteDatabase;",
        "Ljava/io/Closeable;",
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
        "sqlite_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract beginTransaction()V
.end method

.method public abstract beginTransactionNonExclusive()V
.end method

.method public abstract beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V
.end method

.method public abstract beginTransactionWithListenerNonExclusive(Landroid/database/sqlite/SQLiteTransactionListener;)V
.end method

.method public abstract compileStatement(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteStatement;
.end method

.method public abstract delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
.end method

.method public abstract disableWriteAheadLogging()V
.end method

.method public abstract enableWriteAheadLogging()Z
.end method

.method public abstract endTransaction()V
.end method

.method public execPerConnectionSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    const-string p0, "sql"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public abstract execSQL(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation
.end method

.method public abstract execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation
.end method

.method public abstract getAttachedDbs()Ljava/util/List;
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
.end method

.method public abstract getMaximumSize()J
.end method

.method public abstract getPageSize()J
.end method

.method public abstract getPath()Ljava/lang/String;
.end method

.method public abstract getVersion()I
.end method

.method public abstract inTransaction()Z
.end method

.method public abstract insert(Ljava/lang/String;ILandroid/content/ContentValues;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation
.end method

.method public abstract isDatabaseIntegrityOk()Z
.end method

.method public abstract isDbLockedByCurrentThread()Z
.end method

.method public isExecPerConnectionSQLSupported()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract isOpen()Z
.end method

.method public abstract isReadOnly()Z
.end method

.method public abstract isWriteAheadLoggingEnabled()Z
.end method

.method public abstract needUpgrade(I)Z
.end method

.method public abstract query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;
.end method

.method public abstract query(Landroidx/sqlite/db/SupportSQLiteQuery;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
.end method

.method public abstract query(Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public abstract query(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;
.end method

.method public abstract setForeignKeyConstraintsEnabled(Z)V
.end method

.method public abstract setLocale(Ljava/util/Locale;)V
.end method

.method public abstract setMaxSqlCacheSize(I)V
.end method

.method public abstract setMaximumSize(J)J
.end method

.method public abstract setPageSize(J)V
.end method

.method public abstract setTransactionSuccessful()V
.end method

.method public abstract setVersion(I)V
.end method

.method public abstract update(Ljava/lang/String;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;)I
.end method

.method public abstract yieldIfContendedSafely()Z
.end method

.method public abstract yieldIfContendedSafely(J)Z
.end method
