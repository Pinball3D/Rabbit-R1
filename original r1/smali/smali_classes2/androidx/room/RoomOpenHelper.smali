.class public Landroidx/room/RoomOpenHelper;
.super Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;
.source "RoomOpenHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/RoomOpenHelper$Delegate;,
        Landroidx/room/RoomOpenHelper$ValidationResult;,
        Landroidx/room/RoomOpenHelper$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRoomOpenHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RoomOpenHelper.kt\nandroidx/room/RoomOpenHelper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 CursorUtil.kt\nandroidx/room/util/CursorUtil\n*L\n1#1,247:1\n1851#2,2:248\n145#3,7:250\n*S KotlinDebug\n*F\n+ 1 RoomOpenHelper.kt\nandroidx/room/RoomOpenHelper\n*L\n91#1:248,2\n138#1:250,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0008\u0017\u0018\u0000 \u00192\u00020\u0001:\u0003\u0019\u001a\u001bB\u001f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\u0007\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\nJ\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0010\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0010\u0010\u0010\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0010\u0010\u0011\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016J \u0010\u0012\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0014H\u0016J\u0010\u0010\u0016\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016J \u0010\u0017\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0014H\u0016J\u0010\u0010\u0018\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0002R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Landroidx/room/RoomOpenHelper;",
        "Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;",
        "configuration",
        "Landroidx/room/DatabaseConfiguration;",
        "delegate",
        "Landroidx/room/RoomOpenHelper$Delegate;",
        "legacyHash",
        "",
        "(Landroidx/room/DatabaseConfiguration;Landroidx/room/RoomOpenHelper$Delegate;Ljava/lang/String;)V",
        "identityHash",
        "(Landroidx/room/DatabaseConfiguration;Landroidx/room/RoomOpenHelper$Delegate;Ljava/lang/String;Ljava/lang/String;)V",
        "checkIdentity",
        "",
        "db",
        "Landroidx/sqlite/db/SupportSQLiteDatabase;",
        "createMasterTableIfNotExists",
        "onConfigure",
        "onCreate",
        "onDowngrade",
        "oldVersion",
        "",
        "newVersion",
        "onOpen",
        "onUpgrade",
        "updateIdentity",
        "Companion",
        "Delegate",
        "ValidationResult",
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
.field public static final Companion:Landroidx/room/RoomOpenHelper$Companion;


# instance fields
.field private configuration:Landroidx/room/DatabaseConfiguration;

.field private final delegate:Landroidx/room/RoomOpenHelper$Delegate;

.field private final identityHash:Ljava/lang/String;

.field private final legacyHash:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/room/RoomOpenHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/room/RoomOpenHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/room/RoomOpenHelper;->Companion:Landroidx/room/RoomOpenHelper$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/room/DatabaseConfiguration;Landroidx/room/RoomOpenHelper$Delegate;Ljava/lang/String;)V
    .locals 1

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delegate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "legacyHash"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ""

    .line 58
    invoke-direct {p0, p1, p2, v0, p3}, Landroidx/room/RoomOpenHelper;-><init>(Landroidx/room/DatabaseConfiguration;Landroidx/room/RoomOpenHelper$Delegate;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroidx/room/DatabaseConfiguration;Landroidx/room/RoomOpenHelper$Delegate;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delegate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "identityHash"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "legacyHash"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget v0, p2, Landroidx/room/RoomOpenHelper$Delegate;->version:I

    invoke-direct {p0, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;-><init>(I)V

    iput-object p1, p0, Landroidx/room/RoomOpenHelper;->configuration:Landroidx/room/DatabaseConfiguration;

    iput-object p2, p0, Landroidx/room/RoomOpenHelper;->delegate:Landroidx/room/RoomOpenHelper$Delegate;

    iput-object p3, p0, Landroidx/room/RoomOpenHelper;->identityHash:Ljava/lang/String;

    iput-object p4, p0, Landroidx/room/RoomOpenHelper;->legacyHash:Ljava/lang/String;

    return-void
.end method

.method private final checkIdentity(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 3

    sget-object v0, Landroidx/room/RoomOpenHelper;->Companion:Landroidx/room/RoomOpenHelper$Companion;

    .line 135
    invoke-virtual {v0, p1}, Landroidx/room/RoomOpenHelper$Companion;->hasRoomMasterTable$room_runtime_release(Landroidx/sqlite/db/SupportSQLiteDatabase;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 137
    new-instance v0, Landroidx/sqlite/db/SimpleSQLiteQuery;

    const-string v1, "SELECT identity_hash FROM room_master_table WHERE id = 42 LIMIT 1"

    invoke-direct {v0, v1}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(Ljava/lang/String;)V

    check-cast v0, Landroidx/sqlite/db/SupportSQLiteQuery;

    .line 136
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object p1

    .line 251
    check-cast p1, Ljava/io/Closeable;

    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/database/Cursor;

    .line 139
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 140
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 142
    :cond_0
    move-object v0, v2

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    .line 251
    :goto_0
    invoke-static {p1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    iget-object p1, p0, Landroidx/room/RoomOpenHelper;->identityHash:Ljava/lang/String;

    .line 146
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Landroidx/room/RoomOpenHelper;->legacyHash:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 147
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Room cannot verify the data integrity. Looks like you\'ve changed schema but forgot to update the version number. You can simply fix this by increasing the version number. Expected identity hash: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/room/RoomOpenHelper;->identityHash:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ", found: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 147
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p0

    .line 251
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p1, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    iget-object v0, p0, Landroidx/room/RoomOpenHelper;->delegate:Landroidx/room/RoomOpenHelper$Delegate;

    .line 157
    invoke-virtual {v0, p1}, Landroidx/room/RoomOpenHelper$Delegate;->onValidateSchema(Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/room/RoomOpenHelper$ValidationResult;

    move-result-object v0

    .line 158
    iget-boolean v1, v0, Landroidx/room/RoomOpenHelper$ValidationResult;->isValid:Z

    if-eqz v1, :cond_4

    iget-object v0, p0, Landroidx/room/RoomOpenHelper;->delegate:Landroidx/room/RoomOpenHelper$Delegate;

    .line 163
    invoke-virtual {v0, p1}, Landroidx/room/RoomOpenHelper$Delegate;->onPostMigrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 164
    invoke-direct {p0, p1}, Landroidx/room/RoomOpenHelper;->updateIdentity(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    :cond_3
    :goto_1
    return-void

    .line 159
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 160
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Pre-packaged database has an invalid schema: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Landroidx/room/RoomOpenHelper$ValidationResult;->expectedFoundMsg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 159
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final createMasterTableIfNotExists(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0

    const-string p0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    .line 174
    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private final updateIdentity(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0

    .line 169
    invoke-direct {p0, p1}, Landroidx/room/RoomOpenHelper;->createMasterTableIfNotExists(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    iget-object p0, p0, Landroidx/room/RoomOpenHelper;->identityHash:Ljava/lang/String;

    .line 170
    invoke-static {p0}, Landroidx/room/RoomMasterTable;->createInsertQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onConfigure(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-super {p0, p1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;->onConfigure(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method public onCreate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 2

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Landroidx/room/RoomOpenHelper;->Companion:Landroidx/room/RoomOpenHelper$Companion;

    .line 65
    invoke-virtual {v0, p1}, Landroidx/room/RoomOpenHelper$Companion;->hasEmptySchema$room_runtime_release(Landroidx/sqlite/db/SupportSQLiteDatabase;)Z

    move-result v0

    iget-object v1, p0, Landroidx/room/RoomOpenHelper;->delegate:Landroidx/room/RoomOpenHelper$Delegate;

    .line 66
    invoke-virtual {v1, p1}, Landroidx/room/RoomOpenHelper$Delegate;->createAllTables(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/room/RoomOpenHelper;->delegate:Landroidx/room/RoomOpenHelper$Delegate;

    .line 72
    invoke-virtual {v0, p1}, Landroidx/room/RoomOpenHelper$Delegate;->onValidateSchema(Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/room/RoomOpenHelper$ValidationResult;

    move-result-object v0

    .line 73
    iget-boolean v1, v0, Landroidx/room/RoomOpenHelper$ValidationResult;->isValid:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 75
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Pre-packaged database has an invalid schema: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Landroidx/room/RoomOpenHelper$ValidationResult;->expectedFoundMsg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 74
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 79
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Landroidx/room/RoomOpenHelper;->updateIdentity(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    iget-object p0, p0, Landroidx/room/RoomOpenHelper;->delegate:Landroidx/room/RoomOpenHelper$Delegate;

    .line 80
    invoke-virtual {p0, p1}, Landroidx/room/RoomOpenHelper$Delegate;->onCreate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method public onDowngrade(Landroidx/sqlite/db/SupportSQLiteDatabase;II)V
    .locals 1

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0, p1, p2, p3}, Landroidx/room/RoomOpenHelper;->onUpgrade(Landroidx/sqlite/db/SupportSQLiteDatabase;II)V

    return-void
.end method

.method public onOpen(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    invoke-super {p0, p1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;->onOpen(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 128
    invoke-direct {p0, p1}, Landroidx/room/RoomOpenHelper;->checkIdentity(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    iget-object v0, p0, Landroidx/room/RoomOpenHelper;->delegate:Landroidx/room/RoomOpenHelper$Delegate;

    .line 129
    invoke-virtual {v0, p1}, Landroidx/room/RoomOpenHelper$Delegate;->onOpen(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/room/RoomOpenHelper;->configuration:Landroidx/room/DatabaseConfiguration;

    return-void
.end method

.method public onUpgrade(Landroidx/sqlite/db/SupportSQLiteDatabase;II)V
    .locals 1

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/room/RoomOpenHelper;->configuration:Landroidx/room/DatabaseConfiguration;

    if-eqz v0, :cond_2

    .line 86
    iget-object v0, v0, Landroidx/room/DatabaseConfiguration;->migrationContainer:Landroidx/room/RoomDatabase$MigrationContainer;

    invoke-virtual {v0, p2, p3}, Landroidx/room/RoomDatabase$MigrationContainer;->findMigrationPath(II)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object p2, p0, Landroidx/room/RoomOpenHelper;->delegate:Landroidx/room/RoomOpenHelper$Delegate;

    .line 90
    invoke-virtual {p2, p1}, Landroidx/room/RoomOpenHelper$Delegate;->onPreMigrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 91
    check-cast v0, Ljava/lang/Iterable;

    .line 248
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/room/migration/Migration;

    .line 91
    invoke-virtual {p3, p1}, Landroidx/room/migration/Migration;->migrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Landroidx/room/RoomOpenHelper;->delegate:Landroidx/room/RoomOpenHelper$Delegate;

    .line 92
    invoke-virtual {p2, p1}, Landroidx/room/RoomOpenHelper$Delegate;->onValidateSchema(Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/room/RoomOpenHelper$ValidationResult;

    move-result-object p2

    .line 93
    iget-boolean p3, p2, Landroidx/room/RoomOpenHelper$ValidationResult;->isValid:Z

    if-eqz p3, :cond_1

    iget-object p2, p0, Landroidx/room/RoomOpenHelper;->delegate:Landroidx/room/RoomOpenHelper$Delegate;

    .line 99
    invoke-virtual {p2, p1}, Landroidx/room/RoomOpenHelper$Delegate;->onPostMigrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 100
    invoke-direct {p0, p1}, Landroidx/room/RoomOpenHelper;->updateIdentity(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    goto :goto_1

    .line 94
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 95
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Migration didn\'t properly handle: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    iget-object p2, p2, Landroidx/room/RoomOpenHelper$ValidationResult;->expectedFoundMsg:Ljava/lang/String;

    .line 95
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 94
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object v0, p0, Landroidx/room/RoomOpenHelper;->configuration:Landroidx/room/DatabaseConfiguration;

    if-eqz v0, :cond_3

    .line 106
    invoke-virtual {v0, p2, p3}, Landroidx/room/DatabaseConfiguration;->isMigrationRequired(II)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p2, p0, Landroidx/room/RoomOpenHelper;->delegate:Landroidx/room/RoomOpenHelper$Delegate;

    .line 107
    invoke-virtual {p2, p1}, Landroidx/room/RoomOpenHelper$Delegate;->dropAllTables(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    iget-object p0, p0, Landroidx/room/RoomOpenHelper;->delegate:Landroidx/room/RoomOpenHelper$Delegate;

    .line 108
    invoke-virtual {p0, p1}, Landroidx/room/RoomOpenHelper$Delegate;->createAllTables(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    :goto_1
    return-void

    .line 110
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 111
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "A migration from "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " was required but not found. Please provide the necessary Migration path via RoomDatabase.Builder.addMigration(Migration ...) or allow for destructive migrations via one of the RoomDatabase.Builder.fallbackToDestructiveMigration* methods."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 110
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
