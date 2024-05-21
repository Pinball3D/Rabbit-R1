.class public interface abstract Landroidx/sqlite/db/SupportSQLiteStatement;
.super Ljava/lang/Object;
.source "SupportSQLiteStatement.kt"

# interfaces
.implements Landroidx/sqlite/db/SupportSQLiteProgram;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0008\u0010\u0004\u001a\u00020\u0005H&J\u0008\u0010\u0006\u001a\u00020\u0007H&J\u0008\u0010\u0008\u001a\u00020\u0005H&J\n\u0010\t\u001a\u0004\u0018\u00010\nH&\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u000b\u00c0\u0006\u0001"
    }
    d2 = {
        "Landroidx/sqlite/db/SupportSQLiteStatement;",
        "Landroidx/sqlite/db/SupportSQLiteProgram;",
        "execute",
        "",
        "executeInsert",
        "",
        "executeUpdateDelete",
        "",
        "simpleQueryForLong",
        "simpleQueryForString",
        "",
        "sqlite_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract execute()V
.end method

.method public abstract executeInsert()J
.end method

.method public abstract executeUpdateDelete()I
.end method

.method public abstract simpleQueryForLong()J
.end method

.method public abstract simpleQueryForString()Ljava/lang/String;
.end method
