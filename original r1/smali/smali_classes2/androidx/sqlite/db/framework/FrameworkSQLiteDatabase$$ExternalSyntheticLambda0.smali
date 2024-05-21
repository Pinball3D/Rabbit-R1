.class public final synthetic Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/database/sqlite/SQLiteDatabase$CursorFactory;


# instance fields
.field public final synthetic f$0:Landroidx/sqlite/db/SupportSQLiteQuery;


# direct methods
.method public synthetic constructor <init>(Landroidx/sqlite/db/SupportSQLiteQuery;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase$$ExternalSyntheticLambda0;->f$0:Landroidx/sqlite/db/SupportSQLiteQuery;

    return-void
.end method


# virtual methods
.method public final newCursor(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)Landroid/database/Cursor;
    .locals 0

    iget-object p0, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase$$ExternalSyntheticLambda0;->f$0:Landroidx/sqlite/db/SupportSQLiteQuery;

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->$r8$lambda$BFGJjdMOCDz5XPIMAR1G27bXFjU(Landroidx/sqlite/db/SupportSQLiteQuery;Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method
