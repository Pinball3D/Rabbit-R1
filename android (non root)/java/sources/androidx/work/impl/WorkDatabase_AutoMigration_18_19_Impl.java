package androidx.work.impl;

import androidx.room.migration.Migration;
import androidx.sqlite.db.SupportSQLiteDatabase;

/* loaded from: classes2.dex */
class WorkDatabase_AutoMigration_18_19_Impl extends Migration {
    public WorkDatabase_AutoMigration_18_19_Impl() {
        super(18, 19);
    }

    @Override // androidx.room.migration.Migration
    public void migrate(final SupportSQLiteDatabase database) {
        database.execSQL("ALTER TABLE `WorkSpec` ADD COLUMN `stop_reason` INTEGER NOT NULL DEFAULT -256");
    }
}
