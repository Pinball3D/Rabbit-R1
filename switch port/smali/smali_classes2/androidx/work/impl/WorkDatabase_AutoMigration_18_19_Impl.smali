.class Landroidx/work/impl/WorkDatabase_AutoMigration_18_19_Impl;
.super Landroidx/room/migration/Migration;
.source "WorkDatabase_AutoMigration_18_19_Impl.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x12

    const/16 v1, 0x13

    .line 14
    invoke-direct {p0, v0, v1}, Landroidx/room/migration/Migration;-><init>(II)V

    return-void
.end method


# virtual methods
.method public migrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "database"
        }
    .end annotation

    const-string p0, "ALTER TABLE `WorkSpec` ADD COLUMN `stop_reason` INTEGER NOT NULL DEFAULT -256"

    .line 19
    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
