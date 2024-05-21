.class public final Lcom/google/android/exoplayer2/util/AtomicFile;
.super Ljava/lang/Object;
.source "AtomicFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/util/AtomicFile$AtomicFileOutputStream;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AtomicFile"


# instance fields
.field private final backupName:Ljava/io/File;

.field private final baseName:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/util/AtomicFile;->baseName:Ljava/io/File;

    .line 51
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ".bak"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/util/AtomicFile;->backupName:Ljava/io/File;

    return-void
.end method

.method private restoreBackup()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/util/AtomicFile;->backupName:Ljava/io/File;

    .line 151
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/util/AtomicFile;->baseName:Ljava/io/File;

    .line 152
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iget-object v0, p0, Lcom/google/android/exoplayer2/util/AtomicFile;->backupName:Ljava/io/File;

    iget-object p0, p0, Lcom/google/android/exoplayer2/util/AtomicFile;->baseName:Ljava/io/File;

    .line 153
    invoke-virtual {v0, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public delete()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/util/AtomicFile;->baseName:Ljava/io/File;

    .line 61
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iget-object p0, p0, Lcom/google/android/exoplayer2/util/AtomicFile;->backupName:Ljava/io/File;

    .line 62
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public endWrite(Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/util/AtomicFile;->backupName:Ljava/io/File;

    .line 134
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public exists()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/util/AtomicFile;->baseName:Ljava/io/File;

    .line 56
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/google/android/exoplayer2/util/AtomicFile;->backupName:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public openRead()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 146
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/AtomicFile;->restoreBackup()V

    .line 147
    new-instance v0, Ljava/io/FileInputStream;

    iget-object p0, p0, Lcom/google/android/exoplayer2/util/AtomicFile;->baseName:Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public startWrite()Ljava/io/OutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/util/AtomicFile;->baseName:Ljava/io/File;

    .line 95
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/util/AtomicFile;->backupName:Ljava/io/File;

    .line 96
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/util/AtomicFile;->baseName:Ljava/io/File;

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/AtomicFile;->backupName:Ljava/io/File;

    .line 97
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Couldn\'t rename file "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/AtomicFile;->baseName:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to backup file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/AtomicFile;->backupName:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AtomicFile"

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/AtomicFile;->baseName:Ljava/io/File;

    .line 101
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 106
    :cond_1
    :goto_0
    :try_start_0
    new-instance v0, Lcom/google/android/exoplayer2/util/AtomicFile$AtomicFileOutputStream;

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/AtomicFile;->baseName:Ljava/io/File;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/AtomicFile$AtomicFileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/AtomicFile;->baseName:Ljava/io/File;

    .line 108
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    const-string v2, "Couldn\'t create "

    if-eqz v1, :cond_2

    .line 109
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 114
    :try_start_1
    new-instance v0, Lcom/google/android/exoplayer2/util/AtomicFile$AtomicFileOutputStream;

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/AtomicFile;->baseName:Ljava/io/File;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/AtomicFile$AtomicFileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-object v0

    :catch_1
    move-exception v0

    .line 116
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/exoplayer2/util/AtomicFile;->baseName:Ljava/io/File;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 110
    :cond_2
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/exoplayer2/util/AtomicFile;->baseName:Ljava/io/File;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
