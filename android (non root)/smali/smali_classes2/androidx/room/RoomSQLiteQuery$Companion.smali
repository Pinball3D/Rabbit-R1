.class public final Landroidx/room/RoomSQLiteQuery$Companion;
.super Ljava/lang/Object;
.source "RoomSQLiteQuery.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/RoomSQLiteQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0004H\u0007J\u0010\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u0017H\u0007J\r\u0010\u0018\u001a\u00020\u0019H\u0000\u00a2\u0006\u0002\u0008\u001aR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0005\u001a\u00020\u00048\u0006X\u0087T\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0006\u0010\u0002R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\u00020\u00048\u0006X\u0087T\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u000b\u0010\u0002R\u000e\u0010\u000c\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\"\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000f0\u000e8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0010\u0010\u0002\u00a8\u0006\u001b"
    }
    d2 = {
        "Landroidx/room/RoomSQLiteQuery$Companion;",
        "",
        "()V",
        "BLOB",
        "",
        "DESIRED_POOL_SIZE",
        "getDESIRED_POOL_SIZE$annotations",
        "DOUBLE",
        "LONG",
        "NULL",
        "POOL_LIMIT",
        "getPOOL_LIMIT$annotations",
        "STRING",
        "queryPool",
        "Ljava/util/TreeMap;",
        "Landroidx/room/RoomSQLiteQuery;",
        "getQueryPool$annotations",
        "acquire",
        "query",
        "",
        "argumentCount",
        "copyFrom",
        "supportSQLiteQuery",
        "Landroidx/sqlite/db/SupportSQLiteQuery;",
        "prunePoolLocked",
        "",
        "prunePoolLocked$room_runtime_release",
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

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/room/RoomSQLiteQuery$Companion;-><init>()V

    return-void
.end method

.method public static synthetic getDESIRED_POOL_SIZE$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getPOOL_LIMIT$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getQueryPool$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string p0, "query"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    sget-object p0, Landroidx/room/RoomSQLiteQuery;->queryPool:Ljava/util/TreeMap;

    monitor-enter p0

    .line 204
    :try_start_0
    sget-object v0, Landroidx/room/RoomSQLiteQuery;->queryPool:Ljava/util/TreeMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 206
    sget-object v1, Landroidx/room/RoomSQLiteQuery;->queryPool:Ljava/util/TreeMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/room/RoomSQLiteQuery;

    .line 208
    invoke-virtual {v0, p1, p2}, Landroidx/room/RoomSQLiteQuery;->init(Ljava/lang/String;I)V

    const-string p1, "sqliteQuery"

    .line 209
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 211
    :cond_0
    :try_start_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 203
    monitor-exit p0

    .line 212
    new-instance p0, Landroidx/room/RoomSQLiteQuery;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroidx/room/RoomSQLiteQuery;-><init>(ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 213
    invoke-virtual {p0, p1, p2}, Landroidx/room/RoomSQLiteQuery;->init(Ljava/lang/String;I)V

    return-object p0

    :catchall_0
    move-exception p1

    .line 203
    monitor-exit p0

    throw p1
.end method

.method public final copyFrom(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroidx/room/RoomSQLiteQuery;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "supportSQLiteQuery"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteQuery;->getSql()Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteQuery;->getArgCount()I

    move-result v1

    .line 183
    invoke-virtual {p0, v0, v1}, Landroidx/room/RoomSQLiteQuery$Companion;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object p0

    .line 188
    new-instance v0, Landroidx/room/RoomSQLiteQuery$Companion$copyFrom$1;

    invoke-direct {v0, p0}, Landroidx/room/RoomSQLiteQuery$Companion$copyFrom$1;-><init>(Landroidx/room/RoomSQLiteQuery;)V

    check-cast v0, Landroidx/sqlite/db/SupportSQLiteProgram;

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteQuery;->bindTo(Landroidx/sqlite/db/SupportSQLiteProgram;)V

    return-object p0
.end method

.method public final prunePoolLocked$room_runtime_release()V
    .locals 2

    .line 218
    sget-object p0, Landroidx/room/RoomSQLiteQuery;->queryPool:Ljava/util/TreeMap;

    invoke-virtual {p0}, Ljava/util/TreeMap;->size()I

    move-result p0

    const/16 v0, 0xf

    if-le p0, v0, :cond_0

    .line 219
    sget-object p0, Landroidx/room/RoomSQLiteQuery;->queryPool:Ljava/util/TreeMap;

    invoke-virtual {p0}, Ljava/util/TreeMap;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0xa

    .line 220
    sget-object v0, Landroidx/room/RoomSQLiteQuery;->queryPool:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->descendingKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "queryPool.descendingKeySet().iterator()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    add-int/lit8 v1, p0, -0x1

    if-lez p0, :cond_0

    .line 222
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 223
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    move p0, v1

    goto :goto_0

    :cond_0
    return-void
.end method
