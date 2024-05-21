.class public final Landroidx/work/impl/WorkDatabase$Companion;
.super Ljava/lang/Object;
.source "WorkDatabase.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/WorkDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J(\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0007\u00a8\u0006\r"
    }
    d2 = {
        "Landroidx/work/impl/WorkDatabase$Companion;",
        "",
        "()V",
        "create",
        "Landroidx/work/impl/WorkDatabase;",
        "context",
        "Landroid/content/Context;",
        "queryExecutor",
        "Ljava/util/concurrent/Executor;",
        "clock",
        "Landroidx/work/Clock;",
        "useTestDatabase",
        "",
        "work-runtime_release"
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
.method public static synthetic $r8$lambda$ZkS5S0p_73DOI66Tm39UHOpqbt0(Landroid/content/Context;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 0

    invoke-static {p0, p1}, Landroidx/work/impl/WorkDatabase$Companion;->create$lambda$0(Landroid/content/Context;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>()V
    .locals 0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/work/impl/WorkDatabase$Companion;-><init>()V

    return-void
.end method

.method private static final create$lambda$0(Landroid/content/Context;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 1

    const-string v0, "$context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    sget-object v0, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->Companion:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Companion;

    invoke-virtual {v0, p0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Companion;->builder(Landroid/content/Context;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object p0

    .line 142
    iget-object v0, p1, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->name(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v0

    .line 143
    iget-object p1, p1, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->callback:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

    invoke-virtual {v0, p1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->callback(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object p1

    const/4 v0, 0x1

    .line 144
    invoke-virtual {p1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->noBackupDirectory(Z)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object p1

    .line 145
    invoke-virtual {p1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->allowDataLossOnRecovery(Z)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    .line 146
    new-instance p1, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelperFactory;

    invoke-direct {p1}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelperFactory;-><init>()V

    invoke-virtual {p0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->build()Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelperFactory;->create(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final create(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroidx/work/Clock;Z)Landroidx/work/impl/WorkDatabase;
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "queryExecutor"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "clock"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    .line 136
    const-class p0, Landroidx/work/impl/WorkDatabase;

    invoke-static {p1, p0}, Landroidx/room/Room;->inMemoryDatabaseBuilder(Landroid/content/Context;Ljava/lang/Class;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p0

    .line 137
    invoke-virtual {p0}, Landroidx/room/RoomDatabase$Builder;->allowMainThreadQueries()Landroidx/room/RoomDatabase$Builder;

    move-result-object p0

    goto :goto_0

    .line 139
    :cond_0
    const-class p0, Landroidx/work/impl/WorkDatabase;

    const-string p4, "androidx.work.workdb"

    invoke-static {p1, p0, p4}, Landroidx/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p0

    .line 140
    new-instance p4, Landroidx/work/impl/WorkDatabase$Companion$$ExternalSyntheticLambda0;

    invoke-direct {p4, p1}, Landroidx/work/impl/WorkDatabase$Companion$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p4}, Landroidx/room/RoomDatabase$Builder;->openHelperFactory(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p0

    .line 149
    :goto_0
    invoke-virtual {p0, p2}, Landroidx/room/RoomDatabase$Builder;->setQueryExecutor(Ljava/util/concurrent/Executor;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p0

    .line 150
    new-instance p2, Landroidx/work/impl/CleanupCallback;

    invoke-direct {p2, p3}, Landroidx/work/impl/CleanupCallback;-><init>(Landroidx/work/Clock;)V

    check-cast p2, Landroidx/room/RoomDatabase$Callback;

    invoke-virtual {p0, p2}, Landroidx/room/RoomDatabase$Builder;->addCallback(Landroidx/room/RoomDatabase$Callback;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p0

    const/4 p2, 0x1

    new-array p3, p2, [Landroidx/room/migration/Migration;

    .line 151
    sget-object p4, Landroidx/work/impl/Migration_1_2;->INSTANCE:Landroidx/work/impl/Migration_1_2;

    const/4 v0, 0x0

    aput-object p4, p3, v0

    invoke-virtual {p0, p3}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p0

    new-array p3, p2, [Landroidx/room/migration/Migration;

    .line 152
    new-instance p4, Landroidx/work/impl/RescheduleMigration;

    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-direct {p4, p1, v1, v2}, Landroidx/work/impl/RescheduleMigration;-><init>(Landroid/content/Context;II)V

    aput-object p4, p3, v0

    invoke-virtual {p0, p3}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p0

    new-array p3, p2, [Landroidx/room/migration/Migration;

    .line 153
    sget-object p4, Landroidx/work/impl/Migration_3_4;->INSTANCE:Landroidx/work/impl/Migration_3_4;

    aput-object p4, p3, v0

    invoke-virtual {p0, p3}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p0

    new-array p3, p2, [Landroidx/room/migration/Migration;

    .line 154
    sget-object p4, Landroidx/work/impl/Migration_4_5;->INSTANCE:Landroidx/work/impl/Migration_4_5;

    aput-object p4, p3, v0

    invoke-virtual {p0, p3}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p0

    new-array p3, p2, [Landroidx/room/migration/Migration;

    .line 155
    new-instance p4, Landroidx/work/impl/RescheduleMigration;

    const/4 v1, 0x5

    const/4 v2, 0x6

    invoke-direct {p4, p1, v1, v2}, Landroidx/work/impl/RescheduleMigration;-><init>(Landroid/content/Context;II)V

    aput-object p4, p3, v0

    invoke-virtual {p0, p3}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p0

    new-array p3, p2, [Landroidx/room/migration/Migration;

    .line 156
    sget-object p4, Landroidx/work/impl/Migration_6_7;->INSTANCE:Landroidx/work/impl/Migration_6_7;

    aput-object p4, p3, v0

    invoke-virtual {p0, p3}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p0

    new-array p3, p2, [Landroidx/room/migration/Migration;

    .line 157
    sget-object p4, Landroidx/work/impl/Migration_7_8;->INSTANCE:Landroidx/work/impl/Migration_7_8;

    aput-object p4, p3, v0

    invoke-virtual {p0, p3}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p0

    new-array p3, p2, [Landroidx/room/migration/Migration;

    .line 158
    sget-object p4, Landroidx/work/impl/Migration_8_9;->INSTANCE:Landroidx/work/impl/Migration_8_9;

    aput-object p4, p3, v0

    invoke-virtual {p0, p3}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p0

    new-array p3, p2, [Landroidx/room/migration/Migration;

    .line 159
    new-instance p4, Landroidx/work/impl/WorkMigration9To10;

    invoke-direct {p4, p1}, Landroidx/work/impl/WorkMigration9To10;-><init>(Landroid/content/Context;)V

    aput-object p4, p3, v0

    invoke-virtual {p0, p3}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p0

    new-array p3, p2, [Landroidx/room/migration/Migration;

    .line 160
    new-instance p4, Landroidx/work/impl/RescheduleMigration;

    const/16 v1, 0xa

    const/16 v2, 0xb

    invoke-direct {p4, p1, v1, v2}, Landroidx/work/impl/RescheduleMigration;-><init>(Landroid/content/Context;II)V

    aput-object p4, p3, v0

    invoke-virtual {p0, p3}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p0

    new-array p1, p2, [Landroidx/room/migration/Migration;

    .line 161
    sget-object p3, Landroidx/work/impl/Migration_11_12;->INSTANCE:Landroidx/work/impl/Migration_11_12;

    aput-object p3, p1, v0

    invoke-virtual {p0, p1}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p0

    new-array p1, p2, [Landroidx/room/migration/Migration;

    .line 162
    sget-object p3, Landroidx/work/impl/Migration_12_13;->INSTANCE:Landroidx/work/impl/Migration_12_13;

    aput-object p3, p1, v0

    invoke-virtual {p0, p1}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p0

    new-array p1, p2, [Landroidx/room/migration/Migration;

    .line 163
    sget-object p3, Landroidx/work/impl/Migration_15_16;->INSTANCE:Landroidx/work/impl/Migration_15_16;

    aput-object p3, p1, v0

    invoke-virtual {p0, p1}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p0

    new-array p1, p2, [Landroidx/room/migration/Migration;

    .line 164
    sget-object p2, Landroidx/work/impl/Migration_16_17;->INSTANCE:Landroidx/work/impl/Migration_16_17;

    aput-object p2, p1, v0

    invoke-virtual {p0, p1}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p0

    .line 165
    invoke-virtual {p0}, Landroidx/room/RoomDatabase$Builder;->fallbackToDestructiveMigration()Landroidx/room/RoomDatabase$Builder;

    move-result-object p0

    .line 166
    invoke-virtual {p0}, Landroidx/room/RoomDatabase$Builder;->build()Landroidx/room/RoomDatabase;

    move-result-object p0

    check-cast p0, Landroidx/work/impl/WorkDatabase;

    return-object p0
.end method
