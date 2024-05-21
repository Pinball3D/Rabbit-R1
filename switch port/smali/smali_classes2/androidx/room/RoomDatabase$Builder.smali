.class public Landroidx/room/RoomDatabase$Builder;
.super Ljava/lang/Object;
.source "RoomDatabase.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/RoomDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroidx/room/RoomDatabase;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRoomDatabase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RoomDatabase.kt\nandroidx/room/RoomDatabase$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1545:1\n1#2:1546\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a6\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010\u0015\n\u0002\u0008\u000b\u0008\u0016\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u00020\u0003B\'\u0008\u0000\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0002\u0010\nJ\u0016\u00103\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u00104\u001a\u00020\u0014H\u0016J\u0016\u00105\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u00106\u001a\u00020\u0016H\u0016J\'\u00107\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0012\u00108\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020:09\"\u00020:H\u0016\u00a2\u0006\u0002\u0010;J\u0016\u0010<\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010=\u001a\u00020\u0003H\u0016J\u000e\u0010\r\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0000H\u0016J\r\u0010>\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010?J\u0016\u0010@\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010A\u001a\u00020\tH\u0016J\u001e\u0010@\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010A\u001a\u00020\t2\u0006\u00106\u001a\u00020*H\u0017J\u0016\u0010B\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010C\u001a\u00020\u0019H\u0016J\u001e\u0010B\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010C\u001a\u00020\u00192\u0006\u00106\u001a\u00020*H\u0017J\u001c\u0010D\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u000c\u0010E\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u001bH\u0017J$\u0010D\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u000c\u0010E\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u001b2\u0006\u00106\u001a\u00020*H\u0017J\u000e\u0010F\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0000H\u0016J\u000e\u0010G\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0000H\u0016J\u001a\u0010H\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\n\u0010I\u001a\u00020J\"\u00020%H\u0016J\u000e\u0010K\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0000H\u0016J\u0018\u0010L\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0016J \u0010M\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0008\u0008\u0001\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u000e\u001a\u00020\u000fH\u0017J\u0016\u0010N\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\u001f\u001a\u00020 H\u0016J\u0016\u0010O\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010P\u001a\u00020(H\u0017J\u001e\u0010Q\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010+\u001a\u00020,2\u0006\u0010R\u001a\u00020.H\u0016J\u0016\u0010S\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010R\u001a\u00020.H\u0016J\u0016\u0010T\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010R\u001a\u00020.H\u0016R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u001c\u0018\u00010\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020 X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\"X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010#\u001a\n\u0012\u0004\u0012\u00020%\u0018\u00010$X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010&\u001a\u0008\u0012\u0004\u0012\u00020%0$X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\'\u001a\u0004\u0018\u00010(X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010)\u001a\u0004\u0018\u00010*X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010+\u001a\u0004\u0018\u00010,X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010-\u001a\u0004\u0018\u00010.X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010/\u001a\u0004\u0018\u00010.X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00100\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u00101\u001a\u0004\u0018\u00010.X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u00102\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006U"
    }
    d2 = {
        "Landroidx/room/RoomDatabase$Builder;",
        "T",
        "Landroidx/room/RoomDatabase;",
        "",
        "context",
        "Landroid/content/Context;",
        "klass",
        "Ljava/lang/Class;",
        "name",
        "",
        "(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V",
        "allowDestructiveMigrationOnDowngrade",
        "",
        "allowMainThreadQueries",
        "autoCloseTimeUnit",
        "Ljava/util/concurrent/TimeUnit;",
        "autoCloseTimeout",
        "",
        "autoMigrationSpecs",
        "",
        "Landroidx/room/migration/AutoMigrationSpec;",
        "callbacks",
        "Landroidx/room/RoomDatabase$Callback;",
        "copyFromAssetPath",
        "copyFromFile",
        "Ljava/io/File;",
        "copyFromInputStream",
        "Ljava/util/concurrent/Callable;",
        "Ljava/io/InputStream;",
        "factory",
        "Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;",
        "journalMode",
        "Landroidx/room/RoomDatabase$JournalMode;",
        "migrationContainer",
        "Landroidx/room/RoomDatabase$MigrationContainer;",
        "migrationStartAndEndVersions",
        "",
        "",
        "migrationsNotRequiredFrom",
        "multiInstanceInvalidationIntent",
        "Landroid/content/Intent;",
        "prepackagedDatabaseCallback",
        "Landroidx/room/RoomDatabase$PrepackagedDatabaseCallback;",
        "queryCallback",
        "Landroidx/room/RoomDatabase$QueryCallback;",
        "queryCallbackExecutor",
        "Ljava/util/concurrent/Executor;",
        "queryExecutor",
        "requireMigration",
        "transactionExecutor",
        "typeConverters",
        "addAutoMigrationSpec",
        "autoMigrationSpec",
        "addCallback",
        "callback",
        "addMigrations",
        "migrations",
        "",
        "Landroidx/room/migration/Migration;",
        "([Landroidx/room/migration/Migration;)Landroidx/room/RoomDatabase$Builder;",
        "addTypeConverter",
        "typeConverter",
        "build",
        "()Landroidx/room/RoomDatabase;",
        "createFromAsset",
        "databaseFilePath",
        "createFromFile",
        "databaseFile",
        "createFromInputStream",
        "inputStreamCallable",
        "enableMultiInstanceInvalidation",
        "fallbackToDestructiveMigration",
        "fallbackToDestructiveMigrationFrom",
        "startVersions",
        "",
        "fallbackToDestructiveMigrationOnDowngrade",
        "openHelperFactory",
        "setAutoCloseTimeout",
        "setJournalMode",
        "setMultiInstanceInvalidationServiceIntent",
        "invalidationServiceIntent",
        "setQueryCallback",
        "executor",
        "setQueryExecutor",
        "setTransactionExecutor",
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
.field private allowDestructiveMigrationOnDowngrade:Z

.field private allowMainThreadQueries:Z

.field private autoCloseTimeUnit:Ljava/util/concurrent/TimeUnit;

.field private autoCloseTimeout:J

.field private autoMigrationSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/room/migration/AutoMigrationSpec;",
            ">;"
        }
    .end annotation
.end field

.field private final callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/room/RoomDatabase$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private copyFromAssetPath:Ljava/lang/String;

.field private copyFromFile:Ljava/io/File;

.field private copyFromInputStream:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private factory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

.field private journalMode:Landroidx/room/RoomDatabase$JournalMode;

.field private final klass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final migrationContainer:Landroidx/room/RoomDatabase$MigrationContainer;

.field private migrationStartAndEndVersions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private migrationsNotRequiredFrom:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private multiInstanceInvalidationIntent:Landroid/content/Intent;

.field private final name:Ljava/lang/String;

.field private prepackagedDatabaseCallback:Landroidx/room/RoomDatabase$PrepackagedDatabaseCallback;

.field private queryCallback:Landroidx/room/RoomDatabase$QueryCallback;

.field private queryCallbackExecutor:Ljava/util/concurrent/Executor;

.field private queryExecutor:Ljava/util/concurrent/Executor;

.field private requireMigration:Z

.field private transactionExecutor:Ljava/util/concurrent/Executor;

.field private final typeConverters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "klass"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 686
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/RoomDatabase$Builder;->context:Landroid/content/Context;

    iput-object p2, p0, Landroidx/room/RoomDatabase$Builder;->klass:Ljava/lang/Class;

    iput-object p3, p0, Landroidx/room/RoomDatabase$Builder;->name:Ljava/lang/String;

    .line 692
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Landroidx/room/RoomDatabase$Builder;->callbacks:Ljava/util/List;

    .line 696
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Landroidx/room/RoomDatabase$Builder;->typeConverters:Ljava/util/List;

    .line 697
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Landroidx/room/RoomDatabase$Builder;->autoMigrationSpecs:Ljava/util/List;

    .line 704
    sget-object p1, Landroidx/room/RoomDatabase$JournalMode;->AUTOMATIC:Landroidx/room/RoomDatabase$JournalMode;

    iput-object p1, p0, Landroidx/room/RoomDatabase$Builder;->journalMode:Landroidx/room/RoomDatabase$JournalMode;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/room/RoomDatabase$Builder;->requireMigration:Z

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Landroidx/room/RoomDatabase$Builder;->autoCloseTimeout:J

    .line 714
    new-instance p1, Landroidx/room/RoomDatabase$MigrationContainer;

    invoke-direct {p1}, Landroidx/room/RoomDatabase$MigrationContainer;-><init>()V

    iput-object p1, p0, Landroidx/room/RoomDatabase$Builder;->migrationContainer:Landroidx/room/RoomDatabase$MigrationContainer;

    .line 715
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast p1, Ljava/util/Set;

    iput-object p1, p0, Landroidx/room/RoomDatabase$Builder;->migrationsNotRequiredFrom:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public addAutoMigrationSpec(Landroidx/room/migration/AutoMigrationSpec;)Landroidx/room/RoomDatabase$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/room/migration/AutoMigrationSpec;",
            ")",
            "Landroidx/room/RoomDatabase$Builder<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "autoMigrationSpec"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 953
    move-object v0, p0

    check-cast v0, Landroidx/room/RoomDatabase$Builder;

    iget-object v0, p0, Landroidx/room/RoomDatabase$Builder;->autoMigrationSpecs:Ljava/util/List;

    .line 954
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addCallback(Landroidx/room/RoomDatabase$Callback;)Landroidx/room/RoomDatabase$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/room/RoomDatabase$Callback;",
            ")",
            "Landroidx/room/RoomDatabase$Builder<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1157
    move-object v0, p0

    check-cast v0, Landroidx/room/RoomDatabase$Builder;

    iget-object v0, p0, Landroidx/room/RoomDatabase$Builder;->callbacks:Ljava/util/List;

    .line 1158
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public varargs addMigrations([Landroidx/room/migration/Migration;)Landroidx/room/RoomDatabase$Builder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroidx/room/migration/Migration;",
            ")",
            "Landroidx/room/RoomDatabase$Builder<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "migrations"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 934
    move-object v0, p0

    check-cast v0, Landroidx/room/RoomDatabase$Builder;

    iget-object v0, p0, Landroidx/room/RoomDatabase$Builder;->migrationStartAndEndVersions:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 936
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Landroidx/room/RoomDatabase$Builder;->migrationStartAndEndVersions:Ljava/util/Set;

    .line 938
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    iget-object v3, p0, Landroidx/room/RoomDatabase$Builder;->migrationStartAndEndVersions:Ljava/util/Set;

    .line 939
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v4, v2, Landroidx/room/migration/Migration;->startVersion:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Landroidx/room/RoomDatabase$Builder;->migrationStartAndEndVersions:Ljava/util/Set;

    .line 940
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v2, v2, Landroidx/room/migration/Migration;->endVersion:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/room/RoomDatabase$Builder;->migrationContainer:Landroidx/room/RoomDatabase$MigrationContainer;

    .line 942
    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/room/migration/Migration;

    invoke-virtual {v0, p1}, Landroidx/room/RoomDatabase$MigrationContainer;->addMigrations([Landroidx/room/migration/Migration;)V

    return-object p0
.end method

.method public addTypeConverter(Ljava/lang/Object;)Landroidx/room/RoomDatabase$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Landroidx/room/RoomDatabase$Builder<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "typeConverter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1190
    move-object v0, p0

    check-cast v0, Landroidx/room/RoomDatabase$Builder;

    iget-object v0, p0, Landroidx/room/RoomDatabase$Builder;->typeConverters:Ljava/util/List;

    .line 1191
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public allowMainThreadQueries()Landroidx/room/RoomDatabase$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/room/RoomDatabase$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 969
    move-object v0, p0

    check-cast v0, Landroidx/room/RoomDatabase$Builder;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/room/RoomDatabase$Builder;->allowMainThreadQueries:Z

    return-object p0
.end method

.method public build()Landroidx/room/RoomDatabase;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/room/RoomDatabase$Builder;->queryExecutor:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_0

    iget-object v2, v0, Landroidx/room/RoomDatabase$Builder;->transactionExecutor:Ljava/util/concurrent/Executor;

    if-nez v2, :cond_0

    .line 1246
    invoke-static {}, Landroidx/arch/core/executor/ArchTaskExecutor;->getIOThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iput-object v1, v0, Landroidx/room/RoomDatabase$Builder;->transactionExecutor:Ljava/util/concurrent/Executor;

    iput-object v1, v0, Landroidx/room/RoomDatabase$Builder;->queryExecutor:Ljava/util/concurrent/Executor;

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    iget-object v2, v0, Landroidx/room/RoomDatabase$Builder;->transactionExecutor:Ljava/util/concurrent/Executor;

    if-nez v2, :cond_1

    iput-object v1, v0, Landroidx/room/RoomDatabase$Builder;->transactionExecutor:Ljava/util/concurrent/Executor;

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    iget-object v1, v0, Landroidx/room/RoomDatabase$Builder;->transactionExecutor:Ljava/util/concurrent/Executor;

    iput-object v1, v0, Landroidx/room/RoomDatabase$Builder;->queryExecutor:Ljava/util/concurrent/Executor;

    :cond_2
    :goto_0
    iget-object v1, v0, Landroidx/room/RoomDatabase$Builder;->migrationStartAndEndVersions:Ljava/util/Set;

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    .line 1254
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    iget-object v4, v0, Landroidx/room/RoomDatabase$Builder;->migrationsNotRequiredFrom:Ljava/util/Set;

    .line 1255
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v2

    if-eqz v4, :cond_3

    goto :goto_1

    .line 1256
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Inconsistency detected. A Migration was supplied to addMigration(Migration... migrations) that has a start or end version equal to a start version supplied to fallbackToDestructiveMigrationFrom(int... startVersions). Start version: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1255
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    iget-object v1, v0, Landroidx/room/RoomDatabase$Builder;->factory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    if-nez v1, :cond_5

    .line 1266
    new-instance v1, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelperFactory;

    invoke-direct {v1}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelperFactory;-><init>()V

    check-cast v1, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    :cond_5
    const-string v3, "Required value was null."

    if-eqz v1, :cond_10

    iget-wide v4, v0, Landroidx/room/RoomDatabase$Builder;->autoCloseTimeout:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_9

    iget-object v4, v0, Landroidx/room/RoomDatabase$Builder;->name:Ljava/lang/String;

    if-eqz v4, :cond_8

    .line 1274
    new-instance v4, Landroidx/room/AutoCloser;

    iget-wide v5, v0, Landroidx/room/RoomDatabase$Builder;->autoCloseTimeout:J

    iget-object v7, v0, Landroidx/room/RoomDatabase$Builder;->autoCloseTimeUnit:Ljava/util/concurrent/TimeUnit;

    if-eqz v7, :cond_7

    iget-object v8, v0, Landroidx/room/RoomDatabase$Builder;->queryExecutor:Ljava/util/concurrent/Executor;

    if-eqz v8, :cond_6

    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/room/AutoCloser;-><init>(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/Executor;)V

    .line 1279
    new-instance v5, Landroidx/room/AutoClosingRoomOpenHelperFactory;

    invoke-direct {v5, v1, v4}, Landroidx/room/AutoClosingRoomOpenHelperFactory;-><init>(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;Landroidx/room/AutoCloser;)V

    move-object v1, v5

    check-cast v1, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    goto :goto_2

    .line 1277
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1276
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1271
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot create auto-closing database for an in-memory database."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    :goto_2
    iget-object v4, v0, Landroidx/room/RoomDatabase$Builder;->copyFromAssetPath:Ljava/lang/String;

    if-nez v4, :cond_a

    iget-object v5, v0, Landroidx/room/RoomDatabase$Builder;->copyFromFile:Ljava/io/File;

    if-nez v5, :cond_a

    iget-object v5, v0, Landroidx/room/RoomDatabase$Builder;->copyFromInputStream:Ljava/util/concurrent/Callable;

    if-eqz v5, :cond_11

    :cond_a
    iget-object v5, v0, Landroidx/room/RoomDatabase$Builder;->name:Ljava/lang/String;

    if-eqz v5, :cond_f

    const/4 v5, 0x0

    if-nez v4, :cond_b

    move v4, v5

    goto :goto_3

    :cond_b
    move v4, v2

    :goto_3
    iget-object v6, v0, Landroidx/room/RoomDatabase$Builder;->copyFromFile:Ljava/io/File;

    if-nez v6, :cond_c

    move v6, v5

    goto :goto_4

    :cond_c
    move v6, v2

    :goto_4
    iget-object v7, v0, Landroidx/room/RoomDatabase$Builder;->copyFromInputStream:Ljava/util/concurrent/Callable;

    if-nez v7, :cond_d

    goto :goto_5

    :cond_d
    move v5, v2

    :goto_5
    add-int/2addr v4, v6

    add-int/2addr v4, v5

    if-ne v4, v2, :cond_e

    .line 1305
    new-instance v2, Landroidx/room/SQLiteCopyOpenHelperFactory;

    iget-object v4, v0, Landroidx/room/RoomDatabase$Builder;->copyFromAssetPath:Ljava/lang/String;

    iget-object v5, v0, Landroidx/room/RoomDatabase$Builder;->copyFromFile:Ljava/io/File;

    iget-object v6, v0, Landroidx/room/RoomDatabase$Builder;->copyFromInputStream:Ljava/util/concurrent/Callable;

    invoke-direct {v2, v4, v5, v6, v1}, Landroidx/room/SQLiteCopyOpenHelperFactory;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/util/concurrent/Callable;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;)V

    move-object v1, v2

    check-cast v1, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    goto :goto_6

    .line 1299
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "More than one of createFromAsset(), createFromInputStream(), and createFromFile() were called on this Builder, but the database can only be created using one of the three configurations."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1289
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot create from asset or file for an in-memory database."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    const/4 v1, 0x0

    :cond_11
    :goto_6
    if-eqz v1, :cond_17

    iget-object v2, v0, Landroidx/room/RoomDatabase$Builder;->queryCallback:Landroidx/room/RoomDatabase$QueryCallback;

    if-eqz v2, :cond_14

    .line 1317
    new-instance v2, Landroidx/room/QueryInterceptorOpenHelperFactory;

    iget-object v4, v0, Landroidx/room/RoomDatabase$Builder;->queryCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v4, :cond_13

    iget-object v5, v0, Landroidx/room/RoomDatabase$Builder;->queryCallback:Landroidx/room/RoomDatabase$QueryCallback;

    if-eqz v5, :cond_12

    invoke-direct {v2, v1, v4, v5}, Landroidx/room/QueryInterceptorOpenHelperFactory;-><init>(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;Ljava/util/concurrent/Executor;Landroidx/room/RoomDatabase$QueryCallback;)V

    move-object v1, v2

    check-cast v1, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    goto :goto_7

    .line 1320
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1319
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    :goto_7
    move-object v5, v1

    .line 1326
    new-instance v1, Landroidx/room/DatabaseConfiguration;

    iget-object v4, v0, Landroidx/room/RoomDatabase$Builder;->context:Landroid/content/Context;

    iget-object v6, v0, Landroidx/room/RoomDatabase$Builder;->name:Ljava/lang/String;

    iget-object v7, v0, Landroidx/room/RoomDatabase$Builder;->migrationContainer:Landroidx/room/RoomDatabase$MigrationContainer;

    iget-object v8, v0, Landroidx/room/RoomDatabase$Builder;->callbacks:Ljava/util/List;

    iget-boolean v9, v0, Landroidx/room/RoomDatabase$Builder;->allowMainThreadQueries:Z

    iget-object v2, v0, Landroidx/room/RoomDatabase$Builder;->journalMode:Landroidx/room/RoomDatabase$JournalMode;

    .line 1333
    invoke-virtual {v2, v4}, Landroidx/room/RoomDatabase$JournalMode;->resolve$room_runtime_release(Landroid/content/Context;)Landroidx/room/RoomDatabase$JournalMode;

    move-result-object v10

    iget-object v11, v0, Landroidx/room/RoomDatabase$Builder;->queryExecutor:Ljava/util/concurrent/Executor;

    if-eqz v11, :cond_16

    iget-object v2, v0, Landroidx/room/RoomDatabase$Builder;->transactionExecutor:Ljava/util/concurrent/Executor;

    if-eqz v2, :cond_15

    iget-object v12, v0, Landroidx/room/RoomDatabase$Builder;->multiInstanceInvalidationIntent:Landroid/content/Intent;

    iget-boolean v13, v0, Landroidx/room/RoomDatabase$Builder;->requireMigration:Z

    iget-boolean v14, v0, Landroidx/room/RoomDatabase$Builder;->allowDestructiveMigrationOnDowngrade:Z

    iget-object v15, v0, Landroidx/room/RoomDatabase$Builder;->migrationsNotRequiredFrom:Ljava/util/Set;

    iget-object v3, v0, Landroidx/room/RoomDatabase$Builder;->copyFromAssetPath:Ljava/lang/String;

    move-object/from16 v16, v3

    iget-object v3, v0, Landroidx/room/RoomDatabase$Builder;->copyFromFile:Ljava/io/File;

    move-object/from16 v17, v3

    iget-object v3, v0, Landroidx/room/RoomDatabase$Builder;->copyFromInputStream:Ljava/util/concurrent/Callable;

    move-object/from16 v18, v3

    iget-object v3, v0, Landroidx/room/RoomDatabase$Builder;->prepackagedDatabaseCallback:Landroidx/room/RoomDatabase$PrepackagedDatabaseCallback;

    move-object/from16 v19, v3

    iget-object v3, v0, Landroidx/room/RoomDatabase$Builder;->typeConverters:Ljava/util/List;

    move-object/from16 v20, v3

    iget-object v3, v0, Landroidx/room/RoomDatabase$Builder;->autoMigrationSpecs:Ljava/util/List;

    move-object/from16 v21, v3

    move-object/from16 v22, v2

    move-object v2, v1

    move-object v3, v4

    move-object v4, v6

    move-object v6, v7

    move-object v7, v8

    move v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object/from16 v11, v22

    .line 1326
    invoke-direct/range {v2 .. v21}, Landroidx/room/DatabaseConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;Landroidx/room/RoomDatabase$MigrationContainer;Ljava/util/List;ZLandroidx/room/RoomDatabase$JournalMode;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroid/content/Intent;ZZLjava/util/Set;Ljava/lang/String;Ljava/io/File;Ljava/util/concurrent/Callable;Landroidx/room/RoomDatabase$PrepackagedDatabaseCallback;Ljava/util/List;Ljava/util/List;)V

    iget-object v0, v0, Landroidx/room/RoomDatabase$Builder;->klass:Ljava/lang/Class;

    const-string v2, "_Impl"

    .line 1347
    invoke-static {v0, v2}, Landroidx/room/Room;->getGeneratedImplementation(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/room/RoomDatabase;

    .line 1348
    invoke-virtual {v0, v1}, Landroidx/room/RoomDatabase;->init(Landroidx/room/DatabaseConfiguration;)V

    return-object v0

    .line 1335
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1334
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1315
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createFromAsset(Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/room/RoomDatabase$Builder<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "databaseFilePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 747
    move-object v0, p0

    check-cast v0, Landroidx/room/RoomDatabase$Builder;

    iput-object p1, p0, Landroidx/room/RoomDatabase$Builder;->copyFromAssetPath:Ljava/lang/String;

    return-object p0
.end method

.method public createFromAsset(Ljava/lang/String;Landroidx/room/RoomDatabase$PrepackagedDatabaseCallback;)Landroidx/room/RoomDatabase$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/room/RoomDatabase$PrepackagedDatabaseCallback;",
            ")",
            "Landroidx/room/RoomDatabase$Builder<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "databaseFilePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 776
    move-object v0, p0

    check-cast v0, Landroidx/room/RoomDatabase$Builder;

    iput-object p2, p0, Landroidx/room/RoomDatabase$Builder;->prepackagedDatabaseCallback:Landroidx/room/RoomDatabase$PrepackagedDatabaseCallback;

    iput-object p1, p0, Landroidx/room/RoomDatabase$Builder;->copyFromAssetPath:Ljava/lang/String;

    return-object p0
.end method

.method public createFromFile(Ljava/io/File;)Landroidx/room/RoomDatabase$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Landroidx/room/RoomDatabase$Builder<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "databaseFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 801
    move-object v0, p0

    check-cast v0, Landroidx/room/RoomDatabase$Builder;

    iput-object p1, p0, Landroidx/room/RoomDatabase$Builder;->copyFromFile:Ljava/io/File;

    return-object p0
.end method

.method public createFromFile(Ljava/io/File;Landroidx/room/RoomDatabase$PrepackagedDatabaseCallback;)Landroidx/room/RoomDatabase$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Landroidx/room/RoomDatabase$PrepackagedDatabaseCallback;",
            ")",
            "Landroidx/room/RoomDatabase$Builder<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "databaseFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 830
    move-object v0, p0

    check-cast v0, Landroidx/room/RoomDatabase$Builder;

    iput-object p2, p0, Landroidx/room/RoomDatabase$Builder;->prepackagedDatabaseCallback:Landroidx/room/RoomDatabase$PrepackagedDatabaseCallback;

    iput-object p1, p0, Landroidx/room/RoomDatabase$Builder;->copyFromFile:Ljava/io/File;

    return-object p0
.end method

.method public createFromInputStream(Ljava/util/concurrent/Callable;)Landroidx/room/RoomDatabase$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Ljava/io/InputStream;",
            ">;)",
            "Landroidx/room/RoomDatabase$Builder<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "inputStreamCallable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 864
    move-object v0, p0

    check-cast v0, Landroidx/room/RoomDatabase$Builder;

    iput-object p1, p0, Landroidx/room/RoomDatabase$Builder;->copyFromInputStream:Ljava/util/concurrent/Callable;

    return-object p0
.end method

.method public createFromInputStream(Ljava/util/concurrent/Callable;Landroidx/room/RoomDatabase$PrepackagedDatabaseCallback;)Landroidx/room/RoomDatabase$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Ljava/io/InputStream;",
            ">;",
            "Landroidx/room/RoomDatabase$PrepackagedDatabaseCallback;",
            ")",
            "Landroidx/room/RoomDatabase$Builder<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "inputStreamCallable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 899
    move-object v0, p0

    check-cast v0, Landroidx/room/RoomDatabase$Builder;

    iput-object p2, p0, Landroidx/room/RoomDatabase$Builder;->prepackagedDatabaseCallback:Landroidx/room/RoomDatabase$PrepackagedDatabaseCallback;

    iput-object p1, p0, Landroidx/room/RoomDatabase$Builder;->copyFromInputStream:Ljava/util/concurrent/Callable;

    return-object p0
.end method

.method public enableMultiInstanceInvalidation()Landroidx/room/RoomDatabase$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/room/RoomDatabase$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 1051
    move-object v0, p0

    check-cast v0, Landroidx/room/RoomDatabase$Builder;

    iget-object v0, p0, Landroidx/room/RoomDatabase$Builder;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1053
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Landroidx/room/RoomDatabase$Builder;->context:Landroid/content/Context;

    const-class v2, Landroidx/room/MultiInstanceInvalidationService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1055
    move-object v1, v0

    check-cast v1, Landroid/content/Intent;

    :goto_0
    iput-object v0, p0, Landroidx/room/RoomDatabase$Builder;->multiInstanceInvalidationIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public fallbackToDestructiveMigration()Landroidx/room/RoomDatabase$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/room/RoomDatabase$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 1106
    move-object v0, p0

    check-cast v0, Landroidx/room/RoomDatabase$Builder;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/room/RoomDatabase$Builder;->requireMigration:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/room/RoomDatabase$Builder;->allowDestructiveMigrationOnDowngrade:Z

    return-object p0
.end method

.method public varargs fallbackToDestructiveMigrationFrom([I)Landroidx/room/RoomDatabase$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Landroidx/room/RoomDatabase$Builder<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "startVersions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1145
    move-object v0, p0

    check-cast v0, Landroidx/room/RoomDatabase$Builder;

    .line 1146
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    iget-object v3, p0, Landroidx/room/RoomDatabase$Builder;->migrationsNotRequiredFrom:Ljava/util/Set;

    .line 1147
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public fallbackToDestructiveMigrationOnDowngrade()Landroidx/room/RoomDatabase$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/room/RoomDatabase$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 1119
    move-object v0, p0

    check-cast v0, Landroidx/room/RoomDatabase$Builder;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/room/RoomDatabase$Builder;->requireMigration:Z

    iput-boolean v0, p0, Landroidx/room/RoomDatabase$Builder;->allowDestructiveMigrationOnDowngrade:Z

    return-object p0
.end method

.method public openHelperFactory(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;)Landroidx/room/RoomDatabase$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;",
            ")",
            "Landroidx/room/RoomDatabase$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 911
    move-object v0, p0

    check-cast v0, Landroidx/room/RoomDatabase$Builder;

    iput-object p1, p0, Landroidx/room/RoomDatabase$Builder;->factory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    return-object p0
.end method

.method public setAutoCloseTimeout(JLjava/util/concurrent/TimeUnit;)Landroidx/room/RoomDatabase$Builder;
    .locals 2
    .annotation runtime Landroidx/room/ExperimentalRoomApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Landroidx/room/RoomDatabase$Builder<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "autoCloseTimeUnit"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1230
    move-object v0, p0

    check-cast v0, Landroidx/room/RoomDatabase$Builder;

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iput-wide p1, p0, Landroidx/room/RoomDatabase$Builder;->autoCloseTimeout:J

    iput-object p3, p0, Landroidx/room/RoomDatabase$Builder;->autoCloseTimeUnit:Ljava/util/concurrent/TimeUnit;

    return-object p0

    .line 1231
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "autoCloseTimeout must be >= 0"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setJournalMode(Landroidx/room/RoomDatabase$JournalMode;)Landroidx/room/RoomDatabase$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/room/RoomDatabase$JournalMode;",
            ")",
            "Landroidx/room/RoomDatabase$Builder<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "journalMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 987
    move-object v0, p0

    check-cast v0, Landroidx/room/RoomDatabase$Builder;

    iput-object p1, p0, Landroidx/room/RoomDatabase$Builder;->journalMode:Landroidx/room/RoomDatabase$JournalMode;

    return-object p0
.end method

.method public setMultiInstanceInvalidationServiceIntent(Landroid/content/Intent;)Landroidx/room/RoomDatabase$Builder;
    .locals 1
    .annotation runtime Landroidx/room/ExperimentalRoomApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Landroidx/room/RoomDatabase$Builder<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "invalidationServiceIntent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1079
    move-object v0, p0

    check-cast v0, Landroidx/room/RoomDatabase$Builder;

    iget-object v0, p0, Landroidx/room/RoomDatabase$Builder;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Landroidx/room/RoomDatabase$Builder;->multiInstanceInvalidationIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public setQueryCallback(Landroidx/room/RoomDatabase$QueryCallback;Ljava/util/concurrent/Executor;)Landroidx/room/RoomDatabase$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/room/RoomDatabase$QueryCallback;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Landroidx/room/RoomDatabase$Builder<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "queryCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1178
    move-object v0, p0

    check-cast v0, Landroidx/room/RoomDatabase$Builder;

    iput-object p1, p0, Landroidx/room/RoomDatabase$Builder;->queryCallback:Landroidx/room/RoomDatabase$QueryCallback;

    iput-object p2, p0, Landroidx/room/RoomDatabase$Builder;->queryCallbackExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public setQueryExecutor(Ljava/util/concurrent/Executor;)Landroidx/room/RoomDatabase$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Landroidx/room/RoomDatabase$Builder<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "executor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1009
    move-object v0, p0

    check-cast v0, Landroidx/room/RoomDatabase$Builder;

    iput-object p1, p0, Landroidx/room/RoomDatabase$Builder;->queryExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public setTransactionExecutor(Ljava/util/concurrent/Executor;)Landroidx/room/RoomDatabase$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Landroidx/room/RoomDatabase$Builder<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "executor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1033
    move-object v0, p0

    check-cast v0, Landroidx/room/RoomDatabase$Builder;

    iput-object p1, p0, Landroidx/room/RoomDatabase$Builder;->transactionExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method
