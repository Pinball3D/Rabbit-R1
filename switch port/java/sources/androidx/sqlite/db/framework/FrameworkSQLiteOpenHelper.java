package androidx.sqlite.db.framework;

import android.content.Context;
import android.database.DatabaseErrorHandler;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;
import androidx.sqlite.db.SupportSQLiteCompat;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import androidx.sqlite.db.framework.FrameworkSQLiteOpenHelper;
import androidx.sqlite.util.ProcessLock;
import io.sentry.protocol.SentryStackFrame;
import java.io.File;
import java.util.UUID;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: FrameworkSQLiteOpenHelper.kt */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0006\b\u0000\u0018\u0000 \"2\u00020\u0001:\u0003\"#$B5\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\b\b\u0002\u0010\n\u001a\u00020\t¢\u0006\u0002\u0010\u000bJ\b\u0010\u001e\u001a\u00020\u001fH\u0016J\u0010\u0010 \u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\tH\u0017R\u000e\u0010\n\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\f\u001a\u0004\u0018\u00010\u00058VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000eR\u001b\u0010\u000f\u001a\u00020\u00108BX\u0082\u0084\u0002¢\u0006\f\u001a\u0004\b\u0013\u0010\u0014*\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00100\u0016X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0017\u001a\u00020\u00188VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u001aR\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u001b\u001a\u00020\u00188VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u001aR\u000e\u0010\u001d\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006%"}, d2 = {"Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;", "Landroidx/sqlite/db/SupportSQLiteOpenHelper;", "context", "Landroid/content/Context;", "name", "", "callback", "Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;", "useNoBackupDirectory", "", "allowDataLossOnRecovery", "(Landroid/content/Context;Ljava/lang/String;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;ZZ)V", "databaseName", "getDatabaseName", "()Ljava/lang/String;", "delegate", "Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;", "getDelegate$delegate", "(Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;)Ljava/lang/Object;", "getDelegate", "()Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;", "lazyDelegate", "Lkotlin/Lazy;", "readableDatabase", "Landroidx/sqlite/db/SupportSQLiteDatabase;", "getReadableDatabase", "()Landroidx/sqlite/db/SupportSQLiteDatabase;", "writableDatabase", "getWritableDatabase", "writeAheadLoggingEnabled", "close", "", "setWriteAheadLoggingEnabled", "enabled", "Companion", "DBRefHolder", "OpenHelper", "sqlite-framework_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class FrameworkSQLiteOpenHelper implements SupportSQLiteOpenHelper {
    private static final String TAG = "SupportSQLite";
    private final boolean allowDataLossOnRecovery;
    private final SupportSQLiteOpenHelper.Callback callback;
    private final Context context;
    private final Lazy<OpenHelper> lazyDelegate;
    private final String name;
    private final boolean useNoBackupDirectory;
    private boolean writeAheadLoggingEnabled;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public FrameworkSQLiteOpenHelper(Context context, String str, SupportSQLiteOpenHelper.Callback callback) {
        this(context, str, callback, false, false, 24, null);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(callback, "callback");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public FrameworkSQLiteOpenHelper(Context context, String str, SupportSQLiteOpenHelper.Callback callback, boolean z) {
        this(context, str, callback, z, false, 16, null);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(callback, "callback");
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper
    /* renamed from: getDatabaseName, reason: from getter */
    public String getName() {
        return this.name;
    }

    public FrameworkSQLiteOpenHelper(Context context, String str, SupportSQLiteOpenHelper.Callback callback, boolean z, boolean z2) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.context = context;
        this.name = str;
        this.callback = callback;
        this.useNoBackupDirectory = z;
        this.allowDataLossOnRecovery = z2;
        this.lazyDelegate = LazyKt.lazy(new Function0<OpenHelper>() { // from class: androidx.sqlite.db.framework.FrameworkSQLiteOpenHelper$lazyDelegate$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final FrameworkSQLiteOpenHelper.OpenHelper invoke() {
                String str2;
                FrameworkSQLiteOpenHelper.OpenHelper openHelper;
                Context context2;
                String str3;
                SupportSQLiteOpenHelper.Callback callback2;
                boolean z3;
                boolean z4;
                boolean z5;
                Context context3;
                String str4;
                Context context4;
                SupportSQLiteOpenHelper.Callback callback3;
                boolean z6;
                str2 = FrameworkSQLiteOpenHelper.this.name;
                if (str2 != null) {
                    z5 = FrameworkSQLiteOpenHelper.this.useNoBackupDirectory;
                    if (z5) {
                        context3 = FrameworkSQLiteOpenHelper.this.context;
                        File noBackupFilesDir = SupportSQLiteCompat.Api21Impl.getNoBackupFilesDir(context3);
                        str4 = FrameworkSQLiteOpenHelper.this.name;
                        File file = new File(noBackupFilesDir, str4);
                        context4 = FrameworkSQLiteOpenHelper.this.context;
                        String absolutePath = file.getAbsolutePath();
                        FrameworkSQLiteOpenHelper.DBRefHolder dBRefHolder = new FrameworkSQLiteOpenHelper.DBRefHolder(null);
                        callback3 = FrameworkSQLiteOpenHelper.this.callback;
                        z6 = FrameworkSQLiteOpenHelper.this.allowDataLossOnRecovery;
                        openHelper = new FrameworkSQLiteOpenHelper.OpenHelper(context4, absolutePath, dBRefHolder, callback3, z6);
                        z4 = FrameworkSQLiteOpenHelper.this.writeAheadLoggingEnabled;
                        SupportSQLiteCompat.Api16Impl.setWriteAheadLoggingEnabled(openHelper, z4);
                        return openHelper;
                    }
                }
                context2 = FrameworkSQLiteOpenHelper.this.context;
                str3 = FrameworkSQLiteOpenHelper.this.name;
                FrameworkSQLiteOpenHelper.DBRefHolder dBRefHolder2 = new FrameworkSQLiteOpenHelper.DBRefHolder(null);
                callback2 = FrameworkSQLiteOpenHelper.this.callback;
                z3 = FrameworkSQLiteOpenHelper.this.allowDataLossOnRecovery;
                openHelper = new FrameworkSQLiteOpenHelper.OpenHelper(context2, str3, dBRefHolder2, callback2, z3);
                z4 = FrameworkSQLiteOpenHelper.this.writeAheadLoggingEnabled;
                SupportSQLiteCompat.Api16Impl.setWriteAheadLoggingEnabled(openHelper, z4);
                return openHelper;
            }
        });
    }

    public /* synthetic */ FrameworkSQLiteOpenHelper(Context context, String str, SupportSQLiteOpenHelper.Callback callback, boolean z, boolean z2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, str, callback, (i & 8) != 0 ? false : z, (i & 16) != 0 ? false : z2);
    }

    private final OpenHelper getDelegate() {
        return this.lazyDelegate.getValue();
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper
    public void setWriteAheadLoggingEnabled(boolean enabled) {
        if (this.lazyDelegate.isInitialized()) {
            SupportSQLiteCompat.Api16Impl.setWriteAheadLoggingEnabled(getDelegate(), enabled);
        }
        this.writeAheadLoggingEnabled = enabled;
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper
    public SupportSQLiteDatabase getWritableDatabase() {
        return getDelegate().getSupportDatabase(true);
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper
    public SupportSQLiteDatabase getReadableDatabase() {
        return getDelegate().getSupportDatabase(false);
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.lazyDelegate.isInitialized()) {
            getDelegate().close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: FrameworkSQLiteOpenHelper.kt */
    @Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0007\b\u0002\u0018\u0000 /2\u00020\u0001:\u0003-./B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ\b\u0010\u0019\u001a\u00020\u001aH\u0016J\u000e\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u000bJ\u000e\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!J\u0010\u0010\"\u001a\u00020!2\u0006\u0010\u001d\u001a\u00020\u000bH\u0002J\u0010\u0010#\u001a\u00020!2\u0006\u0010\u001d\u001a\u00020\u000bH\u0002J\u0010\u0010$\u001a\u00020\u001a2\u0006\u0010%\u001a\u00020!H\u0016J\u0010\u0010&\u001a\u00020\u001a2\u0006\u0010 \u001a\u00020!H\u0016J \u0010'\u001a\u00020\u001a2\u0006\u0010%\u001a\u00020!2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020)H\u0016J\u0010\u0010+\u001a\u00020\u001a2\u0006\u0010%\u001a\u00020!H\u0016J \u0010,\u001a\u00020\u001a2\u0006\u0010 \u001a\u00020!2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020)H\u0016R\u0011\u0010\n\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u00060"}, d2 = {"Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;", "Landroid/database/sqlite/SQLiteOpenHelper;", "context", "Landroid/content/Context;", "name", "", "dbRef", "Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$DBRefHolder;", "callback", "Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;", "allowDataLossOnRecovery", "", "(Landroid/content/Context;Ljava/lang/String;Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$DBRefHolder;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;Z)V", "getAllowDataLossOnRecovery", "()Z", "getCallback", "()Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;", "getContext", "()Landroid/content/Context;", "getDbRef", "()Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$DBRefHolder;", SentryStackFrame.JsonKeys.LOCK, "Landroidx/sqlite/util/ProcessLock;", "migrated", "opened", "close", "", "getSupportDatabase", "Landroidx/sqlite/db/SupportSQLiteDatabase;", "writable", "getWrappedDb", "Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;", "sqLiteDatabase", "Landroid/database/sqlite/SQLiteDatabase;", "getWritableOrReadableDatabase", "innerGetDatabase", "onConfigure", "db", "onCreate", "onDowngrade", "oldVersion", "", "newVersion", "onOpen", "onUpgrade", "CallbackException", "CallbackName", "Companion", "sqlite-framework_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes2.dex */
    public static final class OpenHelper extends SQLiteOpenHelper {

        /* renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private final boolean allowDataLossOnRecovery;
        private final SupportSQLiteOpenHelper.Callback callback;
        private final Context context;
        private final DBRefHolder dbRef;
        private final ProcessLock lock;
        private boolean migrated;
        private boolean opened;

        /* compiled from: FrameworkSQLiteOpenHelper.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0080\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$CallbackName;", "", "(Ljava/lang/String;I)V", "ON_CONFIGURE", "ON_CREATE", "ON_UPGRADE", "ON_DOWNGRADE", "ON_OPEN", "sqlite-framework_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes2.dex */
        public enum CallbackName {
            ON_CONFIGURE,
            ON_CREATE,
            ON_UPGRADE,
            ON_DOWNGRADE,
            ON_OPEN
        }

        /* compiled from: FrameworkSQLiteOpenHelper.kt */
        @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes2.dex */
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[CallbackName.values().length];
                try {
                    iArr[CallbackName.ON_CONFIGURE.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[CallbackName.ON_CREATE.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[CallbackName.ON_UPGRADE.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[CallbackName.ON_DOWNGRADE.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                try {
                    iArr[CallbackName.ON_OPEN.ordinal()] = 5;
                } catch (NoSuchFieldError unused5) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        public final boolean getAllowDataLossOnRecovery() {
            return this.allowDataLossOnRecovery;
        }

        public final SupportSQLiteOpenHelper.Callback getCallback() {
            return this.callback;
        }

        public final Context getContext() {
            return this.context;
        }

        public final DBRefHolder getDbRef() {
            return this.dbRef;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OpenHelper(Context context, String str, final DBRefHolder dbRef, final SupportSQLiteOpenHelper.Callback callback, boolean z) {
            super(context, str, null, callback.version, new DatabaseErrorHandler() { // from class: androidx.sqlite.db.framework.FrameworkSQLiteOpenHelper$OpenHelper$$ExternalSyntheticLambda0
                @Override // android.database.DatabaseErrorHandler
                public final void onCorruption(SQLiteDatabase sQLiteDatabase) {
                    FrameworkSQLiteOpenHelper.OpenHelper._init_$lambda$0(SupportSQLiteOpenHelper.Callback.this, dbRef, sQLiteDatabase);
                }
            });
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(dbRef, "dbRef");
            Intrinsics.checkNotNullParameter(callback, "callback");
            this.context = context;
            this.dbRef = dbRef;
            this.callback = callback;
            this.allowDataLossOnRecovery = z;
            if (str == null) {
                str = UUID.randomUUID().toString();
                Intrinsics.checkNotNullExpressionValue(str, "randomUUID().toString()");
            }
            File cacheDir = context.getCacheDir();
            Intrinsics.checkNotNullExpressionValue(cacheDir, "context.cacheDir");
            this.lock = new ProcessLock(str, cacheDir, false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void _init_$lambda$0(SupportSQLiteOpenHelper.Callback callback, DBRefHolder dbRef, SQLiteDatabase dbObj) {
            Intrinsics.checkNotNullParameter(callback, "$callback");
            Intrinsics.checkNotNullParameter(dbRef, "$dbRef");
            Companion companion = INSTANCE;
            Intrinsics.checkNotNullExpressionValue(dbObj, "dbObj");
            callback.onCorruption(companion.getWrappedDb(dbRef, dbObj));
        }

        public final SupportSQLiteDatabase getSupportDatabase(boolean writable) {
            try {
                this.lock.lock((this.opened || getDatabaseName() == null) ? false : true);
                this.migrated = false;
                SQLiteDatabase innerGetDatabase = innerGetDatabase(writable);
                if (this.migrated) {
                    close();
                    return getSupportDatabase(writable);
                }
                return getWrappedDb(innerGetDatabase);
            } finally {
                this.lock.unlock();
            }
        }

        private final SQLiteDatabase innerGetDatabase(boolean writable) {
            File parentFile;
            String databaseName = getDatabaseName();
            if (databaseName != null && (parentFile = this.context.getDatabasePath(databaseName).getParentFile()) != null) {
                parentFile.mkdirs();
                if (!parentFile.isDirectory()) {
                    Log.w(FrameworkSQLiteOpenHelper.TAG, "Invalid database parent file, not a directory: " + parentFile);
                }
            }
            try {
                return getWritableOrReadableDatabase(writable);
            } catch (Throwable unused) {
                super.close();
                try {
                    Thread.sleep(500L);
                } catch (InterruptedException unused2) {
                }
                try {
                    return this.getWritableOrReadableDatabase(writable);
                } catch (Throwable th) {
                    super.close();
                    if (th instanceof CallbackException) {
                        CallbackException callbackException = th;
                        Throwable cause = callbackException.getCause();
                        int i = WhenMappings.$EnumSwitchMapping$0[callbackException.getCallbackName().ordinal()];
                        if (i == 1) {
                            throw cause;
                        }
                        if (i == 2) {
                            throw cause;
                        }
                        if (i == 3) {
                            throw cause;
                        }
                        if (i == 4) {
                            throw cause;
                        }
                        if (!(cause instanceof SQLiteException)) {
                            throw cause;
                        }
                    } else {
                        if (!(th instanceof SQLiteException)) {
                            throw th;
                        }
                        if (databaseName == null || !this.allowDataLossOnRecovery) {
                            throw th;
                        }
                    }
                    this.context.deleteDatabase(databaseName);
                    try {
                        return this.getWritableOrReadableDatabase(writable);
                    } catch (CallbackException e) {
                        throw e.getCause();
                    }
                }
            }
        }

        private final SQLiteDatabase getWritableOrReadableDatabase(boolean writable) {
            if (writable) {
                SQLiteDatabase writableDatabase = super.getWritableDatabase();
                Intrinsics.checkNotNullExpressionValue(writableDatabase, "{\n                super.…eDatabase()\n            }");
                return writableDatabase;
            }
            SQLiteDatabase readableDatabase = super.getReadableDatabase();
            Intrinsics.checkNotNullExpressionValue(readableDatabase, "{\n                super.…eDatabase()\n            }");
            return readableDatabase;
        }

        public final FrameworkSQLiteDatabase getWrappedDb(SQLiteDatabase sqLiteDatabase) {
            Intrinsics.checkNotNullParameter(sqLiteDatabase, "sqLiteDatabase");
            return INSTANCE.getWrappedDb(this.dbRef, sqLiteDatabase);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase sqLiteDatabase) {
            Intrinsics.checkNotNullParameter(sqLiteDatabase, "sqLiteDatabase");
            try {
                this.callback.onCreate(getWrappedDb(sqLiteDatabase));
            } catch (Throwable th) {
                throw new CallbackException(CallbackName.ON_CREATE, th);
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sqLiteDatabase, int oldVersion, int newVersion) {
            Intrinsics.checkNotNullParameter(sqLiteDatabase, "sqLiteDatabase");
            this.migrated = true;
            try {
                this.callback.onUpgrade(getWrappedDb(sqLiteDatabase), oldVersion, newVersion);
            } catch (Throwable th) {
                throw new CallbackException(CallbackName.ON_UPGRADE, th);
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onConfigure(SQLiteDatabase db) {
            Intrinsics.checkNotNullParameter(db, "db");
            try {
                this.callback.onConfigure(getWrappedDb(db));
            } catch (Throwable th) {
                throw new CallbackException(CallbackName.ON_CONFIGURE, th);
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onDowngrade(SQLiteDatabase db, int oldVersion, int newVersion) {
            Intrinsics.checkNotNullParameter(db, "db");
            this.migrated = true;
            try {
                this.callback.onDowngrade(getWrappedDb(db), oldVersion, newVersion);
            } catch (Throwable th) {
                throw new CallbackException(CallbackName.ON_DOWNGRADE, th);
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onOpen(SQLiteDatabase db) {
            Intrinsics.checkNotNullParameter(db, "db");
            if (!this.migrated) {
                try {
                    this.callback.onOpen(getWrappedDb(db));
                } catch (Throwable th) {
                    throw new CallbackException(CallbackName.ON_OPEN, th);
                }
            }
            this.opened = true;
        }

        @Override // android.database.sqlite.SQLiteOpenHelper, java.lang.AutoCloseable
        public void close() {
            try {
                ProcessLock.lock$default(this.lock, false, 1, null);
                super.close();
                this.dbRef.setDb(null);
                this.opened = false;
            } finally {
                this.lock.unlock();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: FrameworkSQLiteOpenHelper.kt */
        @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0006\b\u0002\u0018\u00002\u00060\u0001j\u0002`\u0002B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$CallbackException;", "Ljava/lang/RuntimeException;", "Lkotlin/RuntimeException;", "callbackName", "Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$CallbackName;", "cause", "", "(Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$CallbackName;Ljava/lang/Throwable;)V", "getCallbackName", "()Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$CallbackName;", "getCause", "()Ljava/lang/Throwable;", "sqlite-framework_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes2.dex */
        public static final class CallbackException extends RuntimeException {
            private final CallbackName callbackName;
            private final Throwable cause;

            public final CallbackName getCallbackName() {
                return this.callbackName;
            }

            @Override // java.lang.Throwable
            public Throwable getCause() {
                return this.cause;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public CallbackException(CallbackName callbackName, Throwable cause) {
                super(cause);
                Intrinsics.checkNotNullParameter(callbackName, "callbackName");
                Intrinsics.checkNotNullParameter(cause, "cause");
                this.callbackName = callbackName;
                this.cause = cause;
            }
        }

        /* compiled from: FrameworkSQLiteOpenHelper.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b¨\u0006\t"}, d2 = {"Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$Companion;", "", "()V", "getWrappedDb", "Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;", "refHolder", "Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$DBRefHolder;", "sqLiteDatabase", "Landroid/database/sqlite/SQLiteDatabase;", "sqlite-framework_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes2.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final FrameworkSQLiteDatabase getWrappedDb(DBRefHolder refHolder, SQLiteDatabase sqLiteDatabase) {
                Intrinsics.checkNotNullParameter(refHolder, "refHolder");
                Intrinsics.checkNotNullParameter(sqLiteDatabase, "sqLiteDatabase");
                FrameworkSQLiteDatabase db = refHolder.getDb();
                if (db != null && db.isDelegate(sqLiteDatabase)) {
                    return db;
                }
                FrameworkSQLiteDatabase frameworkSQLiteDatabase = new FrameworkSQLiteDatabase(sqLiteDatabase);
                refHolder.setDb(frameworkSQLiteDatabase);
                return frameworkSQLiteDatabase;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: FrameworkSQLiteOpenHelper.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\u0004¨\u0006\b"}, d2 = {"Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$DBRefHolder;", "", "db", "Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;", "(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V", "getDb", "()Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;", "setDb", "sqlite-framework_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes2.dex */
    public static final class DBRefHolder {
        private FrameworkSQLiteDatabase db;

        public final FrameworkSQLiteDatabase getDb() {
            return this.db;
        }

        public final void setDb(FrameworkSQLiteDatabase frameworkSQLiteDatabase) {
            this.db = frameworkSQLiteDatabase;
        }

        public DBRefHolder(FrameworkSQLiteDatabase frameworkSQLiteDatabase) {
            this.db = frameworkSQLiteDatabase;
        }
    }
}
