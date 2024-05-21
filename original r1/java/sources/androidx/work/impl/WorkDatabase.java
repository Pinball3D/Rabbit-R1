package androidx.work.impl;

import android.content.Context;
import androidx.room.Room;
import androidx.room.RoomDatabase;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import androidx.sqlite.db.framework.FrameworkSQLiteOpenHelperFactory;
import androidx.work.Clock;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.model.DependencyDao;
import androidx.work.impl.model.PreferenceDao;
import androidx.work.impl.model.RawWorkInfoDao;
import androidx.work.impl.model.SystemIdInfoDao;
import androidx.work.impl.model.WorkNameDao;
import androidx.work.impl.model.WorkProgressDao;
import androidx.work.impl.model.WorkSpecDao;
import androidx.work.impl.model.WorkTagDao;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: WorkDatabase.kt */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b'\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H&J\b\u0010\u0005\u001a\u00020\u0006H&J\b\u0010\u0007\u001a\u00020\bH&J\b\u0010\t\u001a\u00020\nH&J\b\u0010\u000b\u001a\u00020\fH&J\b\u0010\r\u001a\u00020\u000eH&J\b\u0010\u000f\u001a\u00020\u0010H&J\b\u0010\u0011\u001a\u00020\u0012H&¨\u0006\u0014"}, d2 = {"Landroidx/work/impl/WorkDatabase;", "Landroidx/room/RoomDatabase;", "()V", "dependencyDao", "Landroidx/work/impl/model/DependencyDao;", "preferenceDao", "Landroidx/work/impl/model/PreferenceDao;", "rawWorkInfoDao", "Landroidx/work/impl/model/RawWorkInfoDao;", "systemIdInfoDao", "Landroidx/work/impl/model/SystemIdInfoDao;", "workNameDao", "Landroidx/work/impl/model/WorkNameDao;", "workProgressDao", "Landroidx/work/impl/model/WorkProgressDao;", "workSpecDao", "Landroidx/work/impl/model/WorkSpecDao;", "workTagDao", "Landroidx/work/impl/model/WorkTagDao;", "Companion", "work-runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public abstract class WorkDatabase extends RoomDatabase {

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    @JvmStatic
    public static final WorkDatabase create(Context context, Executor executor, Clock clock, boolean z) {
        return INSTANCE.create(context, executor, clock, z);
    }

    public abstract DependencyDao dependencyDao();

    public abstract PreferenceDao preferenceDao();

    public abstract RawWorkInfoDao rawWorkInfoDao();

    public abstract SystemIdInfoDao systemIdInfoDao();

    public abstract WorkNameDao workNameDao();

    public abstract WorkProgressDao workProgressDao();

    public abstract WorkSpecDao workSpecDao();

    public abstract WorkTagDao workTagDao();

    /* compiled from: WorkDatabase.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J(\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0007¨\u0006\r"}, d2 = {"Landroidx/work/impl/WorkDatabase$Companion;", "", "()V", "create", "Landroidx/work/impl/WorkDatabase;", "context", "Landroid/content/Context;", "queryExecutor", "Ljava/util/concurrent/Executor;", "clock", "Landroidx/work/Clock;", "useTestDatabase", "", "work-runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final WorkDatabase create(final Context context, Executor queryExecutor, Clock clock, boolean useTestDatabase) {
            RoomDatabase.Builder openHelperFactory;
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(queryExecutor, "queryExecutor");
            Intrinsics.checkNotNullParameter(clock, "clock");
            if (useTestDatabase) {
                openHelperFactory = Room.inMemoryDatabaseBuilder(context, WorkDatabase.class).allowMainThreadQueries();
            } else {
                openHelperFactory = Room.databaseBuilder(context, WorkDatabase.class, WorkDatabasePathHelperKt.WORK_DATABASE_NAME).openHelperFactory(new SupportSQLiteOpenHelper.Factory() { // from class: androidx.work.impl.WorkDatabase$Companion$$ExternalSyntheticLambda0
                    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.Factory
                    public final SupportSQLiteOpenHelper create(SupportSQLiteOpenHelper.Configuration configuration) {
                        SupportSQLiteOpenHelper create$lambda$0;
                        create$lambda$0 = WorkDatabase.Companion.create$lambda$0(context, configuration);
                        return create$lambda$0;
                    }
                });
            }
            return (WorkDatabase) openHelperFactory.setQueryExecutor(queryExecutor).addCallback(new CleanupCallback(clock)).addMigrations(Migration_1_2.INSTANCE).addMigrations(new RescheduleMigration(context, 2, 3)).addMigrations(Migration_3_4.INSTANCE).addMigrations(Migration_4_5.INSTANCE).addMigrations(new RescheduleMigration(context, 5, 6)).addMigrations(Migration_6_7.INSTANCE).addMigrations(Migration_7_8.INSTANCE).addMigrations(Migration_8_9.INSTANCE).addMigrations(new WorkMigration9To10(context)).addMigrations(new RescheduleMigration(context, 10, 11)).addMigrations(Migration_11_12.INSTANCE).addMigrations(Migration_12_13.INSTANCE).addMigrations(Migration_15_16.INSTANCE).addMigrations(Migration_16_17.INSTANCE).fallbackToDestructiveMigration().build();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final SupportSQLiteOpenHelper create$lambda$0(Context context, SupportSQLiteOpenHelper.Configuration configuration) {
            Intrinsics.checkNotNullParameter(context, "$context");
            Intrinsics.checkNotNullParameter(configuration, "configuration");
            SupportSQLiteOpenHelper.Configuration.Builder builder = SupportSQLiteOpenHelper.Configuration.INSTANCE.builder(context);
            builder.name(configuration.name).callback(configuration.callback).noBackupDirectory(true).allowDataLossOnRecovery(true);
            return new FrameworkSQLiteOpenHelperFactory().create(builder.build());
        }
    }
}
