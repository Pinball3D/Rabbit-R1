.class public interface abstract Lcom/google/android/exoplayer2/database/DatabaseProvider;
.super Ljava/lang/Object;
.source "DatabaseProvider.java"


# static fields
.field public static final TABLE_PREFIX:Ljava/lang/String; = "ExoPlayer"


# virtual methods
.method public abstract getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
.end method

.method public abstract getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
.end method
