package androidx.room;

import android.content.Context;
import android.util.Log;
import androidx.room.RoomDatabase;
import androidx.room.util.DBUtil;
import androidx.room.util.FileUtil;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import androidx.sqlite.db.framework.FrameworkSQLiteOpenHelperFactory;
import androidx.sqlite.util.ProcessLock;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.channels.Channels;
import java.nio.channels.FileChannel;
import java.util.concurrent.Callable;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* compiled from: SQLiteCopyOpenHelper.kt */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u000b\b\u0000\u0018\u00002\u00020\u00012\u00020\u0002BA\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u0001¢\u0006\u0002\u0010\u000fJ\b\u0010\u001f\u001a\u00020 H\u0016J\u0018\u0010!\u001a\u00020 2\u0006\u0010\"\u001a\u00020\b2\u0006\u0010#\u001a\u00020\u001cH\u0002J\u0010\u0010$\u001a\u00020\u00012\u0006\u0010%\u001a\u00020\bH\u0002J\u0018\u0010&\u001a\u00020 2\u0006\u0010%\u001a\u00020\b2\u0006\u0010#\u001a\u00020\u001cH\u0002J\u000e\u0010'\u001a\u00020 2\u0006\u0010\u0010\u001a\u00020\u0011J\u0010\u0010(\u001a\u00020 2\u0006\u0010)\u001a\u00020\u001cH\u0017J\u0010\u0010*\u001a\u00020 2\u0006\u0010#\u001a\u00020\u001cH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082.¢\u0006\u0002\n\u0000R\u0016\u0010\u0012\u001a\u0004\u0018\u00010\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u00020\u0001X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0014\u0010\u0017\u001a\u00020\u00188VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u001aR\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u001d\u001a\u00020\u00188VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001e\u0010\u001a¨\u0006+"}, d2 = {"Landroidx/room/SQLiteCopyOpenHelper;", "Landroidx/sqlite/db/SupportSQLiteOpenHelper;", "Landroidx/room/DelegatingOpenHelper;", "context", "Landroid/content/Context;", "copyFromAssetPath", "", "copyFromFile", "Ljava/io/File;", "copyFromInputStream", "Ljava/util/concurrent/Callable;", "Ljava/io/InputStream;", "databaseVersion", "", "delegate", "(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Ljava/util/concurrent/Callable;ILandroidx/sqlite/db/SupportSQLiteOpenHelper;)V", "databaseConfiguration", "Landroidx/room/DatabaseConfiguration;", "databaseName", "getDatabaseName", "()Ljava/lang/String;", "getDelegate", "()Landroidx/sqlite/db/SupportSQLiteOpenHelper;", "readableDatabase", "Landroidx/sqlite/db/SupportSQLiteDatabase;", "getReadableDatabase", "()Landroidx/sqlite/db/SupportSQLiteDatabase;", "verified", "", "writableDatabase", "getWritableDatabase", "close", "", "copyDatabaseFile", "destinationFile", "writable", "createFrameworkOpenHelper", "databaseFile", "dispatchOnOpenPrepackagedDatabase", "setDatabaseConfiguration", "setWriteAheadLoggingEnabled", "enabled", "verifyDatabaseFile", "room-runtime_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class SQLiteCopyOpenHelper implements SupportSQLiteOpenHelper, DelegatingOpenHelper {
    private final Context context;
    private final String copyFromAssetPath;
    private final File copyFromFile;
    private final Callable<InputStream> copyFromInputStream;
    private DatabaseConfiguration databaseConfiguration;
    private final int databaseVersion;
    private final SupportSQLiteOpenHelper delegate;
    private boolean verified;

    @Override // androidx.room.DelegatingOpenHelper
    public SupportSQLiteOpenHelper getDelegate() {
        return this.delegate;
    }

    public final void setDatabaseConfiguration(DatabaseConfiguration databaseConfiguration) {
        Intrinsics.checkNotNullParameter(databaseConfiguration, "databaseConfiguration");
        this.databaseConfiguration = databaseConfiguration;
    }

    public SQLiteCopyOpenHelper(Context context, String str, File file, Callable<InputStream> callable, int i, SupportSQLiteOpenHelper delegate) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        this.context = context;
        this.copyFromAssetPath = str;
        this.copyFromFile = file;
        this.copyFromInputStream = callable;
        this.databaseVersion = i;
        this.delegate = delegate;
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper
    /* renamed from: getDatabaseName */
    public String getName() {
        return getDelegate().getName();
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper
    public void setWriteAheadLoggingEnabled(boolean enabled) {
        getDelegate().setWriteAheadLoggingEnabled(enabled);
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper
    public SupportSQLiteDatabase getWritableDatabase() {
        if (!this.verified) {
            verifyDatabaseFile(true);
            this.verified = true;
        }
        return getDelegate().getWritableDatabase();
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper
    public SupportSQLiteDatabase getReadableDatabase() {
        if (!this.verified) {
            verifyDatabaseFile(false);
            this.verified = true;
        }
        return getDelegate().getReadableDatabase();
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper, java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() {
        getDelegate().close();
        this.verified = false;
    }

    private final void verifyDatabaseFile(boolean writable) {
        String name = getName();
        if (name == null) {
            throw new IllegalStateException("Required value was null.".toString());
        }
        File databaseFile = this.context.getDatabasePath(name);
        DatabaseConfiguration databaseConfiguration = this.databaseConfiguration;
        DatabaseConfiguration databaseConfiguration2 = null;
        if (databaseConfiguration == null) {
            Intrinsics.throwUninitializedPropertyAccessException("databaseConfiguration");
            databaseConfiguration = null;
        }
        boolean z = databaseConfiguration.multiInstanceInvalidation;
        File filesDir = this.context.getFilesDir();
        Intrinsics.checkNotNullExpressionValue(filesDir, "context.filesDir");
        ProcessLock processLock = new ProcessLock(name, filesDir, z);
        try {
            ProcessLock.lock$default(processLock, false, 1, null);
            if (!databaseFile.exists()) {
                try {
                    Intrinsics.checkNotNullExpressionValue(databaseFile, "databaseFile");
                    copyDatabaseFile(databaseFile, writable);
                    processLock.unlock();
                    return;
                } catch (IOException e) {
                    throw new RuntimeException("Unable to copy database file.", e);
                }
            }
            try {
                Intrinsics.checkNotNullExpressionValue(databaseFile, "databaseFile");
                int readVersion = DBUtil.readVersion(databaseFile);
                if (readVersion == this.databaseVersion) {
                    processLock.unlock();
                    return;
                }
                DatabaseConfiguration databaseConfiguration3 = this.databaseConfiguration;
                if (databaseConfiguration3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("databaseConfiguration");
                } else {
                    databaseConfiguration2 = databaseConfiguration3;
                }
                if (databaseConfiguration2.isMigrationRequired(readVersion, this.databaseVersion)) {
                    processLock.unlock();
                    return;
                }
                if (this.context.deleteDatabase(name)) {
                    try {
                        copyDatabaseFile(databaseFile, writable);
                    } catch (IOException e2) {
                        Log.w(Room.LOG_TAG, "Unable to copy database file.", e2);
                    }
                } else {
                    Log.w(Room.LOG_TAG, "Failed to delete database file (" + name + ") for a copy destructive migration.");
                }
                processLock.unlock();
                return;
            } catch (IOException e3) {
                Log.w(Room.LOG_TAG, "Unable to read database version.", e3);
                processLock.unlock();
                return;
            }
        } catch (Throwable th) {
            processLock.unlock();
            throw th;
        }
        processLock.unlock();
        throw th;
    }

    private final void copyDatabaseFile(File destinationFile, boolean writable) throws IOException {
        FileChannel newChannel;
        if (this.copyFromAssetPath != null) {
            newChannel = Channels.newChannel(this.context.getAssets().open(this.copyFromAssetPath));
            Intrinsics.checkNotNullExpressionValue(newChannel, "newChannel(context.assets.open(copyFromAssetPath))");
        } else if (this.copyFromFile != null) {
            FileChannel channel = new FileInputStream(this.copyFromFile).getChannel();
            Intrinsics.checkNotNullExpressionValue(channel, "FileInputStream(copyFromFile).channel");
            newChannel = channel;
        } else {
            Callable<InputStream> callable = this.copyFromInputStream;
            if (callable != null) {
                try {
                    newChannel = Channels.newChannel(callable.call());
                    Intrinsics.checkNotNullExpressionValue(newChannel, "newChannel(inputStream)");
                } catch (Exception e) {
                    throw new IOException("inputStreamCallable exception on call", e);
                }
            } else {
                throw new IllegalStateException("copyFromAssetPath, copyFromFile and copyFromInputStream are all null!");
            }
        }
        File intermediateFile = File.createTempFile("room-copy-helper", ".tmp", this.context.getCacheDir());
        intermediateFile.deleteOnExit();
        FileChannel output = new FileOutputStream(intermediateFile).getChannel();
        Intrinsics.checkNotNullExpressionValue(output, "output");
        FileUtil.copy(newChannel, output);
        File parentFile = destinationFile.getParentFile();
        if (parentFile != null && !parentFile.exists() && !parentFile.mkdirs()) {
            throw new IOException("Failed to create directories for " + destinationFile.getAbsolutePath());
        }
        Intrinsics.checkNotNullExpressionValue(intermediateFile, "intermediateFile");
        dispatchOnOpenPrepackagedDatabase(intermediateFile, writable);
        if (!intermediateFile.renameTo(destinationFile)) {
            throw new IOException("Failed to move intermediate file (" + intermediateFile.getAbsolutePath() + ") to destination (" + destinationFile.getAbsolutePath() + ").");
        }
    }

    private final void dispatchOnOpenPrepackagedDatabase(File databaseFile, boolean writable) {
        DatabaseConfiguration databaseConfiguration = this.databaseConfiguration;
        if (databaseConfiguration == null) {
            Intrinsics.throwUninitializedPropertyAccessException("databaseConfiguration");
            databaseConfiguration = null;
        }
        if (databaseConfiguration.prepackagedDatabaseCallback == null) {
            return;
        }
        SupportSQLiteOpenHelper createFrameworkOpenHelper = createFrameworkOpenHelper(databaseFile);
        try {
            SupportSQLiteOpenHelper supportSQLiteOpenHelper = createFrameworkOpenHelper;
            SupportSQLiteDatabase writableDatabase = writable ? supportSQLiteOpenHelper.getWritableDatabase() : supportSQLiteOpenHelper.getReadableDatabase();
            DatabaseConfiguration databaseConfiguration2 = this.databaseConfiguration;
            if (databaseConfiguration2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("databaseConfiguration");
                databaseConfiguration2 = null;
            }
            RoomDatabase.PrepackagedDatabaseCallback prepackagedDatabaseCallback = databaseConfiguration2.prepackagedDatabaseCallback;
            Intrinsics.checkNotNull(prepackagedDatabaseCallback);
            prepackagedDatabaseCallback.onOpenPrepackagedDatabase(writableDatabase);
            Unit unit = Unit.INSTANCE;
            CloseableKt.closeFinally(createFrameworkOpenHelper, null);
        } finally {
        }
    }

    private final SupportSQLiteOpenHelper createFrameworkOpenHelper(File databaseFile) {
        try {
            final int readVersion = DBUtil.readVersion(databaseFile);
            FrameworkSQLiteOpenHelperFactory frameworkSQLiteOpenHelperFactory = new FrameworkSQLiteOpenHelperFactory();
            SupportSQLiteOpenHelper.Configuration.Builder name = SupportSQLiteOpenHelper.Configuration.INSTANCE.builder(this.context).name(databaseFile.getAbsolutePath());
            final int coerceAtLeast = RangesKt.coerceAtLeast(readVersion, 1);
            return frameworkSQLiteOpenHelperFactory.create(name.callback(new SupportSQLiteOpenHelper.Callback(coerceAtLeast) { // from class: androidx.room.SQLiteCopyOpenHelper$createFrameworkOpenHelper$configuration$1
                @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.Callback
                public void onCreate(SupportSQLiteDatabase db) {
                    Intrinsics.checkNotNullParameter(db, "db");
                }

                @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.Callback
                public void onUpgrade(SupportSQLiteDatabase db, int oldVersion, int newVersion) {
                    Intrinsics.checkNotNullParameter(db, "db");
                }

                @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.Callback
                public void onOpen(SupportSQLiteDatabase db) {
                    Intrinsics.checkNotNullParameter(db, "db");
                    int i = readVersion;
                    if (i < 1) {
                        db.setVersion(i);
                    }
                }
            }).build());
        } catch (IOException e) {
            throw new RuntimeException("Malformed database file, unable to read version.", e);
        }
    }
}
