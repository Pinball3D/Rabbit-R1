.class public Lcom/airbnb/lottie/network/NetworkCache;
.super Ljava/lang/Object;
.source "NetworkCache.java"


# instance fields
.field private final cacheProvider:Lcom/airbnb/lottie/network/LottieNetworkCacheProvider;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/network/LottieNetworkCacheProvider;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/network/NetworkCache;->cacheProvider:Lcom/airbnb/lottie/network/LottieNetworkCacheProvider;

    return-void
.end method

.method private static filenameForUrl(Ljava/lang/String;Lcom/airbnb/lottie/network/FileExtension;Z)Ljava/lang/String;
    .locals 1

    if-eqz p2, :cond_0

    .line 162
    invoke-virtual {p1}, Lcom/airbnb/lottie/network/FileExtension;->tempExtension()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/airbnb/lottie/network/FileExtension;->extension:Ljava/lang/String;

    :goto_0
    const-string p2, "\\W+"

    const-string v0, ""

    .line 163
    invoke-virtual {p0, p2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 165
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    rsub-int p2, p2, 0xf2

    .line 166
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p2, :cond_1

    .line 176
    invoke-static {p0, p2}, Lcom/airbnb/lottie/network/NetworkCache;->getMD5(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 179
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "lottie_cache_"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getCachedFile(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 138
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/airbnb/lottie/network/NetworkCache;->parentDir()Ljava/io/File;

    move-result-object v1

    sget-object v2, Lcom/airbnb/lottie/network/FileExtension;->JSON:Lcom/airbnb/lottie/network/FileExtension;

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Lcom/airbnb/lottie/network/NetworkCache;->filenameForUrl(Ljava/lang/String;Lcom/airbnb/lottie/network/FileExtension;Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 139
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 142
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/airbnb/lottie/network/NetworkCache;->parentDir()Ljava/io/File;

    move-result-object p0

    sget-object v1, Lcom/airbnb/lottie/network/FileExtension;->ZIP:Lcom/airbnb/lottie/network/FileExtension;

    invoke-static {p1, v1, v3}, Lcom/airbnb/lottie/network/NetworkCache;->filenameForUrl(Ljava/lang/String;Lcom/airbnb/lottie/network/FileExtension;Z)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 143
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getMD5(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "MD5"

    .line 185
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 192
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 194
    aget-byte v1, p0, v0

    .line 195
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%02x"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 197
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 189
    :catch_0
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private parentDir()Ljava/io/File;
    .locals 1

    iget-object p0, p0, Lcom/airbnb/lottie/network/NetworkCache;->cacheProvider:Lcom/airbnb/lottie/network/LottieNetworkCacheProvider;

    .line 150
    invoke-interface {p0}, Lcom/airbnb/lottie/network/LottieNetworkCacheProvider;->getCacheDir()Ljava/io/File;

    move-result-object p0

    .line 151
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 154
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 155
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    return-object p0
.end method


# virtual methods
.method public clear()V
    .locals 4

    .line 37
    invoke-direct {p0}, Lcom/airbnb/lottie/network/NetworkCache;->parentDir()Ljava/io/File;

    move-result-object p0

    .line 38
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 40
    array-length v1, v0

    if-lez v1, :cond_0

    .line 41
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 42
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_1
    return-void
.end method

.method fetch(Ljava/lang/String;)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/airbnb/lottie/network/FileExtension;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 61
    :try_start_0
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/network/NetworkCache;->getCachedFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    return-object v0

    .line 71
    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 77
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v2, ".zip"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    sget-object v0, Lcom/airbnb/lottie/network/FileExtension;->ZIP:Lcom/airbnb/lottie/network/FileExtension;

    goto :goto_0

    .line 80
    :cond_1
    sget-object v0, Lcom/airbnb/lottie/network/FileExtension;->JSON:Lcom/airbnb/lottie/network/FileExtension;

    .line 83
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cache hit for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " at "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/airbnb/lottie/utils/Logger;->debug(Ljava/lang/String;)V

    .line 84
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :catch_0
    return-object v0
.end method

.method renameTempFile(Ljava/lang/String;Lcom/airbnb/lottie/network/FileExtension;)V
    .locals 2

    const/4 v0, 0x1

    .line 121
    invoke-static {p1, p2, v0}, Lcom/airbnb/lottie/network/NetworkCache;->filenameForUrl(Ljava/lang/String;Lcom/airbnb/lottie/network/FileExtension;Z)Ljava/lang/String;

    move-result-object p1

    .line 122
    new-instance p2, Ljava/io/File;

    invoke-direct {p0}, Lcom/airbnb/lottie/network/NetworkCache;->parentDir()Ljava/io/File;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const-string p1, ".temp"

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 124
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p2, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Copying temp file to real file ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/utils/Logger;->debug(Ljava/lang/String;)V

    if-nez p0, :cond_0

    .line 128
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Unable to rename cache file "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " to "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method writeTempCacheFile(Ljava/lang/String;Ljava/io/InputStream;Lcom/airbnb/lottie/network/FileExtension;)Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 93
    invoke-static {p1, p3, v0}, Lcom/airbnb/lottie/network/NetworkCache;->filenameForUrl(Ljava/lang/String;Lcom/airbnb/lottie/network/FileExtension;Z)Ljava/lang/String;

    move-result-object p1

    .line 94
    new-instance p3, Ljava/io/File;

    invoke-direct {p0}, Lcom/airbnb/lottie/network/NetworkCache;->parentDir()Ljava/io/File;

    move-result-object p0

    invoke-direct {p3, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 96
    :try_start_0
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 p1, 0x400

    :try_start_1
    new-array p1, p1, [B

    .line 102
    :goto_0
    invoke-virtual {p2, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    .line 103
    invoke-virtual {p0, p1, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 106
    :cond_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    :try_start_2
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 111
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    return-object p3

    :catchall_0
    move-exception p1

    .line 108
    :try_start_3
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    .line 109
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    .line 111
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 112
    throw p0
.end method
