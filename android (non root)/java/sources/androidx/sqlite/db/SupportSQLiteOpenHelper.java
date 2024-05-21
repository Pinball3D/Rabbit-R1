package androidx.sqlite.db;

import android.content.Context;
import android.database.sqlite.SQLiteException;
import android.util.Log;
import android.util.Pair;
import androidx.sqlite.db.SupportSQLiteCompat;
import io.sentry.protocol.OperatingSystem;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* compiled from: SupportSQLiteOpenHelper.kt */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001:\u0003\u0011\u0012\u0013J\b\u0010\f\u001a\u00020\rH&J\u0010\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0010H'R\u0014\u0010\u0002\u001a\u0004\u0018\u00010\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X¦\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\tR\u0012\u0010\n\u001a\u00020\u0007X¦\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\tø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0014À\u0006\u0001"}, d2 = {"Landroidx/sqlite/db/SupportSQLiteOpenHelper;", "Ljava/io/Closeable;", "databaseName", "", "getDatabaseName", "()Ljava/lang/String;", "readableDatabase", "Landroidx/sqlite/db/SupportSQLiteDatabase;", "getReadableDatabase", "()Landroidx/sqlite/db/SupportSQLiteDatabase;", "writableDatabase", "getWritableDatabase", "close", "", "setWriteAheadLoggingEnabled", "enabled", "", "Callback", "Configuration", "Factory", "sqlite_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public interface SupportSQLiteOpenHelper extends Closeable {

    /* compiled from: SupportSQLiteOpenHelper.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bæ\u0080\u0001\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0006À\u0006\u0001"}, d2 = {"Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;", "", "create", "Landroidx/sqlite/db/SupportSQLiteOpenHelper;", "configuration", "Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;", "sqlite_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes2.dex */
    public interface Factory {
        SupportSQLiteOpenHelper create(Configuration configuration);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close();

    String getDatabaseName();

    SupportSQLiteDatabase getReadableDatabase();

    SupportSQLiteDatabase getWritableDatabase();

    void setWriteAheadLoggingEnabled(boolean enabled);

    /* compiled from: SupportSQLiteOpenHelper.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\b&\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0002J\u0010\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\f\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\r\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000bH&J \u0010\u000e\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0003H\u0016J\u0010\u0010\u0011\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000bH\u0016J \u0010\u0012\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0003H&R\u0010\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;", "", "version", "", "(I)V", "deleteDatabaseFile", "", "fileName", "", "onConfigure", "db", "Landroidx/sqlite/db/SupportSQLiteDatabase;", "onCorruption", "onCreate", "onDowngrade", "oldVersion", "newVersion", "onOpen", "onUpgrade", "Companion", "sqlite_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes2.dex */
    public static abstract class Callback {
        private static final String TAG = "SupportSQLite";
        public final int version;

        public void onConfigure(SupportSQLiteDatabase db) {
            Intrinsics.checkNotNullParameter(db, "db");
        }

        public abstract void onCreate(SupportSQLiteDatabase db);

        public void onOpen(SupportSQLiteDatabase db) {
            Intrinsics.checkNotNullParameter(db, "db");
        }

        public abstract void onUpgrade(SupportSQLiteDatabase db, int oldVersion, int newVersion);

        public Callback(int i) {
            this.version = i;
        }

        public void onDowngrade(SupportSQLiteDatabase db, int oldVersion, int newVersion) {
            Intrinsics.checkNotNullParameter(db, "db");
            throw new SQLiteException("Can't downgrade database from version " + oldVersion + " to " + newVersion);
        }

        public void onCorruption(SupportSQLiteDatabase db) {
            Intrinsics.checkNotNullParameter(db, "db");
            Log.e(TAG, "Corruption reported by sqlite on database: " + db + ".path");
            if (!db.isOpen()) {
                String path = db.getPath();
                if (path != null) {
                    deleteDatabaseFile(path);
                    return;
                }
                return;
            }
            List<Pair<String, String>> list = null;
            try {
                try {
                    list = db.getAttachedDbs();
                } catch (SQLiteException unused) {
                }
                try {
                    db.close();
                } catch (IOException unused2) {
                    if (list != null) {
                        return;
                    }
                }
            } finally {
                if (list == null) {
                    String path2 = db.getPath();
                    if (path2 != null) {
                        deleteDatabaseFile(path2);
                    }
                } else {
                    Iterator<T> it = list.iterator();
                    while (it.hasNext()) {
                        Object obj = ((Pair) it.next()).second;
                        Intrinsics.checkNotNullExpressionValue(obj, "p.second");
                        deleteDatabaseFile((String) obj);
                    }
                }
            }
        }

        private final void deleteDatabaseFile(String fileName) {
            if (StringsKt.equals(fileName, ":memory:", true)) {
                return;
            }
            String str = fileName;
            int length = str.length() - 1;
            int i = 0;
            boolean z = false;
            while (i <= length) {
                boolean z2 = Intrinsics.compare((int) str.charAt(!z ? i : length), 32) <= 0;
                if (z) {
                    if (!z2) {
                        break;
                    } else {
                        length--;
                    }
                } else if (z2) {
                    i++;
                } else {
                    z = true;
                }
            }
            if (str.subSequence(i, length + 1).toString().length() == 0) {
                return;
            }
            Log.w(TAG, "deleting the database file: " + fileName);
            try {
                SupportSQLiteCompat.Api16Impl.deleteDatabase(new File(fileName));
            } catch (Exception e) {
                Log.w(TAG, "delete failed: ", e);
            }
        }
    }

    /* compiled from: SupportSQLiteOpenHelper.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\u0018\u0000 \r2\u00020\u0001:\u0002\f\rB3\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\b\b\u0002\u0010\n\u001a\u00020\t¢\u0006\u0002\u0010\u000bR\u0010\u0010\n\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;", "", "context", "Landroid/content/Context;", "name", "", "callback", "Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;", "useNoBackupDirectory", "", "allowDataLossOnRecovery", "(Landroid/content/Context;Ljava/lang/String;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;ZZ)V", "Builder", "Companion", "sqlite_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes2.dex */
    public static final class Configuration {

        /* renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        public final boolean allowDataLossOnRecovery;
        public final Callback callback;
        public final Context context;
        public final String name;
        public final boolean useNoBackupDirectory;

        @JvmStatic
        public static final Builder builder(Context context) {
            return INSTANCE.builder(context);
        }

        public Configuration(Context context, String str, Callback callback, boolean z, boolean z2) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(callback, "callback");
            this.context = context;
            this.name = str;
            this.callback = callback;
            this.useNoBackupDirectory = z;
            this.allowDataLossOnRecovery = z2;
        }

        public /* synthetic */ Configuration(Context context, String str, Callback callback, boolean z, boolean z2, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(context, str, callback, (i & 8) != 0 ? false : z, (i & 16) != 0 ? false : z2);
        }

        /* compiled from: SupportSQLiteOpenHelper.kt */
        @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0016\u0018\u00002\u00020\u0001B\u000f\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\b\u0010\f\u001a\u00020\rH\u0016J\u0010\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u0012\u0010\t\u001a\u00020\u00002\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J\u0010\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0006H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;", "", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "allowDataLossOnRecovery", "", "callback", "Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;", "name", "", "useNoBackupDirectory", OperatingSystem.JsonKeys.BUILD, "Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;", "noBackupDirectory", "sqlite_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes2.dex */
        public static class Builder {
            private boolean allowDataLossOnRecovery;
            private Callback callback;
            private final Context context;
            private String name;
            private boolean useNoBackupDirectory;

            public Builder(Context context) {
                Intrinsics.checkNotNullParameter(context, "context");
                this.context = context;
            }

            public Configuration build() {
                String str;
                Callback callback = this.callback;
                if (callback == null) {
                    throw new IllegalArgumentException("Must set a callback to create the configuration.".toString());
                }
                if (this.useNoBackupDirectory && ((str = this.name) == null || str.length() == 0)) {
                    throw new IllegalArgumentException("Must set a non-null database name to a configuration that uses the no backup directory.".toString());
                }
                return new Configuration(this.context, this.name, callback, this.useNoBackupDirectory, this.allowDataLossOnRecovery);
            }

            public Builder name(String name) {
                this.name = name;
                return this;
            }

            public Builder callback(Callback callback) {
                Intrinsics.checkNotNullParameter(callback, "callback");
                this.callback = callback;
                return this;
            }

            public Builder noBackupDirectory(boolean useNoBackupDirectory) {
                this.useNoBackupDirectory = useNoBackupDirectory;
                return this;
            }

            public Builder allowDataLossOnRecovery(boolean allowDataLossOnRecovery) {
                this.allowDataLossOnRecovery = allowDataLossOnRecovery;
                return this;
            }
        }

        /* compiled from: SupportSQLiteOpenHelper.kt */
        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, d2 = {"Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Companion;", "", "()V", "builder", "Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;", "context", "Landroid/content/Context;", "sqlite_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes2.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final Builder builder(Context context) {
                Intrinsics.checkNotNullParameter(context, "context");
                return new Builder(context);
            }
        }
    }
}
