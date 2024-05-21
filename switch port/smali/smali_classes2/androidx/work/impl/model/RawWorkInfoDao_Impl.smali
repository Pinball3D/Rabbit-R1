.class public final Landroidx/work/impl/model/RawWorkInfoDao_Impl;
.super Ljava/lang/Object;
.source "RawWorkInfoDao_Impl.java"

# interfaces
.implements Landroidx/work/impl/model/RawWorkInfoDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "__db"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/model/RawWorkInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    return-void
.end method

.method private __fetchRelationshipWorkProgressAsandroidxWorkData(Ljava/util/HashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "_map"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroidx/work/Data;",
            ">;>;)V"
        }
    .end annotation

    .line 826
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 827
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 831
    :cond_0
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/16 v2, 0x3e7

    const/4 v3, 0x0

    if-le v1, v2, :cond_4

    .line 832
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 834
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    move v4, v3

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 835
    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    if-ne v4, v2, :cond_1

    .line 838
    invoke-direct {p0, v1}, Landroidx/work/impl/model/RawWorkInfoDao_Impl;->__fetchRelationshipWorkProgressAsandroidxWorkData(Ljava/util/HashMap;)V

    .line 839
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    goto :goto_0

    :cond_2
    if-lez v4, :cond_3

    .line 844
    invoke-direct {p0, v1}, Landroidx/work/impl/model/RawWorkInfoDao_Impl;->__fetchRelationshipWorkProgressAsandroidxWorkData(Ljava/util/HashMap;)V

    :cond_3
    return-void

    .line 848
    :cond_4
    invoke-static {}, Landroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SELECT `progress`,`work_spec_id` FROM `WorkProgress` WHERE `work_spec_id` IN ("

    .line 849
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 850
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    .line 851
    invoke-static {v1, v2}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    const-string v4, ")"

    .line 852
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 853
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 855
    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 857
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x1

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_5

    .line 859
    invoke-virtual {v1, v2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_2

    .line 861
    :cond_5
    invoke-virtual {v1, v2, v4}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    iget-object p0, p0, Landroidx/work/impl/model/RawWorkInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v0, 0x0

    .line 865
    invoke-static {p0, v1, v3, v0}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    const-string v1, "work_spec_id"

    .line 867
    invoke-static {p0, v1}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_7

    .line 887
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-void

    .line 871
    :cond_7
    :goto_3
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 872
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 873
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_7

    .line 877
    invoke-interface {p0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object v4, v0

    goto :goto_4

    .line 880
    :cond_8
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    .line 882
    :goto_4
    invoke-static {v4}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v4

    .line 883
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 887
    :cond_9
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 888
    throw p1
.end method

.method private __fetchRelationshipWorkTagAsjavaLangString(Ljava/util/HashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "_map"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 761
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 762
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 766
    :cond_0
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/16 v2, 0x3e7

    const/4 v3, 0x0

    if-le v1, v2, :cond_4

    .line 767
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 769
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    move v4, v3

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 770
    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    if-ne v4, v2, :cond_1

    .line 773
    invoke-direct {p0, v1}, Landroidx/work/impl/model/RawWorkInfoDao_Impl;->__fetchRelationshipWorkTagAsjavaLangString(Ljava/util/HashMap;)V

    .line 774
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    goto :goto_0

    :cond_2
    if-lez v4, :cond_3

    .line 779
    invoke-direct {p0, v1}, Landroidx/work/impl/model/RawWorkInfoDao_Impl;->__fetchRelationshipWorkTagAsjavaLangString(Ljava/util/HashMap;)V

    :cond_3
    return-void

    .line 783
    :cond_4
    invoke-static {}, Landroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SELECT `tag`,`work_spec_id` FROM `WorkTag` WHERE `work_spec_id` IN ("

    .line 784
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 785
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    .line 786
    invoke-static {v1, v2}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    const-string v4, ")"

    .line 787
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 788
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 790
    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 792
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x1

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_5

    .line 794
    invoke-virtual {v1, v2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_2

    .line 796
    :cond_5
    invoke-virtual {v1, v2, v4}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    iget-object p0, p0, Landroidx/work/impl/model/RawWorkInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v0, 0x0

    .line 800
    invoke-static {p0, v1, v3, v0}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    const-string v1, "work_spec_id"

    .line 802
    invoke-static {p0, v1}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_7

    .line 820
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-void

    .line 806
    :cond_7
    :goto_3
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 807
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 808
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_7

    .line 811
    invoke-interface {p0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object v4, v0

    goto :goto_4

    .line 814
    :cond_8
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 816
    :goto_4
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 820
    :cond_9
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 821
    throw p1
.end method

.method static synthetic access$000(Landroidx/work/impl/model/RawWorkInfoDao_Impl;)Landroidx/room/RoomDatabase;
    .locals 0

    .line 34
    iget-object p0, p0, Landroidx/work/impl/model/RawWorkInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    return-object p0
.end method

.method static synthetic access$100(Landroidx/work/impl/model/RawWorkInfoDao_Impl;Ljava/util/HashMap;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Landroidx/work/impl/model/RawWorkInfoDao_Impl;->__fetchRelationshipWorkTagAsjavaLangString(Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$200(Landroidx/work/impl/model/RawWorkInfoDao_Impl;Ljava/util/HashMap;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Landroidx/work/impl/model/RawWorkInfoDao_Impl;->__fetchRelationshipWorkProgressAsandroidxWorkData(Ljava/util/HashMap;)V

    return-void
.end method

.method public static getRequiredConverters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 756
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getWorkInfoPojos(Landroidx/sqlite/db/SupportSQLiteQuery;)Ljava/util/List;
    .locals 62
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "query"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/sqlite/db/SupportSQLiteQuery;",
            ")",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/work/impl/model/RawWorkInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 44
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v1, v0, Landroidx/work/impl/model/RawWorkInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v4, p1

    .line 45
    invoke-static {v1, v4, v2, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    const-string v4, "id"

    .line 47
    invoke-static {v1, v4}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "state"

    .line 48
    invoke-static {v1, v5}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "output"

    .line 49
    invoke-static {v1, v6}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "initial_delay"

    .line 50
    invoke-static {v1, v7}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "interval_duration"

    .line 51
    invoke-static {v1, v8}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "flex_duration"

    .line 52
    invoke-static {v1, v9}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "run_attempt_count"

    .line 53
    invoke-static {v1, v10}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "backoff_policy"

    .line 54
    invoke-static {v1, v11}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "backoff_delay_duration"

    .line 55
    invoke-static {v1, v12}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "last_enqueue_time"

    .line 56
    invoke-static {v1, v13}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "period_count"

    .line 57
    invoke-static {v1, v14}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "generation"

    .line 58
    invoke-static {v1, v15}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v2, "next_schedule_time_override"

    .line 59
    invoke-static {v1, v2}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v3, "stop_reason"

    .line 60
    invoke-static {v1, v3}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 p1, v3

    const-string v3, "required_network_type"

    .line 61
    invoke-static {v1, v3}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v16, v3

    const-string v3, "requires_charging"

    .line 62
    invoke-static {v1, v3}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v17, v3

    const-string v3, "requires_device_idle"

    .line 63
    invoke-static {v1, v3}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v18, v3

    const-string v3, "requires_battery_not_low"

    .line 64
    invoke-static {v1, v3}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v19, v3

    const-string v3, "requires_storage_not_low"

    .line 65
    invoke-static {v1, v3}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v20, v3

    const-string v3, "trigger_content_update_delay"

    .line 66
    invoke-static {v1, v3}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v21, v3

    const-string v3, "trigger_max_content_delay"

    .line 67
    invoke-static {v1, v3}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v22, v3

    const-string v3, "content_uri_triggers"

    .line 68
    invoke-static {v1, v3}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v23, v3

    .line 69
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move/from16 v24, v2

    .line 70
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 71
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v25

    if-eqz v25, :cond_2

    move/from16 v25, v15

    .line 72
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 73
    invoke-virtual {v3, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/util/ArrayList;

    if-nez v26, :cond_0

    move/from16 v26, v14

    .line 75
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 76
    invoke-virtual {v3, v15, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    move/from16 v26, v14

    .line 78
    :goto_1
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 79
    invoke-virtual {v2, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    if-nez v15, :cond_1

    .line 81
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 82
    invoke-virtual {v2, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move/from16 v15, v25

    move/from16 v14, v26

    goto :goto_0

    :cond_2
    move/from16 v26, v14

    move/from16 v25, v15

    const/4 v14, -0x1

    .line 85
    invoke-interface {v1, v14}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 86
    invoke-direct {v0, v3}, Landroidx/work/impl/model/RawWorkInfoDao_Impl;->__fetchRelationshipWorkTagAsjavaLangString(Ljava/util/HashMap;)V

    .line 87
    invoke-direct {v0, v2}, Landroidx/work/impl/model/RawWorkInfoDao_Impl;->__fetchRelationshipWorkProgressAsandroidxWorkData(Ljava/util/HashMap;)V

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v15

    invoke-direct {v0, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 89
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_22

    if-ne v4, v14, :cond_3

    :goto_3
    const/16 v28, 0x0

    goto :goto_4

    .line 95
    :cond_3
    invoke-interface {v1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_4

    goto :goto_3

    .line 98
    :cond_4
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v28, v15

    :goto_4
    if-ne v5, v14, :cond_5

    const/16 v29, 0x0

    goto :goto_5

    .line 106
    :cond_5
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 107
    sget-object v27, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static {v15}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    move-result-object v15

    move-object/from16 v29, v15

    :goto_5
    if-ne v6, v14, :cond_6

    const/16 v30, 0x0

    goto :goto_7

    .line 114
    :cond_6
    invoke-interface {v1, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_7

    const/4 v15, 0x0

    goto :goto_6

    .line 117
    :cond_7
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v15

    .line 119
    :goto_6
    invoke-static {v15}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v15

    move-object/from16 v30, v15

    :goto_7
    const-wide/16 v31, 0x0

    if-ne v7, v14, :cond_8

    move-wide/from16 v33, v31

    goto :goto_8

    .line 125
    :cond_8
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v33

    :goto_8
    if-ne v8, v14, :cond_9

    move-wide/from16 v35, v31

    goto :goto_9

    .line 131
    :cond_9
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v35

    :goto_9
    if-ne v9, v14, :cond_a

    move-wide/from16 v37, v31

    goto :goto_a

    .line 137
    :cond_a
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v37

    :goto_a
    if-ne v10, v14, :cond_b

    const/16 v39, 0x0

    goto :goto_b

    .line 143
    :cond_b
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    move/from16 v39, v27

    :goto_b
    if-ne v11, v14, :cond_c

    const/16 v40, 0x0

    goto :goto_c

    .line 150
    :cond_c
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    .line 151
    sget-object v40, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static/range {v27 .. v27}, Landroidx/work/impl/model/WorkTypeConverters;->intToBackoffPolicy(I)Landroidx/work/BackoffPolicy;

    move-result-object v27

    move-object/from16 v40, v27

    :goto_c
    if-ne v12, v14, :cond_d

    move-wide/from16 v41, v31

    goto :goto_d

    .line 157
    :cond_d
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v41

    :goto_d
    if-ne v13, v14, :cond_e

    move/from16 v15, v26

    move-wide/from16 v43, v31

    goto :goto_e

    .line 163
    :cond_e
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v43

    move/from16 v15, v26

    :goto_e
    if-ne v15, v14, :cond_f

    const/16 v26, 0x0

    :goto_f
    move/from16 v61, v25

    move/from16 v25, v5

    move/from16 v5, v61

    goto :goto_10

    .line 169
    :cond_f
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    goto :goto_f

    :goto_10
    if-ne v5, v14, :cond_10

    const/16 v45, 0x0

    :goto_11
    move/from16 v61, v24

    move/from16 v24, v5

    move/from16 v5, v61

    goto :goto_12

    .line 175
    :cond_10
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    move/from16 v45, v27

    goto :goto_11

    :goto_12
    if-ne v5, v14, :cond_11

    move-wide/from16 v46, v31

    :goto_13
    move/from16 v61, v5

    move/from16 v5, p1

    move/from16 p1, v61

    goto :goto_14

    .line 181
    :cond_11
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v46

    goto :goto_13

    :goto_14
    if-ne v5, v14, :cond_12

    const/16 v48, 0x0

    :goto_15
    move/from16 v61, v16

    move/from16 v16, v5

    move/from16 v5, v61

    goto :goto_16

    .line 187
    :cond_12
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    move/from16 v48, v27

    goto :goto_15

    :goto_16
    if-ne v5, v14, :cond_13

    const/16 v50, 0x0

    :goto_17
    move/from16 v61, v17

    move/from16 v17, v5

    move/from16 v5, v61

    goto :goto_18

    .line 195
    :cond_13
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    .line 196
    sget-object v49, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static/range {v27 .. v27}, Landroidx/work/impl/model/WorkTypeConverters;->intToNetworkType(I)Landroidx/work/NetworkType;

    move-result-object v27

    move-object/from16 v50, v27

    goto :goto_17

    :goto_18
    if-ne v5, v14, :cond_14

    const/16 v51, 0x0

    :goto_19
    move/from16 v61, v18

    move/from16 v18, v5

    move/from16 v5, v61

    goto :goto_1b

    .line 203
    :cond_14
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    if-eqz v27, :cond_15

    const/16 v27, 0x1

    goto :goto_1a

    :cond_15
    const/16 v27, 0x0

    :goto_1a
    move/from16 v51, v27

    goto :goto_19

    :goto_1b
    if-ne v5, v14, :cond_16

    const/16 v52, 0x0

    :goto_1c
    move/from16 v61, v19

    move/from16 v19, v5

    move/from16 v5, v61

    goto :goto_1e

    .line 211
    :cond_16
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    if-eqz v27, :cond_17

    const/16 v27, 0x1

    goto :goto_1d

    :cond_17
    const/16 v27, 0x0

    :goto_1d
    move/from16 v52, v27

    goto :goto_1c

    :goto_1e
    if-ne v5, v14, :cond_18

    const/16 v53, 0x0

    :goto_1f
    move/from16 v61, v20

    move/from16 v20, v5

    move/from16 v5, v61

    goto :goto_21

    .line 219
    :cond_18
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    if-eqz v27, :cond_19

    const/16 v27, 0x1

    goto :goto_20

    :cond_19
    const/16 v27, 0x0

    :goto_20
    move/from16 v53, v27

    goto :goto_1f

    :goto_21
    if-ne v5, v14, :cond_1a

    const/16 v54, 0x0

    :goto_22
    move/from16 v61, v21

    move/from16 v21, v5

    move/from16 v5, v61

    goto :goto_24

    .line 227
    :cond_1a
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    if-eqz v27, :cond_1b

    const/16 v27, 0x1

    goto :goto_23

    :cond_1b
    const/16 v27, 0x0

    :goto_23
    move/from16 v54, v27

    goto :goto_22

    :goto_24
    if-ne v5, v14, :cond_1c

    move-wide/from16 v55, v31

    :goto_25
    move/from16 v61, v22

    move/from16 v22, v5

    move/from16 v5, v61

    goto :goto_26

    .line 234
    :cond_1c
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v55

    goto :goto_25

    :goto_26
    if-ne v5, v14, :cond_1d

    :goto_27
    move-wide/from16 v57, v31

    move/from16 v61, v23

    move/from16 v23, v5

    move/from16 v5, v61

    goto :goto_28

    .line 240
    :cond_1d
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v31

    goto :goto_27

    :goto_28
    if-ne v5, v14, :cond_1e

    const/16 v59, 0x0

    goto :goto_2a

    .line 247
    :cond_1e
    invoke-interface {v1, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v27

    if-eqz v27, :cond_1f

    const/16 v27, 0x0

    goto :goto_29

    .line 250
    :cond_1f
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v27

    .line 252
    :goto_29
    sget-object v31, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static/range {v27 .. v27}, Landroidx/work/impl/model/WorkTypeConverters;->byteArrayToSetOfTriggers([B)Ljava/util/Set;

    move-result-object v27

    move-object/from16 v59, v27

    .line 254
    :goto_2a
    new-instance v60, Landroidx/work/Constraints;

    move-object/from16 v49, v60

    invoke-direct/range {v49 .. v59}, Landroidx/work/Constraints;-><init>(Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    .line 256
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 257
    invoke-virtual {v3, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    if-nez v14, :cond_20

    .line 259
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    :cond_20
    move-object/from16 v49, v14

    .line 262
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 263
    invoke-virtual {v2, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    if-nez v14, :cond_21

    .line 265
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    :cond_21
    move-object/from16 v50, v14

    .line 267
    new-instance v14, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;

    move-object/from16 v27, v14

    move-wide/from16 v31, v33

    move-wide/from16 v33, v35

    move-wide/from16 v35, v37

    move-object/from16 v37, v60

    move/from16 v38, v39

    move-object/from16 v39, v40

    move-wide/from16 v40, v41

    move-wide/from16 v42, v43

    move/from16 v44, v26

    invoke-direct/range {v27 .. v50}, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJIIJILjava/util/List;Ljava/util/List;)V

    .line 268
    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v26, v15

    const/4 v14, -0x1

    move/from16 v61, v24

    move/from16 v24, p1

    move/from16 p1, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v21

    move/from16 v21, v22

    move/from16 v22, v23

    move/from16 v23, v5

    move/from16 v5, v25

    move/from16 v25, v61

    goto/16 :goto_2

    .line 272
    :cond_22
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 273
    throw v0
.end method

.method public getWorkInfoPojosFlow(Landroidx/sqlite/db/SupportSQLiteQuery;)Lkotlinx/coroutines/flow/Flow;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "query"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/sqlite/db/SupportSQLiteQuery;",
            ")",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/work/impl/model/RawWorkInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const-string v1, "WorkProgress"

    const-string v2, "WorkSpec"

    const-string v3, "WorkTag"

    .line 519
    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroidx/work/impl/model/RawWorkInfoDao_Impl$2;

    invoke-direct {v2, p0, p1}, Landroidx/work/impl/model/RawWorkInfoDao_Impl$2;-><init>(Landroidx/work/impl/model/RawWorkInfoDao_Impl;Landroidx/sqlite/db/SupportSQLiteQuery;)V

    const/4 p0, 0x0

    invoke-static {v0, p0, v1, v2}, Landroidx/room/CoroutinesRoom;->createFlow(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public getWorkInfoPojosLiveData(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroidx/lifecycle/LiveData;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "query"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/sqlite/db/SupportSQLiteQuery;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/work/impl/model/RawWorkInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 280
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object v0

    const-string v1, "WorkProgress"

    const-string v2, "WorkSpec"

    const-string v3, "WorkTag"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroidx/work/impl/model/RawWorkInfoDao_Impl$1;

    invoke-direct {v2, p0, p1}, Landroidx/work/impl/model/RawWorkInfoDao_Impl$1;-><init>(Landroidx/work/impl/model/RawWorkInfoDao_Impl;Landroidx/sqlite/db/SupportSQLiteQuery;)V

    const/4 p0, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method
