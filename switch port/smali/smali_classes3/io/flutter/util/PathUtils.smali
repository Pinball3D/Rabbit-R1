.class public final Lio/flutter/util/PathUtils;
.super Ljava/lang/Object;
.source "PathUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCacheDirectory(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getCodeCacheDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    .line 49
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lio/flutter/util/PathUtils;->getDataDirPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "cache"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getDataDirPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDataDirectory(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "flutter"

    const/4 v1, 0x0

    .line 25
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lio/flutter/util/PathUtils;->getDataDirPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "app_flutter"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFilesDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lio/flutter/util/PathUtils;->getDataDirPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "files"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
