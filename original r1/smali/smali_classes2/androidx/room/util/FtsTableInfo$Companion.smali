.class public final Landroidx/room/util/FtsTableInfo$Companion;
.super Ljava/lang/Object;
.source "FtsTableInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/util/FtsTableInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFtsTableInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FtsTableInfo.kt\nandroidx/room/util/FtsTableInfo$Companion\n+ 2 CursorUtil.kt\nandroidx/room/util/CursorUtil\n+ 3 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n+ 4 Strings.kt\nkotlin/text/StringsKt__StringsKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 6 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,184:1\n145#2,7:185\n145#2,7:192\n1179#3,2:199\n1181#3:224\n107#4:201\n79#4,22:202\n766#5:225\n857#5:226\n858#5:229\n12708#6,2:227\n*S KotlinDebug\n*F\n+ 1 FtsTableInfo.kt\nandroidx/room/util/FtsTableInfo$Companion\n*L\n97#1:185,7\n111#1:192,7\n151#1:199,2\n151#1:224\n166#1:201\n166#1:202,22\n176#1:225\n176#1:226\n176#1:229\n177#1:227,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00082\u0006\u0010\t\u001a\u00020\u0005H\u0007J\u0018\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0005H\u0007J\u001e\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00082\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0005H\u0002J\u001e\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00082\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0005H\u0002R\u0016\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0006\u00a8\u0006\u0011"
    }
    d2 = {
        "Landroidx/room/util/FtsTableInfo$Companion;",
        "",
        "()V",
        "FTS_OPTIONS",
        "",
        "",
        "[Ljava/lang/String;",
        "parseOptions",
        "",
        "createStatement",
        "read",
        "Landroidx/room/util/FtsTableInfo;",
        "database",
        "Landroidx/sqlite/db/SupportSQLiteDatabase;",
        "tableName",
        "readColumns",
        "readOptions",
        "room-runtime_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/room/util/FtsTableInfo$Companion;-><init>()V

    return-void
.end method

.method private final readColumns(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/sqlite/db/SupportSQLiteDatabase;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 96
    invoke-static {}, Lkotlin/collections/SetsKt;->createSetBuilder()Ljava/util/Set;

    move-result-object p0

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PRAGMA table_info(`"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "`)"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 186
    check-cast p1, Ljava/io/Closeable;

    :try_start_0
    move-object p2, p1

    check-cast p2, Landroid/database/Cursor;

    .line 98
    invoke-interface {p2}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "name"

    .line 99
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 100
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cursor.getString(nameIndex)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 104
    :cond_0
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, 0x0

    .line 186
    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 96
    invoke-static {p0}, Lkotlin/collections/SetsKt;->build(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 186
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    invoke-static {p1, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private final readOptions(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/sqlite/db/SupportSQLiteDatabase;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT * FROM sqlite_master WHERE `name` = \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const/16 v0, 0x27

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 109
    invoke-interface {p1, p2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 193
    check-cast p1, Ljava/io/Closeable;

    :try_start_0
    move-object p2, p1

    check-cast p2, Landroid/database/Cursor;

    .line 112
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "sql"

    if-eqz v0, :cond_0

    .line 113
    :try_start_1
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    const/4 v0, 0x0

    .line 193
    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 118
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Landroidx/room/util/FtsTableInfo$Companion;->parseOptions(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 193
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p2

    invoke-static {p1, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public final parseOptions(Ljava/lang/String;)Ljava/util/Set;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string p0, "createStatement"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    move-object p0, p1

    check-cast p0, Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 135
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v1, 0x28

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    .line 140
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v0

    const/4 v6, 0x1

    add-int/lit8 v7, v0, 0x1

    const/16 v1, 0x29

    move-object v0, p0

    .line 141
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result p0

    invoke-virtual {p1, v7, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string p1, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 149
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    .line 151
    move-object v2, p0

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, -0x1

    const/4 v4, 0x0

    move v5, v4

    move v7, v5

    .line 200
    :goto_0
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-ge v5, v8, :cond_10

    invoke-interface {v2, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    add-int/lit8 v9, v7, 0x1

    const/16 v10, 0x27

    if-ne v8, v10, :cond_1

    goto :goto_1

    :cond_1
    const/16 v10, 0x22

    if-ne v8, v10, :cond_2

    goto :goto_1

    :cond_2
    const/16 v10, 0x60

    if-ne v8, v10, :cond_5

    .line 154
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 155
    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 156
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Character;

    if-nez v7, :cond_4

    goto/16 :goto_6

    :cond_4
    invoke-virtual {v7}, Ljava/lang/Character;->charValue()C

    move-result v7

    if-ne v7, v8, :cond_f

    .line 157
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    goto/16 :goto_6

    :cond_5
    const/16 v10, 0x5b

    if-ne v8, v10, :cond_6

    .line 159
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 160
    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_6
    const/16 v11, 0x5d

    if-ne v8, v11, :cond_8

    .line 162
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_f

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Character;

    if-nez v7, :cond_7

    goto/16 :goto_6

    :cond_7
    invoke-virtual {v7}, Ljava/lang/Character;->charValue()C

    move-result v7

    if-ne v7, v10, :cond_f

    .line 163
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    goto :goto_6

    :cond_8
    const/16 v10, 0x2c

    if-ne v8, v10, :cond_f

    .line 165
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_f

    add-int/lit8 v3, v3, 0x1

    .line 166
    invoke-virtual {p0, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    check-cast v3, Ljava/lang/CharSequence;

    .line 203
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v8

    sub-int/2addr v8, v6

    move v10, v4

    move v11, v10

    :goto_2
    if-gt v10, v8, :cond_e

    if-nez v11, :cond_9

    move v12, v10

    goto :goto_3

    :cond_9
    move v12, v8

    .line 208
    :goto_3
    invoke-interface {v3, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    const/16 v13, 0x20

    .line 166
    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v12

    if-gtz v12, :cond_a

    move v12, v6

    goto :goto_4

    :cond_a
    move v12, v4

    :goto_4
    if-nez v11, :cond_c

    if-nez v12, :cond_b

    move v11, v6

    goto :goto_2

    :cond_b
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_c
    if-nez v12, :cond_d

    goto :goto_5

    :cond_d
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    :cond_e
    :goto_5
    add-int/lit8 v8, v8, 0x1

    .line 223
    invoke-interface {v3, v10, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 201
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 166
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v7

    :cond_f
    :goto_6
    add-int/lit8 v5, v5, 0x1

    move v7, v9

    goto/16 :goto_0

    :cond_10
    add-int/2addr v3, v6

    .line 173
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "this as java.lang.String).substring(startIndex)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/CharSequence;

    invoke-static {p0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    check-cast v0, Ljava/lang/Iterable;

    .line 225
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    check-cast p0, Ljava/util/Collection;

    .line 226
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_11
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 177
    invoke-static {}, Landroidx/room/util/FtsTableInfo;->access$getFTS_OPTIONS$cp()[Ljava/lang/String;

    move-result-object v2

    .line 227
    array-length v3, v2

    move v5, v4

    :goto_8
    if-ge v5, v3, :cond_11

    aget-object v6, v2, v5

    const/4 v7, 0x2

    const/4 v8, 0x0

    .line 178
    invoke-static {v1, v6, v4, v7, v8}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 226
    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_12
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 229
    :cond_13
    check-cast p0, Ljava/util/List;

    .line 225
    check-cast p0, Ljava/lang/Iterable;

    .line 180
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final read(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/FtsTableInfo;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "database"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tableName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-direct {p0, p1, p2}, Landroidx/room/util/FtsTableInfo$Companion;->readColumns(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 91
    invoke-direct {p0, p1, p2}, Landroidx/room/util/FtsTableInfo$Companion;->readOptions(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    .line 92
    new-instance p1, Landroidx/room/util/FtsTableInfo;

    invoke-direct {p1, p2, v0, p0}, Landroidx/room/util/FtsTableInfo;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V

    return-object p1
.end method
