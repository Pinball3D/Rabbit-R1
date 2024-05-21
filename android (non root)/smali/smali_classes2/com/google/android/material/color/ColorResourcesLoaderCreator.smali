.class final Lcom/google/android/material/color/ColorResourcesLoaderCreator;
.super Ljava/lang/Object;
.source "ColorResourcesLoaderCreator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ColorResLoaderCreator"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static create(Landroid/content/Context;Ljava/util/Map;)Landroid/content/res/loader/ResourcesLoader;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/content/res/loader/ResourcesLoader;"
        }
    .end annotation

    const-string v0, "ColorResLoaderCreator"

    const-string v1, "Table created, length: "

    const/4 v2, 0x0

    .line 46
    :try_start_0
    invoke-static {p0, p1}, Lcom/google/android/material/color/ColorResourcesTableCreator;->create(Landroid/content/Context;Ljava/util/Map;)[B

    move-result-object p0

    .line 47
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, p0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    array-length p1, p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    return-object v2

    :cond_0
    :try_start_1
    const-string p1, "temp.arsc"

    const/4 v1, 0x0

    .line 53
    invoke-static {p1, v1}, Landroid/system/Os;->memfd_create(Ljava/lang/String;I)Ljava/io/FileDescriptor;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    if-nez p1, :cond_2

    :try_start_2
    const-string p0, "Cannot create memory file descriptor."

    .line 56
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    if-eqz p1, :cond_1

    .line 72
    :try_start_3
    invoke-static {p1}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    return-object v2

    .line 60
    :cond_2
    :try_start_4
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 61
    :try_start_5
    invoke-virtual {v1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 63
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 64
    :try_start_6
    new-instance v3, Landroid/content/res/loader/ResourcesLoader;

    invoke-direct {v3}, Landroid/content/res/loader/ResourcesLoader;-><init>()V

    .line 66
    invoke-static {p0, v2}, Landroid/content/res/loader/ResourcesProvider;->loadFromTable(Landroid/os/ParcelFileDescriptor;Landroid/content/res/loader/AssetsProvider;)Landroid/content/res/loader/ResourcesProvider;

    move-result-object v4

    .line 65
    invoke-virtual {v3, v4}, Landroid/content/res/loader/ResourcesLoader;->addProvider(Landroid/content/res/loader/ResourcesProvider;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz p0, :cond_3

    .line 68
    :try_start_7
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 69
    :cond_3
    :try_start_8
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    if-eqz p1, :cond_4

    .line 72
    :try_start_9
    invoke-static {p1}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    :cond_4
    return-object v3

    :catchall_0
    move-exception v3

    if-eqz p0, :cond_5

    .line 63
    :try_start_a
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_b
    invoke-virtual {v3, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_0
    throw v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :catchall_2
    move-exception p0

    .line 60
    :try_start_c
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v1

    :try_start_d
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :catchall_4
    move-exception p0

    goto :goto_2

    :catchall_5
    move-exception p0

    move-object p1, v2

    :goto_2
    if-eqz p1, :cond_6

    .line 72
    :try_start_e
    invoke-static {p1}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V

    .line 74
    :cond_6
    throw p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    :catch_0
    move-exception p0

    const-string p1, "Failed to create the ColorResourcesTableCreator."

    .line 76
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2
.end method
