.class public final Landroidx/room/QueryInterceptorStatement;
.super Ljava/lang/Object;
.source "QueryInterceptorStatement.kt"

# interfaces
.implements Landroidx/sqlite/db/SupportSQLiteStatement;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nQueryInterceptorStatement.kt\nKotlin\n*S Kotlin\n*F\n+ 1 QueryInterceptorStatement.kt\nandroidx/room/QueryInterceptorStatement\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,111:1\n37#2,2:112\n*S KotlinDebug\n*F\n+ 1 QueryInterceptorStatement.kt\nandroidx/room/QueryInterceptorStatement\n*L\n71#1:112,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u000c\u0008\u0000\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0018\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0014H\u0016J\u0018\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0016H\u0016J\u0010\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0018\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0004H\u0016J\u0008\u0010\u0019\u001a\u00020\u000eH\u0016J\t\u0010\u001a\u001a\u00020\u000eH\u0096\u0001J\u0008\u0010\u001b\u001a\u00020\u000eH\u0016J\u0008\u0010\u001c\u001a\u00020\u0016H\u0016J\u0008\u0010\u001d\u001a\u00020\u0010H\u0016J\u001a\u0010\u001e\u001a\u00020\u000e2\u0006\u0010\u001f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u000cH\u0002J\u0008\u0010 \u001a\u00020\u0016H\u0016J\n\u0010!\u001a\u0004\u0018\u00010\u0004H\u0016R\u0016\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Landroidx/room/QueryInterceptorStatement;",
        "Landroidx/sqlite/db/SupportSQLiteStatement;",
        "delegate",
        "sqlStatement",
        "",
        "queryCallbackExecutor",
        "Ljava/util/concurrent/Executor;",
        "queryCallback",
        "Landroidx/room/RoomDatabase$QueryCallback;",
        "(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroidx/room/RoomDatabase$QueryCallback;)V",
        "bindArgsCache",
        "",
        "",
        "bindBlob",
        "",
        "index",
        "",
        "value",
        "",
        "bindDouble",
        "",
        "bindLong",
        "",
        "bindNull",
        "bindString",
        "clearBindings",
        "close",
        "execute",
        "executeInsert",
        "executeUpdateDelete",
        "saveArgsToCache",
        "bindIndex",
        "simpleQueryForLong",
        "simpleQueryForString",
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


# instance fields
.field private final bindArgsCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final delegate:Landroidx/sqlite/db/SupportSQLiteStatement;

.field private final queryCallback:Landroidx/room/RoomDatabase$QueryCallback;

.field private final queryCallbackExecutor:Ljava/util/concurrent/Executor;

.field private final sqlStatement:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$Pmi7YUr_0sVZjB_L4FDjiZZURU8(Landroidx/room/QueryInterceptorStatement;)V
    .locals 0

    invoke-static {p0}, Landroidx/room/QueryInterceptorStatement;->simpleQueryForLong$lambda$3(Landroidx/room/QueryInterceptorStatement;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QdLFHZkpmZJ_LPUgODEMde_afXU(Landroidx/room/QueryInterceptorStatement;)V
    .locals 0

    invoke-static {p0}, Landroidx/room/QueryInterceptorStatement;->execute$lambda$0(Landroidx/room/QueryInterceptorStatement;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ry-pL5WhdgLiTeBboZW8YGkMwwQ(Landroidx/room/QueryInterceptorStatement;)V
    .locals 0

    invoke-static {p0}, Landroidx/room/QueryInterceptorStatement;->executeUpdateDelete$lambda$1(Landroidx/room/QueryInterceptorStatement;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sZPNtLZUec1i4RI8FPsPU8yXMwU(Landroidx/room/QueryInterceptorStatement;)V
    .locals 0

    invoke-static {p0}, Landroidx/room/QueryInterceptorStatement;->executeInsert$lambda$2(Landroidx/room/QueryInterceptorStatement;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sfBXlNb-XvWZ8iQIzcxh0kX5ho8(Landroidx/room/QueryInterceptorStatement;)V
    .locals 0

    invoke-static {p0}, Landroidx/room/QueryInterceptorStatement;->simpleQueryForString$lambda$4(Landroidx/room/QueryInterceptorStatement;)V

    return-void
.end method

.method public constructor <init>(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroidx/room/RoomDatabase$QueryCallback;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sqlStatement"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "queryCallbackExecutor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "queryCallback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/QueryInterceptorStatement;->delegate:Landroidx/sqlite/db/SupportSQLiteStatement;

    iput-object p2, p0, Landroidx/room/QueryInterceptorStatement;->sqlStatement:Ljava/lang/String;

    iput-object p3, p0, Landroidx/room/QueryInterceptorStatement;->queryCallbackExecutor:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Landroidx/room/QueryInterceptorStatement;->queryCallback:Landroidx/room/RoomDatabase$QueryCallback;

    .line 33
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Landroidx/room/QueryInterceptorStatement;->bindArgsCache:Ljava/util/List;

    return-void
.end method

.method private static final execute$lambda$0(Landroidx/room/QueryInterceptorStatement;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Landroidx/room/QueryInterceptorStatement;->queryCallback:Landroidx/room/RoomDatabase$QueryCallback;

    iget-object v1, p0, Landroidx/room/QueryInterceptorStatement;->sqlStatement:Ljava/lang/String;

    iget-object p0, p0, Landroidx/room/QueryInterceptorStatement;->bindArgsCache:Ljava/util/List;

    invoke-interface {v0, v1, p0}, Landroidx/room/RoomDatabase$QueryCallback;->onQuery(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private static final executeInsert$lambda$2(Landroidx/room/QueryInterceptorStatement;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Landroidx/room/QueryInterceptorStatement;->queryCallback:Landroidx/room/RoomDatabase$QueryCallback;

    iget-object v1, p0, Landroidx/room/QueryInterceptorStatement;->sqlStatement:Ljava/lang/String;

    iget-object p0, p0, Landroidx/room/QueryInterceptorStatement;->bindArgsCache:Ljava/util/List;

    invoke-interface {v0, v1, p0}, Landroidx/room/RoomDatabase$QueryCallback;->onQuery(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private static final executeUpdateDelete$lambda$1(Landroidx/room/QueryInterceptorStatement;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Landroidx/room/QueryInterceptorStatement;->queryCallback:Landroidx/room/RoomDatabase$QueryCallback;

    iget-object v1, p0, Landroidx/room/QueryInterceptorStatement;->sqlStatement:Ljava/lang/String;

    iget-object p0, p0, Landroidx/room/QueryInterceptorStatement;->bindArgsCache:Ljava/util/List;

    invoke-interface {v0, v1, p0}, Landroidx/room/RoomDatabase$QueryCallback;->onQuery(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private final saveArgsToCache(ILjava/lang/Object;)V
    .locals 4

    add-int/lit8 p1, p1, -0x1

    iget-object v0, p0, Landroidx/room/QueryInterceptorStatement;->bindArgsCache:Ljava/util/List;

    .line 102
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Landroidx/room/QueryInterceptorStatement;->bindArgsCache:Ljava/util/List;

    .line 104
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int v0, p1, v0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroidx/room/QueryInterceptorStatement;->bindArgsCache:Ljava/util/List;

    const/4 v3, 0x0

    .line 105
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/room/QueryInterceptorStatement;->bindArgsCache:Ljava/util/List;

    .line 108
    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final simpleQueryForLong$lambda$3(Landroidx/room/QueryInterceptorStatement;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Landroidx/room/QueryInterceptorStatement;->queryCallback:Landroidx/room/RoomDatabase$QueryCallback;

    iget-object v1, p0, Landroidx/room/QueryInterceptorStatement;->sqlStatement:Ljava/lang/String;

    iget-object p0, p0, Landroidx/room/QueryInterceptorStatement;->bindArgsCache:Ljava/util/List;

    invoke-interface {v0, v1, p0}, Landroidx/room/RoomDatabase$QueryCallback;->onQuery(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private static final simpleQueryForString$lambda$4(Landroidx/room/QueryInterceptorStatement;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Landroidx/room/QueryInterceptorStatement;->queryCallback:Landroidx/room/RoomDatabase$QueryCallback;

    iget-object v1, p0, Landroidx/room/QueryInterceptorStatement;->sqlStatement:Ljava/lang/String;

    iget-object p0, p0, Landroidx/room/QueryInterceptorStatement;->bindArgsCache:Ljava/util/List;

    invoke-interface {v0, v1, p0}, Landroidx/room/RoomDatabase$QueryCallback;->onQuery(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public bindBlob(I[B)V
    .locals 1

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-direct {p0, p1, p2}, Landroidx/room/QueryInterceptorStatement;->saveArgsToCache(ILjava/lang/Object;)V

    iget-object p0, p0, Landroidx/room/QueryInterceptorStatement;->delegate:Landroidx/sqlite/db/SupportSQLiteStatement;

    .line 92
    invoke-interface {p0, p1, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    return-void
.end method

.method public bindDouble(ID)V
    .locals 1

    .line 81
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroidx/room/QueryInterceptorStatement;->saveArgsToCache(ILjava/lang/Object;)V

    iget-object p0, p0, Landroidx/room/QueryInterceptorStatement;->delegate:Landroidx/sqlite/db/SupportSQLiteStatement;

    .line 82
    invoke-interface {p0, p1, p2, p3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindDouble(ID)V

    return-void
.end method

.method public bindLong(IJ)V
    .locals 1

    .line 76
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroidx/room/QueryInterceptorStatement;->saveArgsToCache(ILjava/lang/Object;)V

    iget-object p0, p0, Landroidx/room/QueryInterceptorStatement;->delegate:Landroidx/sqlite/db/SupportSQLiteStatement;

    .line 77
    invoke-interface {p0, p1, p2, p3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method public bindNull(I)V
    .locals 2

    iget-object v0, p0, Landroidx/room/QueryInterceptorStatement;->bindArgsCache:Ljava/util/List;

    .line 71
    check-cast v0, Ljava/util/Collection;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 113
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroidx/room/QueryInterceptorStatement;->saveArgsToCache(ILjava/lang/Object;)V

    iget-object p0, p0, Landroidx/room/QueryInterceptorStatement;->delegate:Landroidx/sqlite/db/SupportSQLiteStatement;

    .line 72
    invoke-interface {p0, p1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    return-void
.end method

.method public bindString(ILjava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-direct {p0, p1, p2}, Landroidx/room/QueryInterceptorStatement;->saveArgsToCache(ILjava/lang/Object;)V

    iget-object p0, p0, Landroidx/room/QueryInterceptorStatement;->delegate:Landroidx/sqlite/db/SupportSQLiteStatement;

    .line 87
    invoke-interface {p0, p1, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    return-void
.end method

.method public clearBindings()V
    .locals 1

    iget-object v0, p0, Landroidx/room/QueryInterceptorStatement;->bindArgsCache:Ljava/util/List;

    .line 96
    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object p0, p0, Landroidx/room/QueryInterceptorStatement;->delegate:Landroidx/sqlite/db/SupportSQLiteStatement;

    .line 97
    invoke-interface {p0}, Landroidx/sqlite/db/SupportSQLiteStatement;->clearBindings()V

    return-void
.end method

.method public close()V
    .locals 0

    iget-object p0, p0, Landroidx/room/QueryInterceptorStatement;->delegate:Landroidx/sqlite/db/SupportSQLiteStatement;

    invoke-interface {p0}, Landroidx/sqlite/db/SupportSQLiteStatement;->close()V

    return-void
.end method

.method public execute()V
    .locals 2

    iget-object v0, p0, Landroidx/room/QueryInterceptorStatement;->queryCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 36
    new-instance v1, Landroidx/room/QueryInterceptorStatement$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroidx/room/QueryInterceptorStatement$$ExternalSyntheticLambda1;-><init>(Landroidx/room/QueryInterceptorStatement;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object p0, p0, Landroidx/room/QueryInterceptorStatement;->delegate:Landroidx/sqlite/db/SupportSQLiteStatement;

    .line 39
    invoke-interface {p0}, Landroidx/sqlite/db/SupportSQLiteStatement;->execute()V

    return-void
.end method

.method public executeInsert()J
    .locals 2

    iget-object v0, p0, Landroidx/room/QueryInterceptorStatement;->queryCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 50
    new-instance v1, Landroidx/room/QueryInterceptorStatement$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Landroidx/room/QueryInterceptorStatement$$ExternalSyntheticLambda2;-><init>(Landroidx/room/QueryInterceptorStatement;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object p0, p0, Landroidx/room/QueryInterceptorStatement;->delegate:Landroidx/sqlite/db/SupportSQLiteStatement;

    .line 53
    invoke-interface {p0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeInsert()J

    move-result-wide v0

    return-wide v0
.end method

.method public executeUpdateDelete()I
    .locals 2

    iget-object v0, p0, Landroidx/room/QueryInterceptorStatement;->queryCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 43
    new-instance v1, Landroidx/room/QueryInterceptorStatement$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroidx/room/QueryInterceptorStatement$$ExternalSyntheticLambda0;-><init>(Landroidx/room/QueryInterceptorStatement;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object p0, p0, Landroidx/room/QueryInterceptorStatement;->delegate:Landroidx/sqlite/db/SupportSQLiteStatement;

    .line 46
    invoke-interface {p0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result p0

    return p0
.end method

.method public simpleQueryForLong()J
    .locals 2

    iget-object v0, p0, Landroidx/room/QueryInterceptorStatement;->queryCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 57
    new-instance v1, Landroidx/room/QueryInterceptorStatement$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Landroidx/room/QueryInterceptorStatement$$ExternalSyntheticLambda4;-><init>(Landroidx/room/QueryInterceptorStatement;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object p0, p0, Landroidx/room/QueryInterceptorStatement;->delegate:Landroidx/sqlite/db/SupportSQLiteStatement;

    .line 60
    invoke-interface {p0}, Landroidx/sqlite/db/SupportSQLiteStatement;->simpleQueryForLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public simpleQueryForString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroidx/room/QueryInterceptorStatement;->queryCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 64
    new-instance v1, Landroidx/room/QueryInterceptorStatement$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Landroidx/room/QueryInterceptorStatement$$ExternalSyntheticLambda3;-><init>(Landroidx/room/QueryInterceptorStatement;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object p0, p0, Landroidx/room/QueryInterceptorStatement;->delegate:Landroidx/sqlite/db/SupportSQLiteStatement;

    .line 67
    invoke-interface {p0}, Landroidx/sqlite/db/SupportSQLiteStatement;->simpleQueryForString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
