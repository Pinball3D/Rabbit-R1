package androidx.work.impl;

import android.content.Context;
import androidx.room.migration.Migration;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.work.impl.utils.PreferenceUtils;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: WorkDatabaseMigrations.kt */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0002\u0010\u0007J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\u000e"}, d2 = {"Landroidx/work/impl/RescheduleMigration;", "Landroidx/room/migration/Migration;", "mContext", "Landroid/content/Context;", "startVersion", "", "endVersion", "(Landroid/content/Context;II)V", "getMContext", "()Landroid/content/Context;", "migrate", "", "db", "Landroidx/sqlite/db/SupportSQLiteDatabase;", "work-runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class RescheduleMigration extends Migration {
    private final Context mContext;

    public final Context getMContext() {
        return this.mContext;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RescheduleMigration(Context mContext, int i, int i2) {
        super(i, i2);
        Intrinsics.checkNotNullParameter(mContext, "mContext");
        this.mContext = mContext;
    }

    @Override // androidx.room.migration.Migration
    public void migrate(SupportSQLiteDatabase db) {
        Intrinsics.checkNotNullParameter(db, "db");
        if (this.endVersion >= 10) {
            db.execSQL(PreferenceUtils.INSERT_PREFERENCE, new Object[]{PreferenceUtils.KEY_RESCHEDULE_NEEDED, 1});
        } else {
            this.mContext.getSharedPreferences(PreferenceUtils.PREFERENCES_FILE_NAME, 0).edit().putBoolean(PreferenceUtils.KEY_RESCHEDULE_NEEDED, true).apply();
        }
    }
}
