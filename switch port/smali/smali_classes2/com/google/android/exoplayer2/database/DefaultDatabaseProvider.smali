.class public final Lcom/google/android/exoplayer2/database/DefaultDatabaseProvider;
.super Ljava/lang/Object;
.source "DefaultDatabaseProvider.java"

# interfaces
.implements Lcom/google/android/exoplayer2/database/DatabaseProvider;


# instance fields
.field private final sqliteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/database/DefaultDatabaseProvider;->sqliteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    return-void
.end method


# virtual methods
.method public getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/database/DefaultDatabaseProvider;->sqliteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 40
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    return-object p0
.end method

.method public getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/database/DefaultDatabaseProvider;->sqliteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 35
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    return-object p0
.end method
