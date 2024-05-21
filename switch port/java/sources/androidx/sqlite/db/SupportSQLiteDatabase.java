package androidx.sqlite.db;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteTransactionListener;
import android.os.CancellationSignal;
import android.util.Pair;
import io.sentry.protocol.Device;
import java.io.Closeable;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SupportSQLiteDatabase.kt */
@Metadata(d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\bf\u0018\u00002\u00020\u0001J\b\u0010!\u001a\u00020\"H&J\b\u0010#\u001a\u00020\"H&J\u0010\u0010$\u001a\u00020\"2\u0006\u0010%\u001a\u00020&H&J\u0010\u0010'\u001a\u00020\"2\u0006\u0010%\u001a\u00020&H&J\u0010\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020\u0005H&J3\u0010+\u001a\u00020\u001c2\u0006\u0010,\u001a\u00020\u00052\b\u0010-\u001a\u0004\u0018\u00010\u00052\u0012\u0010.\u001a\u000e\u0012\b\b\u0001\u0012\u0004\u0018\u000100\u0018\u00010/H&¢\u0006\u0002\u00101J\b\u00102\u001a\u00020\"H'J\b\u00103\u001a\u00020\tH&J\b\u00104\u001a\u00020\"H&J+\u00105\u001a\u00020\"2\u0006\u0010*\u001a\u00020\u00052\u0014\b\u0001\u00106\u001a\u000e\u0012\b\b\u0001\u0012\u0004\u0018\u000100\u0018\u00010/H\u0016¢\u0006\u0002\u00107J\u0010\u00108\u001a\u00020\"2\u0006\u0010*\u001a\u00020\u0005H&J'\u00108\u001a\u00020\"2\u0006\u0010*\u001a\u00020\u00052\u0010\u00106\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u0001000/H&¢\u0006\u0002\u00107J\b\u00109\u001a\u00020\tH&J \u0010:\u001a\u00020\u00112\u0006\u0010,\u001a\u00020\u00052\u0006\u0010;\u001a\u00020\u001c2\u0006\u0010<\u001a\u00020=H&J\u0010\u0010>\u001a\u00020\t2\u0006\u0010?\u001a\u00020\u001cH&J\u0010\u0010@\u001a\u00020A2\u0006\u0010@\u001a\u00020BH&J\u001a\u0010@\u001a\u00020A2\u0006\u0010@\u001a\u00020B2\b\u0010C\u001a\u0004\u0018\u00010DH'J\u0010\u0010@\u001a\u00020A2\u0006\u0010@\u001a\u00020\u0005H&J'\u0010@\u001a\u00020A2\u0006\u0010@\u001a\u00020\u00052\u0010\u00106\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u0001000/H&¢\u0006\u0002\u0010EJ\u0010\u0010F\u001a\u00020\"2\u0006\u0010G\u001a\u00020\tH'J\u0010\u0010H\u001a\u00020\"2\u0006\u0010I\u001a\u00020JH&J\u0010\u0010K\u001a\u00020\"2\u0006\u0010L\u001a\u00020\u001cH&J\u0010\u0010M\u001a\u00020\u00112\u0006\u0010N\u001a\u00020\u0011H&J\b\u0010O\u001a\u00020\"H&JC\u0010P\u001a\u00020\u001c2\u0006\u0010,\u001a\u00020\u00052\u0006\u0010;\u001a\u00020\u001c2\u0006\u0010<\u001a\u00020=2\b\u0010-\u001a\u0004\u0018\u00010\u00052\u0012\u0010.\u001a\u000e\u0012\b\b\u0001\u0012\u0004\u0018\u000100\u0018\u00010/H&¢\u0006\u0002\u0010QJ\b\u0010R\u001a\u00020\tH&J\u0010\u0010R\u001a\u00020\t2\u0006\u0010S\u001a\u00020\u0011H&R(\u0010\u0002\u001a\u0016\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0004\u0018\u00010\u00038fX¦\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007R\u0012\u0010\b\u001a\u00020\tX¦\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\nR\u0012\u0010\u000b\u001a\u00020\tX¦\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\nR\u0014\u0010\f\u001a\u00020\t8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\nR\u0012\u0010\r\u001a\u00020\tX¦\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\nR\u0012\u0010\u000e\u001a\u00020\tX¦\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\nR\u0014\u0010\u000f\u001a\u00020\t8gX¦\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\nR\u0012\u0010\u0010\u001a\u00020\u0011X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013R\u0018\u0010\u0014\u001a\u00020\u0011X¦\u000e¢\u0006\f\u001a\u0004\b\u0015\u0010\u0013\"\u0004\b\u0016\u0010\u0017R\u0014\u0010\u0018\u001a\u0004\u0018\u00010\u0005X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u001aR\u0018\u0010\u001b\u001a\u00020\u001cX¦\u000e¢\u0006\f\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006TÀ\u0006\u0001"}, d2 = {"Landroidx/sqlite/db/SupportSQLiteDatabase;", "Ljava/io/Closeable;", "attachedDbs", "", "Landroid/util/Pair;", "", "getAttachedDbs", "()Ljava/util/List;", "isDatabaseIntegrityOk", "", "()Z", "isDbLockedByCurrentThread", "isExecPerConnectionSQLSupported", "isOpen", "isReadOnly", "isWriteAheadLoggingEnabled", "maximumSize", "", "getMaximumSize", "()J", "pageSize", "getPageSize", "setPageSize", "(J)V", "path", "getPath", "()Ljava/lang/String;", "version", "", "getVersion", "()I", "setVersion", "(I)V", "beginTransaction", "", "beginTransactionNonExclusive", "beginTransactionWithListener", "transactionListener", "Landroid/database/sqlite/SQLiteTransactionListener;", "beginTransactionWithListenerNonExclusive", "compileStatement", "Landroidx/sqlite/db/SupportSQLiteStatement;", "sql", "delete", "table", "whereClause", "whereArgs", "", "", "(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I", "disableWriteAheadLogging", "enableWriteAheadLogging", "endTransaction", "execPerConnectionSQL", "bindArgs", "(Ljava/lang/String;[Ljava/lang/Object;)V", "execSQL", "inTransaction", "insert", "conflictAlgorithm", "values", "Landroid/content/ContentValues;", "needUpgrade", "newVersion", "query", "Landroid/database/Cursor;", "Landroidx/sqlite/db/SupportSQLiteQuery;", "cancellationSignal", "Landroid/os/CancellationSignal;", "(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;", "setForeignKeyConstraintsEnabled", "enabled", "setLocale", Device.JsonKeys.LOCALE, "Ljava/util/Locale;", "setMaxSqlCacheSize", "cacheSize", "setMaximumSize", "numBytes", "setTransactionSuccessful", "update", "(Ljava/lang/String;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;)I", "yieldIfContendedSafely", "sleepAfterYieldDelayMillis", "sqlite_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public interface SupportSQLiteDatabase extends Closeable {
    void beginTransaction();

    void beginTransactionNonExclusive();

    void beginTransactionWithListener(SQLiteTransactionListener transactionListener);

    void beginTransactionWithListenerNonExclusive(SQLiteTransactionListener transactionListener);

    SupportSQLiteStatement compileStatement(String sql);

    int delete(String table, String whereClause, Object[] whereArgs);

    void disableWriteAheadLogging();

    boolean enableWriteAheadLogging();

    void endTransaction();

    void execSQL(String sql) throws SQLException;

    void execSQL(String sql, Object[] bindArgs) throws SQLException;

    List<Pair<String, String>> getAttachedDbs();

    long getMaximumSize();

    long getPageSize();

    String getPath();

    int getVersion();

    boolean inTransaction();

    long insert(String table, int conflictAlgorithm, ContentValues values) throws SQLException;

    boolean isDatabaseIntegrityOk();

    boolean isDbLockedByCurrentThread();

    default boolean isExecPerConnectionSQLSupported() {
        return false;
    }

    boolean isOpen();

    boolean isReadOnly();

    boolean isWriteAheadLoggingEnabled();

    boolean needUpgrade(int newVersion);

    Cursor query(SupportSQLiteQuery query);

    Cursor query(SupportSQLiteQuery query, CancellationSignal cancellationSignal);

    Cursor query(String query);

    Cursor query(String query, Object[] bindArgs);

    void setForeignKeyConstraintsEnabled(boolean enabled);

    void setLocale(Locale locale);

    void setMaxSqlCacheSize(int cacheSize);

    long setMaximumSize(long numBytes);

    void setPageSize(long j);

    void setTransactionSuccessful();

    void setVersion(int i);

    int update(String table, int conflictAlgorithm, ContentValues values, String whereClause, Object[] whereArgs);

    boolean yieldIfContendedSafely();

    boolean yieldIfContendedSafely(long sleepAfterYieldDelayMillis);

    default void execPerConnectionSQL(String sql, Object[] bindArgs) {
        Intrinsics.checkNotNullParameter(sql, "sql");
        throw new UnsupportedOperationException();
    }
}
