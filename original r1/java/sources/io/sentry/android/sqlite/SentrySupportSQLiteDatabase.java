package io.sentry.android.sqlite;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteTransactionListener;
import android.os.CancellationSignal;
import android.util.Pair;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteQuery;
import androidx.sqlite.db.SupportSQLiteStatement;
import io.sentry.protocol.Device;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SentrySupportSQLiteDatabase.kt */
@Metadata(d1 = {"\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\b\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\t\u0010%\u001a\u00020&H\u0096\u0001J\t\u0010'\u001a\u00020&H\u0096\u0001J\u0011\u0010(\u001a\u00020&2\u0006\u0010)\u001a\u00020*H\u0096\u0001J\u0011\u0010+\u001a\u00020&2\u0006\u0010)\u001a\u00020*H\u0096\u0001J\t\u0010,\u001a\u00020&H\u0096\u0001J\u0010\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u00020\tH\u0016J4\u00100\u001a\u00020 2\u0006\u00101\u001a\u00020\t2\b\u00102\u001a\u0004\u0018\u00010\t2\u0012\u00103\u001a\u000e\u0012\b\b\u0001\u0012\u0004\u0018\u000105\u0018\u000104H\u0096\u0001¢\u0006\u0002\u00106J\t\u00107\u001a\u00020&H\u0097\u0001J\t\u00108\u001a\u00020\rH\u0096\u0001J\t\u00109\u001a\u00020&H\u0096\u0001J+\u0010:\u001a\u00020&2\u0006\u0010/\u001a\u00020\t2\u0014\b\u0001\u0010;\u001a\u000e\u0012\b\b\u0001\u0012\u0004\u0018\u000105\u0018\u000104H\u0016¢\u0006\u0002\u0010<J\u0010\u0010=\u001a\u00020&2\u0006\u0010/\u001a\u00020\tH\u0016J'\u0010=\u001a\u00020&2\u0006\u0010/\u001a\u00020\t2\u0010\u0010;\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010504H\u0016¢\u0006\u0002\u0010<J\t\u0010>\u001a\u00020\rH\u0096\u0001J!\u0010?\u001a\u00020\u00152\u0006\u00101\u001a\u00020\t2\u0006\u0010@\u001a\u00020 2\u0006\u0010A\u001a\u00020BH\u0096\u0001J\u0011\u0010C\u001a\u00020\r2\u0006\u0010D\u001a\u00020 H\u0096\u0001J\u0010\u0010E\u001a\u00020F2\u0006\u0010E\u001a\u00020GH\u0016J\u001a\u0010E\u001a\u00020F2\u0006\u0010E\u001a\u00020G2\b\u0010H\u001a\u0004\u0018\u00010IH\u0016J\u0010\u0010E\u001a\u00020F2\u0006\u0010E\u001a\u00020\tH\u0016J'\u0010E\u001a\u00020F2\u0006\u0010E\u001a\u00020\t2\u0010\u0010;\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010504H\u0016¢\u0006\u0002\u0010JJ\u0011\u0010K\u001a\u00020&2\u0006\u0010L\u001a\u00020\rH\u0097\u0001J\u0011\u0010M\u001a\u00020&2\u0006\u0010N\u001a\u00020OH\u0096\u0001J\u0011\u0010P\u001a\u00020&2\u0006\u0010Q\u001a\u00020 H\u0096\u0001J\u0011\u0010R\u001a\u00020\u00152\u0006\u0010S\u001a\u00020\u0015H\u0096\u0001J\t\u0010T\u001a\u00020&H\u0096\u0001JD\u0010U\u001a\u00020 2\u0006\u00101\u001a\u00020\t2\u0006\u0010@\u001a\u00020 2\u0006\u0010A\u001a\u00020B2\b\u00102\u001a\u0004\u0018\u00010\t2\u0012\u00103\u001a\u000e\u0012\b\b\u0001\u0012\u0004\u0018\u000105\u0018\u000104H\u0096\u0001¢\u0006\u0002\u0010VJ\t\u0010W\u001a\u00020\rH\u0096\u0001J\u0011\u0010W\u001a\u00020\r2\u0006\u0010X\u001a\u00020\u0015H\u0096\u0001R(\u0010\u0006\u001a\u0016\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\b\u0018\u00010\u00078VX\u0096\u0005¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u00020\rX\u0096\u0005¢\u0006\u0006\u001a\u0004\b\f\u0010\u000eR\u0012\u0010\u000f\u001a\u00020\rX\u0096\u0005¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u000eR\u0014\u0010\u0010\u001a\u00020\r8VX\u0096\u0005¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u000eR\u0012\u0010\u0011\u001a\u00020\rX\u0096\u0005¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u000eR\u0012\u0010\u0012\u001a\u00020\rX\u0096\u0005¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u000eR\u0014\u0010\u0013\u001a\u00020\r8WX\u0096\u0005¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u000eR\u0012\u0010\u0014\u001a\u00020\u0015X\u0096\u0005¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0017R\u0018\u0010\u0018\u001a\u00020\u0015X\u0096\u000f¢\u0006\f\u001a\u0004\b\u0019\u0010\u0017\"\u0004\b\u001a\u0010\u001bR\u0014\u0010\u001c\u001a\u0004\u0018\u00010\tX\u0096\u0005¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001eR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\u001f\u001a\u00020 X\u0096\u000f¢\u0006\f\u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$¨\u0006Y"}, d2 = {"Lio/sentry/android/sqlite/SentrySupportSQLiteDatabase;", "Landroidx/sqlite/db/SupportSQLiteDatabase;", "delegate", "sqLiteSpanManager", "Lio/sentry/android/sqlite/SQLiteSpanManager;", "(Landroidx/sqlite/db/SupportSQLiteDatabase;Lio/sentry/android/sqlite/SQLiteSpanManager;)V", "attachedDbs", "", "Landroid/util/Pair;", "", "getAttachedDbs", "()Ljava/util/List;", "isDatabaseIntegrityOk", "", "()Z", "isDbLockedByCurrentThread", "isExecPerConnectionSQLSupported", "isOpen", "isReadOnly", "isWriteAheadLoggingEnabled", "maximumSize", "", "getMaximumSize", "()J", "pageSize", "getPageSize", "setPageSize", "(J)V", "path", "getPath", "()Ljava/lang/String;", "version", "", "getVersion", "()I", "setVersion", "(I)V", "beginTransaction", "", "beginTransactionNonExclusive", "beginTransactionWithListener", "transactionListener", "Landroid/database/sqlite/SQLiteTransactionListener;", "beginTransactionWithListenerNonExclusive", "close", "compileStatement", "Landroidx/sqlite/db/SupportSQLiteStatement;", "sql", "delete", "table", "whereClause", "whereArgs", "", "", "(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I", "disableWriteAheadLogging", "enableWriteAheadLogging", "endTransaction", "execPerConnectionSQL", "bindArgs", "(Ljava/lang/String;[Ljava/lang/Object;)V", "execSQL", "inTransaction", "insert", "conflictAlgorithm", "values", "Landroid/content/ContentValues;", "needUpgrade", "newVersion", "query", "Landroid/database/Cursor;", "Landroidx/sqlite/db/SupportSQLiteQuery;", "cancellationSignal", "Landroid/os/CancellationSignal;", "(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;", "setForeignKeyConstraintsEnabled", "enabled", "setLocale", Device.JsonKeys.LOCALE, "Ljava/util/Locale;", "setMaxSqlCacheSize", "cacheSize", "setMaximumSize", "numBytes", "setTransactionSuccessful", "update", "(Ljava/lang/String;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;)I", "yieldIfContendedSafely", "sleepAfterYieldDelayMillis", "sentry-android-sqlite_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class SentrySupportSQLiteDatabase implements SupportSQLiteDatabase {
    private final SupportSQLiteDatabase delegate;
    private final SQLiteSpanManager sqLiteSpanManager;

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public void beginTransaction() {
        this.delegate.beginTransaction();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public void beginTransactionNonExclusive() {
        this.delegate.beginTransactionNonExclusive();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public void beginTransactionWithListener(SQLiteTransactionListener transactionListener) {
        Intrinsics.checkNotNullParameter(transactionListener, "transactionListener");
        this.delegate.beginTransactionWithListener(transactionListener);
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public void beginTransactionWithListenerNonExclusive(SQLiteTransactionListener transactionListener) {
        Intrinsics.checkNotNullParameter(transactionListener, "transactionListener");
        this.delegate.beginTransactionWithListenerNonExclusive(transactionListener);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.delegate.close();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public int delete(String table, String whereClause, Object[] whereArgs) {
        Intrinsics.checkNotNullParameter(table, "table");
        return this.delegate.delete(table, whereClause, whereArgs);
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public void disableWriteAheadLogging() {
        this.delegate.disableWriteAheadLogging();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public boolean enableWriteAheadLogging() {
        return this.delegate.enableWriteAheadLogging();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public void endTransaction() {
        this.delegate.endTransaction();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public List<Pair<String, String>> getAttachedDbs() {
        return this.delegate.getAttachedDbs();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public long getMaximumSize() {
        return this.delegate.getMaximumSize();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public long getPageSize() {
        return this.delegate.getPageSize();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public String getPath() {
        return this.delegate.getPath();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public int getVersion() {
        return this.delegate.getVersion();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public boolean inTransaction() {
        return this.delegate.inTransaction();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public long insert(String table, int conflictAlgorithm, ContentValues values) {
        Intrinsics.checkNotNullParameter(table, "table");
        Intrinsics.checkNotNullParameter(values, "values");
        return this.delegate.insert(table, conflictAlgorithm, values);
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public boolean isDatabaseIntegrityOk() {
        return this.delegate.isDatabaseIntegrityOk();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public boolean isDbLockedByCurrentThread() {
        return this.delegate.isDbLockedByCurrentThread();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public boolean isExecPerConnectionSQLSupported() {
        return this.delegate.isExecPerConnectionSQLSupported();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public boolean isOpen() {
        return this.delegate.isOpen();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public boolean isReadOnly() {
        return this.delegate.isReadOnly();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public boolean isWriteAheadLoggingEnabled() {
        return this.delegate.isWriteAheadLoggingEnabled();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public boolean needUpgrade(int newVersion) {
        return this.delegate.needUpgrade(newVersion);
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public void setForeignKeyConstraintsEnabled(boolean enabled) {
        this.delegate.setForeignKeyConstraintsEnabled(enabled);
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public void setLocale(Locale locale) {
        Intrinsics.checkNotNullParameter(locale, "locale");
        this.delegate.setLocale(locale);
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public void setMaxSqlCacheSize(int cacheSize) {
        this.delegate.setMaxSqlCacheSize(cacheSize);
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public long setMaximumSize(long numBytes) {
        return this.delegate.setMaximumSize(numBytes);
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public void setPageSize(long j) {
        this.delegate.setPageSize(j);
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public void setTransactionSuccessful() {
        this.delegate.setTransactionSuccessful();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public void setVersion(int i) {
        this.delegate.setVersion(i);
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public int update(String table, int conflictAlgorithm, ContentValues values, String whereClause, Object[] whereArgs) {
        Intrinsics.checkNotNullParameter(table, "table");
        Intrinsics.checkNotNullParameter(values, "values");
        return this.delegate.update(table, conflictAlgorithm, values, whereClause, whereArgs);
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public boolean yieldIfContendedSafely() {
        return this.delegate.yieldIfContendedSafely();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public boolean yieldIfContendedSafely(long sleepAfterYieldDelayMillis) {
        return this.delegate.yieldIfContendedSafely(sleepAfterYieldDelayMillis);
    }

    public SentrySupportSQLiteDatabase(SupportSQLiteDatabase delegate, SQLiteSpanManager sqLiteSpanManager) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        Intrinsics.checkNotNullParameter(sqLiteSpanManager, "sqLiteSpanManager");
        this.delegate = delegate;
        this.sqLiteSpanManager = sqLiteSpanManager;
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public SupportSQLiteStatement compileStatement(String sql) {
        Intrinsics.checkNotNullParameter(sql, "sql");
        return new SentrySupportSQLiteStatement(this.delegate.compileStatement(sql), this.sqLiteSpanManager, sql);
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public void execPerConnectionSQL(final String sql, final Object[] bindArgs) {
        Intrinsics.checkNotNullParameter(sql, "sql");
        this.sqLiteSpanManager.performSql(sql, new Function0<Unit>() { // from class: io.sentry.android.sqlite.SentrySupportSQLiteDatabase$execPerConnectionSQL$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                SupportSQLiteDatabase supportSQLiteDatabase;
                supportSQLiteDatabase = SentrySupportSQLiteDatabase.this.delegate;
                supportSQLiteDatabase.execPerConnectionSQL(sql, bindArgs);
            }
        });
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public Cursor query(final String query) {
        Intrinsics.checkNotNullParameter(query, "query");
        return (Cursor) this.sqLiteSpanManager.performSql(query, new Function0<Cursor>() { // from class: io.sentry.android.sqlite.SentrySupportSQLiteDatabase$query$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Cursor invoke() {
                SupportSQLiteDatabase supportSQLiteDatabase;
                supportSQLiteDatabase = SentrySupportSQLiteDatabase.this.delegate;
                return supportSQLiteDatabase.query(query);
            }
        });
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public Cursor query(final String query, final Object[] bindArgs) {
        Intrinsics.checkNotNullParameter(query, "query");
        Intrinsics.checkNotNullParameter(bindArgs, "bindArgs");
        return (Cursor) this.sqLiteSpanManager.performSql(query, new Function0<Cursor>() { // from class: io.sentry.android.sqlite.SentrySupportSQLiteDatabase$query$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Cursor invoke() {
                SupportSQLiteDatabase supportSQLiteDatabase;
                supportSQLiteDatabase = SentrySupportSQLiteDatabase.this.delegate;
                return supportSQLiteDatabase.query(query, bindArgs);
            }
        });
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public Cursor query(final SupportSQLiteQuery query) {
        Intrinsics.checkNotNullParameter(query, "query");
        return (Cursor) this.sqLiteSpanManager.performSql(query.getQuery(), new Function0<Cursor>() { // from class: io.sentry.android.sqlite.SentrySupportSQLiteDatabase$query$3
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Cursor invoke() {
                SupportSQLiteDatabase supportSQLiteDatabase;
                supportSQLiteDatabase = SentrySupportSQLiteDatabase.this.delegate;
                return supportSQLiteDatabase.query(query);
            }
        });
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public Cursor query(final SupportSQLiteQuery query, final CancellationSignal cancellationSignal) {
        Intrinsics.checkNotNullParameter(query, "query");
        return (Cursor) this.sqLiteSpanManager.performSql(query.getQuery(), new Function0<Cursor>() { // from class: io.sentry.android.sqlite.SentrySupportSQLiteDatabase$query$4
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Cursor invoke() {
                SupportSQLiteDatabase supportSQLiteDatabase;
                supportSQLiteDatabase = SentrySupportSQLiteDatabase.this.delegate;
                return supportSQLiteDatabase.query(query, cancellationSignal);
            }
        });
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public void execSQL(final String sql) throws SQLException {
        Intrinsics.checkNotNullParameter(sql, "sql");
        this.sqLiteSpanManager.performSql(sql, new Function0<Unit>() { // from class: io.sentry.android.sqlite.SentrySupportSQLiteDatabase$execSQL$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                SupportSQLiteDatabase supportSQLiteDatabase;
                supportSQLiteDatabase = SentrySupportSQLiteDatabase.this.delegate;
                supportSQLiteDatabase.execSQL(sql);
            }
        });
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public void execSQL(final String sql, final Object[] bindArgs) throws SQLException {
        Intrinsics.checkNotNullParameter(sql, "sql");
        Intrinsics.checkNotNullParameter(bindArgs, "bindArgs");
        this.sqLiteSpanManager.performSql(sql, new Function0<Unit>() { // from class: io.sentry.android.sqlite.SentrySupportSQLiteDatabase$execSQL$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                SupportSQLiteDatabase supportSQLiteDatabase;
                supportSQLiteDatabase = SentrySupportSQLiteDatabase.this.delegate;
                supportSQLiteDatabase.execSQL(sql, bindArgs);
            }
        });
    }
}
