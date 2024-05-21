package androidx.work.impl.background.systemalarm;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import androidx.core.app.NotificationCompat;
import androidx.work.Logger;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.model.SystemIdInfo;
import androidx.work.impl.model.SystemIdInfoDao;
import androidx.work.impl.model.SystemIdInfoKt;
import androidx.work.impl.model.WorkGenerationalId;
import androidx.work.impl.utils.IdGenerator;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class Alarms {
    private static final String TAG = Logger.tagWithPrefix("Alarms");

    public static void setAlarm(Context context, WorkDatabase workDatabase, WorkGenerationalId id, long triggerAtMillis) {
        SystemIdInfoDao systemIdInfoDao = workDatabase.systemIdInfoDao();
        SystemIdInfo systemIdInfo = systemIdInfoDao.getSystemIdInfo(id);
        if (systemIdInfo != null) {
            cancelExactAlarm(context, id, systemIdInfo.systemId);
            setExactAlarm(context, id, systemIdInfo.systemId, triggerAtMillis);
        } else {
            int nextAlarmManagerId = new IdGenerator(workDatabase).nextAlarmManagerId();
            systemIdInfoDao.insertSystemIdInfo(SystemIdInfoKt.systemIdInfo(id, nextAlarmManagerId));
            setExactAlarm(context, id, nextAlarmManagerId, triggerAtMillis);
        }
    }

    public static void cancelAlarm(Context context, WorkDatabase workDatabase, WorkGenerationalId id) {
        SystemIdInfoDao systemIdInfoDao = workDatabase.systemIdInfoDao();
        SystemIdInfo systemIdInfo = systemIdInfoDao.getSystemIdInfo(id);
        if (systemIdInfo != null) {
            cancelExactAlarm(context, id, systemIdInfo.systemId);
            Logger.get().debug(TAG, "Removing SystemIdInfo for workSpecId (" + id + ")");
            systemIdInfoDao.removeSystemIdInfo(id);
        }
    }

    private static void cancelExactAlarm(Context context, WorkGenerationalId id, int alarmId) {
        AlarmManager alarmManager = (AlarmManager) context.getSystemService(NotificationCompat.CATEGORY_ALARM);
        PendingIntent service = PendingIntent.getService(context, alarmId, CommandHandler.createDelayMetIntent(context, id), 603979776);
        if (service == null || alarmManager == null) {
            return;
        }
        Logger.get().debug(TAG, "Cancelling existing alarm with (workSpecId, systemId) (" + id + ", " + alarmId + ")");
        alarmManager.cancel(service);
    }

    private static void setExactAlarm(Context context, WorkGenerationalId id, int alarmId, long triggerAtMillis) {
        AlarmManager alarmManager = (AlarmManager) context.getSystemService(NotificationCompat.CATEGORY_ALARM);
        PendingIntent service = PendingIntent.getService(context, alarmId, CommandHandler.createDelayMetIntent(context, id), 201326592);
        if (alarmManager != null) {
            Api19Impl.setExact(alarmManager, 0, triggerAtMillis, service);
        }
    }

    private Alarms() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class Api19Impl {
        private Api19Impl() {
        }

        static void setExact(AlarmManager alarmManager, int type, long triggerAtMillis, PendingIntent operation) {
            alarmManager.setExact(type, triggerAtMillis, operation);
        }
    }
}
