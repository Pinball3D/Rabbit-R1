package io.sentry.android.sqlite;

import androidx.sqlite.db.SupportSQLiteStatement;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SentrySupportSQLiteStatement.kt */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\t\n\u0002\b\n\b\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0019\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0096\u0001J\u0019\u0010\u000e\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000fH\u0096\u0001J\u0019\u0010\u0010\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0011H\u0096\u0001J\u0011\u0010\u0012\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0096\u0001J\u0019\u0010\u0013\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0006H\u0096\u0001J\t\u0010\u0014\u001a\u00020\tH\u0096\u0001J\t\u0010\u0015\u001a\u00020\tH\u0096\u0001J\b\u0010\u0016\u001a\u00020\tH\u0016J\b\u0010\u0017\u001a\u00020\u0011H\u0016J\b\u0010\u0018\u001a\u00020\u000bH\u0016J\b\u0010\u0019\u001a\u00020\u0011H\u0016J\n\u0010\u001a\u001a\u0004\u0018\u00010\u0006H\u0016R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Lio/sentry/android/sqlite/SentrySupportSQLiteStatement;", "Landroidx/sqlite/db/SupportSQLiteStatement;", "delegate", "sqLiteSpanManager", "Lio/sentry/android/sqlite/SQLiteSpanManager;", "sql", "", "(Landroidx/sqlite/db/SupportSQLiteStatement;Lio/sentry/android/sqlite/SQLiteSpanManager;Ljava/lang/String;)V", "bindBlob", "", "index", "", "value", "", "bindDouble", "", "bindLong", "", "bindNull", "bindString", "clearBindings", "close", "execute", "executeInsert", "executeUpdateDelete", "simpleQueryForLong", "simpleQueryForString", "sentry-android-sqlite_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class SentrySupportSQLiteStatement implements SupportSQLiteStatement {
    private final SupportSQLiteStatement delegate;
    private final SQLiteSpanManager sqLiteSpanManager;
    private final String sql;

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void bindBlob(int index, byte[] value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.delegate.bindBlob(index, value);
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void bindDouble(int index, double value) {
        this.delegate.bindDouble(index, value);
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void bindLong(int index, long value) {
        this.delegate.bindLong(index, value);
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void bindNull(int index) {
        this.delegate.bindNull(index);
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void bindString(int index, String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.delegate.bindString(index, value);
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void clearBindings() {
        this.delegate.clearBindings();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.delegate.close();
    }

    public SentrySupportSQLiteStatement(SupportSQLiteStatement delegate, SQLiteSpanManager sqLiteSpanManager, String sql) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        Intrinsics.checkNotNullParameter(sqLiteSpanManager, "sqLiteSpanManager");
        Intrinsics.checkNotNullParameter(sql, "sql");
        this.delegate = delegate;
        this.sqLiteSpanManager = sqLiteSpanManager;
        this.sql = sql;
    }

    @Override // androidx.sqlite.db.SupportSQLiteStatement
    public void execute() {
        this.sqLiteSpanManager.performSql(this.sql, new Function0<Unit>() { // from class: io.sentry.android.sqlite.SentrySupportSQLiteStatement$execute$1
            /* JADX INFO: Access modifiers changed from: package-private */
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
                SupportSQLiteStatement supportSQLiteStatement;
                supportSQLiteStatement = SentrySupportSQLiteStatement.this.delegate;
                supportSQLiteStatement.execute();
            }
        });
    }

    @Override // androidx.sqlite.db.SupportSQLiteStatement
    public int executeUpdateDelete() {
        return ((Number) this.sqLiteSpanManager.performSql(this.sql, new Function0<Integer>() { // from class: io.sentry.android.sqlite.SentrySupportSQLiteStatement$executeUpdateDelete$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Integer invoke() {
                SupportSQLiteStatement supportSQLiteStatement;
                supportSQLiteStatement = SentrySupportSQLiteStatement.this.delegate;
                return Integer.valueOf(supportSQLiteStatement.executeUpdateDelete());
            }
        })).intValue();
    }

    @Override // androidx.sqlite.db.SupportSQLiteStatement
    public long executeInsert() {
        return ((Number) this.sqLiteSpanManager.performSql(this.sql, new Function0<Long>() { // from class: io.sentry.android.sqlite.SentrySupportSQLiteStatement$executeInsert$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Long invoke() {
                SupportSQLiteStatement supportSQLiteStatement;
                supportSQLiteStatement = SentrySupportSQLiteStatement.this.delegate;
                return Long.valueOf(supportSQLiteStatement.executeInsert());
            }
        })).longValue();
    }

    @Override // androidx.sqlite.db.SupportSQLiteStatement
    public long simpleQueryForLong() {
        return ((Number) this.sqLiteSpanManager.performSql(this.sql, new Function0<Long>() { // from class: io.sentry.android.sqlite.SentrySupportSQLiteStatement$simpleQueryForLong$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Long invoke() {
                SupportSQLiteStatement supportSQLiteStatement;
                supportSQLiteStatement = SentrySupportSQLiteStatement.this.delegate;
                return Long.valueOf(supportSQLiteStatement.simpleQueryForLong());
            }
        })).longValue();
    }

    @Override // androidx.sqlite.db.SupportSQLiteStatement
    public String simpleQueryForString() {
        return (String) this.sqLiteSpanManager.performSql(this.sql, new Function0<String>() { // from class: io.sentry.android.sqlite.SentrySupportSQLiteStatement$simpleQueryForString$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final String invoke() {
                SupportSQLiteStatement supportSQLiteStatement;
                supportSQLiteStatement = SentrySupportSQLiteStatement.this.delegate;
                return supportSQLiteStatement.simpleQueryForString();
            }
        });
    }
}
