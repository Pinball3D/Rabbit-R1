.class public final Landroidx/compose/runtime/SlotWriter$Companion;
.super Ljava/lang/Object;
.source "SlotTable.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/SlotWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSlotTable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SlotTable.kt\nandroidx/compose/runtime/SlotWriter$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,3471:1\n1#2:3472\n4548#3,5:3473\n*S KotlinDebug\n*F\n+ 1 SlotTable.kt\nandroidx/compose/runtime/SlotWriter$Companion\n*L\n2109#1:3473,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J@\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000cH\u0002\u00a8\u0006\u000f"
    }
    d2 = {
        "Landroidx/compose/runtime/SlotWriter$Companion;",
        "",
        "()V",
        "moveGroup",
        "",
        "Landroidx/compose/runtime/Anchor;",
        "fromWriter",
        "Landroidx/compose/runtime/SlotWriter;",
        "fromIndex",
        "",
        "toWriter",
        "updateFromCursor",
        "",
        "updateToCursor",
        "removeSourceGroup",
        "runtime_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1961
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/runtime/SlotWriter$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$moveGroup(Landroidx/compose/runtime/SlotWriter$Companion;Landroidx/compose/runtime/SlotWriter;ILandroidx/compose/runtime/SlotWriter;ZZZ)Ljava/util/List;
    .locals 0

    .line 1961
    invoke-direct/range {p0 .. p6}, Landroidx/compose/runtime/SlotWriter$Companion;->moveGroup(Landroidx/compose/runtime/SlotWriter;ILandroidx/compose/runtime/SlotWriter;ZZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final moveGroup(Landroidx/compose/runtime/SlotWriter;ILandroidx/compose/runtime/SlotWriter;ZZZ)Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/SlotWriter;",
            "I",
            "Landroidx/compose/runtime/SlotWriter;",
            "ZZZ)",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/Anchor;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    .line 1970
    invoke-virtual/range {p1 .. p2}, Landroidx/compose/runtime/SlotWriter;->groupSize(I)I

    move-result v3

    add-int v4, v1, v3

    .line 1972
    invoke-static/range {p1 .. p2}, Landroidx/compose/runtime/SlotWriter;->access$dataIndex(Landroidx/compose/runtime/SlotWriter;I)I

    move-result v5

    .line 1973
    invoke-static {v0, v4}, Landroidx/compose/runtime/SlotWriter;->access$dataIndex(Landroidx/compose/runtime/SlotWriter;I)I

    move-result v6

    sub-int v7, v6, v5

    .line 1975
    invoke-static/range {p1 .. p2}, Landroidx/compose/runtime/SlotWriter;->access$containsAnyGroupMarks(Landroidx/compose/runtime/SlotWriter;I)Z

    move-result v8

    .line 1978
    invoke-static {v2, v3}, Landroidx/compose/runtime/SlotWriter;->access$insertGroups(Landroidx/compose/runtime/SlotWriter;I)V

    .line 1979
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/runtime/SlotWriter;->getCurrentGroup()I

    move-result v9

    invoke-static {v2, v7, v9}, Landroidx/compose/runtime/SlotWriter;->access$insertSlots(Landroidx/compose/runtime/SlotWriter;II)V

    .line 1983
    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->access$getGroupGapStart$p(Landroidx/compose/runtime/SlotWriter;)I

    move-result v9

    if-ge v9, v4, :cond_0

    .line 1984
    invoke-static {v0, v4}, Landroidx/compose/runtime/SlotWriter;->access$moveGroupGapTo(Landroidx/compose/runtime/SlotWriter;I)V

    .line 1986
    :cond_0
    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->access$getSlotsGapStart$p(Landroidx/compose/runtime/SlotWriter;)I

    move-result v9

    if-ge v9, v6, :cond_1

    .line 1987
    invoke-static {v0, v6, v4}, Landroidx/compose/runtime/SlotWriter;->access$moveSlotGapTo(Landroidx/compose/runtime/SlotWriter;II)V

    .line 1991
    :cond_1
    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/SlotWriter;->access$getGroups$p(Landroidx/compose/runtime/SlotWriter;)[I

    move-result-object v9

    .line 1992
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/runtime/SlotWriter;->getCurrentGroup()I

    move-result v10

    .line 1993
    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->access$getGroups$p(Landroidx/compose/runtime/SlotWriter;)[I

    move-result-object v11

    mul-int/lit8 v12, v10, 0x5

    mul-int/lit8 v13, v1, 0x5

    mul-int/lit8 v14, v4, 0x5

    invoke-static {v11, v9, v12, v13, v14}, Lkotlin/collections/ArraysKt;->copyInto([I[IIII)[I

    .line 1999
    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/SlotWriter;->access$getSlots$p(Landroidx/compose/runtime/SlotWriter;)[Ljava/lang/Object;

    move-result-object v11

    .line 2000
    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/SlotWriter;->access$getCurrentSlot$p(Landroidx/compose/runtime/SlotWriter;)I

    move-result v12

    .line 2001
    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->access$getSlots$p(Landroidx/compose/runtime/SlotWriter;)[Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13, v11, v12, v5, v6}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 2010
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/runtime/SlotWriter;->getParent()I

    move-result v6

    .line 2011
    invoke-static {v9, v10, v6}, Landroidx/compose/runtime/SlotTableKt;->access$updateParentAnchor([III)V

    sub-int v13, v10, v1

    add-int v14, v10, v3

    .line 2014
    invoke-static {v2, v9, v10}, Landroidx/compose/runtime/SlotWriter;->access$dataIndex(Landroidx/compose/runtime/SlotWriter;[II)I

    move-result v15

    sub-int v15, v12, v15

    .line 2015
    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/SlotWriter;->access$getSlotsGapOwner$p(Landroidx/compose/runtime/SlotWriter;)I

    move-result v16

    move/from16 p0, v6

    .line 2016
    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/SlotWriter;->access$getSlotsGapLen$p(Landroidx/compose/runtime/SlotWriter;)I

    move-result v6

    .line 2017
    array-length v11, v11

    move/from16 v17, v8

    move/from16 v8, v16

    move/from16 v16, v12

    move v12, v10

    :goto_0
    const/16 v18, 0x0

    if-ge v12, v14, :cond_5

    if-eq v12, v10, :cond_2

    .line 2021
    invoke-static {v9, v12}, Landroidx/compose/runtime/SlotTableKt;->access$parentAnchor([II)I

    move-result v19

    move/from16 v20, v14

    add-int v14, v19, v13

    .line 2022
    invoke-static {v9, v12, v14}, Landroidx/compose/runtime/SlotTableKt;->access$updateParentAnchor([III)V

    goto :goto_1

    :cond_2
    move/from16 v20, v14

    .line 2026
    :goto_1
    invoke-static {v2, v9, v12}, Landroidx/compose/runtime/SlotWriter;->access$dataIndex(Landroidx/compose/runtime/SlotWriter;[II)I

    move-result v14

    add-int/2addr v14, v15

    if-ge v8, v12, :cond_3

    goto :goto_2

    .line 2033
    :cond_3
    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/SlotWriter;->access$getSlotsGapStart$p(Landroidx/compose/runtime/SlotWriter;)I

    move-result v18

    :goto_2
    move/from16 v19, v15

    move/from16 v15, v18

    .line 2029
    invoke-static {v2, v14, v15, v6, v11}, Landroidx/compose/runtime/SlotWriter;->access$dataIndexToDataAnchor(Landroidx/compose/runtime/SlotWriter;IIII)I

    move-result v14

    .line 2040
    invoke-static {v9, v12, v14}, Landroidx/compose/runtime/SlotTableKt;->access$updateDataAnchor([III)V

    if-ne v12, v8, :cond_4

    add-int/lit8 v8, v8, 0x1

    :cond_4
    add-int/lit8 v12, v12, 0x1

    move/from16 v15, v19

    move/from16 v14, v20

    goto :goto_0

    :cond_5
    move/from16 v20, v14

    .line 2045
    invoke-static {v2, v8}, Landroidx/compose/runtime/SlotWriter;->access$setSlotsGapOwner$p(Landroidx/compose/runtime/SlotWriter;I)V

    .line 2048
    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->access$getAnchors$p(Landroidx/compose/runtime/SlotWriter;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->getSize$runtime_release()I

    move-result v8

    invoke-static {v6, v1, v8}, Landroidx/compose/runtime/SlotTableKt;->access$locationOf(Ljava/util/ArrayList;II)I

    move-result v6

    .line 2049
    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->access$getAnchors$p(Landroidx/compose/runtime/SlotWriter;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->getSize$runtime_release()I

    move-result v11

    invoke-static {v8, v4, v11}, Landroidx/compose/runtime/SlotTableKt;->access$locationOf(Ljava/util/ArrayList;II)I

    move-result v4

    if-ge v6, v4, :cond_7

    .line 2051
    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->access$getAnchors$p(Landroidx/compose/runtime/SlotWriter;)Ljava/util/ArrayList;

    move-result-object v8

    .line 2052
    new-instance v11, Ljava/util/ArrayList;

    sub-int v12, v4, v6

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    move v12, v6

    :goto_3
    if-ge v12, v4, :cond_6

    .line 2057
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    const-string/jumbo v15, "sourceAnchors[anchorIndex]"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v14, Landroidx/compose/runtime/Anchor;

    .line 2058
    invoke-virtual {v14}, Landroidx/compose/runtime/Anchor;->getLocation$runtime_release()I

    move-result v15

    add-int/2addr v15, v13

    invoke-virtual {v14, v15}, Landroidx/compose/runtime/Anchor;->setLocation$runtime_release(I)V

    .line 2059
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 2063
    :cond_6
    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/SlotWriter;->access$getAnchors$p(Landroidx/compose/runtime/SlotWriter;)Ljava/util/ArrayList;

    move-result-object v12

    .line 2064
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/runtime/SlotWriter;->getCurrentGroup()I

    move-result v13

    .line 2065
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/runtime/SlotWriter;->getSize$runtime_release()I

    move-result v14

    .line 2063
    invoke-static {v12, v13, v14}, Landroidx/compose/runtime/SlotTableKt;->access$locationOf(Ljava/util/ArrayList;II)I

    move-result v12

    .line 2067
    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/SlotWriter;->access$getAnchors$p(Landroidx/compose/runtime/SlotWriter;)Ljava/util/ArrayList;

    move-result-object v13

    move-object v14, v11

    check-cast v14, Ljava/util/Collection;

    invoke-virtual {v13, v12, v14}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 2070
    invoke-virtual {v8, v6, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 2072
    check-cast v11, Ljava/util/List;

    goto :goto_4

    .line 2073
    :cond_7
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v11

    .line 2075
    :goto_4
    invoke-virtual/range {p1 .. p2}, Landroidx/compose/runtime/SlotWriter;->parent(I)I

    move-result v4

    const/4 v6, 0x1

    if-nez p6, :cond_8

    goto :goto_5

    :cond_8
    if-eqz p4, :cond_c

    if-ltz v4, :cond_9

    move/from16 v18, v6

    :cond_9
    if-eqz v18, :cond_a

    .line 2088
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->startGroup()V

    .line 2089
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->getCurrentGroup()I

    move-result v3

    sub-int/2addr v4, v3

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/SlotWriter;->advanceBy(I)V

    .line 2090
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->startGroup()V

    .line 2092
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->getCurrentGroup()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/SlotWriter;->advanceBy(I)V

    .line 2093
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->removeGroup()Z

    move-result v1

    if-eqz v18, :cond_b

    .line 2095
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->skipToGroupEnd()V

    .line 2096
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->endGroup()I

    .line 2097
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->skipToGroupEnd()V

    .line 2098
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->endGroup()I

    :cond_b
    move/from16 v18, v1

    goto :goto_5

    .line 2103
    :cond_c
    invoke-static {v0, v1, v3}, Landroidx/compose/runtime/SlotWriter;->access$removeGroups(Landroidx/compose/runtime/SlotWriter;II)Z

    move-result v18

    sub-int/2addr v1, v6

    .line 2104
    invoke-static {v0, v5, v7, v1}, Landroidx/compose/runtime/SlotWriter;->access$removeSlots(Landroidx/compose/runtime/SlotWriter;III)V

    :goto_5
    xor-int/lit8 v0, v18, 0x1

    if-eqz v0, :cond_10

    .line 2112
    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/SlotWriter;->access$getNodeCount$p(Landroidx/compose/runtime/SlotWriter;)I

    move-result v0

    invoke-static {v9, v10}, Landroidx/compose/runtime/SlotTableKt;->access$isNode([II)Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_6

    :cond_d
    invoke-static {v9, v10}, Landroidx/compose/runtime/SlotTableKt;->access$nodeCount([II)I

    move-result v6

    :goto_6
    add-int/2addr v0, v6

    invoke-static {v2, v0}, Landroidx/compose/runtime/SlotWriter;->access$setNodeCount$p(Landroidx/compose/runtime/SlotWriter;I)V

    if-eqz p5, :cond_e

    move/from16 v10, v20

    .line 2118
    invoke-static {v2, v10}, Landroidx/compose/runtime/SlotWriter;->access$setCurrentGroup$p(Landroidx/compose/runtime/SlotWriter;I)V

    add-int v12, v16, v7

    .line 2119
    invoke-static {v2, v12}, Landroidx/compose/runtime/SlotWriter;->access$setCurrentSlot$p(Landroidx/compose/runtime/SlotWriter;I)V

    :cond_e
    if-eqz v17, :cond_f

    move/from16 v0, p0

    .line 2124
    invoke-static {v2, v0}, Landroidx/compose/runtime/SlotWriter;->access$updateContainsMark(Landroidx/compose/runtime/SlotWriter;I)V

    :cond_f
    return-object v11

    :cond_10
    const-string v0, "Unexpectedly removed anchors"

    .line 3475
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method static synthetic moveGroup$default(Landroidx/compose/runtime/SlotWriter$Companion;Landroidx/compose/runtime/SlotWriter;ILandroidx/compose/runtime/SlotWriter;ZZZILjava/lang/Object;)Ljava/util/List;
    .locals 7

    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_0

    const/4 p6, 0x1

    :cond_0
    move v6, p6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 1962
    invoke-direct/range {v0 .. v6}, Landroidx/compose/runtime/SlotWriter$Companion;->moveGroup(Landroidx/compose/runtime/SlotWriter;ILandroidx/compose/runtime/SlotWriter;ZZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
