package androidx.room;

import android.database.Cursor;
import androidx.room.migration.Migration;
import androidx.sqlite.db.SimpleSQLiteQuery;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import java.util.Iterator;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: RoomOpenHelper.kt */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\b\b\u0017\u0018\u0000 \u00192\u00020\u0001:\u0003\u0019\u001a\u001bB\u001f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bB%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\u0007\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\nJ\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0010\u0010\u000f\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0010\u0010\u0010\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0010\u0010\u0011\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0016J \u0010\u0012\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0014H\u0016J\u0010\u0010\u0016\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0016J \u0010\u0017\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0014H\u0016J\u0010\u0010\u0018\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0002R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Landroidx/room/RoomOpenHelper;", "Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;", "configuration", "Landroidx/room/DatabaseConfiguration;", "delegate", "Landroidx/room/RoomOpenHelper$Delegate;", "legacyHash", "", "(Landroidx/room/DatabaseConfiguration;Landroidx/room/RoomOpenHelper$Delegate;Ljava/lang/String;)V", "identityHash", "(Landroidx/room/DatabaseConfiguration;Landroidx/room/RoomOpenHelper$Delegate;Ljava/lang/String;Ljava/lang/String;)V", "checkIdentity", "", "db", "Landroidx/sqlite/db/SupportSQLiteDatabase;", "createMasterTableIfNotExists", "onConfigure", "onCreate", "onDowngrade", "oldVersion", "", "newVersion", "onOpen", "onUpgrade", "updateIdentity", "Companion", "Delegate", "ValidationResult", "room-runtime_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public class RoomOpenHelper extends SupportSQLiteOpenHelper.Callback {

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private DatabaseConfiguration configuration;
    private final Delegate delegate;
    private final String identityHash;
    private final String legacyHash;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RoomOpenHelper(DatabaseConfiguration configuration, Delegate delegate, String identityHash, String legacyHash) {
        super(delegate.version);
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        Intrinsics.checkNotNullParameter(identityHash, "identityHash");
        Intrinsics.checkNotNullParameter(legacyHash, "legacyHash");
        this.configuration = configuration;
        this.delegate = delegate;
        this.identityHash = identityHash;
        this.legacyHash = legacyHash;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public RoomOpenHelper(DatabaseConfiguration configuration, Delegate delegate, String legacyHash) {
        this(configuration, delegate, "", legacyHash);
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        Intrinsics.checkNotNullParameter(legacyHash, "legacyHash");
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.Callback
    public void onConfigure(SupportSQLiteDatabase db) {
        Intrinsics.checkNotNullParameter(db, "db");
        super.onConfigure(db);
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.Callback
    public void onCreate(SupportSQLiteDatabase db) {
        Intrinsics.checkNotNullParameter(db, "db");
        boolean hasEmptySchema$room_runtime_release = INSTANCE.hasEmptySchema$room_runtime_release(db);
        this.delegate.createAllTables(db);
        if (!hasEmptySchema$room_runtime_release) {
            ValidationResult onValidateSchema = this.delegate.onValidateSchema(db);
            if (!onValidateSchema.isValid) {
                throw new IllegalStateException("Pre-packaged database has an invalid schema: " + onValidateSchema.expectedFoundMsg);
            }
        }
        updateIdentity(db);
        this.delegate.onCreate(db);
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.Callback
    public void onUpgrade(SupportSQLiteDatabase db, int oldVersion, int newVersion) {
        List<Migration> findMigrationPath;
        Intrinsics.checkNotNullParameter(db, "db");
        DatabaseConfiguration databaseConfiguration = this.configuration;
        if (databaseConfiguration != null && (findMigrationPath = databaseConfiguration.migrationContainer.findMigrationPath(oldVersion, newVersion)) != null) {
            this.delegate.onPreMigrate(db);
            Iterator<T> it = findMigrationPath.iterator();
            while (it.hasNext()) {
                ((Migration) it.next()).migrate(db);
            }
            ValidationResult onValidateSchema = this.delegate.onValidateSchema(db);
            if (!onValidateSchema.isValid) {
                throw new IllegalStateException("Migration didn't properly handle: " + onValidateSchema.expectedFoundMsg);
            }
            this.delegate.onPostMigrate(db);
            updateIdentity(db);
            return;
        }
        DatabaseConfiguration databaseConfiguration2 = this.configuration;
        if (databaseConfiguration2 != null && !databaseConfiguration2.isMigrationRequired(oldVersion, newVersion)) {
            this.delegate.dropAllTables(db);
            this.delegate.createAllTables(db);
            return;
        }
        throw new IllegalStateException("A migration from " + oldVersion + " to " + newVersion + " was required but not found. Please provide the necessary Migration path via RoomDatabase.Builder.addMigration(Migration ...) or allow for destructive migrations via one of the RoomDatabase.Builder.fallbackToDestructiveMigration* methods.");
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.Callback
    public void onDowngrade(SupportSQLiteDatabase db, int oldVersion, int newVersion) {
        Intrinsics.checkNotNullParameter(db, "db");
        onUpgrade(db, oldVersion, newVersion);
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.Callback
    public void onOpen(SupportSQLiteDatabase db) {
        Intrinsics.checkNotNullParameter(db, "db");
        super.onOpen(db);
        checkIdentity(db);
        this.delegate.onOpen(db);
        this.configuration = null;
    }

    private final void checkIdentity(SupportSQLiteDatabase db) {
        String str;
        if (INSTANCE.hasRoomMasterTable$room_runtime_release(db)) {
            Cursor query = db.query(new SimpleSQLiteQuery(RoomMasterTable.READ_QUERY));
            try {
                Cursor cursor = query;
                if (cursor.moveToFirst()) {
                    str = cursor.getString(0);
                } else {
                    str = null;
                }
                CloseableKt.closeFinally(query, null);
                if (!Intrinsics.areEqual(this.identityHash, str) && !Intrinsics.areEqual(this.legacyHash, str)) {
                    throw new IllegalStateException("Room cannot verify the data integrity. Looks like you've changed schema but forgot to update the version number. You can simply fix this by increasing the version number. Expected identity hash: " + this.identityHash + ", found: " + str);
                }
                return;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    CloseableKt.closeFinally(query, th);
                    throw th2;
                }
            }
        }
        ValidationResult onValidateSchema = this.delegate.onValidateSchema(db);
        if (!onValidateSchema.isValid) {
            throw new IllegalStateException("Pre-packaged database has an invalid schema: " + onValidateSchema.expectedFoundMsg);
        }
        this.delegate.onPostMigrate(db);
        updateIdentity(db);
    }

    private final void updateIdentity(SupportSQLiteDatabase db) {
        createMasterTableIfNotExists(db);
        db.execSQL(RoomMasterTable.createInsertQuery(this.identityHash));
    }

    private final void createMasterTableIfNotExists(SupportSQLiteDatabase db) {
        db.execSQL(RoomMasterTable.CREATE_QUERY);
    }

    /* compiled from: RoomOpenHelper.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\b'\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH&J\u0010\u0010\t\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH&J\u0010\u0010\n\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH&J\u0010\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH&J\u0010\u0010\f\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u0010\u0010\r\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\bH\u0016J\u0010\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\bH\u0015R\u0010\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Landroidx/room/RoomOpenHelper$Delegate;", "", "version", "", "(I)V", "createAllTables", "", "database", "Landroidx/sqlite/db/SupportSQLiteDatabase;", "dropAllTables", "onCreate", "onOpen", "onPostMigrate", "onPreMigrate", "onValidateSchema", "Landroidx/room/RoomOpenHelper$ValidationResult;", "db", "validateMigration", "room-runtime_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes2.dex */
    public static abstract class Delegate {
        public final int version;

        public abstract void createAllTables(SupportSQLiteDatabase database);

        public abstract void dropAllTables(SupportSQLiteDatabase database);

        public abstract void onCreate(SupportSQLiteDatabase database);

        public abstract void onOpen(SupportSQLiteDatabase database);

        public void onPostMigrate(SupportSQLiteDatabase database) {
            Intrinsics.checkNotNullParameter(database, "database");
        }

        public void onPreMigrate(SupportSQLiteDatabase database) {
            Intrinsics.checkNotNullParameter(database, "database");
        }

        public Delegate(int i) {
            this.version = i;
        }

        @Deprecated(message = "Use [onValidateSchema(SupportSQLiteDatabase)]")
        protected void validateMigration(SupportSQLiteDatabase db) {
            Intrinsics.checkNotNullParameter(db, "db");
            throw new UnsupportedOperationException("validateMigration is deprecated");
        }

        public ValidationResult onValidateSchema(SupportSQLiteDatabase db) {
            Intrinsics.checkNotNullParameter(db, "db");
            validateMigration(db);
            return new ValidationResult(true, null);
        }
    }

    /* compiled from: RoomOpenHelper.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0017\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006R\u0012\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Landroidx/room/RoomOpenHelper$ValidationResult;", "", "isValid", "", "expectedFoundMsg", "", "(ZLjava/lang/String;)V", "room-runtime_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes2.dex */
    public static class ValidationResult {
        public final String expectedFoundMsg;
        public final boolean isValid;

        public ValidationResult(boolean z, String str) {
            this.isValid = z;
            this.expectedFoundMsg = str;
        }
    }

    /* compiled from: RoomOpenHelper.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0015\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0000¢\u0006\u0002\b\u0007J\u0015\u0010\b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0000¢\u0006\u0002\b\t¨\u0006\n"}, d2 = {"Landroidx/room/RoomOpenHelper$Companion;", "", "()V", "hasEmptySchema", "", "db", "Landroidx/sqlite/db/SupportSQLiteDatabase;", "hasEmptySchema$room_runtime_release", "hasRoomMasterTable", "hasRoomMasterTable$room_runtime_release", "room-runtime_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final boolean hasRoomMasterTable$room_runtime_release(SupportSQLiteDatabase db) {
            Intrinsics.checkNotNullParameter(db, "db");
            Cursor query = db.query("SELECT 1 FROM sqlite_master WHERE type = 'table' AND name='room_master_table'");
            try {
                Cursor cursor = query;
                boolean z = false;
                if (cursor.moveToFirst()) {
                    if (cursor.getInt(0) != 0) {
                        z = true;
                    }
                }
                CloseableKt.closeFinally(query, null);
                return z;
            } finally {
            }
        }

        public final boolean hasEmptySchema$room_runtime_release(SupportSQLiteDatabase db) {
            Intrinsics.checkNotNullParameter(db, "db");
            Cursor query = db.query("SELECT count(*) FROM sqlite_master WHERE name != 'android_metadata'");
            try {
                Cursor cursor = query;
                boolean z = false;
                if (cursor.moveToFirst()) {
                    if (cursor.getInt(0) == 0) {
                        z = true;
                    }
                }
                CloseableKt.closeFinally(query, null);
                return z;
            } finally {
            }
        }
    }
}
