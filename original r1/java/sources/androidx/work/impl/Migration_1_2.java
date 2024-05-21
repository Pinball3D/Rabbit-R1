package androidx.work.impl;

import androidx.room.migration.Migration;
import androidx.sqlite.db.SupportSQLiteDatabase;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: WorkDatabaseMigrations.kt */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016¨\u0006\u0007"}, d2 = {"Landroidx/work/impl/Migration_1_2;", "Landroidx/room/migration/Migration;", "()V", "migrate", "", "db", "Landroidx/sqlite/db/SupportSQLiteDatabase;", "work-runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class Migration_1_2 extends Migration {
    public static final Migration_1_2 INSTANCE = new Migration_1_2();

    private Migration_1_2() {
        super(1, 2);
    }

    @Override // androidx.room.migration.Migration
    public void migrate(SupportSQLiteDatabase db) {
        Intrinsics.checkNotNullParameter(db, "db");
        db.execSQL("\n    CREATE TABLE IF NOT EXISTS `SystemIdInfo` (`work_spec_id` TEXT NOT NULL, `system_id`\n    INTEGER NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`)\n    REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )\n    ");
        db.execSQL("\n    INSERT INTO SystemIdInfo(work_spec_id, system_id)\n    SELECT work_spec_id, alarm_id AS system_id FROM alarmInfo\n    ");
        db.execSQL("DROP TABLE IF EXISTS alarmInfo");
        db.execSQL("\n                INSERT OR IGNORE INTO worktag(tag, work_spec_id)\n                SELECT worker_class_name AS tag, id AS work_spec_id FROM workspec\n                ");
    }
}
