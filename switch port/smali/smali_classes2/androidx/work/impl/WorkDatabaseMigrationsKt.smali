.class public final Landroidx/work/impl/WorkDatabaseMigrationsKt;
.super Ljava/lang/Object;
.source "WorkDatabaseMigrations.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\r\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0004\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0005\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0006\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0007\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0008\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\t\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\n\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u000b\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u000c\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\r\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "CREATE_INDEX_PERIOD_START_TIME",
        "",
        "CREATE_OUT_OF_QUOTA_POLICY",
        "CREATE_RUN_IN_FOREGROUND",
        "CREATE_SYSTEM_ID_INFO",
        "CREATE_WORK_PROGRESS",
        "INITIALIZE_PERIOD_COUNTER",
        "MIGRATE_ALARM_INFO_TO_SYSTEM_ID_INFO",
        "PERIODIC_WORK_SET_SCHEDULE_REQUESTED_AT",
        "REMOVE_ALARM_INFO",
        "SET_DEFAULT_CONTENT_URI_TRIGGERS",
        "SET_DEFAULT_NETWORK_TYPE",
        "WORKSPEC_ADD_TRIGGER_MAX_CONTENT_DELAY",
        "WORKSPEC_ADD_TRIGGER_UPDATE_DELAY",
        "work-runtime_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final CREATE_INDEX_PERIOD_START_TIME:Ljava/lang/String; = "\n    CREATE INDEX IF NOT EXISTS `index_WorkSpec_period_start_time` ON `workspec`(`period_start_time`)\n    "

.field private static final CREATE_OUT_OF_QUOTA_POLICY:Ljava/lang/String; = "ALTER TABLE workspec ADD COLUMN `out_of_quota_policy` INTEGER NOT NULL DEFAULT 0"

.field private static final CREATE_RUN_IN_FOREGROUND:Ljava/lang/String; = "ALTER TABLE workspec ADD COLUMN `run_in_foreground` INTEGER NOT NULL DEFAULT 0"

.field private static final CREATE_SYSTEM_ID_INFO:Ljava/lang/String; = "\n    CREATE TABLE IF NOT EXISTS `SystemIdInfo` (`work_spec_id` TEXT NOT NULL, `system_id`\n    INTEGER NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`)\n    REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )\n    "

.field private static final CREATE_WORK_PROGRESS:Ljava/lang/String; = "\n    CREATE TABLE IF NOT EXISTS `WorkProgress` (`work_spec_id` TEXT NOT NULL, `progress`\n    BLOB NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`)\n    REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )\n    "

.field private static final INITIALIZE_PERIOD_COUNTER:Ljava/lang/String; = "UPDATE workspec SET period_count = 1 WHERE last_enqueue_time <> 0 AND interval_duration <> 0"

.field private static final MIGRATE_ALARM_INFO_TO_SYSTEM_ID_INFO:Ljava/lang/String; = "\n    INSERT INTO SystemIdInfo(work_spec_id, system_id)\n    SELECT work_spec_id, alarm_id AS system_id FROM alarmInfo\n    "

.field private static final PERIODIC_WORK_SET_SCHEDULE_REQUESTED_AT:Ljava/lang/String; = "\n    UPDATE workspec SET schedule_requested_at = 0\n    WHERE state NOT IN (2, 3, 5)\n        AND schedule_requested_at = -1\n        AND interval_duration <> 0\n    "

.field private static final REMOVE_ALARM_INFO:Ljava/lang/String; = "DROP TABLE IF EXISTS alarmInfo"

.field private static final SET_DEFAULT_CONTENT_URI_TRIGGERS:Ljava/lang/String; = "UPDATE workspec SET content_uri_triggers = x\'\' WHERE content_uri_triggers is NULL"

.field private static final SET_DEFAULT_NETWORK_TYPE:Ljava/lang/String; = "UPDATE workspec SET required_network_type = 0 WHERE required_network_type IS NULL "

.field private static final WORKSPEC_ADD_TRIGGER_MAX_CONTENT_DELAY:Ljava/lang/String; = "ALTER TABLE workspec ADD COLUMN `trigger_max_content_delay` INTEGER NOT NULL DEFAULT -1"

.field private static final WORKSPEC_ADD_TRIGGER_UPDATE_DELAY:Ljava/lang/String; = "ALTER TABLE workspec ADD COLUMN `trigger_content_update_delay` INTEGER NOT NULL DEFAULT -1"
