.class Landroidx/work/impl/model/RawWorkInfoDao_Impl$2;
.super Ljava/lang/Object;
.source "RawWorkInfoDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/model/RawWorkInfoDao_Impl;->getWorkInfoPojosFlow(Landroidx/sqlite/db/SupportSQLiteQuery;)Lkotlinx/coroutines/flow/Flow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/work/impl/model/RawWorkInfoDao_Impl;

.field final synthetic val$_internalQuery:Landroidx/sqlite/db/SupportSQLiteQuery;


# direct methods
.method constructor <init>(Landroidx/work/impl/model/RawWorkInfoDao_Impl;Landroidx/sqlite/db/SupportSQLiteQuery;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$_internalQuery"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/work/impl/model/RawWorkInfoDao_Impl$2;->this$0:Landroidx/work/impl/model/RawWorkInfoDao_Impl;

    iput-object p2, p0, Landroidx/work/impl/model/RawWorkInfoDao_Impl$2;->val$_internalQuery:Landroidx/sqlite/db/SupportSQLiteQuery;

    .line 519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 519
    invoke-virtual {p0}, Landroidx/work/impl/model/RawWorkInfoDao_Impl$2;->call()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public call()Ljava/util/List;
    .locals 63
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/work/impl/model/RawWorkInfoDao_Impl$2;->this$0:Landroidx/work/impl/model/RawWorkInfoDao_Impl;

    .line 522
    invoke-static {v1}, Landroidx/work/impl/model/RawWorkInfoDao_Impl;->access$000(Landroidx/work/impl/model/RawWorkInfoDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v1

    iget-object v2, v0, Landroidx/work/impl/model/RawWorkInfoDao_Impl$2;->val$_internalQuery:Landroidx/sqlite/db/SupportSQLiteQuery;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    const-string v2, "id"

    .line 524
    invoke-static {v1, v2}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v5, "state"

    .line 525
    invoke-static {v1, v5}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "output"

    .line 526
    invoke-static {v1, v6}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "initial_delay"

    .line 527
    invoke-static {v1, v7}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "interval_duration"

    .line 528
    invoke-static {v1, v8}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "flex_duration"

    .line 529
    invoke-static {v1, v9}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "run_attempt_count"

    .line 530
    invoke-static {v1, v10}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "backoff_policy"

    .line 531
    invoke-static {v1, v11}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "backoff_delay_duration"

    .line 532
    invoke-static {v1, v12}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "last_enqueue_time"

    .line 533
    invoke-static {v1, v13}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "period_count"

    .line 534
    invoke-static {v1, v14}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "generation"

    .line 535
    invoke-static {v1, v15}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v3, "next_schedule_time_override"

    .line 536
    invoke-static {v1, v3}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "stop_reason"

    .line 537
    invoke-static {v1, v4}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v16, v4

    const-string v4, "required_network_type"

    .line 538
    invoke-static {v1, v4}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v17, v4

    const-string v4, "requires_charging"

    .line 539
    invoke-static {v1, v4}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v18, v4

    const-string v4, "requires_device_idle"

    .line 540
    invoke-static {v1, v4}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v19, v4

    const-string v4, "requires_battery_not_low"

    .line 541
    invoke-static {v1, v4}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v20, v4

    const-string v4, "requires_storage_not_low"

    .line 542
    invoke-static {v1, v4}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v21, v4

    const-string v4, "trigger_content_update_delay"

    .line 543
    invoke-static {v1, v4}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v22, v4

    const-string v4, "trigger_max_content_delay"

    .line 544
    invoke-static {v1, v4}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v23, v4

    const-string v4, "content_uri_triggers"

    .line 545
    invoke-static {v1, v4}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v24, v4

    .line 546
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move/from16 v25, v3

    .line 547
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 548
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v26

    if-eqz v26, :cond_2

    move/from16 v26, v15

    .line 549
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 550
    invoke-virtual {v4, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/ArrayList;

    if-nez v27, :cond_0

    move/from16 v27, v14

    .line 552
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 553
    invoke-virtual {v4, v15, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    move/from16 v27, v14

    .line 555
    :goto_1
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 556
    invoke-virtual {v3, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    if-nez v15, :cond_1

    .line 558
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 559
    invoke-virtual {v3, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move/from16 v15, v26

    move/from16 v14, v27

    goto :goto_0

    :cond_2
    move/from16 v27, v14

    move/from16 v26, v15

    const/4 v14, -0x1

    .line 562
    invoke-interface {v1, v14}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget-object v15, v0, Landroidx/work/impl/model/RawWorkInfoDao_Impl$2;->this$0:Landroidx/work/impl/model/RawWorkInfoDao_Impl;

    .line 563
    invoke-static {v15, v4}, Landroidx/work/impl/model/RawWorkInfoDao_Impl;->access$100(Landroidx/work/impl/model/RawWorkInfoDao_Impl;Ljava/util/HashMap;)V

    iget-object v0, v0, Landroidx/work/impl/model/RawWorkInfoDao_Impl$2;->this$0:Landroidx/work/impl/model/RawWorkInfoDao_Impl;

    .line 564
    invoke-static {v0, v3}, Landroidx/work/impl/model/RawWorkInfoDao_Impl;->access$200(Landroidx/work/impl/model/RawWorkInfoDao_Impl;Ljava/util/HashMap;)V

    .line 565
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v15

    invoke-direct {v0, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 566
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_22

    if-ne v2, v14, :cond_3

    :goto_3
    const/16 v29, 0x0

    goto :goto_4

    .line 572
    :cond_3
    invoke-interface {v1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_4

    goto :goto_3

    .line 575
    :cond_4
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v29, v15

    :goto_4
    if-ne v5, v14, :cond_5

    const/16 v30, 0x0

    goto :goto_5

    .line 583
    :cond_5
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 584
    sget-object v28, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static {v15}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    move-result-object v15

    move-object/from16 v30, v15

    :goto_5
    if-ne v6, v14, :cond_6

    const/16 v31, 0x0

    goto :goto_7

    .line 591
    :cond_6
    invoke-interface {v1, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_7

    const/4 v15, 0x0

    goto :goto_6

    .line 594
    :cond_7
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v15

    .line 596
    :goto_6
    invoke-static {v15}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v15

    move-object/from16 v31, v15

    :goto_7
    const-wide/16 v32, 0x0

    if-ne v7, v14, :cond_8

    move-wide/from16 v34, v32

    goto :goto_8

    .line 602
    :cond_8
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v34

    :goto_8
    if-ne v8, v14, :cond_9

    move-wide/from16 v36, v32

    goto :goto_9

    .line 608
    :cond_9
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v36

    :goto_9
    if-ne v9, v14, :cond_a

    move-wide/from16 v38, v32

    goto :goto_a

    .line 614
    :cond_a
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v38

    :goto_a
    if-ne v10, v14, :cond_b

    const/16 v40, 0x0

    goto :goto_b

    .line 620
    :cond_b
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    move/from16 v40, v28

    :goto_b
    if-ne v11, v14, :cond_c

    const/16 v41, 0x0

    goto :goto_c

    .line 627
    :cond_c
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 628
    sget-object v41, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static/range {v28 .. v28}, Landroidx/work/impl/model/WorkTypeConverters;->intToBackoffPolicy(I)Landroidx/work/BackoffPolicy;

    move-result-object v28

    move-object/from16 v41, v28

    :goto_c
    if-ne v12, v14, :cond_d

    move-wide/from16 v42, v32

    goto :goto_d

    .line 634
    :cond_d
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v42

    :goto_d
    if-ne v13, v14, :cond_e

    move/from16 v15, v27

    move-wide/from16 v44, v32

    goto :goto_e

    .line 640
    :cond_e
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v44

    move/from16 v15, v27

    :goto_e
    if-ne v15, v14, :cond_f

    const/16 v27, 0x0

    :goto_f
    move/from16 v62, v26

    move/from16 v26, v5

    move/from16 v5, v62

    goto :goto_10

    .line 646
    :cond_f
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    goto :goto_f

    :goto_10
    if-ne v5, v14, :cond_10

    const/16 v46, 0x0

    :goto_11
    move/from16 v62, v25

    move/from16 v25, v5

    move/from16 v5, v62

    goto :goto_12

    .line 652
    :cond_10
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    move/from16 v46, v28

    goto :goto_11

    :goto_12
    if-ne v5, v14, :cond_11

    move-wide/from16 v47, v32

    :goto_13
    move/from16 v62, v16

    move/from16 v16, v5

    move/from16 v5, v62

    goto :goto_14

    .line 658
    :cond_11
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v47

    goto :goto_13

    :goto_14
    if-ne v5, v14, :cond_12

    const/16 v49, 0x0

    :goto_15
    move/from16 v62, v17

    move/from16 v17, v5

    move/from16 v5, v62

    goto :goto_16

    .line 664
    :cond_12
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    move/from16 v49, v28

    goto :goto_15

    :goto_16
    if-ne v5, v14, :cond_13

    const/16 v51, 0x0

    :goto_17
    move/from16 v62, v18

    move/from16 v18, v5

    move/from16 v5, v62

    goto :goto_18

    .line 672
    :cond_13
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 673
    sget-object v50, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static/range {v28 .. v28}, Landroidx/work/impl/model/WorkTypeConverters;->intToNetworkType(I)Landroidx/work/NetworkType;

    move-result-object v28

    move-object/from16 v51, v28

    goto :goto_17

    :goto_18
    if-ne v5, v14, :cond_14

    const/16 v52, 0x0

    :goto_19
    move/from16 v62, v19

    move/from16 v19, v5

    move/from16 v5, v62

    goto :goto_1b

    .line 680
    :cond_14
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    if-eqz v28, :cond_15

    const/16 v28, 0x1

    goto :goto_1a

    :cond_15
    const/16 v28, 0x0

    :goto_1a
    move/from16 v52, v28

    goto :goto_19

    :goto_1b
    if-ne v5, v14, :cond_16

    const/16 v53, 0x0

    :goto_1c
    move/from16 v62, v20

    move/from16 v20, v5

    move/from16 v5, v62

    goto :goto_1e

    .line 688
    :cond_16
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    if-eqz v28, :cond_17

    const/16 v28, 0x1

    goto :goto_1d

    :cond_17
    const/16 v28, 0x0

    :goto_1d
    move/from16 v53, v28

    goto :goto_1c

    :goto_1e
    if-ne v5, v14, :cond_18

    const/16 v54, 0x0

    :goto_1f
    move/from16 v62, v21

    move/from16 v21, v5

    move/from16 v5, v62

    goto :goto_21

    .line 696
    :cond_18
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    if-eqz v28, :cond_19

    const/16 v28, 0x1

    goto :goto_20

    :cond_19
    const/16 v28, 0x0

    :goto_20
    move/from16 v54, v28

    goto :goto_1f

    :goto_21
    if-ne v5, v14, :cond_1a

    const/16 v55, 0x0

    :goto_22
    move/from16 v62, v22

    move/from16 v22, v5

    move/from16 v5, v62

    goto :goto_24

    .line 704
    :cond_1a
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    if-eqz v28, :cond_1b

    const/16 v28, 0x1

    goto :goto_23

    :cond_1b
    const/16 v28, 0x0

    :goto_23
    move/from16 v55, v28

    goto :goto_22

    :goto_24
    if-ne v5, v14, :cond_1c

    move-wide/from16 v56, v32

    :goto_25
    move/from16 v62, v23

    move/from16 v23, v5

    move/from16 v5, v62

    goto :goto_26

    .line 711
    :cond_1c
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v56

    goto :goto_25

    :goto_26
    if-ne v5, v14, :cond_1d

    :goto_27
    move-wide/from16 v58, v32

    move/from16 v62, v24

    move/from16 v24, v5

    move/from16 v5, v62

    goto :goto_28

    .line 717
    :cond_1d
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    goto :goto_27

    :goto_28
    if-ne v5, v14, :cond_1e

    const/16 v60, 0x0

    goto :goto_2a

    .line 724
    :cond_1e
    invoke-interface {v1, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v28

    if-eqz v28, :cond_1f

    const/16 v28, 0x0

    goto :goto_29

    .line 727
    :cond_1f
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v28

    .line 729
    :goto_29
    sget-object v32, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static/range {v28 .. v28}, Landroidx/work/impl/model/WorkTypeConverters;->byteArrayToSetOfTriggers([B)Ljava/util/Set;

    move-result-object v28

    move-object/from16 v60, v28

    .line 731
    :goto_2a
    new-instance v61, Landroidx/work/Constraints;

    move-object/from16 v50, v61

    invoke-direct/range {v50 .. v60}, Landroidx/work/Constraints;-><init>(Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    .line 733
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 734
    invoke-virtual {v4, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    if-nez v14, :cond_20

    .line 736
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    :cond_20
    move-object/from16 v50, v14

    .line 739
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 740
    invoke-virtual {v3, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    if-nez v14, :cond_21

    .line 742
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    :cond_21
    move-object/from16 v51, v14

    .line 744
    new-instance v14, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;

    move-object/from16 v28, v14

    move-wide/from16 v32, v34

    move-wide/from16 v34, v36

    move-wide/from16 v36, v38

    move-object/from16 v38, v61

    move/from16 v39, v40

    move-object/from16 v40, v41

    move-wide/from16 v41, v42

    move-wide/from16 v43, v44

    move/from16 v45, v27

    invoke-direct/range {v28 .. v51}, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJIIJILjava/util/List;Ljava/util/List;)V

    .line 745
    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v27, v15

    const/4 v14, -0x1

    move/from16 v62, v24

    move/from16 v24, v5

    move/from16 v5, v26

    move/from16 v26, v25

    move/from16 v25, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v21

    move/from16 v21, v22

    move/from16 v22, v23

    move/from16 v23, v62

    goto/16 :goto_2

    .line 749
    :cond_22
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 750
    throw v0
.end method
