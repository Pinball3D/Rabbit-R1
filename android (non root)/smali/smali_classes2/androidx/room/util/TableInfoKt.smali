.class public final Landroidx/room/util/TableInfoKt;
.super Ljava/lang/Object;
.source "TableInfo.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTableInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TableInfo.kt\nandroidx/room/util/TableInfoKt\n+ 2 CursorUtil.kt\nandroidx/room/util/CursorUtil\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,650:1\n145#2,2:651\n148#2,2:658\n151#2:664\n145#2,7:665\n145#2,7:672\n145#2,7:679\n766#3:653\n857#3,2:654\n1851#3,2:656\n857#3,2:660\n1851#3,2:662\n*S KotlinDebug\n*F\n+ 1 TableInfo.kt\nandroidx/room/util/TableInfoKt\n*L\n482#1:651,2\n482#1:658,2\n482#1:664\n547#1:665,7\n585#1:672,7\n618#1:679,7\n502#1:653\n502#1:654,2\n504#1:656,2\n502#1:660,2\n504#1:662,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u001a$\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0002H\u0002\u001a\u0016\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0006\u0010\n\u001a\u00020\u000bH\u0002\u001a\u001e\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0002H\u0002\u001a\"\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0013H\u0002\u001a \u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\r2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0002H\u0002\u001a\u0018\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0002H\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "readColumns",
        "",
        "",
        "Landroidx/room/util/TableInfo$Column;",
        "database",
        "Landroidx/sqlite/db/SupportSQLiteDatabase;",
        "tableName",
        "readForeignKeyFieldMappings",
        "",
        "Landroidx/room/util/TableInfo$ForeignKeyWithSequence;",
        "cursor",
        "Landroid/database/Cursor;",
        "readForeignKeys",
        "",
        "Landroidx/room/util/TableInfo$ForeignKey;",
        "readIndex",
        "Landroidx/room/util/TableInfo$Index;",
        "name",
        "unique",
        "",
        "readIndices",
        "readTableInfo",
        "Landroidx/room/util/TableInfo;",
        "room-runtime_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method private static final readColumns(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Ljava/util/Map;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/sqlite/db/SupportSQLiteDatabase;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/room/util/TableInfo$Column;",
            ">;"
        }
    .end annotation

    const-string v0, "type"

    const-string v1, "name"

    .line 547
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PRAGMA table_info(`"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "`)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, p0

    invoke-interface {v3, v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 666
    check-cast v2, Ljava/io/Closeable;

    :try_start_0
    move-object v3, v2

    check-cast v3, Landroid/database/Cursor;

    .line 548
    invoke-interface {v3}, Landroid/database/Cursor;->getColumnCount()I

    move-result v4

    const/4 v5, 0x0

    if-gtz v4, :cond_0

    .line 549
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    .line 552
    :cond_0
    :try_start_1
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 553
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "notnull"

    .line 554
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v8, "pk"

    .line 555
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v9, "dflt_value"

    .line 556
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 558
    invoke-static {}, Lkotlin/collections/MapsKt;->createMapBuilder()Ljava/util/Map;

    move-result-object v10

    .line 559
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 560
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 561
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 562
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    if-eqz v12, :cond_1

    const/4 v12, 0x1

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    :goto_1
    move v15, v12

    .line 563
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 564
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 566
    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 567
    new-instance v13, Landroidx/room/util/TableInfo$Column;

    .line 569
    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v18, 0x2

    move-object v12, v13

    move-object v5, v13

    move-object v13, v11

    .line 567
    invoke-direct/range {v12 .. v18}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 565
    invoke-interface {v10, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x0

    goto :goto_0

    .line 558
    :cond_2
    invoke-static {v10}, Lkotlin/collections/MapsKt;->build(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    invoke-static {v2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    invoke-static {v2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private static final readForeignKeyFieldMappings(Landroid/database/Cursor;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List<",
            "Landroidx/room/util/TableInfo$ForeignKeyWithSequence;",
            ">;"
        }
    .end annotation

    const-string v0, "id"

    .line 524
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v1, "seq"

    .line 525
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "from"

    .line 526
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "to"

    .line 527
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 529
    invoke-static {}, Lkotlin/collections/CollectionsKt;->createListBuilder()Ljava/util/List;

    move-result-object v4

    .line 530
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 532
    new-instance v5, Landroidx/room/util/TableInfo$ForeignKeyWithSequence;

    .line 533
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 534
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 535
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "cursor.getString(fromColumnIndex)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 536
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "cursor.getString(toColumnIndex)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 532
    invoke-direct {v5, v6, v7, v8, v9}, Landroidx/room/util/TableInfo$ForeignKeyWithSequence;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 531
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 529
    :cond_0
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 540
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->sorted(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final readForeignKeys(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Ljava/util/Set;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/sqlite/db/SupportSQLiteDatabase;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Landroidx/room/util/TableInfo$ForeignKey;",
            ">;"
        }
    .end annotation

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PRAGMA foreign_key_list(`"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "`)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p0

    invoke-interface {v1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 652
    move-object v1, v0

    check-cast v1, Ljava/io/Closeable;

    :try_start_0
    move-object v0, v1

    check-cast v0, Landroid/database/Cursor;

    const-string v2, "id"

    .line 483
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "seq"

    .line 484
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "table"

    .line 485
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "on_delete"

    .line 486
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "on_update"

    .line 487
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 488
    invoke-static {v0}, Landroidx/room/util/TableInfoKt;->readForeignKeyFieldMappings(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v7

    const/4 v8, -0x1

    .line 491
    invoke-interface {v0, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 492
    invoke-static {}, Lkotlin/collections/SetsKt;->createSetBuilder()Ljava/util/Set;

    move-result-object v8

    .line 493
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 494
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_0

    .line 498
    :cond_0
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 499
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v10

    check-cast v15, Ljava/util/List;

    .line 500
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    check-cast v10, Ljava/util/List;

    .line 502
    move-object v11, v7

    check-cast v11, Ljava/lang/Iterable;

    .line 653
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    check-cast v12, Ljava/util/Collection;

    .line 654
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    move-object v14, v13

    check-cast v14, Landroidx/room/util/TableInfo$ForeignKeyWithSequence;

    .line 503
    invoke-virtual {v14}, Landroidx/room/util/TableInfo$ForeignKeyWithSequence;->getId()I

    move-result v14

    if-ne v14, v9, :cond_1

    .line 654
    invoke-interface {v12, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 655
    :cond_2
    check-cast v12, Ljava/util/List;

    .line 653
    check-cast v12, Ljava/lang/Iterable;

    .line 656
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/room/util/TableInfo$ForeignKeyWithSequence;

    .line 505
    invoke-virtual {v11}, Landroidx/room/util/TableInfo$ForeignKeyWithSequence;->getFrom()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v15, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 506
    invoke-virtual {v11}, Landroidx/room/util/TableInfo$ForeignKeyWithSequence;->getTo()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 510
    :cond_3
    new-instance v9, Landroidx/room/util/TableInfo$ForeignKey;

    .line 511
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v11, "cursor.getString(tableColumnIndex)"

    invoke-static {v12, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 512
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v11, "cursor.getString(onDeleteColumnIndex)"

    invoke-static {v13, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 513
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v11, "cursor.getString(onUpdateColumnIndex)"

    invoke-static {v14, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v11, v9

    move-object/from16 v16, v10

    .line 510
    invoke-direct/range {v11 .. v16}, Landroidx/room/util/TableInfo$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 509
    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 492
    :cond_4
    invoke-static {v8}, Lkotlin/collections/SetsKt;->build(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :catchall_0
    move-exception v0

    move-object v2, v0

    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private static final readIndex(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;Z)Landroidx/room/util/TableInfo$Index;
    .locals 16

    move-object/from16 v0, p1

    .line 618
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PRAGMA index_xinfo(`"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "`)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p0

    invoke-interface {v2, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 680
    check-cast v1, Ljava/io/Closeable;

    :try_start_0
    move-object v2, v1

    check-cast v2, Landroid/database/Cursor;

    const-string v3, "seqno"

    .line 619
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "cid"

    .line 620
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "name"

    .line 621
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "desc"

    .line 622
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, -0x1

    if-eq v3, v8, :cond_4

    if-eq v4, v8, :cond_4

    if-eq v5, v8, :cond_4

    if-ne v6, v8, :cond_0

    goto :goto_2

    .line 632
    :cond_0
    new-instance v8, Ljava/util/TreeMap;

    invoke-direct {v8}, Ljava/util/TreeMap;-><init>()V

    .line 633
    new-instance v9, Ljava/util/TreeMap;

    invoke-direct {v9}, Ljava/util/TreeMap;-><init>()V

    .line 634
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 635
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-gez v10, :cond_1

    goto :goto_0

    .line 640
    :cond_1
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 641
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 642
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    if-lez v12, :cond_2

    const-string v12, "DESC"

    goto :goto_1

    :cond_2
    const-string v12, "ASC"

    :goto_1
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 643
    move-object v14, v8

    check-cast v14, Ljava/util/Map;

    const-string v15, "columnName"

    invoke-static {v11, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v14, v13, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 644
    move-object v11, v9

    check-cast v11, Ljava/util/Map;

    invoke-interface {v11, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 646
    :cond_3
    invoke-virtual {v8}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v2

    const-string v3, "columnsMap.values"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    .line 647
    invoke-virtual {v9}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v3

    const-string v4, "ordersMap.values"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    .line 648
    new-instance v4, Landroidx/room/util/TableInfo$Index;

    move/from16 v5, p2

    invoke-direct {v4, v0, v5, v2, v3}, Landroidx/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 680
    invoke-static {v1, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v4

    .line 630
    :cond_4
    :goto_2
    invoke-static {v1, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v7

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 680
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private static final readIndices(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Ljava/util/Set;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/sqlite/db/SupportSQLiteDatabase;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Landroidx/room/util/TableInfo$Index;",
            ">;"
        }
    .end annotation

    const-string v0, "name"

    .line 585
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PRAGMA index_list(`"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "`)"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 673
    check-cast p1, Ljava/io/Closeable;

    :try_start_0
    move-object v1, p1

    check-cast v1, Landroid/database/Cursor;

    .line 586
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "origin"

    .line 587
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "unique"

    .line 588
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-eq v2, v5, :cond_5

    if-eq v3, v5, :cond_5

    if-ne v4, v5, :cond_0

    goto :goto_2

    .line 593
    :cond_0
    invoke-static {}, Lkotlin/collections/SetsKt;->createSetBuilder()Ljava/util/Set;

    move-result-object v5

    .line 594
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 595
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "c"

    .line 596
    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_0

    .line 600
    :cond_1
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 601
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    .line 603
    :goto_1
    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v7, v9}, Landroidx/room/util/TableInfoKt;->readIndex(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;Z)Landroidx/room/util/TableInfo$Index;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_3

    invoke-static {p1, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v6

    .line 604
    :cond_3
    :try_start_1
    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 593
    :cond_4
    invoke-static {v5}, Lkotlin/collections/SetsKt;->build(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p1, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p0

    .line 591
    :cond_5
    :goto_2
    invoke-static {p1, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v6

    :catchall_0
    move-exception p0

    .line 593
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p1, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static final readTableInfo(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/TableInfo;
    .locals 3

    const-string v0, "database"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tableName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 471
    invoke-static {p0, p1}, Landroidx/room/util/TableInfoKt;->readColumns(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 472
    invoke-static {p0, p1}, Landroidx/room/util/TableInfoKt;->readForeignKeys(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 473
    invoke-static {p0, p1}, Landroidx/room/util/TableInfoKt;->readIndices(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    .line 474
    new-instance v2, Landroidx/room/util/TableInfo;

    invoke-direct {v2, p1, v0, v1, p0}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    return-object v2
.end method
