.class public final Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelperFactory;
.super Ljava/lang/Object;
.source "FrameworkSQLiteOpenHelperFactory.kt"

# interfaces
.implements Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelperFactory;",
        "Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;",
        "()V",
        "create",
        "Landroidx/sqlite/db/SupportSQLiteOpenHelper;",
        "configuration",
        "Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;",
        "sqlite-framework_release"
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
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 6

    const-string p0, "configuration"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;

    .line 29
    iget-object v1, p1, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->context:Landroid/content/Context;

    .line 30
    iget-object v2, p1, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->name:Ljava/lang/String;

    .line 31
    iget-object v3, p1, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->callback:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

    .line 32
    iget-boolean v4, p1, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->useNoBackupDirectory:Z

    .line 33
    iget-boolean v5, p1, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->allowDataLossOnRecovery:Z

    move-object v0, p0

    .line 28
    invoke-direct/range {v0 .. v5}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;ZZ)V

    check-cast p0, Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    return-object p0
.end method
