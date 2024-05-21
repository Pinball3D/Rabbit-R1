.class Lio/flutter/embedding/engine/loader/ResourceExtractor$ExtractTask;
.super Landroid/os/AsyncTask;
.source "ResourceExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/loader/ResourceExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExtractTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAssetManager:Landroid/content/res/AssetManager;

.field private final mDataDirPath:Ljava/lang/String;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mPackageName:Ljava/lang/String;

.field private final mResources:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/HashSet;Ljava/lang/String;Landroid/content/pm/PackageManager;Landroid/content/res/AssetManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageManager;",
            "Landroid/content/res/AssetManager;",
            ")V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lio/flutter/embedding/engine/loader/ResourceExtractor$ExtractTask;->mDataDirPath:Ljava/lang/String;

    iput-object p2, p0, Lio/flutter/embedding/engine/loader/ResourceExtractor$ExtractTask;->mResources:Ljava/util/HashSet;

    iput-object p5, p0, Lio/flutter/embedding/engine/loader/ResourceExtractor$ExtractTask;->mAssetManager:Landroid/content/res/AssetManager;

    iput-object p3, p0, Lio/flutter/embedding/engine/loader/ResourceExtractor$ExtractTask;->mPackageName:Ljava/lang/String;

    iput-object p4, p0, Lio/flutter/embedding/engine/loader/ResourceExtractor$ExtractTask;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method private extractAPK(Ljava/io/File;)Z
    .locals 4

    iget-object v0, p0, Lio/flutter/embedding/engine/loader/ResourceExtractor$ExtractTask;->mResources:Ljava/util/HashSet;

    .line 91
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 93
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "assets/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 95
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 98
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 99
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    :cond_2
    iget-object v3, p0, Lio/flutter/embedding/engine/loader/ResourceExtractor$ExtractTask;->mAssetManager:Landroid/content/res/AssetManager;

    .line 102
    invoke-virtual {v3, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 103
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 104
    :try_start_2
    invoke-static {v1, v3}, Lio/flutter/embedding/engine/loader/ResourceExtractor;->access$200(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 105
    :try_start_3
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 102
    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_6
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v2

    if-eqz v1, :cond_3

    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v1

    :try_start_8
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw v2
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    :catch_1
    move-exception p1

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception unpacking resources: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ResourceExtractor"

    invoke-static {v0, p1}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lio/flutter/embedding/engine/loader/ResourceExtractor$ExtractTask;->mDataDirPath:Ljava/lang/String;

    iget-object p0, p0, Lio/flutter/embedding/engine/loader/ResourceExtractor$ExtractTask;->mResources:Ljava/util/HashSet;

    .line 114
    invoke-static {p1, p0}, Lio/flutter/embedding/engine/loader/ResourceExtractor;->access$100(Ljava/lang/String;Ljava/util/HashSet;)V

    const/4 p0, 0x0

    return p0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lio/flutter/embedding/engine/loader/ResourceExtractor$ExtractTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    .line 63
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lio/flutter/embedding/engine/loader/ResourceExtractor$ExtractTask;->mDataDirPath:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lio/flutter/embedding/engine/loader/ResourceExtractor$ExtractTask;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lio/flutter/embedding/engine/loader/ResourceExtractor$ExtractTask;->mPackageName:Ljava/lang/String;

    .line 65
    invoke-static {p1, v0, v1}, Lio/flutter/embedding/engine/loader/ResourceExtractor;->access$000(Ljava/io/File;Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p0, Lio/flutter/embedding/engine/loader/ResourceExtractor$ExtractTask;->mDataDirPath:Ljava/lang/String;

    iget-object v3, p0, Lio/flutter/embedding/engine/loader/ResourceExtractor$ExtractTask;->mResources:Ljava/util/HashSet;

    .line 70
    invoke-static {v2, v3}, Lio/flutter/embedding/engine/loader/ResourceExtractor;->access$100(Ljava/lang/String;Ljava/util/HashSet;)V

    .line 72
    invoke-direct {p0, p1}, Lio/flutter/embedding/engine/loader/ResourceExtractor$ExtractTask;->extractAPK(Ljava/io/File;)Z

    move-result p0

    if-nez p0, :cond_1

    return-object v1

    :cond_1
    if-eqz v0, :cond_2

    .line 78
    :try_start_0
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "ResourceExtractor"

    const-string p1, "Failed to write resource timestamp"

    .line 80
    invoke-static {p0, p1}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-object v1
.end method
