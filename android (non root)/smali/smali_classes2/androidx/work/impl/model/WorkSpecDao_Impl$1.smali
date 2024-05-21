.class Landroidx/work/impl/model/WorkSpecDao_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
.source "WorkSpecDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/model/WorkSpecDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Landroidx/work/impl/model/WorkSpec;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/work/impl/model/WorkSpecDao_Impl;


# direct methods
.method constructor <init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "database"
        }
    .end annotation

    iput-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl$1;->this$0:Landroidx/work/impl/model/WorkSpecDao_Impl;

    .line 79
    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Landroidx/work/impl/model/WorkSpec;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "stmt",
            "value"
        }
    .end annotation

    .line 87
    iget-object p0, p2, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 88
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 90
    :cond_0
    iget-object p0, p2, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 92
    :goto_0
    sget-object p0, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    iget-object p0, p2, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    invoke-static {p0}, Landroidx/work/impl/model/WorkTypeConverters;->stateToInt(Landroidx/work/WorkInfo$State;)I

    move-result p0

    const/4 v0, 0x2

    int-to-long v1, p0

    .line 93
    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 94
    iget-object p0, p2, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    const/4 v0, 0x3

    if-nez p0, :cond_1

    .line 95
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 97
    :cond_1
    iget-object p0, p2, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 99
    :goto_1
    iget-object p0, p2, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    const/4 v0, 0x4

    if-nez p0, :cond_2

    .line 100
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 102
    :cond_2
    iget-object p0, p2, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 104
    :goto_2
    iget-object p0, p2, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    invoke-static {p0}, Landroidx/work/Data;->toByteArrayInternal(Landroidx/work/Data;)[B

    move-result-object p0

    const/4 v0, 0x5

    if-nez p0, :cond_3

    .line 106
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_3

    .line 108
    :cond_3
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 110
    :goto_3
    iget-object p0, p2, Landroidx/work/impl/model/WorkSpec;->output:Landroidx/work/Data;

    invoke-static {p0}, Landroidx/work/Data;->toByteArrayInternal(Landroidx/work/Data;)[B

    move-result-object p0

    const/4 v0, 0x6

    if-nez p0, :cond_4

    .line 112
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_4

    .line 114
    :cond_4
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    :goto_4
    const/4 p0, 0x7

    .line 116
    iget-wide v0, p2, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/16 p0, 0x8

    .line 117
    iget-wide v0, p2, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/16 p0, 0x9

    .line 118
    iget-wide v0, p2, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 119
    iget p0, p2, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    int-to-long v0, p0

    const/16 p0, 0xa

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 120
    sget-object p0, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    iget-object p0, p2, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:Landroidx/work/BackoffPolicy;

    invoke-static {p0}, Landroidx/work/impl/model/WorkTypeConverters;->backoffPolicyToInt(Landroidx/work/BackoffPolicy;)I

    move-result p0

    const/16 v0, 0xb

    int-to-long v1, p0

    .line 121
    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/16 p0, 0xc

    .line 122
    iget-wide v0, p2, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/16 p0, 0xd

    .line 123
    iget-wide v0, p2, Landroidx/work/impl/model/WorkSpec;->lastEnqueueTime:J

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/16 p0, 0xe

    .line 124
    iget-wide v0, p2, Landroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/16 p0, 0xf

    .line 125
    iget-wide v0, p2, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 126
    iget-boolean p0, p2, Landroidx/work/impl/model/WorkSpec;->expedited:Z

    const/16 v0, 0x10

    int-to-long v1, p0

    .line 127
    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 128
    sget-object p0, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    iget-object p0, p2, Landroidx/work/impl/model/WorkSpec;->outOfQuotaPolicy:Landroidx/work/OutOfQuotaPolicy;

    invoke-static {p0}, Landroidx/work/impl/model/WorkTypeConverters;->outOfQuotaPolicyToInt(Landroidx/work/OutOfQuotaPolicy;)I

    move-result p0

    const/16 v0, 0x11

    int-to-long v1, p0

    .line 129
    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 130
    invoke-virtual {p2}, Landroidx/work/impl/model/WorkSpec;->getPeriodCount()I

    move-result p0

    int-to-long v0, p0

    const/16 p0, 0x12

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 131
    invoke-virtual {p2}, Landroidx/work/impl/model/WorkSpec;->getGeneration()I

    move-result p0

    int-to-long v0, p0

    const/16 p0, 0x13

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/16 p0, 0x14

    .line 132
    invoke-virtual {p2}, Landroidx/work/impl/model/WorkSpec;->getNextScheduleTimeOverride()J

    move-result-wide v0

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 133
    invoke-virtual {p2}, Landroidx/work/impl/model/WorkSpec;->getNextScheduleTimeOverrideGeneration()I

    move-result p0

    int-to-long v0, p0

    const/16 p0, 0x15

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 134
    invoke-virtual {p2}, Landroidx/work/impl/model/WorkSpec;->getStopReason()I

    move-result p0

    int-to-long v0, p0

    const/16 p0, 0x16

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 135
    iget-object p0, p2, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    const/16 p2, 0x1d

    const/16 v0, 0x1c

    const/16 v1, 0x1b

    const/16 v2, 0x1a

    const/16 v3, 0x19

    const/16 v4, 0x18

    const/16 v5, 0x17

    const/16 v6, 0x1e

    if-eqz p0, :cond_6

    .line 137
    sget-object v7, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-virtual {p0}, Landroidx/work/Constraints;->getRequiredNetworkType()Landroidx/work/NetworkType;

    move-result-object v7

    invoke-static {v7}, Landroidx/work/impl/model/WorkTypeConverters;->networkTypeToInt(Landroidx/work/NetworkType;)I

    move-result v7

    int-to-long v7, v7

    .line 138
    invoke-interface {p1, v5, v7, v8}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 139
    invoke-virtual {p0}, Landroidx/work/Constraints;->requiresCharging()Z

    move-result v5

    int-to-long v7, v5

    .line 140
    invoke-interface {p1, v4, v7, v8}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 141
    invoke-virtual {p0}, Landroidx/work/Constraints;->requiresDeviceIdle()Z

    move-result v4

    int-to-long v4, v4

    .line 142
    invoke-interface {p1, v3, v4, v5}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 143
    invoke-virtual {p0}, Landroidx/work/Constraints;->requiresBatteryNotLow()Z

    move-result v3

    int-to-long v3, v3

    .line 144
    invoke-interface {p1, v2, v3, v4}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 145
    invoke-virtual {p0}, Landroidx/work/Constraints;->requiresStorageNotLow()Z

    move-result v2

    int-to-long v2, v2

    .line 146
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 147
    invoke-virtual {p0}, Landroidx/work/Constraints;->getContentTriggerUpdateDelayMillis()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 148
    invoke-virtual {p0}, Landroidx/work/Constraints;->getContentTriggerMaxDelayMillis()J

    move-result-wide v0

    invoke-interface {p1, p2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 149
    sget-object p2, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-virtual {p0}, Landroidx/work/Constraints;->getContentUriTriggers()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Landroidx/work/impl/model/WorkTypeConverters;->setOfTriggersToByteArray(Ljava/util/Set;)[B

    move-result-object p0

    if-nez p0, :cond_5

    .line 151
    invoke-interface {p1, v6}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_5

    .line 153
    :cond_5
    invoke-interface {p1, v6, p0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    goto :goto_5

    .line 156
    :cond_6
    invoke-interface {p1, v5}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 157
    invoke-interface {p1, v4}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 158
    invoke-interface {p1, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 159
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 160
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 161
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 162
    invoke-interface {p1, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 163
    invoke-interface {p1, v6}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    :goto_5
    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "stmt",
            "value"
        }
    .end annotation

    .line 79
    check-cast p2, Landroidx/work/impl/model/WorkSpec;

    invoke-virtual {p0, p1, p2}, Landroidx/work/impl/model/WorkSpecDao_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Landroidx/work/impl/model/WorkSpec;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 0

    const-string p0, "INSERT OR IGNORE INTO `WorkSpec` (`id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`last_enqueue_time`,`minimum_retention_duration`,`schedule_requested_at`,`run_in_foreground`,`out_of_quota_policy`,`period_count`,`generation`,`next_schedule_time_override`,`next_schedule_time_override_generation`,`stop_reason`,`required_network_type`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object p0
.end method
