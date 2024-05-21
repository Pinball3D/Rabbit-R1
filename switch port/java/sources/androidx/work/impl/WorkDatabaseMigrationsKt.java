package androidx.work.impl;

import kotlin.Metadata;

/* compiled from: WorkDatabaseMigrations.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000e\n\u0002\b\r\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0004\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0005\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0006\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0007\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\b\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\t\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\n\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u000b\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\f\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\r\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"CREATE_INDEX_PERIOD_START_TIME", "", "CREATE_OUT_OF_QUOTA_POLICY", "CREATE_RUN_IN_FOREGROUND", "CREATE_SYSTEM_ID_INFO", "CREATE_WORK_PROGRESS", "INITIALIZE_PERIOD_COUNTER", "MIGRATE_ALARM_INFO_TO_SYSTEM_ID_INFO", "PERIODIC_WORK_SET_SCHEDULE_REQUESTED_AT", "REMOVE_ALARM_INFO", "SET_DEFAULT_CONTENT_URI_TRIGGERS", "SET_DEFAULT_NETWORK_TYPE", "WORKSPEC_ADD_TRIGGER_MAX_CONTENT_DELAY", "WORKSPEC_ADD_TRIGGER_UPDATE_DELAY", "work-runtime_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class WorkDatabaseMigrationsKt {
    private static final String CREATE_INDEX_PERIOD_START_TIME = "\n    CREATE INDEX IF NOT EXISTS `index_WorkSpec_period_start_time` ON `workspec`(`period_start_time`)\n    ";
    private static final String CREATE_OUT_OF_QUOTA_POLICY = "ALTER TABLE workspec ADD COLUMN `out_of_quota_policy` INTEGER NOT NULL DEFAULT 0";
    private static final String CREATE_RUN_IN_FOREGROUND = "ALTER TABLE workspec ADD COLUMN `run_in_foreground` INTEGER NOT NULL DEFAULT 0";
    private static final String CREATE_SYSTEM_ID_INFO = "\n    CREATE TABLE IF NOT EXISTS `SystemIdInfo` (`work_spec_id` TEXT NOT NULL, `system_id`\n    INTEGER NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`)\n    REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )\n    ";
    private static final String CREATE_WORK_PROGRESS = "\n    CREATE TABLE IF NOT EXISTS `WorkProgress` (`work_spec_id` TEXT NOT NULL, `progress`\n    BLOB NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`)\n    REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )\n    ";
    private static final String INITIALIZE_PERIOD_COUNTER = "UPDATE workspec SET period_count = 1 WHERE last_enqueue_time <> 0 AND interval_duration <> 0";
    private static final String MIGRATE_ALARM_INFO_TO_SYSTEM_ID_INFO = "\n    INSERT INTO SystemIdInfo(work_spec_id, system_id)\n    SELECT work_spec_id, alarm_id AS system_id FROM alarmInfo\n    ";
    private static final String PERIODIC_WORK_SET_SCHEDULE_REQUESTED_AT = "\n    UPDATE workspec SET schedule_requested_at = 0\n    WHERE state NOT IN (2, 3, 5)\n        AND schedule_requested_at = -1\n        AND interval_duration <> 0\n    ";
    private static final String REMOVE_ALARM_INFO = "DROP TABLE IF EXISTS alarmInfo";
    private static final String SET_DEFAULT_CONTENT_URI_TRIGGERS = "UPDATE workspec SET content_uri_triggers = x'' WHERE content_uri_triggers is NULL";
    private static final String SET_DEFAULT_NETWORK_TYPE = "UPDATE workspec SET required_network_type = 0 WHERE required_network_type IS NULL ";
    private static final String WORKSPEC_ADD_TRIGGER_MAX_CONTENT_DELAY = "ALTER TABLE workspec ADD COLUMN `trigger_max_content_delay` INTEGER NOT NULL DEFAULT -1";
    private static final String WORKSPEC_ADD_TRIGGER_UPDATE_DELAY = "ALTER TABLE workspec ADD COLUMN `trigger_content_update_delay` INTEGER NOT NULL DEFAULT -1";
}
