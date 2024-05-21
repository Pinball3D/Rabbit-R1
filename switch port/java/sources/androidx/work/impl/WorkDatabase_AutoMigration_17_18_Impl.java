package androidx.work.impl;

import androidx.room.migration.Migration;
import androidx.sqlite.db.SupportSQLiteDatabase;

/* loaded from: classes2.dex */
class WorkDatabase_AutoMigration_17_18_Impl extends Migration {
    public WorkDatabase_AutoMigration_17_18_Impl() {
        super(17, 18);
    }

    @Override // androidx.room.migration.Migration
    public void migrate(final SupportSQLiteDatabase database) {
        database.execSQL("ALTER TABLE `WorkSpec` ADD COLUMN `next_schedule_time_override` INTEGER NOT NULL DEFAULT 9223372036854775807");
        database.execSQL("ALTER TABLE `WorkSpec` ADD COLUMN `next_schedule_time_override_generation` INTEGER NOT NULL DEFAULT 0");
    }
}
