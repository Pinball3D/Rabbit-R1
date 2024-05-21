.class public abstract Landroidx/work/impl/WorkDatabase;
.super Landroidx/room/RoomDatabase;
.source "WorkDatabase.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/WorkDatabase$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\'\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H&J\u0008\u0010\u0005\u001a\u00020\u0006H&J\u0008\u0010\u0007\u001a\u00020\u0008H&J\u0008\u0010\t\u001a\u00020\nH&J\u0008\u0010\u000b\u001a\u00020\u000cH&J\u0008\u0010\r\u001a\u00020\u000eH&J\u0008\u0010\u000f\u001a\u00020\u0010H&J\u0008\u0010\u0011\u001a\u00020\u0012H&\u00a8\u0006\u0014"
    }
    d2 = {
        "Landroidx/work/impl/WorkDatabase;",
        "Landroidx/room/RoomDatabase;",
        "()V",
        "dependencyDao",
        "Landroidx/work/impl/model/DependencyDao;",
        "preferenceDao",
        "Landroidx/work/impl/model/PreferenceDao;",
        "rawWorkInfoDao",
        "Landroidx/work/impl/model/RawWorkInfoDao;",
        "systemIdInfoDao",
        "Landroidx/work/impl/model/SystemIdInfoDao;",
        "workNameDao",
        "Landroidx/work/impl/model/WorkNameDao;",
        "workProgressDao",
        "Landroidx/work/impl/model/WorkProgressDao;",
        "workSpecDao",
        "Landroidx/work/impl/model/WorkSpecDao;",
        "workTagDao",
        "Landroidx/work/impl/model/WorkTagDao;",
        "Companion",
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


# static fields
.field public static final Companion:Landroidx/work/impl/WorkDatabase$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/work/impl/WorkDatabase$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/work/impl/WorkDatabase$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/work/impl/WorkDatabase;->Companion:Landroidx/work/impl/WorkDatabase$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    return-void
.end method

.method public static final create(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroidx/work/Clock;Z)Landroidx/work/impl/WorkDatabase;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/work/impl/WorkDatabase;->Companion:Landroidx/work/impl/WorkDatabase$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/work/impl/WorkDatabase$Companion;->create(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroidx/work/Clock;Z)Landroidx/work/impl/WorkDatabase;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract dependencyDao()Landroidx/work/impl/model/DependencyDao;
.end method

.method public abstract preferenceDao()Landroidx/work/impl/model/PreferenceDao;
.end method

.method public abstract rawWorkInfoDao()Landroidx/work/impl/model/RawWorkInfoDao;
.end method

.method public abstract systemIdInfoDao()Landroidx/work/impl/model/SystemIdInfoDao;
.end method

.method public abstract workNameDao()Landroidx/work/impl/model/WorkNameDao;
.end method

.method public abstract workProgressDao()Landroidx/work/impl/model/WorkProgressDao;
.end method

.method public abstract workSpecDao()Landroidx/work/impl/model/WorkSpecDao;
.end method

.method public abstract workTagDao()Landroidx/work/impl/model/WorkTagDao;
.end method
