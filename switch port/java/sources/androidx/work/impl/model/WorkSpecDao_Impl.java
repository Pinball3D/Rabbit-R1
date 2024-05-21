package androidx.work.impl.model;

import android.database.Cursor;
import androidx.lifecycle.LiveData;
import androidx.room.CoroutinesRoom;
import androidx.room.EntityDeletionOrUpdateAdapter;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.SharedSQLiteStatement;
import androidx.room.util.CursorUtil;
import androidx.room.util.DBUtil;
import androidx.room.util.StringUtil;
import androidx.sqlite.db.SupportSQLiteStatement;
import androidx.work.BackoffPolicy;
import androidx.work.Constraints;
import androidx.work.Data;
import androidx.work.NetworkType;
import androidx.work.OutOfQuotaPolicy;
import androidx.work.WorkInfo;
import androidx.work.impl.model.WorkSpec;
import io.sentry.protocol.SentryThread;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
import kotlinx.coroutines.flow.Flow;

/* loaded from: classes2.dex */
public final class WorkSpecDao_Impl implements WorkSpecDao {
    private final RoomDatabase __db;
    private final EntityInsertionAdapter<WorkSpec> __insertionAdapterOfWorkSpec;
    private final SharedSQLiteStatement __preparedStmtOfDelete;
    private final SharedSQLiteStatement __preparedStmtOfIncrementGeneration;
    private final SharedSQLiteStatement __preparedStmtOfIncrementPeriodCount;
    private final SharedSQLiteStatement __preparedStmtOfIncrementWorkSpecRunAttemptCount;
    private final SharedSQLiteStatement __preparedStmtOfMarkWorkSpecScheduled;
    private final SharedSQLiteStatement __preparedStmtOfPruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast;
    private final SharedSQLiteStatement __preparedStmtOfResetScheduledState;
    private final SharedSQLiteStatement __preparedStmtOfResetWorkSpecNextScheduleTimeOverride;
    private final SharedSQLiteStatement __preparedStmtOfResetWorkSpecRunAttemptCount;
    private final SharedSQLiteStatement __preparedStmtOfSetCancelledState;
    private final SharedSQLiteStatement __preparedStmtOfSetLastEnqueueTime;
    private final SharedSQLiteStatement __preparedStmtOfSetNextScheduleTimeOverride;
    private final SharedSQLiteStatement __preparedStmtOfSetOutput;
    private final SharedSQLiteStatement __preparedStmtOfSetState;
    private final SharedSQLiteStatement __preparedStmtOfSetStopReason;
    private final EntityDeletionOrUpdateAdapter<WorkSpec> __updateAdapterOfWorkSpec;

    public WorkSpecDao_Impl(RoomDatabase __db) {
        this.__db = __db;
        this.__insertionAdapterOfWorkSpec = new EntityInsertionAdapter<WorkSpec>(__db) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.1
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "INSERT OR IGNORE INTO `WorkSpec` (`id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`last_enqueue_time`,`minimum_retention_duration`,`schedule_requested_at`,`run_in_foreground`,`out_of_quota_policy`,`period_count`,`generation`,`next_schedule_time_override`,`next_schedule_time_override_generation`,`stop_reason`,`required_network_type`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            }

            @Override // androidx.room.EntityInsertionAdapter
            public void bind(SupportSQLiteStatement supportSQLiteStatement, WorkSpec workSpec) {
                if (workSpec.id == null) {
                    supportSQLiteStatement.bindNull(1);
                } else {
                    supportSQLiteStatement.bindString(1, workSpec.id);
                }
                WorkTypeConverters workTypeConverters = WorkTypeConverters.INSTANCE;
                supportSQLiteStatement.bindLong(2, WorkTypeConverters.stateToInt(workSpec.state));
                if (workSpec.workerClassName == null) {
                    supportSQLiteStatement.bindNull(3);
                } else {
                    supportSQLiteStatement.bindString(3, workSpec.workerClassName);
                }
                if (workSpec.inputMergerClassName == null) {
                    supportSQLiteStatement.bindNull(4);
                } else {
                    supportSQLiteStatement.bindString(4, workSpec.inputMergerClassName);
                }
                byte[] byteArrayInternal = Data.toByteArrayInternal(workSpec.input);
                if (byteArrayInternal == null) {
                    supportSQLiteStatement.bindNull(5);
                } else {
                    supportSQLiteStatement.bindBlob(5, byteArrayInternal);
                }
                byte[] byteArrayInternal2 = Data.toByteArrayInternal(workSpec.output);
                if (byteArrayInternal2 == null) {
                    supportSQLiteStatement.bindNull(6);
                } else {
                    supportSQLiteStatement.bindBlob(6, byteArrayInternal2);
                }
                supportSQLiteStatement.bindLong(7, workSpec.initialDelay);
                supportSQLiteStatement.bindLong(8, workSpec.intervalDuration);
                supportSQLiteStatement.bindLong(9, workSpec.flexDuration);
                supportSQLiteStatement.bindLong(10, workSpec.runAttemptCount);
                WorkTypeConverters workTypeConverters2 = WorkTypeConverters.INSTANCE;
                supportSQLiteStatement.bindLong(11, WorkTypeConverters.backoffPolicyToInt(workSpec.backoffPolicy));
                supportSQLiteStatement.bindLong(12, workSpec.backoffDelayDuration);
                supportSQLiteStatement.bindLong(13, workSpec.lastEnqueueTime);
                supportSQLiteStatement.bindLong(14, workSpec.minimumRetentionDuration);
                supportSQLiteStatement.bindLong(15, workSpec.scheduleRequestedAt);
                supportSQLiteStatement.bindLong(16, workSpec.expedited ? 1L : 0L);
                WorkTypeConverters workTypeConverters3 = WorkTypeConverters.INSTANCE;
                supportSQLiteStatement.bindLong(17, WorkTypeConverters.outOfQuotaPolicyToInt(workSpec.outOfQuotaPolicy));
                supportSQLiteStatement.bindLong(18, workSpec.getPeriodCount());
                supportSQLiteStatement.bindLong(19, workSpec.getGeneration());
                supportSQLiteStatement.bindLong(20, workSpec.getNextScheduleTimeOverride());
                supportSQLiteStatement.bindLong(21, workSpec.getNextScheduleTimeOverrideGeneration());
                supportSQLiteStatement.bindLong(22, workSpec.getStopReason());
                Constraints constraints = workSpec.constraints;
                if (constraints != null) {
                    WorkTypeConverters workTypeConverters4 = WorkTypeConverters.INSTANCE;
                    supportSQLiteStatement.bindLong(23, WorkTypeConverters.networkTypeToInt(constraints.getRequiredNetworkType()));
                    supportSQLiteStatement.bindLong(24, constraints.getRequiresCharging() ? 1L : 0L);
                    supportSQLiteStatement.bindLong(25, constraints.getRequiresDeviceIdle() ? 1L : 0L);
                    supportSQLiteStatement.bindLong(26, constraints.getRequiresBatteryNotLow() ? 1L : 0L);
                    supportSQLiteStatement.bindLong(27, constraints.getRequiresStorageNotLow() ? 1L : 0L);
                    supportSQLiteStatement.bindLong(28, constraints.getContentTriggerUpdateDelayMillis());
                    supportSQLiteStatement.bindLong(29, constraints.getContentTriggerMaxDelayMillis());
                    WorkTypeConverters workTypeConverters5 = WorkTypeConverters.INSTANCE;
                    byte[] ofTriggersToByteArray = WorkTypeConverters.setOfTriggersToByteArray(constraints.getContentUriTriggers());
                    if (ofTriggersToByteArray == null) {
                        supportSQLiteStatement.bindNull(30);
                        return;
                    } else {
                        supportSQLiteStatement.bindBlob(30, ofTriggersToByteArray);
                        return;
                    }
                }
                supportSQLiteStatement.bindNull(23);
                supportSQLiteStatement.bindNull(24);
                supportSQLiteStatement.bindNull(25);
                supportSQLiteStatement.bindNull(26);
                supportSQLiteStatement.bindNull(27);
                supportSQLiteStatement.bindNull(28);
                supportSQLiteStatement.bindNull(29);
                supportSQLiteStatement.bindNull(30);
            }
        };
        this.__updateAdapterOfWorkSpec = new EntityDeletionOrUpdateAdapter<WorkSpec>(__db) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.2
            @Override // androidx.room.EntityDeletionOrUpdateAdapter, androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE OR ABORT `WorkSpec` SET `id` = ?,`state` = ?,`worker_class_name` = ?,`input_merger_class_name` = ?,`input` = ?,`output` = ?,`initial_delay` = ?,`interval_duration` = ?,`flex_duration` = ?,`run_attempt_count` = ?,`backoff_policy` = ?,`backoff_delay_duration` = ?,`last_enqueue_time` = ?,`minimum_retention_duration` = ?,`schedule_requested_at` = ?,`run_in_foreground` = ?,`out_of_quota_policy` = ?,`period_count` = ?,`generation` = ?,`next_schedule_time_override` = ?,`next_schedule_time_override_generation` = ?,`stop_reason` = ?,`required_network_type` = ?,`requires_charging` = ?,`requires_device_idle` = ?,`requires_battery_not_low` = ?,`requires_storage_not_low` = ?,`trigger_content_update_delay` = ?,`trigger_max_content_delay` = ?,`content_uri_triggers` = ? WHERE `id` = ?";
            }

            @Override // androidx.room.EntityDeletionOrUpdateAdapter
            public void bind(SupportSQLiteStatement supportSQLiteStatement, WorkSpec workSpec) {
                if (workSpec.id == null) {
                    supportSQLiteStatement.bindNull(1);
                } else {
                    supportSQLiteStatement.bindString(1, workSpec.id);
                }
                WorkTypeConverters workTypeConverters = WorkTypeConverters.INSTANCE;
                supportSQLiteStatement.bindLong(2, WorkTypeConverters.stateToInt(workSpec.state));
                if (workSpec.workerClassName == null) {
                    supportSQLiteStatement.bindNull(3);
                } else {
                    supportSQLiteStatement.bindString(3, workSpec.workerClassName);
                }
                if (workSpec.inputMergerClassName == null) {
                    supportSQLiteStatement.bindNull(4);
                } else {
                    supportSQLiteStatement.bindString(4, workSpec.inputMergerClassName);
                }
                byte[] byteArrayInternal = Data.toByteArrayInternal(workSpec.input);
                if (byteArrayInternal == null) {
                    supportSQLiteStatement.bindNull(5);
                } else {
                    supportSQLiteStatement.bindBlob(5, byteArrayInternal);
                }
                byte[] byteArrayInternal2 = Data.toByteArrayInternal(workSpec.output);
                if (byteArrayInternal2 == null) {
                    supportSQLiteStatement.bindNull(6);
                } else {
                    supportSQLiteStatement.bindBlob(6, byteArrayInternal2);
                }
                supportSQLiteStatement.bindLong(7, workSpec.initialDelay);
                supportSQLiteStatement.bindLong(8, workSpec.intervalDuration);
                supportSQLiteStatement.bindLong(9, workSpec.flexDuration);
                supportSQLiteStatement.bindLong(10, workSpec.runAttemptCount);
                WorkTypeConverters workTypeConverters2 = WorkTypeConverters.INSTANCE;
                supportSQLiteStatement.bindLong(11, WorkTypeConverters.backoffPolicyToInt(workSpec.backoffPolicy));
                supportSQLiteStatement.bindLong(12, workSpec.backoffDelayDuration);
                supportSQLiteStatement.bindLong(13, workSpec.lastEnqueueTime);
                supportSQLiteStatement.bindLong(14, workSpec.minimumRetentionDuration);
                supportSQLiteStatement.bindLong(15, workSpec.scheduleRequestedAt);
                supportSQLiteStatement.bindLong(16, workSpec.expedited ? 1L : 0L);
                WorkTypeConverters workTypeConverters3 = WorkTypeConverters.INSTANCE;
                supportSQLiteStatement.bindLong(17, WorkTypeConverters.outOfQuotaPolicyToInt(workSpec.outOfQuotaPolicy));
                supportSQLiteStatement.bindLong(18, workSpec.getPeriodCount());
                supportSQLiteStatement.bindLong(19, workSpec.getGeneration());
                supportSQLiteStatement.bindLong(20, workSpec.getNextScheduleTimeOverride());
                supportSQLiteStatement.bindLong(21, workSpec.getNextScheduleTimeOverrideGeneration());
                supportSQLiteStatement.bindLong(22, workSpec.getStopReason());
                Constraints constraints = workSpec.constraints;
                if (constraints != null) {
                    WorkTypeConverters workTypeConverters4 = WorkTypeConverters.INSTANCE;
                    supportSQLiteStatement.bindLong(23, WorkTypeConverters.networkTypeToInt(constraints.getRequiredNetworkType()));
                    supportSQLiteStatement.bindLong(24, constraints.getRequiresCharging() ? 1L : 0L);
                    supportSQLiteStatement.bindLong(25, constraints.getRequiresDeviceIdle() ? 1L : 0L);
                    supportSQLiteStatement.bindLong(26, constraints.getRequiresBatteryNotLow() ? 1L : 0L);
                    supportSQLiteStatement.bindLong(27, constraints.getRequiresStorageNotLow() ? 1L : 0L);
                    supportSQLiteStatement.bindLong(28, constraints.getContentTriggerUpdateDelayMillis());
                    supportSQLiteStatement.bindLong(29, constraints.getContentTriggerMaxDelayMillis());
                    WorkTypeConverters workTypeConverters5 = WorkTypeConverters.INSTANCE;
                    byte[] ofTriggersToByteArray = WorkTypeConverters.setOfTriggersToByteArray(constraints.getContentUriTriggers());
                    if (ofTriggersToByteArray == null) {
                        supportSQLiteStatement.bindNull(30);
                    } else {
                        supportSQLiteStatement.bindBlob(30, ofTriggersToByteArray);
                    }
                } else {
                    supportSQLiteStatement.bindNull(23);
                    supportSQLiteStatement.bindNull(24);
                    supportSQLiteStatement.bindNull(25);
                    supportSQLiteStatement.bindNull(26);
                    supportSQLiteStatement.bindNull(27);
                    supportSQLiteStatement.bindNull(28);
                    supportSQLiteStatement.bindNull(29);
                    supportSQLiteStatement.bindNull(30);
                }
                if (workSpec.id == null) {
                    supportSQLiteStatement.bindNull(31);
                } else {
                    supportSQLiteStatement.bindString(31, workSpec.id);
                }
            }
        };
        this.__preparedStmtOfDelete = new SharedSQLiteStatement(__db) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.3
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE FROM workspec WHERE id=?";
            }
        };
        this.__preparedStmtOfSetState = new SharedSQLiteStatement(__db) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.4
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE workspec SET state=? WHERE id=?";
            }
        };
        this.__preparedStmtOfSetCancelledState = new SharedSQLiteStatement(__db) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.5
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE workspec SET stop_reason = CASE WHEN state=1 THEN 1 ELSE -256 END, state=5 WHERE id=?";
            }
        };
        this.__preparedStmtOfIncrementPeriodCount = new SharedSQLiteStatement(__db) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.6
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE workspec SET period_count=period_count+1 WHERE id=?";
            }
        };
        this.__preparedStmtOfSetOutput = new SharedSQLiteStatement(__db) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.7
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE workspec SET output=? WHERE id=?";
            }
        };
        this.__preparedStmtOfSetLastEnqueueTime = new SharedSQLiteStatement(__db) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.8
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE workspec SET last_enqueue_time=? WHERE id=?";
            }
        };
        this.__preparedStmtOfIncrementWorkSpecRunAttemptCount = new SharedSQLiteStatement(__db) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.9
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE workspec SET run_attempt_count=run_attempt_count+1 WHERE id=?";
            }
        };
        this.__preparedStmtOfResetWorkSpecRunAttemptCount = new SharedSQLiteStatement(__db) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.10
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE workspec SET run_attempt_count=0 WHERE id=?";
            }
        };
        this.__preparedStmtOfSetNextScheduleTimeOverride = new SharedSQLiteStatement(__db) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.11
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE workspec SET next_schedule_time_override=? WHERE id=?";
            }
        };
        this.__preparedStmtOfResetWorkSpecNextScheduleTimeOverride = new SharedSQLiteStatement(__db) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.12
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE workspec SET next_schedule_time_override=9223372036854775807 WHERE (id=? AND next_schedule_time_override_generation=?)";
            }
        };
        this.__preparedStmtOfMarkWorkSpecScheduled = new SharedSQLiteStatement(__db) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.13
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE workspec SET schedule_requested_at=? WHERE id=?";
            }
        };
        this.__preparedStmtOfResetScheduledState = new SharedSQLiteStatement(__db) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.14
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE workspec SET schedule_requested_at=-1 WHERE state NOT IN (2, 3, 5)";
            }
        };
        this.__preparedStmtOfPruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast = new SharedSQLiteStatement(__db) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.15
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE FROM workspec WHERE state IN (2, 3, 5) AND (SELECT COUNT(*)=0 FROM dependency WHERE     prerequisite_id=id AND     work_spec_id NOT IN         (SELECT id FROM workspec WHERE state IN (2, 3, 5)))";
            }
        };
        this.__preparedStmtOfIncrementGeneration = new SharedSQLiteStatement(__db) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.16
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE workspec SET generation=generation+1 WHERE id=?";
            }
        };
        this.__preparedStmtOfSetStopReason = new SharedSQLiteStatement(__db) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.17
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE workspec SET stop_reason=? WHERE id=?";
            }
        };
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void insertWorkSpec(final WorkSpec workSpec) {
        this.__db.assertNotSuspendingTransaction();
        this.__db.beginTransaction();
        try {
            this.__insertionAdapterOfWorkSpec.insert((EntityInsertionAdapter<WorkSpec>) workSpec);
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void updateWorkSpec(final WorkSpec workSpec) {
        this.__db.assertNotSuspendingTransaction();
        this.__db.beginTransaction();
        try {
            this.__updateAdapterOfWorkSpec.handle(workSpec);
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void delete(final String id) {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.__preparedStmtOfDelete.acquire();
        if (id == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, id);
        }
        this.__db.beginTransaction();
        try {
            acquire.executeUpdateDelete();
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
            this.__preparedStmtOfDelete.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public int setState(final WorkInfo.State state, final String id) {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.__preparedStmtOfSetState.acquire();
        WorkTypeConverters workTypeConverters = WorkTypeConverters.INSTANCE;
        acquire.bindLong(1, WorkTypeConverters.stateToInt(state));
        if (id == null) {
            acquire.bindNull(2);
        } else {
            acquire.bindString(2, id);
        }
        this.__db.beginTransaction();
        try {
            int executeUpdateDelete = acquire.executeUpdateDelete();
            this.__db.setTransactionSuccessful();
            return executeUpdateDelete;
        } finally {
            this.__db.endTransaction();
            this.__preparedStmtOfSetState.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public int setCancelledState(final String id) {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.__preparedStmtOfSetCancelledState.acquire();
        if (id == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, id);
        }
        this.__db.beginTransaction();
        try {
            int executeUpdateDelete = acquire.executeUpdateDelete();
            this.__db.setTransactionSuccessful();
            return executeUpdateDelete;
        } finally {
            this.__db.endTransaction();
            this.__preparedStmtOfSetCancelledState.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void incrementPeriodCount(final String id) {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.__preparedStmtOfIncrementPeriodCount.acquire();
        if (id == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, id);
        }
        this.__db.beginTransaction();
        try {
            acquire.executeUpdateDelete();
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
            this.__preparedStmtOfIncrementPeriodCount.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void setOutput(final String id, final Data output) {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.__preparedStmtOfSetOutput.acquire();
        byte[] byteArrayInternal = Data.toByteArrayInternal(output);
        if (byteArrayInternal == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindBlob(1, byteArrayInternal);
        }
        if (id == null) {
            acquire.bindNull(2);
        } else {
            acquire.bindString(2, id);
        }
        this.__db.beginTransaction();
        try {
            acquire.executeUpdateDelete();
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
            this.__preparedStmtOfSetOutput.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void setLastEnqueueTime(final String id, final long enqueueTime) {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.__preparedStmtOfSetLastEnqueueTime.acquire();
        acquire.bindLong(1, enqueueTime);
        if (id == null) {
            acquire.bindNull(2);
        } else {
            acquire.bindString(2, id);
        }
        this.__db.beginTransaction();
        try {
            acquire.executeUpdateDelete();
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
            this.__preparedStmtOfSetLastEnqueueTime.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public int incrementWorkSpecRunAttemptCount(final String id) {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.__preparedStmtOfIncrementWorkSpecRunAttemptCount.acquire();
        if (id == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, id);
        }
        this.__db.beginTransaction();
        try {
            int executeUpdateDelete = acquire.executeUpdateDelete();
            this.__db.setTransactionSuccessful();
            return executeUpdateDelete;
        } finally {
            this.__db.endTransaction();
            this.__preparedStmtOfIncrementWorkSpecRunAttemptCount.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public int resetWorkSpecRunAttemptCount(final String id) {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.__preparedStmtOfResetWorkSpecRunAttemptCount.acquire();
        if (id == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, id);
        }
        this.__db.beginTransaction();
        try {
            int executeUpdateDelete = acquire.executeUpdateDelete();
            this.__db.setTransactionSuccessful();
            return executeUpdateDelete;
        } finally {
            this.__db.endTransaction();
            this.__preparedStmtOfResetWorkSpecRunAttemptCount.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void setNextScheduleTimeOverride(final String id, final long nextScheduleTimeOverrideMillis) {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.__preparedStmtOfSetNextScheduleTimeOverride.acquire();
        acquire.bindLong(1, nextScheduleTimeOverrideMillis);
        if (id == null) {
            acquire.bindNull(2);
        } else {
            acquire.bindString(2, id);
        }
        this.__db.beginTransaction();
        try {
            acquire.executeUpdateDelete();
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
            this.__preparedStmtOfSetNextScheduleTimeOverride.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void resetWorkSpecNextScheduleTimeOverride(final String id, final int overrideGeneration) {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.__preparedStmtOfResetWorkSpecNextScheduleTimeOverride.acquire();
        if (id == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, id);
        }
        acquire.bindLong(2, overrideGeneration);
        this.__db.beginTransaction();
        try {
            acquire.executeUpdateDelete();
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
            this.__preparedStmtOfResetWorkSpecNextScheduleTimeOverride.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public int markWorkSpecScheduled(final String id, final long startTime) {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.__preparedStmtOfMarkWorkSpecScheduled.acquire();
        acquire.bindLong(1, startTime);
        if (id == null) {
            acquire.bindNull(2);
        } else {
            acquire.bindString(2, id);
        }
        this.__db.beginTransaction();
        try {
            int executeUpdateDelete = acquire.executeUpdateDelete();
            this.__db.setTransactionSuccessful();
            return executeUpdateDelete;
        } finally {
            this.__db.endTransaction();
            this.__preparedStmtOfMarkWorkSpecScheduled.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public int resetScheduledState() {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.__preparedStmtOfResetScheduledState.acquire();
        this.__db.beginTransaction();
        try {
            int executeUpdateDelete = acquire.executeUpdateDelete();
            this.__db.setTransactionSuccessful();
            return executeUpdateDelete;
        } finally {
            this.__db.endTransaction();
            this.__preparedStmtOfResetScheduledState.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void pruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast() {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.__preparedStmtOfPruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast.acquire();
        this.__db.beginTransaction();
        try {
            acquire.executeUpdateDelete();
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
            this.__preparedStmtOfPruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void incrementGeneration(final String id) {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.__preparedStmtOfIncrementGeneration.acquire();
        if (id == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, id);
        }
        this.__db.beginTransaction();
        try {
            acquire.executeUpdateDelete();
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
            this.__preparedStmtOfIncrementGeneration.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void setStopReason(final String id, final int stopReason) {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.__preparedStmtOfSetStopReason.acquire();
        acquire.bindLong(1, stopReason);
        if (id == null) {
            acquire.bindNull(2);
        } else {
            acquire.bindString(2, id);
        }
        this.__db.beginTransaction();
        try {
            acquire.executeUpdateDelete();
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
            this.__preparedStmtOfSetStopReason.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public WorkSpec getWorkSpec(final String id) {
        RoomSQLiteQuery roomSQLiteQuery;
        WorkSpec workSpec;
        int i;
        boolean z;
        int i2;
        boolean z2;
        int i3;
        boolean z3;
        int i4;
        boolean z4;
        int i5;
        boolean z5;
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM workspec WHERE id=?", 1);
        if (id == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, id);
        }
        this.__db.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, "id");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, SentryThread.JsonKeys.STATE);
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, "worker_class_name");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, "input_merger_class_name");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(query, "input");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(query, "output");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(query, "initial_delay");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(query, "interval_duration");
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(query, "flex_duration");
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(query, "run_attempt_count");
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(query, "backoff_policy");
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(query, "backoff_delay_duration");
            int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(query, "last_enqueue_time");
            int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(query, "minimum_retention_duration");
            roomSQLiteQuery = acquire;
            try {
                int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(query, "schedule_requested_at");
                int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(query, "run_in_foreground");
                int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(query, "out_of_quota_policy");
                int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(query, "period_count");
                int columnIndexOrThrow19 = CursorUtil.getColumnIndexOrThrow(query, "generation");
                int columnIndexOrThrow20 = CursorUtil.getColumnIndexOrThrow(query, "next_schedule_time_override");
                int columnIndexOrThrow21 = CursorUtil.getColumnIndexOrThrow(query, "next_schedule_time_override_generation");
                int columnIndexOrThrow22 = CursorUtil.getColumnIndexOrThrow(query, "stop_reason");
                int columnIndexOrThrow23 = CursorUtil.getColumnIndexOrThrow(query, "required_network_type");
                int columnIndexOrThrow24 = CursorUtil.getColumnIndexOrThrow(query, "requires_charging");
                int columnIndexOrThrow25 = CursorUtil.getColumnIndexOrThrow(query, "requires_device_idle");
                int columnIndexOrThrow26 = CursorUtil.getColumnIndexOrThrow(query, "requires_battery_not_low");
                int columnIndexOrThrow27 = CursorUtil.getColumnIndexOrThrow(query, "requires_storage_not_low");
                int columnIndexOrThrow28 = CursorUtil.getColumnIndexOrThrow(query, "trigger_content_update_delay");
                int columnIndexOrThrow29 = CursorUtil.getColumnIndexOrThrow(query, "trigger_max_content_delay");
                int columnIndexOrThrow30 = CursorUtil.getColumnIndexOrThrow(query, "content_uri_triggers");
                if (query.moveToFirst()) {
                    String string = query.isNull(columnIndexOrThrow) ? null : query.getString(columnIndexOrThrow);
                    int i6 = query.getInt(columnIndexOrThrow2);
                    WorkTypeConverters workTypeConverters = WorkTypeConverters.INSTANCE;
                    WorkInfo.State intToState = WorkTypeConverters.intToState(i6);
                    String string2 = query.isNull(columnIndexOrThrow3) ? null : query.getString(columnIndexOrThrow3);
                    String string3 = query.isNull(columnIndexOrThrow4) ? null : query.getString(columnIndexOrThrow4);
                    Data fromByteArray = Data.fromByteArray(query.isNull(columnIndexOrThrow5) ? null : query.getBlob(columnIndexOrThrow5));
                    Data fromByteArray2 = Data.fromByteArray(query.isNull(columnIndexOrThrow6) ? null : query.getBlob(columnIndexOrThrow6));
                    long j = query.getLong(columnIndexOrThrow7);
                    long j2 = query.getLong(columnIndexOrThrow8);
                    long j3 = query.getLong(columnIndexOrThrow9);
                    int i7 = query.getInt(columnIndexOrThrow10);
                    int i8 = query.getInt(columnIndexOrThrow11);
                    WorkTypeConverters workTypeConverters2 = WorkTypeConverters.INSTANCE;
                    BackoffPolicy intToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy(i8);
                    long j4 = query.getLong(columnIndexOrThrow12);
                    long j5 = query.getLong(columnIndexOrThrow13);
                    long j6 = query.getLong(columnIndexOrThrow14);
                    long j7 = query.getLong(columnIndexOrThrow15);
                    if (query.getInt(columnIndexOrThrow16) != 0) {
                        i = columnIndexOrThrow17;
                        z = true;
                    } else {
                        i = columnIndexOrThrow17;
                        z = false;
                    }
                    int i9 = query.getInt(i);
                    WorkTypeConverters workTypeConverters3 = WorkTypeConverters.INSTANCE;
                    OutOfQuotaPolicy intToOutOfQuotaPolicy = WorkTypeConverters.intToOutOfQuotaPolicy(i9);
                    int i10 = query.getInt(columnIndexOrThrow18);
                    int i11 = query.getInt(columnIndexOrThrow19);
                    long j8 = query.getLong(columnIndexOrThrow20);
                    int i12 = query.getInt(columnIndexOrThrow21);
                    int i13 = query.getInt(columnIndexOrThrow22);
                    int i14 = query.getInt(columnIndexOrThrow23);
                    WorkTypeConverters workTypeConverters4 = WorkTypeConverters.INSTANCE;
                    NetworkType intToNetworkType = WorkTypeConverters.intToNetworkType(i14);
                    if (query.getInt(columnIndexOrThrow24) != 0) {
                        i2 = columnIndexOrThrow25;
                        z2 = true;
                    } else {
                        i2 = columnIndexOrThrow25;
                        z2 = false;
                    }
                    if (query.getInt(i2) != 0) {
                        i3 = columnIndexOrThrow26;
                        z3 = true;
                    } else {
                        i3 = columnIndexOrThrow26;
                        z3 = false;
                    }
                    if (query.getInt(i3) != 0) {
                        i4 = columnIndexOrThrow27;
                        z4 = true;
                    } else {
                        i4 = columnIndexOrThrow27;
                        z4 = false;
                    }
                    if (query.getInt(i4) != 0) {
                        i5 = columnIndexOrThrow28;
                        z5 = true;
                    } else {
                        i5 = columnIndexOrThrow28;
                        z5 = false;
                    }
                    long j9 = query.getLong(i5);
                    long j10 = query.getLong(columnIndexOrThrow29);
                    byte[] blob = query.isNull(columnIndexOrThrow30) ? null : query.getBlob(columnIndexOrThrow30);
                    WorkTypeConverters workTypeConverters5 = WorkTypeConverters.INSTANCE;
                    workSpec = new WorkSpec(string, intToState, string2, string3, fromByteArray, fromByteArray2, j, j2, j3, new Constraints(intToNetworkType, z2, z3, z4, z5, j9, j10, WorkTypeConverters.byteArrayToSetOfTriggers(blob)), i7, intToBackoffPolicy, j4, j5, j6, j7, z, intToOutOfQuotaPolicy, i10, i11, j8, i12, i13);
                } else {
                    workSpec = null;
                }
                query.close();
                roomSQLiteQuery.release();
                return workSpec;
            } catch (Throwable th) {
                th = th;
                query.close();
                roomSQLiteQuery.release();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            roomSQLiteQuery = acquire;
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<WorkSpec.IdAndState> getWorkSpecIdAndStatesForName(final String name) {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT id, state FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)", 1);
        if (name == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, name);
        }
        this.__db.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            ArrayList arrayList = new ArrayList(query.getCount());
            while (query.moveToNext()) {
                String string = query.isNull(0) ? null : query.getString(0);
                int i = query.getInt(1);
                WorkTypeConverters workTypeConverters = WorkTypeConverters.INSTANCE;
                arrayList.add(new WorkSpec.IdAndState(string, WorkTypeConverters.intToState(i)));
            }
            return arrayList;
        } finally {
            query.close();
            acquire.release();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<String> getAllWorkSpecIds() {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT id FROM workspec", 0);
        this.__db.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            ArrayList arrayList = new ArrayList(query.getCount());
            while (query.moveToNext()) {
                arrayList.add(query.isNull(0) ? null : query.getString(0));
            }
            return arrayList;
        } finally {
            query.close();
            acquire.release();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public LiveData<List<String>> getAllWorkSpecIdsLiveData() {
        final RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT id FROM workspec", 0);
        return this.__db.getInvalidationTracker().createLiveData(new String[]{"workspec"}, true, new Callable<List<String>>() { // from class: androidx.work.impl.model.WorkSpecDao_Impl.18
            @Override // java.util.concurrent.Callable
            public List<String> call() throws Exception {
                WorkSpecDao_Impl.this.__db.beginTransaction();
                try {
                    Cursor query = DBUtil.query(WorkSpecDao_Impl.this.__db, acquire, false, null);
                    try {
                        ArrayList arrayList = new ArrayList(query.getCount());
                        while (query.moveToNext()) {
                            arrayList.add(query.isNull(0) ? null : query.getString(0));
                        }
                        WorkSpecDao_Impl.this.__db.setTransactionSuccessful();
                        return arrayList;
                    } finally {
                        query.close();
                    }
                } finally {
                    WorkSpecDao_Impl.this.__db.endTransaction();
                }
            }

            protected void finalize() {
                acquire.release();
            }
        });
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public WorkInfo.State getState(final String id) {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT state FROM workspec WHERE id=?", 1);
        if (id == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, id);
        }
        this.__db.assertNotSuspendingTransaction();
        WorkInfo.State state = null;
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            if (query.moveToFirst()) {
                Integer valueOf = query.isNull(0) ? null : Integer.valueOf(query.getInt(0));
                if (valueOf != null) {
                    WorkTypeConverters workTypeConverters = WorkTypeConverters.INSTANCE;
                    state = WorkTypeConverters.intToState(valueOf.intValue());
                }
            }
            return state;
        } finally {
            query.close();
            acquire.release();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public WorkSpec.WorkInfoPojo getWorkStatusPojoForId(String str) {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT id, state, output, run_attempt_count, generation, required_network_type, requires_charging,requires_device_idle, requires_battery_not_low, requires_storage_not_low, trigger_content_update_delay, trigger_max_content_delay, content_uri_triggers, initial_delay, interval_duration, flex_duration, backoff_policy, backoff_delay_duration, last_enqueue_time, period_count, next_schedule_time_override, stop_reason FROM workspec WHERE id=?", 1);
        if (str == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, str);
        }
        this.__db.assertNotSuspendingTransaction();
        this.__db.beginTransaction();
        try {
            WorkSpec.WorkInfoPojo workInfoPojo = null;
            byte[] blob = null;
            Cursor query = DBUtil.query(this.__db, acquire, true, null);
            try {
                HashMap<String, ArrayList<String>> hashMap = new HashMap<>();
                HashMap<String, ArrayList<Data>> hashMap2 = new HashMap<>();
                while (query.moveToNext()) {
                    String string = query.getString(0);
                    if (hashMap.get(string) == null) {
                        hashMap.put(string, new ArrayList<>());
                    }
                    String string2 = query.getString(0);
                    if (hashMap2.get(string2) == null) {
                        hashMap2.put(string2, new ArrayList<>());
                    }
                }
                query.moveToPosition(-1);
                __fetchRelationshipWorkTagAsjavaLangString(hashMap);
                __fetchRelationshipWorkProgressAsandroidxWorkData(hashMap2);
                if (query.moveToFirst()) {
                    String string3 = query.isNull(0) ? null : query.getString(0);
                    int i = query.getInt(1);
                    WorkTypeConverters workTypeConverters = WorkTypeConverters.INSTANCE;
                    WorkInfo.State intToState = WorkTypeConverters.intToState(i);
                    Data fromByteArray = Data.fromByteArray(query.isNull(2) ? null : query.getBlob(2));
                    int i2 = query.getInt(3);
                    int i3 = query.getInt(4);
                    long j = query.getLong(13);
                    long j2 = query.getLong(14);
                    long j3 = query.getLong(15);
                    int i4 = query.getInt(16);
                    WorkTypeConverters workTypeConverters2 = WorkTypeConverters.INSTANCE;
                    BackoffPolicy intToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy(i4);
                    long j4 = query.getLong(17);
                    long j5 = query.getLong(18);
                    int i5 = query.getInt(19);
                    long j6 = query.getLong(20);
                    int i6 = query.getInt(21);
                    int i7 = query.getInt(5);
                    WorkTypeConverters workTypeConverters3 = WorkTypeConverters.INSTANCE;
                    NetworkType intToNetworkType = WorkTypeConverters.intToNetworkType(i7);
                    boolean z = query.getInt(6) != 0;
                    boolean z2 = query.getInt(7) != 0;
                    boolean z3 = query.getInt(8) != 0;
                    boolean z4 = query.getInt(9) != 0;
                    long j7 = query.getLong(10);
                    long j8 = query.getLong(11);
                    if (!query.isNull(12)) {
                        blob = query.getBlob(12);
                    }
                    WorkTypeConverters workTypeConverters4 = WorkTypeConverters.INSTANCE;
                    Constraints constraints = new Constraints(intToNetworkType, z, z2, z3, z4, j7, j8, WorkTypeConverters.byteArrayToSetOfTriggers(blob));
                    ArrayList<String> arrayList = hashMap.get(query.getString(0));
                    if (arrayList == null) {
                        arrayList = new ArrayList<>();
                    }
                    ArrayList<String> arrayList2 = arrayList;
                    ArrayList<Data> arrayList3 = hashMap2.get(query.getString(0));
                    if (arrayList3 == null) {
                        arrayList3 = new ArrayList<>();
                    }
                    workInfoPojo = new WorkSpec.WorkInfoPojo(string3, intToState, fromByteArray, j, j2, j3, constraints, i2, intToBackoffPolicy, j4, j5, i5, i3, j6, i6, arrayList2, arrayList3);
                }
                this.__db.setTransactionSuccessful();
                return workInfoPojo;
            } finally {
                query.close();
                acquire.release();
            }
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<WorkSpec.WorkInfoPojo> getWorkStatusPojoForIds(final List<String> ids) {
        StringBuilder newStringBuilder = StringUtil.newStringBuilder();
        newStringBuilder.append("SELECT id, state, output, run_attempt_count, generation, required_network_type, requires_charging,requires_device_idle, requires_battery_not_low, requires_storage_not_low, trigger_content_update_delay, trigger_max_content_delay, content_uri_triggers, initial_delay, interval_duration, flex_duration, backoff_policy, backoff_delay_duration, last_enqueue_time, period_count, next_schedule_time_override, stop_reason FROM workspec WHERE id IN (");
        int size = ids.size();
        StringUtil.appendPlaceholders(newStringBuilder, size);
        newStringBuilder.append(")");
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire(newStringBuilder.toString(), size);
        int i = 1;
        for (String str : ids) {
            if (str == null) {
                acquire.bindNull(i);
            } else {
                acquire.bindString(i, str);
            }
            i++;
        }
        this.__db.assertNotSuspendingTransaction();
        this.__db.beginTransaction();
        try {
            Cursor query = DBUtil.query(this.__db, acquire, true, null);
            try {
                HashMap<String, ArrayList<String>> hashMap = new HashMap<>();
                HashMap<String, ArrayList<Data>> hashMap2 = new HashMap<>();
                while (query.moveToNext()) {
                    String string = query.getString(0);
                    if (hashMap.get(string) == null) {
                        hashMap.put(string, new ArrayList<>());
                    }
                    String string2 = query.getString(0);
                    if (hashMap2.get(string2) == null) {
                        hashMap2.put(string2, new ArrayList<>());
                    }
                }
                query.moveToPosition(-1);
                __fetchRelationshipWorkTagAsjavaLangString(hashMap);
                __fetchRelationshipWorkProgressAsandroidxWorkData(hashMap2);
                ArrayList arrayList = new ArrayList(query.getCount());
                while (query.moveToNext()) {
                    String string3 = query.isNull(0) ? null : query.getString(0);
                    int i2 = query.getInt(1);
                    WorkTypeConverters workTypeConverters = WorkTypeConverters.INSTANCE;
                    WorkInfo.State intToState = WorkTypeConverters.intToState(i2);
                    Data fromByteArray = Data.fromByteArray(query.isNull(2) ? null : query.getBlob(2));
                    int i3 = query.getInt(3);
                    int i4 = query.getInt(4);
                    long j = query.getLong(13);
                    long j2 = query.getLong(14);
                    long j3 = query.getLong(15);
                    int i5 = query.getInt(16);
                    WorkTypeConverters workTypeConverters2 = WorkTypeConverters.INSTANCE;
                    BackoffPolicy intToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy(i5);
                    long j4 = query.getLong(17);
                    long j5 = query.getLong(18);
                    int i6 = query.getInt(19);
                    long j6 = query.getLong(20);
                    int i7 = query.getInt(21);
                    int i8 = query.getInt(5);
                    WorkTypeConverters workTypeConverters3 = WorkTypeConverters.INSTANCE;
                    NetworkType intToNetworkType = WorkTypeConverters.intToNetworkType(i8);
                    boolean z = query.getInt(6) != 0;
                    boolean z2 = query.getInt(7) != 0;
                    boolean z3 = query.getInt(8) != 0;
                    boolean z4 = query.getInt(9) != 0;
                    long j7 = query.getLong(10);
                    long j8 = query.getLong(11);
                    byte[] blob = query.isNull(12) ? null : query.getBlob(12);
                    WorkTypeConverters workTypeConverters4 = WorkTypeConverters.INSTANCE;
                    Constraints constraints = new Constraints(intToNetworkType, z, z2, z3, z4, j7, j8, WorkTypeConverters.byteArrayToSetOfTriggers(blob));
                    ArrayList<String> arrayList2 = hashMap.get(query.getString(0));
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList<>();
                    }
                    ArrayList<String> arrayList3 = arrayList2;
                    ArrayList<Data> arrayList4 = hashMap2.get(query.getString(0));
                    if (arrayList4 == null) {
                        arrayList4 = new ArrayList<>();
                    }
                    arrayList.add(new WorkSpec.WorkInfoPojo(string3, intToState, fromByteArray, j, j2, j3, constraints, i3, intToBackoffPolicy, j4, j5, i6, i4, j6, i7, arrayList3, arrayList4));
                }
                this.__db.setTransactionSuccessful();
                return arrayList;
            } finally {
                query.close();
                acquire.release();
            }
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public LiveData<List<WorkSpec.WorkInfoPojo>> getWorkStatusPojoLiveDataForIds(final List<String> ids) {
        StringBuilder newStringBuilder = StringUtil.newStringBuilder();
        newStringBuilder.append("SELECT id, state, output, run_attempt_count, generation, required_network_type, requires_charging,requires_device_idle, requires_battery_not_low, requires_storage_not_low, trigger_content_update_delay, trigger_max_content_delay, content_uri_triggers, initial_delay, interval_duration, flex_duration, backoff_policy, backoff_delay_duration, last_enqueue_time, period_count, next_schedule_time_override, stop_reason FROM workspec WHERE id IN (");
        int size = ids.size();
        StringUtil.appendPlaceholders(newStringBuilder, size);
        newStringBuilder.append(")");
        final RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire(newStringBuilder.toString(), size);
        int i = 1;
        for (String str : ids) {
            if (str == null) {
                acquire.bindNull(i);
            } else {
                acquire.bindString(i, str);
            }
            i++;
        }
        return this.__db.getInvalidationTracker().createLiveData(new String[]{"WorkTag", "WorkProgress", "workspec"}, true, new Callable<List<WorkSpec.WorkInfoPojo>>() { // from class: androidx.work.impl.model.WorkSpecDao_Impl.19
            @Override // java.util.concurrent.Callable
            public List<WorkSpec.WorkInfoPojo> call() throws Exception {
                WorkSpecDao_Impl.this.__db.beginTransaction();
                try {
                    Cursor query = DBUtil.query(WorkSpecDao_Impl.this.__db, acquire, true, null);
                    try {
                        HashMap hashMap = new HashMap();
                        HashMap hashMap2 = new HashMap();
                        while (query.moveToNext()) {
                            String string = query.getString(0);
                            if (((ArrayList) hashMap.get(string)) == null) {
                                hashMap.put(string, new ArrayList());
                            }
                            String string2 = query.getString(0);
                            if (((ArrayList) hashMap2.get(string2)) == null) {
                                hashMap2.put(string2, new ArrayList());
                            }
                        }
                        query.moveToPosition(-1);
                        WorkSpecDao_Impl.this.__fetchRelationshipWorkTagAsjavaLangString(hashMap);
                        WorkSpecDao_Impl.this.__fetchRelationshipWorkProgressAsandroidxWorkData(hashMap2);
                        ArrayList arrayList = new ArrayList(query.getCount());
                        while (query.moveToNext()) {
                            String string3 = query.isNull(0) ? null : query.getString(0);
                            int i2 = query.getInt(1);
                            WorkTypeConverters workTypeConverters = WorkTypeConverters.INSTANCE;
                            WorkInfo.State intToState = WorkTypeConverters.intToState(i2);
                            Data fromByteArray = Data.fromByteArray(query.isNull(2) ? null : query.getBlob(2));
                            int i3 = query.getInt(3);
                            int i4 = query.getInt(4);
                            long j = query.getLong(13);
                            long j2 = query.getLong(14);
                            long j3 = query.getLong(15);
                            int i5 = query.getInt(16);
                            WorkTypeConverters workTypeConverters2 = WorkTypeConverters.INSTANCE;
                            BackoffPolicy intToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy(i5);
                            long j4 = query.getLong(17);
                            long j5 = query.getLong(18);
                            int i6 = query.getInt(19);
                            long j6 = query.getLong(20);
                            int i7 = query.getInt(21);
                            int i8 = query.getInt(5);
                            WorkTypeConverters workTypeConverters3 = WorkTypeConverters.INSTANCE;
                            NetworkType intToNetworkType = WorkTypeConverters.intToNetworkType(i8);
                            boolean z = query.getInt(6) != 0;
                            boolean z2 = query.getInt(7) != 0;
                            boolean z3 = query.getInt(8) != 0;
                            boolean z4 = query.getInt(9) != 0;
                            long j7 = query.getLong(10);
                            long j8 = query.getLong(11);
                            byte[] blob = query.isNull(12) ? null : query.getBlob(12);
                            WorkTypeConverters workTypeConverters4 = WorkTypeConverters.INSTANCE;
                            Constraints constraints = new Constraints(intToNetworkType, z, z2, z3, z4, j7, j8, WorkTypeConverters.byteArrayToSetOfTriggers(blob));
                            ArrayList arrayList2 = (ArrayList) hashMap.get(query.getString(0));
                            if (arrayList2 == null) {
                                arrayList2 = new ArrayList();
                            }
                            ArrayList arrayList3 = arrayList2;
                            ArrayList arrayList4 = (ArrayList) hashMap2.get(query.getString(0));
                            if (arrayList4 == null) {
                                arrayList4 = new ArrayList();
                            }
                            arrayList.add(new WorkSpec.WorkInfoPojo(string3, intToState, fromByteArray, j, j2, j3, constraints, i3, intToBackoffPolicy, j4, j5, i6, i4, j6, i7, arrayList3, arrayList4));
                        }
                        WorkSpecDao_Impl.this.__db.setTransactionSuccessful();
                        return arrayList;
                    } finally {
                        query.close();
                    }
                } finally {
                    WorkSpecDao_Impl.this.__db.endTransaction();
                }
            }

            protected void finalize() {
                acquire.release();
            }
        });
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public Flow<List<WorkSpec.WorkInfoPojo>> getWorkStatusPojoFlowDataForIds(final List<String> ids) {
        StringBuilder newStringBuilder = StringUtil.newStringBuilder();
        newStringBuilder.append("SELECT id, state, output, run_attempt_count, generation, required_network_type, requires_charging,requires_device_idle, requires_battery_not_low, requires_storage_not_low, trigger_content_update_delay, trigger_max_content_delay, content_uri_triggers, initial_delay, interval_duration, flex_duration, backoff_policy, backoff_delay_duration, last_enqueue_time, period_count, next_schedule_time_override, stop_reason FROM workspec WHERE id IN (");
        int size = ids.size();
        StringUtil.appendPlaceholders(newStringBuilder, size);
        newStringBuilder.append(")");
        final RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire(newStringBuilder.toString(), size);
        int i = 1;
        for (String str : ids) {
            if (str == null) {
                acquire.bindNull(i);
            } else {
                acquire.bindString(i, str);
            }
            i++;
        }
        return CoroutinesRoom.createFlow(this.__db, true, new String[]{"WorkTag", "WorkProgress", "workspec"}, new Callable<List<WorkSpec.WorkInfoPojo>>() { // from class: androidx.work.impl.model.WorkSpecDao_Impl.20
            @Override // java.util.concurrent.Callable
            public List<WorkSpec.WorkInfoPojo> call() throws Exception {
                WorkSpecDao_Impl.this.__db.beginTransaction();
                try {
                    Cursor query = DBUtil.query(WorkSpecDao_Impl.this.__db, acquire, true, null);
                    try {
                        HashMap hashMap = new HashMap();
                        HashMap hashMap2 = new HashMap();
                        while (query.moveToNext()) {
                            String string = query.getString(0);
                            if (((ArrayList) hashMap.get(string)) == null) {
                                hashMap.put(string, new ArrayList());
                            }
                            String string2 = query.getString(0);
                            if (((ArrayList) hashMap2.get(string2)) == null) {
                                hashMap2.put(string2, new ArrayList());
                            }
                        }
                        query.moveToPosition(-1);
                        WorkSpecDao_Impl.this.__fetchRelationshipWorkTagAsjavaLangString(hashMap);
                        WorkSpecDao_Impl.this.__fetchRelationshipWorkProgressAsandroidxWorkData(hashMap2);
                        ArrayList arrayList = new ArrayList(query.getCount());
                        while (query.moveToNext()) {
                            String string3 = query.isNull(0) ? null : query.getString(0);
                            int i2 = query.getInt(1);
                            WorkTypeConverters workTypeConverters = WorkTypeConverters.INSTANCE;
                            WorkInfo.State intToState = WorkTypeConverters.intToState(i2);
                            Data fromByteArray = Data.fromByteArray(query.isNull(2) ? null : query.getBlob(2));
                            int i3 = query.getInt(3);
                            int i4 = query.getInt(4);
                            long j = query.getLong(13);
                            long j2 = query.getLong(14);
                            long j3 = query.getLong(15);
                            int i5 = query.getInt(16);
                            WorkTypeConverters workTypeConverters2 = WorkTypeConverters.INSTANCE;
                            BackoffPolicy intToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy(i5);
                            long j4 = query.getLong(17);
                            long j5 = query.getLong(18);
                            int i6 = query.getInt(19);
                            long j6 = query.getLong(20);
                            int i7 = query.getInt(21);
                            int i8 = query.getInt(5);
                            WorkTypeConverters workTypeConverters3 = WorkTypeConverters.INSTANCE;
                            NetworkType intToNetworkType = WorkTypeConverters.intToNetworkType(i8);
                            boolean z = query.getInt(6) != 0;
                            boolean z2 = query.getInt(7) != 0;
                            boolean z3 = query.getInt(8) != 0;
                            boolean z4 = query.getInt(9) != 0;
                            long j7 = query.getLong(10);
                            long j8 = query.getLong(11);
                            byte[] blob = query.isNull(12) ? null : query.getBlob(12);
                            WorkTypeConverters workTypeConverters4 = WorkTypeConverters.INSTANCE;
                            Constraints constraints = new Constraints(intToNetworkType, z, z2, z3, z4, j7, j8, WorkTypeConverters.byteArrayToSetOfTriggers(blob));
                            ArrayList arrayList2 = (ArrayList) hashMap.get(query.getString(0));
                            if (arrayList2 == null) {
                                arrayList2 = new ArrayList();
                            }
                            ArrayList arrayList3 = arrayList2;
                            ArrayList arrayList4 = (ArrayList) hashMap2.get(query.getString(0));
                            if (arrayList4 == null) {
                                arrayList4 = new ArrayList();
                            }
                            arrayList.add(new WorkSpec.WorkInfoPojo(string3, intToState, fromByteArray, j, j2, j3, constraints, i3, intToBackoffPolicy, j4, j5, i6, i4, j6, i7, arrayList3, arrayList4));
                        }
                        WorkSpecDao_Impl.this.__db.setTransactionSuccessful();
                        return arrayList;
                    } finally {
                        query.close();
                    }
                } finally {
                    WorkSpecDao_Impl.this.__db.endTransaction();
                }
            }

            protected void finalize() {
                acquire.release();
            }
        });
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<WorkSpec.WorkInfoPojo> getWorkStatusPojoForTag(final String tag) {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT id, state, output, run_attempt_count, generation, required_network_type, requires_charging,requires_device_idle, requires_battery_not_low, requires_storage_not_low, trigger_content_update_delay, trigger_max_content_delay, content_uri_triggers, initial_delay, interval_duration, flex_duration, backoff_policy, backoff_delay_duration, last_enqueue_time, period_count, next_schedule_time_override, stop_reason FROM workspec WHERE id IN\n            (SELECT work_spec_id FROM worktag WHERE tag=?)", 1);
        if (tag == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, tag);
        }
        this.__db.assertNotSuspendingTransaction();
        this.__db.beginTransaction();
        try {
            Cursor query = DBUtil.query(this.__db, acquire, true, null);
            try {
                HashMap<String, ArrayList<String>> hashMap = new HashMap<>();
                HashMap<String, ArrayList<Data>> hashMap2 = new HashMap<>();
                while (query.moveToNext()) {
                    String string = query.getString(0);
                    if (hashMap.get(string) == null) {
                        hashMap.put(string, new ArrayList<>());
                    }
                    String string2 = query.getString(0);
                    if (hashMap2.get(string2) == null) {
                        hashMap2.put(string2, new ArrayList<>());
                    }
                }
                query.moveToPosition(-1);
                __fetchRelationshipWorkTagAsjavaLangString(hashMap);
                __fetchRelationshipWorkProgressAsandroidxWorkData(hashMap2);
                ArrayList arrayList = new ArrayList(query.getCount());
                while (query.moveToNext()) {
                    String string3 = query.isNull(0) ? null : query.getString(0);
                    int i = query.getInt(1);
                    WorkTypeConverters workTypeConverters = WorkTypeConverters.INSTANCE;
                    WorkInfo.State intToState = WorkTypeConverters.intToState(i);
                    Data fromByteArray = Data.fromByteArray(query.isNull(2) ? null : query.getBlob(2));
                    int i2 = query.getInt(3);
                    int i3 = query.getInt(4);
                    long j = query.getLong(13);
                    long j2 = query.getLong(14);
                    long j3 = query.getLong(15);
                    int i4 = query.getInt(16);
                    WorkTypeConverters workTypeConverters2 = WorkTypeConverters.INSTANCE;
                    BackoffPolicy intToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy(i4);
                    long j4 = query.getLong(17);
                    long j5 = query.getLong(18);
                    int i5 = query.getInt(19);
                    long j6 = query.getLong(20);
                    int i6 = query.getInt(21);
                    int i7 = query.getInt(5);
                    WorkTypeConverters workTypeConverters3 = WorkTypeConverters.INSTANCE;
                    NetworkType intToNetworkType = WorkTypeConverters.intToNetworkType(i7);
                    boolean z = query.getInt(6) != 0;
                    boolean z2 = query.getInt(7) != 0;
                    boolean z3 = query.getInt(8) != 0;
                    boolean z4 = query.getInt(9) != 0;
                    long j7 = query.getLong(10);
                    long j8 = query.getLong(11);
                    byte[] blob = query.isNull(12) ? null : query.getBlob(12);
                    WorkTypeConverters workTypeConverters4 = WorkTypeConverters.INSTANCE;
                    Constraints constraints = new Constraints(intToNetworkType, z, z2, z3, z4, j7, j8, WorkTypeConverters.byteArrayToSetOfTriggers(blob));
                    ArrayList<String> arrayList2 = hashMap.get(query.getString(0));
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList<>();
                    }
                    ArrayList<String> arrayList3 = arrayList2;
                    ArrayList<Data> arrayList4 = hashMap2.get(query.getString(0));
                    if (arrayList4 == null) {
                        arrayList4 = new ArrayList<>();
                    }
                    arrayList.add(new WorkSpec.WorkInfoPojo(string3, intToState, fromByteArray, j, j2, j3, constraints, i2, intToBackoffPolicy, j4, j5, i5, i3, j6, i6, arrayList3, arrayList4));
                }
                this.__db.setTransactionSuccessful();
                return arrayList;
            } finally {
                query.close();
                acquire.release();
            }
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public Flow<List<WorkSpec.WorkInfoPojo>> getWorkStatusPojoFlowForTag(final String tag) {
        final RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT id, state, output, run_attempt_count, generation, required_network_type, requires_charging,requires_device_idle, requires_battery_not_low, requires_storage_not_low, trigger_content_update_delay, trigger_max_content_delay, content_uri_triggers, initial_delay, interval_duration, flex_duration, backoff_policy, backoff_delay_duration, last_enqueue_time, period_count, next_schedule_time_override, stop_reason FROM workspec WHERE id IN\n            (SELECT work_spec_id FROM worktag WHERE tag=?)", 1);
        if (tag == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, tag);
        }
        return CoroutinesRoom.createFlow(this.__db, true, new String[]{"WorkTag", "WorkProgress", "workspec", "worktag"}, new Callable<List<WorkSpec.WorkInfoPojo>>() { // from class: androidx.work.impl.model.WorkSpecDao_Impl.21
            @Override // java.util.concurrent.Callable
            public List<WorkSpec.WorkInfoPojo> call() throws Exception {
                WorkSpecDao_Impl.this.__db.beginTransaction();
                try {
                    Cursor query = DBUtil.query(WorkSpecDao_Impl.this.__db, acquire, true, null);
                    try {
                        HashMap hashMap = new HashMap();
                        HashMap hashMap2 = new HashMap();
                        while (query.moveToNext()) {
                            String string = query.getString(0);
                            if (((ArrayList) hashMap.get(string)) == null) {
                                hashMap.put(string, new ArrayList());
                            }
                            String string2 = query.getString(0);
                            if (((ArrayList) hashMap2.get(string2)) == null) {
                                hashMap2.put(string2, new ArrayList());
                            }
                        }
                        query.moveToPosition(-1);
                        WorkSpecDao_Impl.this.__fetchRelationshipWorkTagAsjavaLangString(hashMap);
                        WorkSpecDao_Impl.this.__fetchRelationshipWorkProgressAsandroidxWorkData(hashMap2);
                        ArrayList arrayList = new ArrayList(query.getCount());
                        while (query.moveToNext()) {
                            String string3 = query.isNull(0) ? null : query.getString(0);
                            int i = query.getInt(1);
                            WorkTypeConverters workTypeConverters = WorkTypeConverters.INSTANCE;
                            WorkInfo.State intToState = WorkTypeConverters.intToState(i);
                            Data fromByteArray = Data.fromByteArray(query.isNull(2) ? null : query.getBlob(2));
                            int i2 = query.getInt(3);
                            int i3 = query.getInt(4);
                            long j = query.getLong(13);
                            long j2 = query.getLong(14);
                            long j3 = query.getLong(15);
                            int i4 = query.getInt(16);
                            WorkTypeConverters workTypeConverters2 = WorkTypeConverters.INSTANCE;
                            BackoffPolicy intToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy(i4);
                            long j4 = query.getLong(17);
                            long j5 = query.getLong(18);
                            int i5 = query.getInt(19);
                            long j6 = query.getLong(20);
                            int i6 = query.getInt(21);
                            int i7 = query.getInt(5);
                            WorkTypeConverters workTypeConverters3 = WorkTypeConverters.INSTANCE;
                            NetworkType intToNetworkType = WorkTypeConverters.intToNetworkType(i7);
                            boolean z = query.getInt(6) != 0;
                            boolean z2 = query.getInt(7) != 0;
                            boolean z3 = query.getInt(8) != 0;
                            boolean z4 = query.getInt(9) != 0;
                            long j7 = query.getLong(10);
                            long j8 = query.getLong(11);
                            byte[] blob = query.isNull(12) ? null : query.getBlob(12);
                            WorkTypeConverters workTypeConverters4 = WorkTypeConverters.INSTANCE;
                            Constraints constraints = new Constraints(intToNetworkType, z, z2, z3, z4, j7, j8, WorkTypeConverters.byteArrayToSetOfTriggers(blob));
                            ArrayList arrayList2 = (ArrayList) hashMap.get(query.getString(0));
                            if (arrayList2 == null) {
                                arrayList2 = new ArrayList();
                            }
                            ArrayList arrayList3 = arrayList2;
                            ArrayList arrayList4 = (ArrayList) hashMap2.get(query.getString(0));
                            if (arrayList4 == null) {
                                arrayList4 = new ArrayList();
                            }
                            arrayList.add(new WorkSpec.WorkInfoPojo(string3, intToState, fromByteArray, j, j2, j3, constraints, i2, intToBackoffPolicy, j4, j5, i5, i3, j6, i6, arrayList3, arrayList4));
                        }
                        WorkSpecDao_Impl.this.__db.setTransactionSuccessful();
                        return arrayList;
                    } finally {
                        query.close();
                    }
                } finally {
                    WorkSpecDao_Impl.this.__db.endTransaction();
                }
            }

            protected void finalize() {
                acquire.release();
            }
        });
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public LiveData<List<WorkSpec.WorkInfoPojo>> getWorkStatusPojoLiveDataForTag(final String tag) {
        final RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT id, state, output, run_attempt_count, generation, required_network_type, requires_charging,requires_device_idle, requires_battery_not_low, requires_storage_not_low, trigger_content_update_delay, trigger_max_content_delay, content_uri_triggers, initial_delay, interval_duration, flex_duration, backoff_policy, backoff_delay_duration, last_enqueue_time, period_count, next_schedule_time_override, stop_reason FROM workspec WHERE id IN\n            (SELECT work_spec_id FROM worktag WHERE tag=?)", 1);
        if (tag == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, tag);
        }
        return this.__db.getInvalidationTracker().createLiveData(new String[]{"WorkTag", "WorkProgress", "workspec", "worktag"}, true, new Callable<List<WorkSpec.WorkInfoPojo>>() { // from class: androidx.work.impl.model.WorkSpecDao_Impl.22
            @Override // java.util.concurrent.Callable
            public List<WorkSpec.WorkInfoPojo> call() throws Exception {
                WorkSpecDao_Impl.this.__db.beginTransaction();
                try {
                    Cursor query = DBUtil.query(WorkSpecDao_Impl.this.__db, acquire, true, null);
                    try {
                        HashMap hashMap = new HashMap();
                        HashMap hashMap2 = new HashMap();
                        while (query.moveToNext()) {
                            String string = query.getString(0);
                            if (((ArrayList) hashMap.get(string)) == null) {
                                hashMap.put(string, new ArrayList());
                            }
                            String string2 = query.getString(0);
                            if (((ArrayList) hashMap2.get(string2)) == null) {
                                hashMap2.put(string2, new ArrayList());
                            }
                        }
                        query.moveToPosition(-1);
                        WorkSpecDao_Impl.this.__fetchRelationshipWorkTagAsjavaLangString(hashMap);
                        WorkSpecDao_Impl.this.__fetchRelationshipWorkProgressAsandroidxWorkData(hashMap2);
                        ArrayList arrayList = new ArrayList(query.getCount());
                        while (query.moveToNext()) {
                            String string3 = query.isNull(0) ? null : query.getString(0);
                            int i = query.getInt(1);
                            WorkTypeConverters workTypeConverters = WorkTypeConverters.INSTANCE;
                            WorkInfo.State intToState = WorkTypeConverters.intToState(i);
                            Data fromByteArray = Data.fromByteArray(query.isNull(2) ? null : query.getBlob(2));
                            int i2 = query.getInt(3);
                            int i3 = query.getInt(4);
                            long j = query.getLong(13);
                            long j2 = query.getLong(14);
                            long j3 = query.getLong(15);
                            int i4 = query.getInt(16);
                            WorkTypeConverters workTypeConverters2 = WorkTypeConverters.INSTANCE;
                            BackoffPolicy intToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy(i4);
                            long j4 = query.getLong(17);
                            long j5 = query.getLong(18);
                            int i5 = query.getInt(19);
                            long j6 = query.getLong(20);
                            int i6 = query.getInt(21);
                            int i7 = query.getInt(5);
                            WorkTypeConverters workTypeConverters3 = WorkTypeConverters.INSTANCE;
                            NetworkType intToNetworkType = WorkTypeConverters.intToNetworkType(i7);
                            boolean z = query.getInt(6) != 0;
                            boolean z2 = query.getInt(7) != 0;
                            boolean z3 = query.getInt(8) != 0;
                            boolean z4 = query.getInt(9) != 0;
                            long j7 = query.getLong(10);
                            long j8 = query.getLong(11);
                            byte[] blob = query.isNull(12) ? null : query.getBlob(12);
                            WorkTypeConverters workTypeConverters4 = WorkTypeConverters.INSTANCE;
                            Constraints constraints = new Constraints(intToNetworkType, z, z2, z3, z4, j7, j8, WorkTypeConverters.byteArrayToSetOfTriggers(blob));
                            ArrayList arrayList2 = (ArrayList) hashMap.get(query.getString(0));
                            if (arrayList2 == null) {
                                arrayList2 = new ArrayList();
                            }
                            ArrayList arrayList3 = arrayList2;
                            ArrayList arrayList4 = (ArrayList) hashMap2.get(query.getString(0));
                            if (arrayList4 == null) {
                                arrayList4 = new ArrayList();
                            }
                            arrayList.add(new WorkSpec.WorkInfoPojo(string3, intToState, fromByteArray, j, j2, j3, constraints, i2, intToBackoffPolicy, j4, j5, i5, i3, j6, i6, arrayList3, arrayList4));
                        }
                        WorkSpecDao_Impl.this.__db.setTransactionSuccessful();
                        return arrayList;
                    } finally {
                        query.close();
                    }
                } finally {
                    WorkSpecDao_Impl.this.__db.endTransaction();
                }
            }

            protected void finalize() {
                acquire.release();
            }
        });
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<WorkSpec.WorkInfoPojo> getWorkStatusPojoForName(final String name) {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT id, state, output, run_attempt_count, generation, required_network_type, requires_charging,requires_device_idle, requires_battery_not_low, requires_storage_not_low, trigger_content_update_delay, trigger_max_content_delay, content_uri_triggers, initial_delay, interval_duration, flex_duration, backoff_policy, backoff_delay_duration, last_enqueue_time, period_count, next_schedule_time_override, stop_reason FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)", 1);
        if (name == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, name);
        }
        this.__db.assertNotSuspendingTransaction();
        this.__db.beginTransaction();
        try {
            Cursor query = DBUtil.query(this.__db, acquire, true, null);
            try {
                HashMap<String, ArrayList<String>> hashMap = new HashMap<>();
                HashMap<String, ArrayList<Data>> hashMap2 = new HashMap<>();
                while (query.moveToNext()) {
                    String string = query.getString(0);
                    if (hashMap.get(string) == null) {
                        hashMap.put(string, new ArrayList<>());
                    }
                    String string2 = query.getString(0);
                    if (hashMap2.get(string2) == null) {
                        hashMap2.put(string2, new ArrayList<>());
                    }
                }
                query.moveToPosition(-1);
                __fetchRelationshipWorkTagAsjavaLangString(hashMap);
                __fetchRelationshipWorkProgressAsandroidxWorkData(hashMap2);
                ArrayList arrayList = new ArrayList(query.getCount());
                while (query.moveToNext()) {
                    String string3 = query.isNull(0) ? null : query.getString(0);
                    int i = query.getInt(1);
                    WorkTypeConverters workTypeConverters = WorkTypeConverters.INSTANCE;
                    WorkInfo.State intToState = WorkTypeConverters.intToState(i);
                    Data fromByteArray = Data.fromByteArray(query.isNull(2) ? null : query.getBlob(2));
                    int i2 = query.getInt(3);
                    int i3 = query.getInt(4);
                    long j = query.getLong(13);
                    long j2 = query.getLong(14);
                    long j3 = query.getLong(15);
                    int i4 = query.getInt(16);
                    WorkTypeConverters workTypeConverters2 = WorkTypeConverters.INSTANCE;
                    BackoffPolicy intToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy(i4);
                    long j4 = query.getLong(17);
                    long j5 = query.getLong(18);
                    int i5 = query.getInt(19);
                    long j6 = query.getLong(20);
                    int i6 = query.getInt(21);
                    int i7 = query.getInt(5);
                    WorkTypeConverters workTypeConverters3 = WorkTypeConverters.INSTANCE;
                    NetworkType intToNetworkType = WorkTypeConverters.intToNetworkType(i7);
                    boolean z = query.getInt(6) != 0;
                    boolean z2 = query.getInt(7) != 0;
                    boolean z3 = query.getInt(8) != 0;
                    boolean z4 = query.getInt(9) != 0;
                    long j7 = query.getLong(10);
                    long j8 = query.getLong(11);
                    byte[] blob = query.isNull(12) ? null : query.getBlob(12);
                    WorkTypeConverters workTypeConverters4 = WorkTypeConverters.INSTANCE;
                    Constraints constraints = new Constraints(intToNetworkType, z, z2, z3, z4, j7, j8, WorkTypeConverters.byteArrayToSetOfTriggers(blob));
                    ArrayList<String> arrayList2 = hashMap.get(query.getString(0));
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList<>();
                    }
                    ArrayList<String> arrayList3 = arrayList2;
                    ArrayList<Data> arrayList4 = hashMap2.get(query.getString(0));
                    if (arrayList4 == null) {
                        arrayList4 = new ArrayList<>();
                    }
                    arrayList.add(new WorkSpec.WorkInfoPojo(string3, intToState, fromByteArray, j, j2, j3, constraints, i2, intToBackoffPolicy, j4, j5, i5, i3, j6, i6, arrayList3, arrayList4));
                }
                this.__db.setTransactionSuccessful();
                return arrayList;
            } finally {
                query.close();
                acquire.release();
            }
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public LiveData<List<WorkSpec.WorkInfoPojo>> getWorkStatusPojoLiveDataForName(final String name) {
        final RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT id, state, output, run_attempt_count, generation, required_network_type, requires_charging,requires_device_idle, requires_battery_not_low, requires_storage_not_low, trigger_content_update_delay, trigger_max_content_delay, content_uri_triggers, initial_delay, interval_duration, flex_duration, backoff_policy, backoff_delay_duration, last_enqueue_time, period_count, next_schedule_time_override, stop_reason FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)", 1);
        if (name == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, name);
        }
        return this.__db.getInvalidationTracker().createLiveData(new String[]{"WorkTag", "WorkProgress", "workspec", "workname"}, true, new Callable<List<WorkSpec.WorkInfoPojo>>() { // from class: androidx.work.impl.model.WorkSpecDao_Impl.23
            @Override // java.util.concurrent.Callable
            public List<WorkSpec.WorkInfoPojo> call() throws Exception {
                WorkSpecDao_Impl.this.__db.beginTransaction();
                try {
                    Cursor query = DBUtil.query(WorkSpecDao_Impl.this.__db, acquire, true, null);
                    try {
                        HashMap hashMap = new HashMap();
                        HashMap hashMap2 = new HashMap();
                        while (query.moveToNext()) {
                            String string = query.getString(0);
                            if (((ArrayList) hashMap.get(string)) == null) {
                                hashMap.put(string, new ArrayList());
                            }
                            String string2 = query.getString(0);
                            if (((ArrayList) hashMap2.get(string2)) == null) {
                                hashMap2.put(string2, new ArrayList());
                            }
                        }
                        query.moveToPosition(-1);
                        WorkSpecDao_Impl.this.__fetchRelationshipWorkTagAsjavaLangString(hashMap);
                        WorkSpecDao_Impl.this.__fetchRelationshipWorkProgressAsandroidxWorkData(hashMap2);
                        ArrayList arrayList = new ArrayList(query.getCount());
                        while (query.moveToNext()) {
                            String string3 = query.isNull(0) ? null : query.getString(0);
                            int i = query.getInt(1);
                            WorkTypeConverters workTypeConverters = WorkTypeConverters.INSTANCE;
                            WorkInfo.State intToState = WorkTypeConverters.intToState(i);
                            Data fromByteArray = Data.fromByteArray(query.isNull(2) ? null : query.getBlob(2));
                            int i2 = query.getInt(3);
                            int i3 = query.getInt(4);
                            long j = query.getLong(13);
                            long j2 = query.getLong(14);
                            long j3 = query.getLong(15);
                            int i4 = query.getInt(16);
                            WorkTypeConverters workTypeConverters2 = WorkTypeConverters.INSTANCE;
                            BackoffPolicy intToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy(i4);
                            long j4 = query.getLong(17);
                            long j5 = query.getLong(18);
                            int i5 = query.getInt(19);
                            long j6 = query.getLong(20);
                            int i6 = query.getInt(21);
                            int i7 = query.getInt(5);
                            WorkTypeConverters workTypeConverters3 = WorkTypeConverters.INSTANCE;
                            NetworkType intToNetworkType = WorkTypeConverters.intToNetworkType(i7);
                            boolean z = query.getInt(6) != 0;
                            boolean z2 = query.getInt(7) != 0;
                            boolean z3 = query.getInt(8) != 0;
                            boolean z4 = query.getInt(9) != 0;
                            long j7 = query.getLong(10);
                            long j8 = query.getLong(11);
                            byte[] blob = query.isNull(12) ? null : query.getBlob(12);
                            WorkTypeConverters workTypeConverters4 = WorkTypeConverters.INSTANCE;
                            Constraints constraints = new Constraints(intToNetworkType, z, z2, z3, z4, j7, j8, WorkTypeConverters.byteArrayToSetOfTriggers(blob));
                            ArrayList arrayList2 = (ArrayList) hashMap.get(query.getString(0));
                            if (arrayList2 == null) {
                                arrayList2 = new ArrayList();
                            }
                            ArrayList arrayList3 = arrayList2;
                            ArrayList arrayList4 = (ArrayList) hashMap2.get(query.getString(0));
                            if (arrayList4 == null) {
                                arrayList4 = new ArrayList();
                            }
                            arrayList.add(new WorkSpec.WorkInfoPojo(string3, intToState, fromByteArray, j, j2, j3, constraints, i2, intToBackoffPolicy, j4, j5, i5, i3, j6, i6, arrayList3, arrayList4));
                        }
                        WorkSpecDao_Impl.this.__db.setTransactionSuccessful();
                        return arrayList;
                    } finally {
                        query.close();
                    }
                } finally {
                    WorkSpecDao_Impl.this.__db.endTransaction();
                }
            }

            protected void finalize() {
                acquire.release();
            }
        });
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public Flow<List<WorkSpec.WorkInfoPojo>> getWorkStatusPojoFlowForName(final String name) {
        final RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT id, state, output, run_attempt_count, generation, required_network_type, requires_charging,requires_device_idle, requires_battery_not_low, requires_storage_not_low, trigger_content_update_delay, trigger_max_content_delay, content_uri_triggers, initial_delay, interval_duration, flex_duration, backoff_policy, backoff_delay_duration, last_enqueue_time, period_count, next_schedule_time_override, stop_reason FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)", 1);
        if (name == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, name);
        }
        return CoroutinesRoom.createFlow(this.__db, true, new String[]{"WorkTag", "WorkProgress", "workspec", "workname"}, new Callable<List<WorkSpec.WorkInfoPojo>>() { // from class: androidx.work.impl.model.WorkSpecDao_Impl.24
            @Override // java.util.concurrent.Callable
            public List<WorkSpec.WorkInfoPojo> call() throws Exception {
                WorkSpecDao_Impl.this.__db.beginTransaction();
                try {
                    Cursor query = DBUtil.query(WorkSpecDao_Impl.this.__db, acquire, true, null);
                    try {
                        HashMap hashMap = new HashMap();
                        HashMap hashMap2 = new HashMap();
                        while (query.moveToNext()) {
                            String string = query.getString(0);
                            if (((ArrayList) hashMap.get(string)) == null) {
                                hashMap.put(string, new ArrayList());
                            }
                            String string2 = query.getString(0);
                            if (((ArrayList) hashMap2.get(string2)) == null) {
                                hashMap2.put(string2, new ArrayList());
                            }
                        }
                        query.moveToPosition(-1);
                        WorkSpecDao_Impl.this.__fetchRelationshipWorkTagAsjavaLangString(hashMap);
                        WorkSpecDao_Impl.this.__fetchRelationshipWorkProgressAsandroidxWorkData(hashMap2);
                        ArrayList arrayList = new ArrayList(query.getCount());
                        while (query.moveToNext()) {
                            String string3 = query.isNull(0) ? null : query.getString(0);
                            int i = query.getInt(1);
                            WorkTypeConverters workTypeConverters = WorkTypeConverters.INSTANCE;
                            WorkInfo.State intToState = WorkTypeConverters.intToState(i);
                            Data fromByteArray = Data.fromByteArray(query.isNull(2) ? null : query.getBlob(2));
                            int i2 = query.getInt(3);
                            int i3 = query.getInt(4);
                            long j = query.getLong(13);
                            long j2 = query.getLong(14);
                            long j3 = query.getLong(15);
                            int i4 = query.getInt(16);
                            WorkTypeConverters workTypeConverters2 = WorkTypeConverters.INSTANCE;
                            BackoffPolicy intToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy(i4);
                            long j4 = query.getLong(17);
                            long j5 = query.getLong(18);
                            int i5 = query.getInt(19);
                            long j6 = query.getLong(20);
                            int i6 = query.getInt(21);
                            int i7 = query.getInt(5);
                            WorkTypeConverters workTypeConverters3 = WorkTypeConverters.INSTANCE;
                            NetworkType intToNetworkType = WorkTypeConverters.intToNetworkType(i7);
                            boolean z = query.getInt(6) != 0;
                            boolean z2 = query.getInt(7) != 0;
                            boolean z3 = query.getInt(8) != 0;
                            boolean z4 = query.getInt(9) != 0;
                            long j7 = query.getLong(10);
                            long j8 = query.getLong(11);
                            byte[] blob = query.isNull(12) ? null : query.getBlob(12);
                            WorkTypeConverters workTypeConverters4 = WorkTypeConverters.INSTANCE;
                            Constraints constraints = new Constraints(intToNetworkType, z, z2, z3, z4, j7, j8, WorkTypeConverters.byteArrayToSetOfTriggers(blob));
                            ArrayList arrayList2 = (ArrayList) hashMap.get(query.getString(0));
                            if (arrayList2 == null) {
                                arrayList2 = new ArrayList();
                            }
                            ArrayList arrayList3 = arrayList2;
                            ArrayList arrayList4 = (ArrayList) hashMap2.get(query.getString(0));
                            if (arrayList4 == null) {
                                arrayList4 = new ArrayList();
                            }
                            arrayList.add(new WorkSpec.WorkInfoPojo(string3, intToState, fromByteArray, j, j2, j3, constraints, i2, intToBackoffPolicy, j4, j5, i5, i3, j6, i6, arrayList3, arrayList4));
                        }
                        WorkSpecDao_Impl.this.__db.setTransactionSuccessful();
                        return arrayList;
                    } finally {
                        query.close();
                    }
                } finally {
                    WorkSpecDao_Impl.this.__db.endTransaction();
                }
            }

            protected void finalize() {
                acquire.release();
            }
        });
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<Data> getInputsFromPrerequisites(final String id) {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT output FROM workspec WHERE id IN\n             (SELECT prerequisite_id FROM dependency WHERE work_spec_id=?)", 1);
        if (id == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, id);
        }
        this.__db.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            ArrayList arrayList = new ArrayList(query.getCount());
            while (query.moveToNext()) {
                arrayList.add(Data.fromByteArray(query.isNull(0) ? null : query.getBlob(0)));
            }
            return arrayList;
        } finally {
            query.close();
            acquire.release();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<String> getUnfinishedWorkWithTag(final String tag) {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM worktag WHERE tag=?)", 1);
        if (tag == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, tag);
        }
        this.__db.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            ArrayList arrayList = new ArrayList(query.getCount());
            while (query.moveToNext()) {
                arrayList.add(query.isNull(0) ? null : query.getString(0));
            }
            return arrayList;
        } finally {
            query.close();
            acquire.release();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<String> getUnfinishedWorkWithName(final String name) {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM workname WHERE name=?)", 1);
        if (name == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, name);
        }
        this.__db.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            ArrayList arrayList = new ArrayList(query.getCount());
            while (query.moveToNext()) {
                arrayList.add(query.isNull(0) ? null : query.getString(0));
            }
            return arrayList;
        } finally {
            query.close();
            acquire.release();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<String> getAllUnfinishedWork() {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT id FROM workspec WHERE state NOT IN (2, 3, 5)", 0);
        this.__db.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            ArrayList arrayList = new ArrayList(query.getCount());
            while (query.moveToNext()) {
                arrayList.add(query.isNull(0) ? null : query.getString(0));
            }
            return arrayList;
        } finally {
            query.close();
            acquire.release();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public boolean hasUnfinishedWork() {
        boolean z = false;
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT COUNT(*) > 0 FROM workspec WHERE state NOT IN (2, 3, 5) LIMIT 1", 0);
        this.__db.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            if (query.moveToFirst()) {
                if (query.getInt(0) != 0) {
                    z = true;
                }
            }
            return z;
        } finally {
            query.close();
            acquire.release();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public LiveData<Long> getScheduleRequestedAtLiveData(final String id) {
        final RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT schedule_requested_at FROM workspec WHERE id=?", 1);
        if (id == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, id);
        }
        return this.__db.getInvalidationTracker().createLiveData(new String[]{"workspec"}, false, new Callable<Long>() { // from class: androidx.work.impl.model.WorkSpecDao_Impl.25
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public Long call() throws Exception {
                Cursor query = DBUtil.query(WorkSpecDao_Impl.this.__db, acquire, false, null);
                try {
                    return Long.valueOf(query.moveToFirst() ? query.getLong(0) : 0L);
                } finally {
                    query.close();
                }
            }

            protected void finalize() {
                acquire.release();
            }
        });
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<WorkSpec> getEligibleWorkForScheduling(final int schedulerLimit) {
        RoomSQLiteQuery roomSQLiteQuery;
        int i;
        boolean z;
        int i2;
        boolean z2;
        int i3;
        boolean z3;
        int i4;
        boolean z4;
        int i5;
        boolean z5;
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM workspec WHERE state=0 AND schedule_requested_at=-1 ORDER BY last_enqueue_time LIMIT (SELECT MAX(?-COUNT(*), 0) FROM workspec WHERE schedule_requested_at<>-1 AND LENGTH(content_uri_triggers)=0 AND state NOT IN (2, 3, 5))", 1);
        acquire.bindLong(1, schedulerLimit);
        this.__db.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, "id");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, SentryThread.JsonKeys.STATE);
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, "worker_class_name");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, "input_merger_class_name");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(query, "input");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(query, "output");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(query, "initial_delay");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(query, "interval_duration");
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(query, "flex_duration");
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(query, "run_attempt_count");
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(query, "backoff_policy");
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(query, "backoff_delay_duration");
            int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(query, "last_enqueue_time");
            int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(query, "minimum_retention_duration");
            roomSQLiteQuery = acquire;
            try {
                int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(query, "schedule_requested_at");
                int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(query, "run_in_foreground");
                int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(query, "out_of_quota_policy");
                int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(query, "period_count");
                int columnIndexOrThrow19 = CursorUtil.getColumnIndexOrThrow(query, "generation");
                int columnIndexOrThrow20 = CursorUtil.getColumnIndexOrThrow(query, "next_schedule_time_override");
                int columnIndexOrThrow21 = CursorUtil.getColumnIndexOrThrow(query, "next_schedule_time_override_generation");
                int columnIndexOrThrow22 = CursorUtil.getColumnIndexOrThrow(query, "stop_reason");
                int columnIndexOrThrow23 = CursorUtil.getColumnIndexOrThrow(query, "required_network_type");
                int columnIndexOrThrow24 = CursorUtil.getColumnIndexOrThrow(query, "requires_charging");
                int columnIndexOrThrow25 = CursorUtil.getColumnIndexOrThrow(query, "requires_device_idle");
                int columnIndexOrThrow26 = CursorUtil.getColumnIndexOrThrow(query, "requires_battery_not_low");
                int columnIndexOrThrow27 = CursorUtil.getColumnIndexOrThrow(query, "requires_storage_not_low");
                int columnIndexOrThrow28 = CursorUtil.getColumnIndexOrThrow(query, "trigger_content_update_delay");
                int columnIndexOrThrow29 = CursorUtil.getColumnIndexOrThrow(query, "trigger_max_content_delay");
                int columnIndexOrThrow30 = CursorUtil.getColumnIndexOrThrow(query, "content_uri_triggers");
                int i6 = columnIndexOrThrow14;
                ArrayList arrayList = new ArrayList(query.getCount());
                while (query.moveToNext()) {
                    String string = query.isNull(columnIndexOrThrow) ? null : query.getString(columnIndexOrThrow);
                    int i7 = query.getInt(columnIndexOrThrow2);
                    WorkTypeConverters workTypeConverters = WorkTypeConverters.INSTANCE;
                    WorkInfo.State intToState = WorkTypeConverters.intToState(i7);
                    String string2 = query.isNull(columnIndexOrThrow3) ? null : query.getString(columnIndexOrThrow3);
                    String string3 = query.isNull(columnIndexOrThrow4) ? null : query.getString(columnIndexOrThrow4);
                    Data fromByteArray = Data.fromByteArray(query.isNull(columnIndexOrThrow5) ? null : query.getBlob(columnIndexOrThrow5));
                    Data fromByteArray2 = Data.fromByteArray(query.isNull(columnIndexOrThrow6) ? null : query.getBlob(columnIndexOrThrow6));
                    long j = query.getLong(columnIndexOrThrow7);
                    long j2 = query.getLong(columnIndexOrThrow8);
                    long j3 = query.getLong(columnIndexOrThrow9);
                    int i8 = query.getInt(columnIndexOrThrow10);
                    int i9 = query.getInt(columnIndexOrThrow11);
                    WorkTypeConverters workTypeConverters2 = WorkTypeConverters.INSTANCE;
                    BackoffPolicy intToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy(i9);
                    long j4 = query.getLong(columnIndexOrThrow12);
                    long j5 = query.getLong(columnIndexOrThrow13);
                    int i10 = i6;
                    long j6 = query.getLong(i10);
                    int i11 = columnIndexOrThrow;
                    int i12 = columnIndexOrThrow15;
                    long j7 = query.getLong(i12);
                    columnIndexOrThrow15 = i12;
                    int i13 = columnIndexOrThrow16;
                    if (query.getInt(i13) != 0) {
                        columnIndexOrThrow16 = i13;
                        i = columnIndexOrThrow17;
                        z = true;
                    } else {
                        columnIndexOrThrow16 = i13;
                        i = columnIndexOrThrow17;
                        z = false;
                    }
                    int i14 = query.getInt(i);
                    WorkTypeConverters workTypeConverters3 = WorkTypeConverters.INSTANCE;
                    OutOfQuotaPolicy intToOutOfQuotaPolicy = WorkTypeConverters.intToOutOfQuotaPolicy(i14);
                    columnIndexOrThrow17 = i;
                    int i15 = columnIndexOrThrow18;
                    int i16 = query.getInt(i15);
                    columnIndexOrThrow18 = i15;
                    int i17 = columnIndexOrThrow19;
                    int i18 = query.getInt(i17);
                    columnIndexOrThrow19 = i17;
                    int i19 = columnIndexOrThrow20;
                    long j8 = query.getLong(i19);
                    columnIndexOrThrow20 = i19;
                    int i20 = columnIndexOrThrow21;
                    int i21 = query.getInt(i20);
                    columnIndexOrThrow21 = i20;
                    int i22 = columnIndexOrThrow22;
                    int i23 = query.getInt(i22);
                    columnIndexOrThrow22 = i22;
                    int i24 = columnIndexOrThrow23;
                    int i25 = query.getInt(i24);
                    WorkTypeConverters workTypeConverters4 = WorkTypeConverters.INSTANCE;
                    NetworkType intToNetworkType = WorkTypeConverters.intToNetworkType(i25);
                    columnIndexOrThrow23 = i24;
                    int i26 = columnIndexOrThrow24;
                    if (query.getInt(i26) != 0) {
                        columnIndexOrThrow24 = i26;
                        i2 = columnIndexOrThrow25;
                        z2 = true;
                    } else {
                        columnIndexOrThrow24 = i26;
                        i2 = columnIndexOrThrow25;
                        z2 = false;
                    }
                    if (query.getInt(i2) != 0) {
                        columnIndexOrThrow25 = i2;
                        i3 = columnIndexOrThrow26;
                        z3 = true;
                    } else {
                        columnIndexOrThrow25 = i2;
                        i3 = columnIndexOrThrow26;
                        z3 = false;
                    }
                    if (query.getInt(i3) != 0) {
                        columnIndexOrThrow26 = i3;
                        i4 = columnIndexOrThrow27;
                        z4 = true;
                    } else {
                        columnIndexOrThrow26 = i3;
                        i4 = columnIndexOrThrow27;
                        z4 = false;
                    }
                    if (query.getInt(i4) != 0) {
                        columnIndexOrThrow27 = i4;
                        i5 = columnIndexOrThrow28;
                        z5 = true;
                    } else {
                        columnIndexOrThrow27 = i4;
                        i5 = columnIndexOrThrow28;
                        z5 = false;
                    }
                    long j9 = query.getLong(i5);
                    columnIndexOrThrow28 = i5;
                    int i27 = columnIndexOrThrow29;
                    long j10 = query.getLong(i27);
                    columnIndexOrThrow29 = i27;
                    int i28 = columnIndexOrThrow30;
                    byte[] blob = query.isNull(i28) ? null : query.getBlob(i28);
                    WorkTypeConverters workTypeConverters5 = WorkTypeConverters.INSTANCE;
                    Constraints constraints = new Constraints(intToNetworkType, z2, z3, z4, z5, j9, j10, WorkTypeConverters.byteArrayToSetOfTriggers(blob));
                    columnIndexOrThrow30 = i28;
                    arrayList.add(new WorkSpec(string, intToState, string2, string3, fromByteArray, fromByteArray2, j, j2, j3, constraints, i8, intToBackoffPolicy, j4, j5, j6, j7, z, intToOutOfQuotaPolicy, i16, i18, j8, i21, i23));
                    columnIndexOrThrow = i11;
                    i6 = i10;
                }
                query.close();
                roomSQLiteQuery.release();
                return arrayList;
            } catch (Throwable th) {
                th = th;
                query.close();
                roomSQLiteQuery.release();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            roomSQLiteQuery = acquire;
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<WorkSpec> getEligibleWorkForSchedulingWithContentUris() {
        RoomSQLiteQuery roomSQLiteQuery;
        int columnIndexOrThrow;
        int columnIndexOrThrow2;
        int columnIndexOrThrow3;
        int columnIndexOrThrow4;
        int columnIndexOrThrow5;
        int columnIndexOrThrow6;
        int columnIndexOrThrow7;
        int columnIndexOrThrow8;
        int columnIndexOrThrow9;
        int columnIndexOrThrow10;
        int columnIndexOrThrow11;
        int columnIndexOrThrow12;
        int columnIndexOrThrow13;
        int columnIndexOrThrow14;
        int i;
        boolean z;
        int i2;
        boolean z2;
        int i3;
        boolean z3;
        int i4;
        boolean z4;
        int i5;
        boolean z5;
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM workspec WHERE state=0 AND schedule_requested_at=-1 AND LENGTH(content_uri_triggers)<>0 ORDER BY last_enqueue_time", 0);
        this.__db.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, "id");
            columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, SentryThread.JsonKeys.STATE);
            columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, "worker_class_name");
            columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, "input_merger_class_name");
            columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(query, "input");
            columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(query, "output");
            columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(query, "initial_delay");
            columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(query, "interval_duration");
            columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(query, "flex_duration");
            columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(query, "run_attempt_count");
            columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(query, "backoff_policy");
            columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(query, "backoff_delay_duration");
            columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(query, "last_enqueue_time");
            columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(query, "minimum_retention_duration");
            roomSQLiteQuery = acquire;
        } catch (Throwable th) {
            th = th;
            roomSQLiteQuery = acquire;
        }
        try {
            int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(query, "schedule_requested_at");
            int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(query, "run_in_foreground");
            int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(query, "out_of_quota_policy");
            int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(query, "period_count");
            int columnIndexOrThrow19 = CursorUtil.getColumnIndexOrThrow(query, "generation");
            int columnIndexOrThrow20 = CursorUtil.getColumnIndexOrThrow(query, "next_schedule_time_override");
            int columnIndexOrThrow21 = CursorUtil.getColumnIndexOrThrow(query, "next_schedule_time_override_generation");
            int columnIndexOrThrow22 = CursorUtil.getColumnIndexOrThrow(query, "stop_reason");
            int columnIndexOrThrow23 = CursorUtil.getColumnIndexOrThrow(query, "required_network_type");
            int columnIndexOrThrow24 = CursorUtil.getColumnIndexOrThrow(query, "requires_charging");
            int columnIndexOrThrow25 = CursorUtil.getColumnIndexOrThrow(query, "requires_device_idle");
            int columnIndexOrThrow26 = CursorUtil.getColumnIndexOrThrow(query, "requires_battery_not_low");
            int columnIndexOrThrow27 = CursorUtil.getColumnIndexOrThrow(query, "requires_storage_not_low");
            int columnIndexOrThrow28 = CursorUtil.getColumnIndexOrThrow(query, "trigger_content_update_delay");
            int columnIndexOrThrow29 = CursorUtil.getColumnIndexOrThrow(query, "trigger_max_content_delay");
            int columnIndexOrThrow30 = CursorUtil.getColumnIndexOrThrow(query, "content_uri_triggers");
            int i6 = columnIndexOrThrow14;
            ArrayList arrayList = new ArrayList(query.getCount());
            while (query.moveToNext()) {
                String string = query.isNull(columnIndexOrThrow) ? null : query.getString(columnIndexOrThrow);
                int i7 = query.getInt(columnIndexOrThrow2);
                WorkTypeConverters workTypeConverters = WorkTypeConverters.INSTANCE;
                WorkInfo.State intToState = WorkTypeConverters.intToState(i7);
                String string2 = query.isNull(columnIndexOrThrow3) ? null : query.getString(columnIndexOrThrow3);
                String string3 = query.isNull(columnIndexOrThrow4) ? null : query.getString(columnIndexOrThrow4);
                Data fromByteArray = Data.fromByteArray(query.isNull(columnIndexOrThrow5) ? null : query.getBlob(columnIndexOrThrow5));
                Data fromByteArray2 = Data.fromByteArray(query.isNull(columnIndexOrThrow6) ? null : query.getBlob(columnIndexOrThrow6));
                long j = query.getLong(columnIndexOrThrow7);
                long j2 = query.getLong(columnIndexOrThrow8);
                long j3 = query.getLong(columnIndexOrThrow9);
                int i8 = query.getInt(columnIndexOrThrow10);
                int i9 = query.getInt(columnIndexOrThrow11);
                WorkTypeConverters workTypeConverters2 = WorkTypeConverters.INSTANCE;
                BackoffPolicy intToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy(i9);
                long j4 = query.getLong(columnIndexOrThrow12);
                long j5 = query.getLong(columnIndexOrThrow13);
                int i10 = i6;
                long j6 = query.getLong(i10);
                int i11 = columnIndexOrThrow;
                int i12 = columnIndexOrThrow15;
                long j7 = query.getLong(i12);
                columnIndexOrThrow15 = i12;
                int i13 = columnIndexOrThrow16;
                if (query.getInt(i13) != 0) {
                    columnIndexOrThrow16 = i13;
                    i = columnIndexOrThrow17;
                    z = true;
                } else {
                    columnIndexOrThrow16 = i13;
                    i = columnIndexOrThrow17;
                    z = false;
                }
                int i14 = query.getInt(i);
                WorkTypeConverters workTypeConverters3 = WorkTypeConverters.INSTANCE;
                OutOfQuotaPolicy intToOutOfQuotaPolicy = WorkTypeConverters.intToOutOfQuotaPolicy(i14);
                columnIndexOrThrow17 = i;
                int i15 = columnIndexOrThrow18;
                int i16 = query.getInt(i15);
                columnIndexOrThrow18 = i15;
                int i17 = columnIndexOrThrow19;
                int i18 = query.getInt(i17);
                columnIndexOrThrow19 = i17;
                int i19 = columnIndexOrThrow20;
                long j8 = query.getLong(i19);
                columnIndexOrThrow20 = i19;
                int i20 = columnIndexOrThrow21;
                int i21 = query.getInt(i20);
                columnIndexOrThrow21 = i20;
                int i22 = columnIndexOrThrow22;
                int i23 = query.getInt(i22);
                columnIndexOrThrow22 = i22;
                int i24 = columnIndexOrThrow23;
                int i25 = query.getInt(i24);
                WorkTypeConverters workTypeConverters4 = WorkTypeConverters.INSTANCE;
                NetworkType intToNetworkType = WorkTypeConverters.intToNetworkType(i25);
                columnIndexOrThrow23 = i24;
                int i26 = columnIndexOrThrow24;
                if (query.getInt(i26) != 0) {
                    columnIndexOrThrow24 = i26;
                    i2 = columnIndexOrThrow25;
                    z2 = true;
                } else {
                    columnIndexOrThrow24 = i26;
                    i2 = columnIndexOrThrow25;
                    z2 = false;
                }
                if (query.getInt(i2) != 0) {
                    columnIndexOrThrow25 = i2;
                    i3 = columnIndexOrThrow26;
                    z3 = true;
                } else {
                    columnIndexOrThrow25 = i2;
                    i3 = columnIndexOrThrow26;
                    z3 = false;
                }
                if (query.getInt(i3) != 0) {
                    columnIndexOrThrow26 = i3;
                    i4 = columnIndexOrThrow27;
                    z4 = true;
                } else {
                    columnIndexOrThrow26 = i3;
                    i4 = columnIndexOrThrow27;
                    z4 = false;
                }
                if (query.getInt(i4) != 0) {
                    columnIndexOrThrow27 = i4;
                    i5 = columnIndexOrThrow28;
                    z5 = true;
                } else {
                    columnIndexOrThrow27 = i4;
                    i5 = columnIndexOrThrow28;
                    z5 = false;
                }
                long j9 = query.getLong(i5);
                columnIndexOrThrow28 = i5;
                int i27 = columnIndexOrThrow29;
                long j10 = query.getLong(i27);
                columnIndexOrThrow29 = i27;
                int i28 = columnIndexOrThrow30;
                byte[] blob = query.isNull(i28) ? null : query.getBlob(i28);
                WorkTypeConverters workTypeConverters5 = WorkTypeConverters.INSTANCE;
                Constraints constraints = new Constraints(intToNetworkType, z2, z3, z4, z5, j9, j10, WorkTypeConverters.byteArrayToSetOfTriggers(blob));
                columnIndexOrThrow30 = i28;
                arrayList.add(new WorkSpec(string, intToState, string2, string3, fromByteArray, fromByteArray2, j, j2, j3, constraints, i8, intToBackoffPolicy, j4, j5, j6, j7, z, intToOutOfQuotaPolicy, i16, i18, j8, i21, i23));
                columnIndexOrThrow = i11;
                i6 = i10;
            }
            query.close();
            roomSQLiteQuery.release();
            return arrayList;
        } catch (Throwable th2) {
            th = th2;
            query.close();
            roomSQLiteQuery.release();
            throw th;
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<WorkSpec> getAllEligibleWorkSpecsForScheduling(final int maxLimit) {
        RoomSQLiteQuery roomSQLiteQuery;
        int i;
        boolean z;
        int i2;
        boolean z2;
        int i3;
        boolean z3;
        int i4;
        boolean z4;
        int i5;
        boolean z5;
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM workspec WHERE state=0 ORDER BY last_enqueue_time LIMIT ?", 1);
        acquire.bindLong(1, maxLimit);
        this.__db.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, "id");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, SentryThread.JsonKeys.STATE);
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, "worker_class_name");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, "input_merger_class_name");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(query, "input");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(query, "output");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(query, "initial_delay");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(query, "interval_duration");
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(query, "flex_duration");
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(query, "run_attempt_count");
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(query, "backoff_policy");
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(query, "backoff_delay_duration");
            int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(query, "last_enqueue_time");
            int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(query, "minimum_retention_duration");
            roomSQLiteQuery = acquire;
            try {
                int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(query, "schedule_requested_at");
                int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(query, "run_in_foreground");
                int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(query, "out_of_quota_policy");
                int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(query, "period_count");
                int columnIndexOrThrow19 = CursorUtil.getColumnIndexOrThrow(query, "generation");
                int columnIndexOrThrow20 = CursorUtil.getColumnIndexOrThrow(query, "next_schedule_time_override");
                int columnIndexOrThrow21 = CursorUtil.getColumnIndexOrThrow(query, "next_schedule_time_override_generation");
                int columnIndexOrThrow22 = CursorUtil.getColumnIndexOrThrow(query, "stop_reason");
                int columnIndexOrThrow23 = CursorUtil.getColumnIndexOrThrow(query, "required_network_type");
                int columnIndexOrThrow24 = CursorUtil.getColumnIndexOrThrow(query, "requires_charging");
                int columnIndexOrThrow25 = CursorUtil.getColumnIndexOrThrow(query, "requires_device_idle");
                int columnIndexOrThrow26 = CursorUtil.getColumnIndexOrThrow(query, "requires_battery_not_low");
                int columnIndexOrThrow27 = CursorUtil.getColumnIndexOrThrow(query, "requires_storage_not_low");
                int columnIndexOrThrow28 = CursorUtil.getColumnIndexOrThrow(query, "trigger_content_update_delay");
                int columnIndexOrThrow29 = CursorUtil.getColumnIndexOrThrow(query, "trigger_max_content_delay");
                int columnIndexOrThrow30 = CursorUtil.getColumnIndexOrThrow(query, "content_uri_triggers");
                int i6 = columnIndexOrThrow14;
                ArrayList arrayList = new ArrayList(query.getCount());
                while (query.moveToNext()) {
                    String string = query.isNull(columnIndexOrThrow) ? null : query.getString(columnIndexOrThrow);
                    int i7 = query.getInt(columnIndexOrThrow2);
                    WorkTypeConverters workTypeConverters = WorkTypeConverters.INSTANCE;
                    WorkInfo.State intToState = WorkTypeConverters.intToState(i7);
                    String string2 = query.isNull(columnIndexOrThrow3) ? null : query.getString(columnIndexOrThrow3);
                    String string3 = query.isNull(columnIndexOrThrow4) ? null : query.getString(columnIndexOrThrow4);
                    Data fromByteArray = Data.fromByteArray(query.isNull(columnIndexOrThrow5) ? null : query.getBlob(columnIndexOrThrow5));
                    Data fromByteArray2 = Data.fromByteArray(query.isNull(columnIndexOrThrow6) ? null : query.getBlob(columnIndexOrThrow6));
                    long j = query.getLong(columnIndexOrThrow7);
                    long j2 = query.getLong(columnIndexOrThrow8);
                    long j3 = query.getLong(columnIndexOrThrow9);
                    int i8 = query.getInt(columnIndexOrThrow10);
                    int i9 = query.getInt(columnIndexOrThrow11);
                    WorkTypeConverters workTypeConverters2 = WorkTypeConverters.INSTANCE;
                    BackoffPolicy intToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy(i9);
                    long j4 = query.getLong(columnIndexOrThrow12);
                    long j5 = query.getLong(columnIndexOrThrow13);
                    int i10 = i6;
                    long j6 = query.getLong(i10);
                    int i11 = columnIndexOrThrow;
                    int i12 = columnIndexOrThrow15;
                    long j7 = query.getLong(i12);
                    columnIndexOrThrow15 = i12;
                    int i13 = columnIndexOrThrow16;
                    if (query.getInt(i13) != 0) {
                        columnIndexOrThrow16 = i13;
                        i = columnIndexOrThrow17;
                        z = true;
                    } else {
                        columnIndexOrThrow16 = i13;
                        i = columnIndexOrThrow17;
                        z = false;
                    }
                    int i14 = query.getInt(i);
                    WorkTypeConverters workTypeConverters3 = WorkTypeConverters.INSTANCE;
                    OutOfQuotaPolicy intToOutOfQuotaPolicy = WorkTypeConverters.intToOutOfQuotaPolicy(i14);
                    columnIndexOrThrow17 = i;
                    int i15 = columnIndexOrThrow18;
                    int i16 = query.getInt(i15);
                    columnIndexOrThrow18 = i15;
                    int i17 = columnIndexOrThrow19;
                    int i18 = query.getInt(i17);
                    columnIndexOrThrow19 = i17;
                    int i19 = columnIndexOrThrow20;
                    long j8 = query.getLong(i19);
                    columnIndexOrThrow20 = i19;
                    int i20 = columnIndexOrThrow21;
                    int i21 = query.getInt(i20);
                    columnIndexOrThrow21 = i20;
                    int i22 = columnIndexOrThrow22;
                    int i23 = query.getInt(i22);
                    columnIndexOrThrow22 = i22;
                    int i24 = columnIndexOrThrow23;
                    int i25 = query.getInt(i24);
                    WorkTypeConverters workTypeConverters4 = WorkTypeConverters.INSTANCE;
                    NetworkType intToNetworkType = WorkTypeConverters.intToNetworkType(i25);
                    columnIndexOrThrow23 = i24;
                    int i26 = columnIndexOrThrow24;
                    if (query.getInt(i26) != 0) {
                        columnIndexOrThrow24 = i26;
                        i2 = columnIndexOrThrow25;
                        z2 = true;
                    } else {
                        columnIndexOrThrow24 = i26;
                        i2 = columnIndexOrThrow25;
                        z2 = false;
                    }
                    if (query.getInt(i2) != 0) {
                        columnIndexOrThrow25 = i2;
                        i3 = columnIndexOrThrow26;
                        z3 = true;
                    } else {
                        columnIndexOrThrow25 = i2;
                        i3 = columnIndexOrThrow26;
                        z3 = false;
                    }
                    if (query.getInt(i3) != 0) {
                        columnIndexOrThrow26 = i3;
                        i4 = columnIndexOrThrow27;
                        z4 = true;
                    } else {
                        columnIndexOrThrow26 = i3;
                        i4 = columnIndexOrThrow27;
                        z4 = false;
                    }
                    if (query.getInt(i4) != 0) {
                        columnIndexOrThrow27 = i4;
                        i5 = columnIndexOrThrow28;
                        z5 = true;
                    } else {
                        columnIndexOrThrow27 = i4;
                        i5 = columnIndexOrThrow28;
                        z5 = false;
                    }
                    long j9 = query.getLong(i5);
                    columnIndexOrThrow28 = i5;
                    int i27 = columnIndexOrThrow29;
                    long j10 = query.getLong(i27);
                    columnIndexOrThrow29 = i27;
                    int i28 = columnIndexOrThrow30;
                    byte[] blob = query.isNull(i28) ? null : query.getBlob(i28);
                    WorkTypeConverters workTypeConverters5 = WorkTypeConverters.INSTANCE;
                    Constraints constraints = new Constraints(intToNetworkType, z2, z3, z4, z5, j9, j10, WorkTypeConverters.byteArrayToSetOfTriggers(blob));
                    columnIndexOrThrow30 = i28;
                    arrayList.add(new WorkSpec(string, intToState, string2, string3, fromByteArray, fromByteArray2, j, j2, j3, constraints, i8, intToBackoffPolicy, j4, j5, j6, j7, z, intToOutOfQuotaPolicy, i16, i18, j8, i21, i23));
                    columnIndexOrThrow = i11;
                    i6 = i10;
                }
                query.close();
                roomSQLiteQuery.release();
                return arrayList;
            } catch (Throwable th) {
                th = th;
                query.close();
                roomSQLiteQuery.release();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            roomSQLiteQuery = acquire;
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<WorkSpec> getScheduledWork() {
        RoomSQLiteQuery roomSQLiteQuery;
        int columnIndexOrThrow;
        int columnIndexOrThrow2;
        int columnIndexOrThrow3;
        int columnIndexOrThrow4;
        int columnIndexOrThrow5;
        int columnIndexOrThrow6;
        int columnIndexOrThrow7;
        int columnIndexOrThrow8;
        int columnIndexOrThrow9;
        int columnIndexOrThrow10;
        int columnIndexOrThrow11;
        int columnIndexOrThrow12;
        int columnIndexOrThrow13;
        int columnIndexOrThrow14;
        int i;
        boolean z;
        int i2;
        boolean z2;
        int i3;
        boolean z3;
        int i4;
        boolean z4;
        int i5;
        boolean z5;
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM workspec WHERE state=0 AND schedule_requested_at<>-1", 0);
        this.__db.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, "id");
            columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, SentryThread.JsonKeys.STATE);
            columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, "worker_class_name");
            columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, "input_merger_class_name");
            columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(query, "input");
            columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(query, "output");
            columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(query, "initial_delay");
            columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(query, "interval_duration");
            columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(query, "flex_duration");
            columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(query, "run_attempt_count");
            columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(query, "backoff_policy");
            columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(query, "backoff_delay_duration");
            columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(query, "last_enqueue_time");
            columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(query, "minimum_retention_duration");
            roomSQLiteQuery = acquire;
        } catch (Throwable th) {
            th = th;
            roomSQLiteQuery = acquire;
        }
        try {
            int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(query, "schedule_requested_at");
            int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(query, "run_in_foreground");
            int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(query, "out_of_quota_policy");
            int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(query, "period_count");
            int columnIndexOrThrow19 = CursorUtil.getColumnIndexOrThrow(query, "generation");
            int columnIndexOrThrow20 = CursorUtil.getColumnIndexOrThrow(query, "next_schedule_time_override");
            int columnIndexOrThrow21 = CursorUtil.getColumnIndexOrThrow(query, "next_schedule_time_override_generation");
            int columnIndexOrThrow22 = CursorUtil.getColumnIndexOrThrow(query, "stop_reason");
            int columnIndexOrThrow23 = CursorUtil.getColumnIndexOrThrow(query, "required_network_type");
            int columnIndexOrThrow24 = CursorUtil.getColumnIndexOrThrow(query, "requires_charging");
            int columnIndexOrThrow25 = CursorUtil.getColumnIndexOrThrow(query, "requires_device_idle");
            int columnIndexOrThrow26 = CursorUtil.getColumnIndexOrThrow(query, "requires_battery_not_low");
            int columnIndexOrThrow27 = CursorUtil.getColumnIndexOrThrow(query, "requires_storage_not_low");
            int columnIndexOrThrow28 = CursorUtil.getColumnIndexOrThrow(query, "trigger_content_update_delay");
            int columnIndexOrThrow29 = CursorUtil.getColumnIndexOrThrow(query, "trigger_max_content_delay");
            int columnIndexOrThrow30 = CursorUtil.getColumnIndexOrThrow(query, "content_uri_triggers");
            int i6 = columnIndexOrThrow14;
            ArrayList arrayList = new ArrayList(query.getCount());
            while (query.moveToNext()) {
                String string = query.isNull(columnIndexOrThrow) ? null : query.getString(columnIndexOrThrow);
                int i7 = query.getInt(columnIndexOrThrow2);
                WorkTypeConverters workTypeConverters = WorkTypeConverters.INSTANCE;
                WorkInfo.State intToState = WorkTypeConverters.intToState(i7);
                String string2 = query.isNull(columnIndexOrThrow3) ? null : query.getString(columnIndexOrThrow3);
                String string3 = query.isNull(columnIndexOrThrow4) ? null : query.getString(columnIndexOrThrow4);
                Data fromByteArray = Data.fromByteArray(query.isNull(columnIndexOrThrow5) ? null : query.getBlob(columnIndexOrThrow5));
                Data fromByteArray2 = Data.fromByteArray(query.isNull(columnIndexOrThrow6) ? null : query.getBlob(columnIndexOrThrow6));
                long j = query.getLong(columnIndexOrThrow7);
                long j2 = query.getLong(columnIndexOrThrow8);
                long j3 = query.getLong(columnIndexOrThrow9);
                int i8 = query.getInt(columnIndexOrThrow10);
                int i9 = query.getInt(columnIndexOrThrow11);
                WorkTypeConverters workTypeConverters2 = WorkTypeConverters.INSTANCE;
                BackoffPolicy intToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy(i9);
                long j4 = query.getLong(columnIndexOrThrow12);
                long j5 = query.getLong(columnIndexOrThrow13);
                int i10 = i6;
                long j6 = query.getLong(i10);
                int i11 = columnIndexOrThrow;
                int i12 = columnIndexOrThrow15;
                long j7 = query.getLong(i12);
                columnIndexOrThrow15 = i12;
                int i13 = columnIndexOrThrow16;
                if (query.getInt(i13) != 0) {
                    columnIndexOrThrow16 = i13;
                    i = columnIndexOrThrow17;
                    z = true;
                } else {
                    columnIndexOrThrow16 = i13;
                    i = columnIndexOrThrow17;
                    z = false;
                }
                int i14 = query.getInt(i);
                WorkTypeConverters workTypeConverters3 = WorkTypeConverters.INSTANCE;
                OutOfQuotaPolicy intToOutOfQuotaPolicy = WorkTypeConverters.intToOutOfQuotaPolicy(i14);
                columnIndexOrThrow17 = i;
                int i15 = columnIndexOrThrow18;
                int i16 = query.getInt(i15);
                columnIndexOrThrow18 = i15;
                int i17 = columnIndexOrThrow19;
                int i18 = query.getInt(i17);
                columnIndexOrThrow19 = i17;
                int i19 = columnIndexOrThrow20;
                long j8 = query.getLong(i19);
                columnIndexOrThrow20 = i19;
                int i20 = columnIndexOrThrow21;
                int i21 = query.getInt(i20);
                columnIndexOrThrow21 = i20;
                int i22 = columnIndexOrThrow22;
                int i23 = query.getInt(i22);
                columnIndexOrThrow22 = i22;
                int i24 = columnIndexOrThrow23;
                int i25 = query.getInt(i24);
                WorkTypeConverters workTypeConverters4 = WorkTypeConverters.INSTANCE;
                NetworkType intToNetworkType = WorkTypeConverters.intToNetworkType(i25);
                columnIndexOrThrow23 = i24;
                int i26 = columnIndexOrThrow24;
                if (query.getInt(i26) != 0) {
                    columnIndexOrThrow24 = i26;
                    i2 = columnIndexOrThrow25;
                    z2 = true;
                } else {
                    columnIndexOrThrow24 = i26;
                    i2 = columnIndexOrThrow25;
                    z2 = false;
                }
                if (query.getInt(i2) != 0) {
                    columnIndexOrThrow25 = i2;
                    i3 = columnIndexOrThrow26;
                    z3 = true;
                } else {
                    columnIndexOrThrow25 = i2;
                    i3 = columnIndexOrThrow26;
                    z3 = false;
                }
                if (query.getInt(i3) != 0) {
                    columnIndexOrThrow26 = i3;
                    i4 = columnIndexOrThrow27;
                    z4 = true;
                } else {
                    columnIndexOrThrow26 = i3;
                    i4 = columnIndexOrThrow27;
                    z4 = false;
                }
                if (query.getInt(i4) != 0) {
                    columnIndexOrThrow27 = i4;
                    i5 = columnIndexOrThrow28;
                    z5 = true;
                } else {
                    columnIndexOrThrow27 = i4;
                    i5 = columnIndexOrThrow28;
                    z5 = false;
                }
                long j9 = query.getLong(i5);
                columnIndexOrThrow28 = i5;
                int i27 = columnIndexOrThrow29;
                long j10 = query.getLong(i27);
                columnIndexOrThrow29 = i27;
                int i28 = columnIndexOrThrow30;
                byte[] blob = query.isNull(i28) ? null : query.getBlob(i28);
                WorkTypeConverters workTypeConverters5 = WorkTypeConverters.INSTANCE;
                Constraints constraints = new Constraints(intToNetworkType, z2, z3, z4, z5, j9, j10, WorkTypeConverters.byteArrayToSetOfTriggers(blob));
                columnIndexOrThrow30 = i28;
                arrayList.add(new WorkSpec(string, intToState, string2, string3, fromByteArray, fromByteArray2, j, j2, j3, constraints, i8, intToBackoffPolicy, j4, j5, j6, j7, z, intToOutOfQuotaPolicy, i16, i18, j8, i21, i23));
                columnIndexOrThrow = i11;
                i6 = i10;
            }
            query.close();
            roomSQLiteQuery.release();
            return arrayList;
        } catch (Throwable th2) {
            th = th2;
            query.close();
            roomSQLiteQuery.release();
            throw th;
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<WorkSpec> getRunningWork() {
        RoomSQLiteQuery roomSQLiteQuery;
        int columnIndexOrThrow;
        int columnIndexOrThrow2;
        int columnIndexOrThrow3;
        int columnIndexOrThrow4;
        int columnIndexOrThrow5;
        int columnIndexOrThrow6;
        int columnIndexOrThrow7;
        int columnIndexOrThrow8;
        int columnIndexOrThrow9;
        int columnIndexOrThrow10;
        int columnIndexOrThrow11;
        int columnIndexOrThrow12;
        int columnIndexOrThrow13;
        int columnIndexOrThrow14;
        int i;
        boolean z;
        int i2;
        boolean z2;
        int i3;
        boolean z3;
        int i4;
        boolean z4;
        int i5;
        boolean z5;
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM workspec WHERE state=1", 0);
        this.__db.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, "id");
            columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, SentryThread.JsonKeys.STATE);
            columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, "worker_class_name");
            columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, "input_merger_class_name");
            columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(query, "input");
            columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(query, "output");
            columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(query, "initial_delay");
            columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(query, "interval_duration");
            columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(query, "flex_duration");
            columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(query, "run_attempt_count");
            columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(query, "backoff_policy");
            columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(query, "backoff_delay_duration");
            columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(query, "last_enqueue_time");
            columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(query, "minimum_retention_duration");
            roomSQLiteQuery = acquire;
        } catch (Throwable th) {
            th = th;
            roomSQLiteQuery = acquire;
        }
        try {
            int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(query, "schedule_requested_at");
            int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(query, "run_in_foreground");
            int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(query, "out_of_quota_policy");
            int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(query, "period_count");
            int columnIndexOrThrow19 = CursorUtil.getColumnIndexOrThrow(query, "generation");
            int columnIndexOrThrow20 = CursorUtil.getColumnIndexOrThrow(query, "next_schedule_time_override");
            int columnIndexOrThrow21 = CursorUtil.getColumnIndexOrThrow(query, "next_schedule_time_override_generation");
            int columnIndexOrThrow22 = CursorUtil.getColumnIndexOrThrow(query, "stop_reason");
            int columnIndexOrThrow23 = CursorUtil.getColumnIndexOrThrow(query, "required_network_type");
            int columnIndexOrThrow24 = CursorUtil.getColumnIndexOrThrow(query, "requires_charging");
            int columnIndexOrThrow25 = CursorUtil.getColumnIndexOrThrow(query, "requires_device_idle");
            int columnIndexOrThrow26 = CursorUtil.getColumnIndexOrThrow(query, "requires_battery_not_low");
            int columnIndexOrThrow27 = CursorUtil.getColumnIndexOrThrow(query, "requires_storage_not_low");
            int columnIndexOrThrow28 = CursorUtil.getColumnIndexOrThrow(query, "trigger_content_update_delay");
            int columnIndexOrThrow29 = CursorUtil.getColumnIndexOrThrow(query, "trigger_max_content_delay");
            int columnIndexOrThrow30 = CursorUtil.getColumnIndexOrThrow(query, "content_uri_triggers");
            int i6 = columnIndexOrThrow14;
            ArrayList arrayList = new ArrayList(query.getCount());
            while (query.moveToNext()) {
                String string = query.isNull(columnIndexOrThrow) ? null : query.getString(columnIndexOrThrow);
                int i7 = query.getInt(columnIndexOrThrow2);
                WorkTypeConverters workTypeConverters = WorkTypeConverters.INSTANCE;
                WorkInfo.State intToState = WorkTypeConverters.intToState(i7);
                String string2 = query.isNull(columnIndexOrThrow3) ? null : query.getString(columnIndexOrThrow3);
                String string3 = query.isNull(columnIndexOrThrow4) ? null : query.getString(columnIndexOrThrow4);
                Data fromByteArray = Data.fromByteArray(query.isNull(columnIndexOrThrow5) ? null : query.getBlob(columnIndexOrThrow5));
                Data fromByteArray2 = Data.fromByteArray(query.isNull(columnIndexOrThrow6) ? null : query.getBlob(columnIndexOrThrow6));
                long j = query.getLong(columnIndexOrThrow7);
                long j2 = query.getLong(columnIndexOrThrow8);
                long j3 = query.getLong(columnIndexOrThrow9);
                int i8 = query.getInt(columnIndexOrThrow10);
                int i9 = query.getInt(columnIndexOrThrow11);
                WorkTypeConverters workTypeConverters2 = WorkTypeConverters.INSTANCE;
                BackoffPolicy intToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy(i9);
                long j4 = query.getLong(columnIndexOrThrow12);
                long j5 = query.getLong(columnIndexOrThrow13);
                int i10 = i6;
                long j6 = query.getLong(i10);
                int i11 = columnIndexOrThrow;
                int i12 = columnIndexOrThrow15;
                long j7 = query.getLong(i12);
                columnIndexOrThrow15 = i12;
                int i13 = columnIndexOrThrow16;
                if (query.getInt(i13) != 0) {
                    columnIndexOrThrow16 = i13;
                    i = columnIndexOrThrow17;
                    z = true;
                } else {
                    columnIndexOrThrow16 = i13;
                    i = columnIndexOrThrow17;
                    z = false;
                }
                int i14 = query.getInt(i);
                WorkTypeConverters workTypeConverters3 = WorkTypeConverters.INSTANCE;
                OutOfQuotaPolicy intToOutOfQuotaPolicy = WorkTypeConverters.intToOutOfQuotaPolicy(i14);
                columnIndexOrThrow17 = i;
                int i15 = columnIndexOrThrow18;
                int i16 = query.getInt(i15);
                columnIndexOrThrow18 = i15;
                int i17 = columnIndexOrThrow19;
                int i18 = query.getInt(i17);
                columnIndexOrThrow19 = i17;
                int i19 = columnIndexOrThrow20;
                long j8 = query.getLong(i19);
                columnIndexOrThrow20 = i19;
                int i20 = columnIndexOrThrow21;
                int i21 = query.getInt(i20);
                columnIndexOrThrow21 = i20;
                int i22 = columnIndexOrThrow22;
                int i23 = query.getInt(i22);
                columnIndexOrThrow22 = i22;
                int i24 = columnIndexOrThrow23;
                int i25 = query.getInt(i24);
                WorkTypeConverters workTypeConverters4 = WorkTypeConverters.INSTANCE;
                NetworkType intToNetworkType = WorkTypeConverters.intToNetworkType(i25);
                columnIndexOrThrow23 = i24;
                int i26 = columnIndexOrThrow24;
                if (query.getInt(i26) != 0) {
                    columnIndexOrThrow24 = i26;
                    i2 = columnIndexOrThrow25;
                    z2 = true;
                } else {
                    columnIndexOrThrow24 = i26;
                    i2 = columnIndexOrThrow25;
                    z2 = false;
                }
                if (query.getInt(i2) != 0) {
                    columnIndexOrThrow25 = i2;
                    i3 = columnIndexOrThrow26;
                    z3 = true;
                } else {
                    columnIndexOrThrow25 = i2;
                    i3 = columnIndexOrThrow26;
                    z3 = false;
                }
                if (query.getInt(i3) != 0) {
                    columnIndexOrThrow26 = i3;
                    i4 = columnIndexOrThrow27;
                    z4 = true;
                } else {
                    columnIndexOrThrow26 = i3;
                    i4 = columnIndexOrThrow27;
                    z4 = false;
                }
                if (query.getInt(i4) != 0) {
                    columnIndexOrThrow27 = i4;
                    i5 = columnIndexOrThrow28;
                    z5 = true;
                } else {
                    columnIndexOrThrow27 = i4;
                    i5 = columnIndexOrThrow28;
                    z5 = false;
                }
                long j9 = query.getLong(i5);
                columnIndexOrThrow28 = i5;
                int i27 = columnIndexOrThrow29;
                long j10 = query.getLong(i27);
                columnIndexOrThrow29 = i27;
                int i28 = columnIndexOrThrow30;
                byte[] blob = query.isNull(i28) ? null : query.getBlob(i28);
                WorkTypeConverters workTypeConverters5 = WorkTypeConverters.INSTANCE;
                Constraints constraints = new Constraints(intToNetworkType, z2, z3, z4, z5, j9, j10, WorkTypeConverters.byteArrayToSetOfTriggers(blob));
                columnIndexOrThrow30 = i28;
                arrayList.add(new WorkSpec(string, intToState, string2, string3, fromByteArray, fromByteArray2, j, j2, j3, constraints, i8, intToBackoffPolicy, j4, j5, j6, j7, z, intToOutOfQuotaPolicy, i16, i18, j8, i21, i23));
                columnIndexOrThrow = i11;
                i6 = i10;
            }
            query.close();
            roomSQLiteQuery.release();
            return arrayList;
        } catch (Throwable th2) {
            th = th2;
            query.close();
            roomSQLiteQuery.release();
            throw th;
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<WorkSpec> getRecentlyCompletedWork(final long startingAt) {
        RoomSQLiteQuery roomSQLiteQuery;
        int i;
        boolean z;
        int i2;
        boolean z2;
        int i3;
        boolean z3;
        int i4;
        boolean z4;
        int i5;
        boolean z5;
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM workspec WHERE last_enqueue_time >= ? AND state IN (2, 3, 5) ORDER BY last_enqueue_time DESC", 1);
        acquire.bindLong(1, startingAt);
        this.__db.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, "id");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, SentryThread.JsonKeys.STATE);
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, "worker_class_name");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, "input_merger_class_name");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(query, "input");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(query, "output");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(query, "initial_delay");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(query, "interval_duration");
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(query, "flex_duration");
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(query, "run_attempt_count");
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(query, "backoff_policy");
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(query, "backoff_delay_duration");
            int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(query, "last_enqueue_time");
            int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(query, "minimum_retention_duration");
            roomSQLiteQuery = acquire;
            try {
                int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(query, "schedule_requested_at");
                int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(query, "run_in_foreground");
                int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(query, "out_of_quota_policy");
                int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(query, "period_count");
                int columnIndexOrThrow19 = CursorUtil.getColumnIndexOrThrow(query, "generation");
                int columnIndexOrThrow20 = CursorUtil.getColumnIndexOrThrow(query, "next_schedule_time_override");
                int columnIndexOrThrow21 = CursorUtil.getColumnIndexOrThrow(query, "next_schedule_time_override_generation");
                int columnIndexOrThrow22 = CursorUtil.getColumnIndexOrThrow(query, "stop_reason");
                int columnIndexOrThrow23 = CursorUtil.getColumnIndexOrThrow(query, "required_network_type");
                int columnIndexOrThrow24 = CursorUtil.getColumnIndexOrThrow(query, "requires_charging");
                int columnIndexOrThrow25 = CursorUtil.getColumnIndexOrThrow(query, "requires_device_idle");
                int columnIndexOrThrow26 = CursorUtil.getColumnIndexOrThrow(query, "requires_battery_not_low");
                int columnIndexOrThrow27 = CursorUtil.getColumnIndexOrThrow(query, "requires_storage_not_low");
                int columnIndexOrThrow28 = CursorUtil.getColumnIndexOrThrow(query, "trigger_content_update_delay");
                int columnIndexOrThrow29 = CursorUtil.getColumnIndexOrThrow(query, "trigger_max_content_delay");
                int columnIndexOrThrow30 = CursorUtil.getColumnIndexOrThrow(query, "content_uri_triggers");
                int i6 = columnIndexOrThrow14;
                ArrayList arrayList = new ArrayList(query.getCount());
                while (query.moveToNext()) {
                    String string = query.isNull(columnIndexOrThrow) ? null : query.getString(columnIndexOrThrow);
                    int i7 = query.getInt(columnIndexOrThrow2);
                    WorkTypeConverters workTypeConverters = WorkTypeConverters.INSTANCE;
                    WorkInfo.State intToState = WorkTypeConverters.intToState(i7);
                    String string2 = query.isNull(columnIndexOrThrow3) ? null : query.getString(columnIndexOrThrow3);
                    String string3 = query.isNull(columnIndexOrThrow4) ? null : query.getString(columnIndexOrThrow4);
                    Data fromByteArray = Data.fromByteArray(query.isNull(columnIndexOrThrow5) ? null : query.getBlob(columnIndexOrThrow5));
                    Data fromByteArray2 = Data.fromByteArray(query.isNull(columnIndexOrThrow6) ? null : query.getBlob(columnIndexOrThrow6));
                    long j = query.getLong(columnIndexOrThrow7);
                    long j2 = query.getLong(columnIndexOrThrow8);
                    long j3 = query.getLong(columnIndexOrThrow9);
                    int i8 = query.getInt(columnIndexOrThrow10);
                    int i9 = query.getInt(columnIndexOrThrow11);
                    WorkTypeConverters workTypeConverters2 = WorkTypeConverters.INSTANCE;
                    BackoffPolicy intToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy(i9);
                    long j4 = query.getLong(columnIndexOrThrow12);
                    long j5 = query.getLong(columnIndexOrThrow13);
                    int i10 = i6;
                    long j6 = query.getLong(i10);
                    int i11 = columnIndexOrThrow;
                    int i12 = columnIndexOrThrow15;
                    long j7 = query.getLong(i12);
                    columnIndexOrThrow15 = i12;
                    int i13 = columnIndexOrThrow16;
                    if (query.getInt(i13) != 0) {
                        columnIndexOrThrow16 = i13;
                        i = columnIndexOrThrow17;
                        z = true;
                    } else {
                        columnIndexOrThrow16 = i13;
                        i = columnIndexOrThrow17;
                        z = false;
                    }
                    int i14 = query.getInt(i);
                    WorkTypeConverters workTypeConverters3 = WorkTypeConverters.INSTANCE;
                    OutOfQuotaPolicy intToOutOfQuotaPolicy = WorkTypeConverters.intToOutOfQuotaPolicy(i14);
                    columnIndexOrThrow17 = i;
                    int i15 = columnIndexOrThrow18;
                    int i16 = query.getInt(i15);
                    columnIndexOrThrow18 = i15;
                    int i17 = columnIndexOrThrow19;
                    int i18 = query.getInt(i17);
                    columnIndexOrThrow19 = i17;
                    int i19 = columnIndexOrThrow20;
                    long j8 = query.getLong(i19);
                    columnIndexOrThrow20 = i19;
                    int i20 = columnIndexOrThrow21;
                    int i21 = query.getInt(i20);
                    columnIndexOrThrow21 = i20;
                    int i22 = columnIndexOrThrow22;
                    int i23 = query.getInt(i22);
                    columnIndexOrThrow22 = i22;
                    int i24 = columnIndexOrThrow23;
                    int i25 = query.getInt(i24);
                    WorkTypeConverters workTypeConverters4 = WorkTypeConverters.INSTANCE;
                    NetworkType intToNetworkType = WorkTypeConverters.intToNetworkType(i25);
                    columnIndexOrThrow23 = i24;
                    int i26 = columnIndexOrThrow24;
                    if (query.getInt(i26) != 0) {
                        columnIndexOrThrow24 = i26;
                        i2 = columnIndexOrThrow25;
                        z2 = true;
                    } else {
                        columnIndexOrThrow24 = i26;
                        i2 = columnIndexOrThrow25;
                        z2 = false;
                    }
                    if (query.getInt(i2) != 0) {
                        columnIndexOrThrow25 = i2;
                        i3 = columnIndexOrThrow26;
                        z3 = true;
                    } else {
                        columnIndexOrThrow25 = i2;
                        i3 = columnIndexOrThrow26;
                        z3 = false;
                    }
                    if (query.getInt(i3) != 0) {
                        columnIndexOrThrow26 = i3;
                        i4 = columnIndexOrThrow27;
                        z4 = true;
                    } else {
                        columnIndexOrThrow26 = i3;
                        i4 = columnIndexOrThrow27;
                        z4 = false;
                    }
                    if (query.getInt(i4) != 0) {
                        columnIndexOrThrow27 = i4;
                        i5 = columnIndexOrThrow28;
                        z5 = true;
                    } else {
                        columnIndexOrThrow27 = i4;
                        i5 = columnIndexOrThrow28;
                        z5 = false;
                    }
                    long j9 = query.getLong(i5);
                    columnIndexOrThrow28 = i5;
                    int i27 = columnIndexOrThrow29;
                    long j10 = query.getLong(i27);
                    columnIndexOrThrow29 = i27;
                    int i28 = columnIndexOrThrow30;
                    byte[] blob = query.isNull(i28) ? null : query.getBlob(i28);
                    WorkTypeConverters workTypeConverters5 = WorkTypeConverters.INSTANCE;
                    Constraints constraints = new Constraints(intToNetworkType, z2, z3, z4, z5, j9, j10, WorkTypeConverters.byteArrayToSetOfTriggers(blob));
                    columnIndexOrThrow30 = i28;
                    arrayList.add(new WorkSpec(string, intToState, string2, string3, fromByteArray, fromByteArray2, j, j2, j3, constraints, i8, intToBackoffPolicy, j4, j5, j6, j7, z, intToOutOfQuotaPolicy, i16, i18, j8, i21, i23));
                    columnIndexOrThrow = i11;
                    i6 = i10;
                }
                query.close();
                roomSQLiteQuery.release();
                return arrayList;
            } catch (Throwable th) {
                th = th;
                query.close();
                roomSQLiteQuery.release();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            roomSQLiteQuery = acquire;
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public int countNonFinishedContentUriTriggerWorkers() {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("Select COUNT(*) FROM workspec WHERE LENGTH(content_uri_triggers)<>0 AND state NOT IN (2, 3, 5)", 0);
        this.__db.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            return query.moveToFirst() ? query.getInt(0) : 0;
        } finally {
            query.close();
            acquire.release();
        }
    }

    public static List<Class<?>> getRequiredConverters() {
        return Collections.emptyList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void __fetchRelationshipWorkTagAsjavaLangString(final HashMap<String, ArrayList<String>> _map) {
        int i;
        Set<String> keySet = _map.keySet();
        if (keySet.isEmpty()) {
            return;
        }
        if (_map.size() > 999) {
            HashMap<String, ArrayList<String>> hashMap = new HashMap<>(999);
            loop0: while (true) {
                i = 0;
                for (String str : keySet) {
                    hashMap.put(str, _map.get(str));
                    i++;
                    if (i == 999) {
                        break;
                    }
                }
                __fetchRelationshipWorkTagAsjavaLangString(hashMap);
                hashMap = new HashMap<>(999);
            }
            if (i > 0) {
                __fetchRelationshipWorkTagAsjavaLangString(hashMap);
                return;
            }
            return;
        }
        StringBuilder newStringBuilder = StringUtil.newStringBuilder();
        newStringBuilder.append("SELECT `tag`,`work_spec_id` FROM `WorkTag` WHERE `work_spec_id` IN (");
        int size = keySet.size();
        StringUtil.appendPlaceholders(newStringBuilder, size);
        newStringBuilder.append(")");
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire(newStringBuilder.toString(), size);
        int i2 = 1;
        for (String str2 : keySet) {
            if (str2 == null) {
                acquire.bindNull(i2);
            } else {
                acquire.bindString(i2, str2);
            }
            i2++;
        }
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            int columnIndex = CursorUtil.getColumnIndex(query, "work_spec_id");
            if (columnIndex == -1) {
                return;
            }
            while (query.moveToNext()) {
                ArrayList<String> arrayList = _map.get(query.getString(columnIndex));
                if (arrayList != null) {
                    arrayList.add(query.isNull(0) ? null : query.getString(0));
                }
            }
        } finally {
            query.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void __fetchRelationshipWorkProgressAsandroidxWorkData(final HashMap<String, ArrayList<Data>> _map) {
        int i;
        Set<String> keySet = _map.keySet();
        if (keySet.isEmpty()) {
            return;
        }
        if (_map.size() > 999) {
            HashMap<String, ArrayList<Data>> hashMap = new HashMap<>(999);
            loop0: while (true) {
                i = 0;
                for (String str : keySet) {
                    hashMap.put(str, _map.get(str));
                    i++;
                    if (i == 999) {
                        break;
                    }
                }
                __fetchRelationshipWorkProgressAsandroidxWorkData(hashMap);
                hashMap = new HashMap<>(999);
            }
            if (i > 0) {
                __fetchRelationshipWorkProgressAsandroidxWorkData(hashMap);
                return;
            }
            return;
        }
        StringBuilder newStringBuilder = StringUtil.newStringBuilder();
        newStringBuilder.append("SELECT `progress`,`work_spec_id` FROM `WorkProgress` WHERE `work_spec_id` IN (");
        int size = keySet.size();
        StringUtil.appendPlaceholders(newStringBuilder, size);
        newStringBuilder.append(")");
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire(newStringBuilder.toString(), size);
        int i2 = 1;
        for (String str2 : keySet) {
            if (str2 == null) {
                acquire.bindNull(i2);
            } else {
                acquire.bindString(i2, str2);
            }
            i2++;
        }
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            int columnIndex = CursorUtil.getColumnIndex(query, "work_spec_id");
            if (columnIndex == -1) {
                return;
            }
            while (query.moveToNext()) {
                ArrayList<Data> arrayList = _map.get(query.getString(columnIndex));
                if (arrayList != null) {
                    arrayList.add(Data.fromByteArray(query.isNull(0) ? null : query.getBlob(0)));
                }
            }
        } finally {
            query.close();
        }
    }
}
