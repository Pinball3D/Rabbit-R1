.class public interface abstract Landroidx/media3/database/DatabaseProvider;
.super Ljava/lang/Object;
.source "DatabaseProvider.java"


# static fields
.field public static final TABLE_PREFIX:Ljava/lang/String; = "ExoPlayer"


# virtual methods
.method public abstract getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
.end method

.method public abstract getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
.end method
