.class public final Landroidx/room/RoomSQLiteQuery;
.super Ljava/lang/Object;
.source "RoomSQLiteQuery.kt"

# interfaces
.implements Landroidx/sqlite/db/SupportSQLiteQuery;
.implements Landroidx/sqlite/db/SupportSQLiteProgram;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/RoomSQLiteQuery$Binding;,
        Landroidx/room/RoomSQLiteQuery$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u0015\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0010\u0012\n\u0002\u0008\u0004\n\u0002\u0010\u0013\n\u0002\u0008\u0002\n\u0002\u0010\u0016\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u000e\u0008\u0007\u0018\u0000 62\u00020\u00012\u00020\u0002:\u000256B\u000f\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0018\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020\u00042\u0006\u0010%\u001a\u00020\u0010H\u0016J\u0018\u0010&\u001a\u00020#2\u0006\u0010$\u001a\u00020\u00042\u0006\u0010%\u001a\u00020\'H\u0016J\u0018\u0010(\u001a\u00020#2\u0006\u0010$\u001a\u00020\u00042\u0006\u0010%\u001a\u00020)H\u0016J\u0010\u0010*\u001a\u00020#2\u0006\u0010$\u001a\u00020\u0004H\u0016J\u0018\u0010+\u001a\u00020#2\u0006\u0010$\u001a\u00020\u00042\u0006\u0010%\u001a\u00020\u001bH\u0016J\u0010\u0010,\u001a\u00020#2\u0006\u0010-\u001a\u00020\u0002H\u0016J\u0008\u0010.\u001a\u00020#H\u0016J\u0008\u0010/\u001a\u00020#H\u0016J\u000e\u00100\u001a\u00020#2\u0006\u00101\u001a\u00020\u0000J\u0016\u00102\u001a\u00020#2\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u00103\u001a\u00020\u0004J\u0006\u00104\u001a\u00020#R\u001e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004@RX\u0096\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0014\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u000c\u0010\rR \u0010\u000e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000f8\u0006X\u0087\u0004\u00a2\u0006\n\n\u0002\u0010\u0012\u0012\u0004\u0008\u0011\u0010\rR\u0016\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\tR\u0016\u0010\u0014\u001a\u00020\u00158\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0016\u0010\rR\u0016\u0010\u0017\u001a\u00020\u00188\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0019\u0010\rR\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001c\u001a\u00020\u001b8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u001eR \u0010\u001f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001b0\u000f8\u0006X\u0087\u0004\u00a2\u0006\n\n\u0002\u0010!\u0012\u0004\u0008 \u0010\r\u00a8\u00067"
    }
    d2 = {
        "Landroidx/room/RoomSQLiteQuery;",
        "Landroidx/sqlite/db/SupportSQLiteQuery;",
        "Landroidx/sqlite/db/SupportSQLiteProgram;",
        "capacity",
        "",
        "(I)V",
        "<set-?>",
        "argCount",
        "getArgCount",
        "()I",
        "bindingTypes",
        "",
        "getBindingTypes$annotations",
        "()V",
        "blobBindings",
        "",
        "",
        "getBlobBindings$annotations",
        "[[B",
        "getCapacity",
        "doubleBindings",
        "",
        "getDoubleBindings$annotations",
        "longBindings",
        "",
        "getLongBindings$annotations",
        "query",
        "",
        "sql",
        "getSql",
        "()Ljava/lang/String;",
        "stringBindings",
        "getStringBindings$annotations",
        "[Ljava/lang/String;",
        "bindBlob",
        "",
        "index",
        "value",
        "bindDouble",
        "",
        "bindLong",
        "",
        "bindNull",
        "bindString",
        "bindTo",
        "statement",
        "clearBindings",
        "close",
        "copyArgumentsFrom",
        "other",
        "init",
        "initArgCount",
        "release",
        "Binding",
        "Companion",
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


# static fields
.field private static final BLOB:I = 0x5

.field public static final Companion:Landroidx/room/RoomSQLiteQuery$Companion;

.field public static final DESIRED_POOL_SIZE:I = 0xa

.field private static final DOUBLE:I = 0x3

.field private static final LONG:I = 0x2

.field private static final NULL:I = 0x1

.field public static final POOL_LIMIT:I = 0xf

.field private static final STRING:I = 0x4

.field public static final queryPool:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Landroidx/room/RoomSQLiteQuery;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private argCount:I

.field private final bindingTypes:[I

.field public final blobBindings:[[B

.field private final capacity:I

.field public final doubleBindings:[D

.field public final longBindings:[J

.field private volatile query:Ljava/lang/String;

.field public final stringBindings:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/room/RoomSQLiteQuery$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/room/RoomSQLiteQuery$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/room/RoomSQLiteQuery;->Companion:Landroidx/room/RoomSQLiteQuery$Companion;

    .line 173
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Landroidx/room/RoomSQLiteQuery;->queryPool:Ljava/util/TreeMap;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/room/RoomSQLiteQuery;->capacity:I

    add-int/lit8 p1, p1, 0x1

    .line 72
    new-array v0, p1, [I

    iput-object v0, p0, Landroidx/room/RoomSQLiteQuery;->bindingTypes:[I

    .line 73
    new-array v0, p1, [J

    iput-object v0, p0, Landroidx/room/RoomSQLiteQuery;->longBindings:[J

    .line 74
    new-array v0, p1, [D

    iput-object v0, p0, Landroidx/room/RoomSQLiteQuery;->doubleBindings:[D

    .line 75
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Landroidx/room/RoomSQLiteQuery;->stringBindings:[Ljava/lang/String;

    .line 76
    new-array p1, p1, [[B

    iput-object p1, p0, Landroidx/room/RoomSQLiteQuery;->blobBindings:[[B

    return-void
.end method

.method public synthetic constructor <init>(ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/room/RoomSQLiteQuery;-><init>(I)V

    return-void
.end method

.method public static final acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/room/RoomSQLiteQuery;->Companion:Landroidx/room/RoomSQLiteQuery$Companion;

    invoke-virtual {v0, p0, p1}, Landroidx/room/RoomSQLiteQuery$Companion;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object p0

    return-object p0
.end method

.method public static final copyFrom(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroidx/room/RoomSQLiteQuery;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/room/RoomSQLiteQuery;->Companion:Landroidx/room/RoomSQLiteQuery$Companion;

    invoke-virtual {v0, p0}, Landroidx/room/RoomSQLiteQuery$Companion;->copyFrom(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroidx/room/RoomSQLiteQuery;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic getBindingTypes$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getBlobBindings$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getDoubleBindings$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getLongBindings$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getStringBindings$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public bindBlob(I[B)V
    .locals 2

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/room/RoomSQLiteQuery;->bindingTypes:[I

    const/4 v1, 0x5

    .line 127
    aput v1, v0, p1

    iget-object p0, p0, Landroidx/room/RoomSQLiteQuery;->blobBindings:[[B

    .line 128
    aput-object p2, p0, p1

    return-void
.end method

.method public bindDouble(ID)V
    .locals 2

    iget-object v0, p0, Landroidx/room/RoomSQLiteQuery;->bindingTypes:[I

    const/4 v1, 0x3

    .line 117
    aput v1, v0, p1

    iget-object p0, p0, Landroidx/room/RoomSQLiteQuery;->doubleBindings:[D

    .line 118
    aput-wide p2, p0, p1

    return-void
.end method

.method public bindLong(IJ)V
    .locals 2

    iget-object v0, p0, Landroidx/room/RoomSQLiteQuery;->bindingTypes:[I

    const/4 v1, 0x2

    .line 112
    aput v1, v0, p1

    iget-object p0, p0, Landroidx/room/RoomSQLiteQuery;->longBindings:[J

    .line 113
    aput-wide p2, p0, p1

    return-void
.end method

.method public bindNull(I)V
    .locals 1

    iget-object p0, p0, Landroidx/room/RoomSQLiteQuery;->bindingTypes:[I

    const/4 v0, 0x1

    .line 108
    aput v0, p0, p1

    return-void
.end method

.method public bindString(ILjava/lang/String;)V
    .locals 2

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/room/RoomSQLiteQuery;->bindingTypes:[I

    const/4 v1, 0x4

    .line 122
    aput v1, v0, p1

    iget-object p0, p0, Landroidx/room/RoomSQLiteQuery;->stringBindings:[Ljava/lang/String;

    .line 123
    aput-object p2, p0, p1

    return-void
.end method

.method public bindTo(Landroidx/sqlite/db/SupportSQLiteProgram;)V
    .locals 6

    const-string v0, "statement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Landroidx/room/RoomSQLiteQuery;->getArgCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v1, v0, :cond_7

    move v2, v1

    :goto_0
    iget-object v3, p0, Landroidx/room/RoomSQLiteQuery;->bindingTypes:[I

    .line 97
    aget v3, v3, v2

    if-eq v3, v1, :cond_6

    const/4 v4, 0x2

    if-eq v3, v4, :cond_5

    const/4 v4, 0x3

    if-eq v3, v4, :cond_4

    const/4 v4, 0x4

    const-string v5, "Required value was null."

    if-eq v3, v4, :cond_2

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Landroidx/room/RoomSQLiteQuery;->blobBindings:[[B

    .line 102
    aget-object v3, v3, v2

    if-eqz v3, :cond_1

    invoke-interface {p1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindBlob(I[B)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object v3, p0, Landroidx/room/RoomSQLiteQuery;->stringBindings:[Ljava/lang/String;

    .line 101
    aget-object v3, v3, v2

    if-eqz v3, :cond_3

    invoke-interface {p1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    iget-object v3, p0, Landroidx/room/RoomSQLiteQuery;->doubleBindings:[D

    .line 100
    aget-wide v3, v3, v2

    invoke-interface {p1, v2, v3, v4}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindDouble(ID)V

    goto :goto_1

    :cond_5
    iget-object v3, p0, Landroidx/room/RoomSQLiteQuery;->longBindings:[J

    .line 99
    aget-wide v3, v3, v2

    invoke-interface {p1, v2, v3, v4}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    goto :goto_1

    .line 98
    :cond_6
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    :goto_1
    if-eq v2, v0, :cond_7

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method public clearBindings()V
    .locals 2

    iget-object v0, p0, Landroidx/room/RoomSQLiteQuery;->bindingTypes:[I

    const/4 v1, 0x1

    .line 150
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Landroidx/room/RoomSQLiteQuery;->stringBindings:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 151
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Landroidx/room/RoomSQLiteQuery;->blobBindings:[[B

    .line 152
    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Landroidx/room/RoomSQLiteQuery;->query:Ljava/lang/String;

    return-void
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public final copyArgumentsFrom(Landroidx/room/RoomSQLiteQuery;)V
    .locals 4

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p1}, Landroidx/room/RoomSQLiteQuery;->getArgCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 142
    iget-object v1, p1, Landroidx/room/RoomSQLiteQuery;->bindingTypes:[I

    iget-object v2, p0, Landroidx/room/RoomSQLiteQuery;->bindingTypes:[I

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 143
    iget-object v1, p1, Landroidx/room/RoomSQLiteQuery;->longBindings:[J

    iget-object v2, p0, Landroidx/room/RoomSQLiteQuery;->longBindings:[J

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 144
    iget-object v1, p1, Landroidx/room/RoomSQLiteQuery;->stringBindings:[Ljava/lang/String;

    iget-object v2, p0, Landroidx/room/RoomSQLiteQuery;->stringBindings:[Ljava/lang/String;

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 145
    iget-object v1, p1, Landroidx/room/RoomSQLiteQuery;->blobBindings:[[B

    iget-object v2, p0, Landroidx/room/RoomSQLiteQuery;->blobBindings:[[B

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 146
    iget-object p1, p1, Landroidx/room/RoomSQLiteQuery;->doubleBindings:[D

    iget-object p0, p0, Landroidx/room/RoomSQLiteQuery;->doubleBindings:[D

    invoke-static {p1, v3, p0, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public getArgCount()I
    .locals 0

    iget p0, p0, Landroidx/room/RoomSQLiteQuery;->argCount:I

    return p0
.end method

.method public final getCapacity()I
    .locals 0

    iget p0, p0, Landroidx/room/RoomSQLiteQuery;->capacity:I

    return p0
.end method

.method public getSql()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Landroidx/room/RoomSQLiteQuery;->query:Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    .line 93
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Required value was null."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final init(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "query"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/room/RoomSQLiteQuery;->query:Ljava/lang/String;

    iput p2, p0, Landroidx/room/RoomSQLiteQuery;->argCount:I

    return-void
.end method

.method public final release()V
    .locals 3

    sget-object v0, Landroidx/room/RoomSQLiteQuery;->queryPool:Ljava/util/TreeMap;

    .line 86
    monitor-enter v0

    .line 87
    :try_start_0
    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    iget v2, p0, Landroidx/room/RoomSQLiteQuery;->capacity:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Landroidx/room/RoomSQLiteQuery;->Companion:Landroidx/room/RoomSQLiteQuery$Companion;

    .line 88
    invoke-virtual {p0}, Landroidx/room/RoomSQLiteQuery$Companion;->prunePoolLocked$room_runtime_release()V

    .line 89
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
