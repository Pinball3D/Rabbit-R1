.class public final Landroidx/media3/database/DefaultDatabaseProvider;
.super Ljava/lang/Object;
.source "DefaultDatabaseProvider.java"

# interfaces
.implements Landroidx/media3/database/DatabaseProvider;


# instance fields
.field private final sqliteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/database/DefaultDatabaseProvider;->sqliteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    return-void
.end method


# virtual methods
.method public getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 0

    iget-object p0, p0, Landroidx/media3/database/DefaultDatabaseProvider;->sqliteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 42
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    return-object p0
.end method

.method public getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 0

    iget-object p0, p0, Landroidx/media3/database/DefaultDatabaseProvider;->sqliteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 37
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    return-object p0
.end method
