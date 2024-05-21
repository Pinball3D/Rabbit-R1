.class public final Landroidx/sqlite/db/framework/FrameworkSQLiteStatement;
.super Landroidx/sqlite/db/framework/FrameworkSQLiteProgram;
.source "FrameworkSQLiteStatement.kt"

# interfaces
.implements Landroidx/sqlite/db/SupportSQLiteStatement;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\u0008\u0010\n\u001a\u00020\u000bH\u0016J\u0008\u0010\u000c\u001a\u00020\tH\u0016J\n\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Landroidx/sqlite/db/framework/FrameworkSQLiteStatement;",
        "Landroidx/sqlite/db/framework/FrameworkSQLiteProgram;",
        "Landroidx/sqlite/db/SupportSQLiteStatement;",
        "delegate",
        "Landroid/database/sqlite/SQLiteStatement;",
        "(Landroid/database/sqlite/SQLiteStatement;)V",
        "execute",
        "",
        "executeInsert",
        "",
        "executeUpdateDelete",
        "",
        "simpleQueryForLong",
        "simpleQueryForString",
        "",
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


# instance fields
.field private final delegate:Landroid/database/sqlite/SQLiteStatement;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteStatement;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    move-object v0, p1

    check-cast v0, Landroid/database/sqlite/SQLiteProgram;

    .line 30
    invoke-direct {p0, v0}, Landroidx/sqlite/db/framework/FrameworkSQLiteProgram;-><init>(Landroid/database/sqlite/SQLiteProgram;)V

    iput-object p1, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteStatement;->delegate:Landroid/database/sqlite/SQLiteStatement;

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 0

    iget-object p0, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteStatement;->delegate:Landroid/database/sqlite/SQLiteStatement;

    .line 34
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    return-void
.end method

.method public executeInsert()J
    .locals 2

    iget-object p0, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteStatement;->delegate:Landroid/database/sqlite/SQLiteStatement;

    .line 42
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v0

    return-wide v0
.end method

.method public executeUpdateDelete()I
    .locals 0

    iget-object p0, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteStatement;->delegate:Landroid/database/sqlite/SQLiteStatement;

    .line 38
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    move-result p0

    return p0
.end method

.method public simpleQueryForLong()J
    .locals 2

    iget-object p0, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteStatement;->delegate:Landroid/database/sqlite/SQLiteStatement;

    .line 46
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public simpleQueryForString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteStatement;->delegate:Landroid/database/sqlite/SQLiteStatement;

    .line 50
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
