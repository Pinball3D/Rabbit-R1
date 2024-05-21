package io.sentry.android.sqlite;

import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SentrySupportSQLiteOpenHelper.kt */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0002\u0010\u0003J\t\u0010\u0017\u001a\u00020\u0018H\u0096\u0001J\u0011\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u001bH\u0097\u0001R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0096\u0005¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u00020\t8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR\u001b\u0010\f\u001a\u00020\t8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\r\u0010\u000bR\u001b\u0010\u0010\u001a\u00020\t8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0012\u0010\u000f\u001a\u0004\b\u0011\u0010\u000bR\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\u00020\t8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u000b¨\u0006\u001d"}, d2 = {"Lio/sentry/android/sqlite/SentrySupportSQLiteOpenHelper;", "Landroidx/sqlite/db/SupportSQLiteOpenHelper;", "delegate", "(Landroidx/sqlite/db/SupportSQLiteOpenHelper;)V", "databaseName", "", "getDatabaseName", "()Ljava/lang/String;", "readableDatabase", "Landroidx/sqlite/db/SupportSQLiteDatabase;", "getReadableDatabase", "()Landroidx/sqlite/db/SupportSQLiteDatabase;", "sentryReadableDatabase", "getSentryReadableDatabase", "sentryReadableDatabase$delegate", "Lkotlin/Lazy;", "sentryWritableDatabase", "getSentryWritableDatabase", "sentryWritableDatabase$delegate", "sqLiteSpanManager", "Lio/sentry/android/sqlite/SQLiteSpanManager;", "writableDatabase", "getWritableDatabase", "close", "", "setWriteAheadLoggingEnabled", "enabled", "", "Companion", "sentry-android-sqlite_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class SentrySupportSQLiteOpenHelper implements SupportSQLiteOpenHelper {

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final SupportSQLiteOpenHelper delegate;

    /* renamed from: sentryReadableDatabase$delegate, reason: from kotlin metadata */
    private final Lazy sentryReadableDatabase;

    /* renamed from: sentryWritableDatabase$delegate, reason: from kotlin metadata */
    private final Lazy sentryWritableDatabase;
    private final SQLiteSpanManager sqLiteSpanManager;

    public /* synthetic */ SentrySupportSQLiteOpenHelper(SupportSQLiteOpenHelper supportSQLiteOpenHelper, DefaultConstructorMarker defaultConstructorMarker) {
        this(supportSQLiteOpenHelper);
    }

    @JvmStatic
    public static final SupportSQLiteOpenHelper create(SupportSQLiteOpenHelper supportSQLiteOpenHelper) {
        return INSTANCE.create(supportSQLiteOpenHelper);
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.delegate.close();
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper
    /* renamed from: getDatabaseName */
    public String getName() {
        return this.delegate.getName();
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper
    public void setWriteAheadLoggingEnabled(boolean enabled) {
        this.delegate.setWriteAheadLoggingEnabled(enabled);
    }

    private SentrySupportSQLiteOpenHelper(SupportSQLiteOpenHelper supportSQLiteOpenHelper) {
        this.delegate = supportSQLiteOpenHelper;
        this.sqLiteSpanManager = new SQLiteSpanManager(null, supportSQLiteOpenHelper.getName(), 1, null);
        this.sentryWritableDatabase = LazyKt.lazy(new Function0<SentrySupportSQLiteDatabase>() { // from class: io.sentry.android.sqlite.SentrySupportSQLiteOpenHelper$sentryWritableDatabase$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final SentrySupportSQLiteDatabase invoke() {
                SupportSQLiteOpenHelper supportSQLiteOpenHelper2;
                SQLiteSpanManager sQLiteSpanManager;
                supportSQLiteOpenHelper2 = SentrySupportSQLiteOpenHelper.this.delegate;
                SupportSQLiteDatabase writableDatabase = supportSQLiteOpenHelper2.getWritableDatabase();
                sQLiteSpanManager = SentrySupportSQLiteOpenHelper.this.sqLiteSpanManager;
                return new SentrySupportSQLiteDatabase(writableDatabase, sQLiteSpanManager);
            }
        });
        this.sentryReadableDatabase = LazyKt.lazy(new Function0<SentrySupportSQLiteDatabase>() { // from class: io.sentry.android.sqlite.SentrySupportSQLiteOpenHelper$sentryReadableDatabase$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final SentrySupportSQLiteDatabase invoke() {
                SupportSQLiteOpenHelper supportSQLiteOpenHelper2;
                SQLiteSpanManager sQLiteSpanManager;
                supportSQLiteOpenHelper2 = SentrySupportSQLiteOpenHelper.this.delegate;
                SupportSQLiteDatabase readableDatabase = supportSQLiteOpenHelper2.getReadableDatabase();
                sQLiteSpanManager = SentrySupportSQLiteOpenHelper.this.sqLiteSpanManager;
                return new SentrySupportSQLiteDatabase(readableDatabase, sQLiteSpanManager);
            }
        });
    }

    private final SupportSQLiteDatabase getSentryWritableDatabase() {
        return (SupportSQLiteDatabase) this.sentryWritableDatabase.getValue();
    }

    private final SupportSQLiteDatabase getSentryReadableDatabase() {
        return (SupportSQLiteDatabase) this.sentryReadableDatabase.getValue();
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper
    public SupportSQLiteDatabase getWritableDatabase() {
        return getSentryWritableDatabase();
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper
    public SupportSQLiteDatabase getReadableDatabase() {
        return getSentryReadableDatabase();
    }

    /* compiled from: SentrySupportSQLiteOpenHelper.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¨\u0006\u0006"}, d2 = {"Lio/sentry/android/sqlite/SentrySupportSQLiteOpenHelper$Companion;", "", "()V", "create", "Landroidx/sqlite/db/SupportSQLiteOpenHelper;", "delegate", "sentry-android-sqlite_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final SupportSQLiteOpenHelper create(SupportSQLiteOpenHelper delegate) {
            Intrinsics.checkNotNullParameter(delegate, "delegate");
            return delegate instanceof SentrySupportSQLiteOpenHelper ? delegate : new SentrySupportSQLiteOpenHelper(delegate, null);
        }
    }
}
