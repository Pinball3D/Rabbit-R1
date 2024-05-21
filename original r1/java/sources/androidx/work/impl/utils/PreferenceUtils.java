package androidx.work.impl.utils;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.arch.core.util.Function;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.Transformations;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.model.Preference;

/* loaded from: classes2.dex */
public class PreferenceUtils {
    public static final String CREATE_PREFERENCE = "CREATE TABLE IF NOT EXISTS `Preference` (`key` TEXT NOT NULL, `long_value` INTEGER, PRIMARY KEY(`key`))";
    public static final String INSERT_PREFERENCE = "INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)";
    public static final String KEY_LAST_CANCEL_ALL_TIME_MS = "last_cancel_all_time_ms";
    private static final String KEY_LAST_FORCE_STOP_MS = "last_force_stop_ms";
    public static final String KEY_RESCHEDULE_NEEDED = "reschedule_needed";
    public static final String PREFERENCES_FILE_NAME = "androidx.work.util.preferences";
    private final WorkDatabase mWorkDatabase;

    public PreferenceUtils(WorkDatabase workDatabase) {
        this.mWorkDatabase = workDatabase;
    }

    public long getLastCancelAllTimeMillis() {
        Long longValue = this.mWorkDatabase.preferenceDao().getLongValue(KEY_LAST_CANCEL_ALL_TIME_MS);
        if (longValue != null) {
            return longValue.longValue();
        }
        return 0L;
    }

    public LiveData<Long> getLastCancelAllTimeMillisLiveData() {
        return Transformations.map(this.mWorkDatabase.preferenceDao().getObservableLongValue(KEY_LAST_CANCEL_ALL_TIME_MS), new Function() { // from class: androidx.work.impl.utils.PreferenceUtils$$ExternalSyntheticLambda0
            @Override // androidx.arch.core.util.Function
            public final Object apply(Object obj) {
                Long valueOf;
                valueOf = Long.valueOf(r2 != null ? ((Long) obj).longValue() : 0L);
                return valueOf;
            }
        });
    }

    public void setLastCancelAllTimeMillis(final long timeMillis) {
        this.mWorkDatabase.preferenceDao().insertPreference(new Preference(KEY_LAST_CANCEL_ALL_TIME_MS, Long.valueOf(timeMillis)));
    }

    public boolean getNeedsReschedule() {
        Long longValue = this.mWorkDatabase.preferenceDao().getLongValue(KEY_RESCHEDULE_NEEDED);
        return longValue != null && longValue.longValue() == 1;
    }

    public void setNeedsReschedule(boolean needsReschedule) {
        this.mWorkDatabase.preferenceDao().insertPreference(new Preference(KEY_RESCHEDULE_NEEDED, needsReschedule));
    }

    public void setLastForceStopEventMillis(long lastForceStopTimeMillis) {
        this.mWorkDatabase.preferenceDao().insertPreference(new Preference(KEY_LAST_FORCE_STOP_MS, Long.valueOf(lastForceStopTimeMillis)));
    }

    public long getLastForceStopEventMillis() {
        Long longValue = this.mWorkDatabase.preferenceDao().getLongValue(KEY_LAST_FORCE_STOP_MS);
        if (longValue != null) {
            return longValue.longValue();
        }
        return 0L;
    }

    public static void migrateLegacyPreferences(Context context, SupportSQLiteDatabase sqLiteDatabase) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(PREFERENCES_FILE_NAME, 0);
        if (sharedPreferences.contains(KEY_RESCHEDULE_NEEDED) || sharedPreferences.contains(KEY_LAST_CANCEL_ALL_TIME_MS)) {
            long j = sharedPreferences.getLong(KEY_LAST_CANCEL_ALL_TIME_MS, 0L);
            long j2 = sharedPreferences.getBoolean(KEY_RESCHEDULE_NEEDED, false) ? 1L : 0L;
            sqLiteDatabase.beginTransaction();
            try {
                sqLiteDatabase.execSQL(INSERT_PREFERENCE, new Object[]{KEY_LAST_CANCEL_ALL_TIME_MS, Long.valueOf(j)});
                sqLiteDatabase.execSQL(INSERT_PREFERENCE, new Object[]{KEY_RESCHEDULE_NEEDED, Long.valueOf(j2)});
                sharedPreferences.edit().clear().apply();
                sqLiteDatabase.setTransactionSuccessful();
            } finally {
                sqLiteDatabase.endTransaction();
            }
        }
    }
}
