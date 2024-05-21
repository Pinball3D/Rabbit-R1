.class Landroidx/media3/datasource/cache/CachedContentIndex$LegacyStorage;
.super Ljava/lang/Object;
.source "CachedContentIndex.java"

# interfaces
.implements Landroidx/media3/datasource/cache/CachedContentIndex$Storage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/datasource/cache/CachedContentIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LegacyStorage"
.end annotation


# static fields
.field private static final FLAG_ENCRYPTED_INDEX:I = 0x1

.field private static final VERSION:I = 0x2

.field private static final VERSION_METADATA_INTRODUCED:I = 0x2


# instance fields
.field private final atomicFile:Landroidx/media3/common/util/AtomicFile;

.field private bufferedOutputStream:Landroidx/media3/datasource/cache/ReusableBufferedOutputStream;

.field private changed:Z

.field private final cipher:Ljavax/crypto/Cipher;

.field private final encrypt:Z

.field private final random:Ljava/security/SecureRandom;

.field private final secretKeySpec:Ljavax/crypto/spec/SecretKeySpec;


# direct methods
.method public constructor <init>(Ljava/io/File;[BZ)V
    .locals 5

    .line 519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    .line 520
    :goto_1
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    .line 524
    array-length v3, p2

    const/16 v4, 0x10

    if-ne v3, v4, :cond_2

    move v0, v1

    :cond_2
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 526
    :try_start_0
    invoke-static {}, Landroidx/media3/datasource/cache/CachedContentIndex;->access$000()Ljavax/crypto/Cipher;

    move-result-object v0

    .line 527
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v1, p2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 529
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_3
    xor-int/lit8 p2, p3, 0x1

    .line 532
    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    move-object v0, v2

    move-object v1, v0

    :goto_2
    iput-boolean p3, p0, Landroidx/media3/datasource/cache/CachedContentIndex$LegacyStorage;->encrypt:Z

    iput-object v0, p0, Landroidx/media3/datasource/cache/CachedContentIndex$LegacyStorage;->cipher:Ljavax/crypto/Cipher;

    iput-object v1, p0, Landroidx/media3/datasource/cache/CachedContentIndex$LegacyStorage;->secretKeySpec:Ljavax/crypto/spec/SecretKeySpec;

    if-eqz p3, :cond_4

    .line 537
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    :cond_4
    iput-object v2, p0, Landroidx/media3/datasource/cache/CachedContentIndex$LegacyStorage;->random:Ljava/security/SecureRandom;

    .line 538
    new-instance p2, Landroidx/media3/common/util/AtomicFile;

    invoke-direct {p2, p1}, Landroidx/media3/common/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object p2, p0, Landroidx/media3/datasource/cache/CachedContentIndex$LegacyStorage;->atomicFile:Landroidx/media3/common/util/AtomicFile;

    return-void
.end method

.method private hashCachedContent(Landroidx/media3/datasource/cache/CachedContent;I)I
    .locals 2

    .line 699
    iget p0, p1, Landroidx/media3/datasource/cache/CachedContent;->id:I

    mul-int/lit8 p0, p0, 0x1f

    .line 700
    iget-object v0, p1, Landroidx/media3/datasource/cache/CachedContent;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr p0, v0

    const/4 v0, 0x2

    if-ge p2, v0, :cond_0

    .line 702
    invoke-virtual {p1}, Landroidx/media3/datasource/cache/CachedContent;->getMetadata()Landroidx/media3/datasource/cache/DefaultContentMetadata;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/datasource/cache/ContentMetadata;->getContentLength(Landroidx/media3/datasource/cache/ContentMetadata;)J

    move-result-wide p1

    mul-int/lit8 p0, p0, 0x1f

    const/16 v0, 0x20

    ushr-long v0, p1, v0

    xor-long/2addr p1, v0

    long-to-int p1, p1

    goto :goto_0

    :cond_0
    mul-int/lit8 p0, p0, 0x1f

    .line 705
    invoke-virtual {p1}, Landroidx/media3/datasource/cache/CachedContent;->getMetadata()Landroidx/media3/datasource/cache/DefaultContentMetadata;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/datasource/cache/DefaultContentMetadata;->hashCode()I

    move-result p1

    :goto_0
    add-int/2addr p0, p1

    return p0
.end method

.method private readCachedContent(ILjava/io/DataInputStream;)Landroidx/media3/datasource/cache/CachedContent;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 718
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result p0

    .line 719
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-ge p1, v1, :cond_0

    .line 722
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide p1

    .line 723
    new-instance v1, Landroidx/media3/datasource/cache/ContentMetadataMutations;

    invoke-direct {v1}, Landroidx/media3/datasource/cache/ContentMetadataMutations;-><init>()V

    .line 724
    invoke-static {v1, p1, p2}, Landroidx/media3/datasource/cache/ContentMetadataMutations;->setContentLength(Landroidx/media3/datasource/cache/ContentMetadataMutations;J)Landroidx/media3/datasource/cache/ContentMetadataMutations;

    .line 725
    sget-object p1, Landroidx/media3/datasource/cache/DefaultContentMetadata;->EMPTY:Landroidx/media3/datasource/cache/DefaultContentMetadata;

    invoke-virtual {p1, v1}, Landroidx/media3/datasource/cache/DefaultContentMetadata;->copyWithMutationsApplied(Landroidx/media3/datasource/cache/ContentMetadataMutations;)Landroidx/media3/datasource/cache/DefaultContentMetadata;

    move-result-object p1

    goto :goto_0

    .line 727
    :cond_0
    invoke-static {p2}, Landroidx/media3/datasource/cache/CachedContentIndex;->access$100(Ljava/io/DataInputStream;)Landroidx/media3/datasource/cache/DefaultContentMetadata;

    move-result-object p1

    .line 729
    :goto_0
    new-instance p2, Landroidx/media3/datasource/cache/CachedContent;

    invoke-direct {p2, p0, v0, p1}, Landroidx/media3/datasource/cache/CachedContent;-><init>(ILjava/lang/String;Landroidx/media3/datasource/cache/DefaultContentMetadata;)V

    return-object p2
.end method

.method private readFile(Ljava/util/HashMap;Landroid/util/SparseArray;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/media3/datasource/cache/CachedContent;",
            ">;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/datasource/cache/CachedContentIndex$LegacyStorage;->atomicFile:Landroidx/media3/common/util/AtomicFile;

    .line 593
    invoke-virtual {v0}, Landroidx/media3/common/util/AtomicFile;->exists()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 599
    :try_start_0
    new-instance v3, Ljava/io/BufferedInputStream;

    iget-object v4, p0, Landroidx/media3/datasource/cache/CachedContentIndex$LegacyStorage;->atomicFile:Landroidx/media3/common/util/AtomicFile;

    invoke-virtual {v4}, Landroidx/media3/common/util/AtomicFile;->openRead()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 600
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 601
    :try_start_1
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    if-ltz v2, :cond_9

    const/4 v5, 0x2

    if-le v2, v5, :cond_1

    goto/16 :goto_4

    .line 606
    :cond_1
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    and-int/2addr v6, v1

    if-eqz v6, :cond_3

    iget-object v6, p0, Landroidx/media3/datasource/cache/CachedContentIndex$LegacyStorage;->cipher:Ljavax/crypto/Cipher;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v6, :cond_2

    .line 641
    invoke-static {v4}, Landroidx/media3/common/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    return v0

    :cond_2
    const/16 v6, 0x10

    :try_start_2
    new-array v6, v6, [B

    .line 612
    invoke-virtual {v4, v6}, Ljava/io/DataInputStream;->readFully([B)V

    .line 613
    new-instance v7, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v7, v6}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v6, p0, Landroidx/media3/datasource/cache/CachedContentIndex$LegacyStorage;->cipher:Ljavax/crypto/Cipher;

    iget-object v8, p0, Landroidx/media3/datasource/cache/CachedContentIndex$LegacyStorage;->secretKeySpec:Ljavax/crypto/spec/SecretKeySpec;

    .line 615
    invoke-static {v8}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/security/Key;

    invoke-virtual {v6, v5, v8, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_3
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 619
    :try_start_4
    new-instance v5, Ljava/io/DataInputStream;

    new-instance v6, Ljavax/crypto/CipherInputStream;

    iget-object v7, p0, Landroidx/media3/datasource/cache/CachedContentIndex$LegacyStorage;->cipher:Ljavax/crypto/Cipher;

    invoke-direct {v6, v3, v7}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    invoke-direct {v5, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v4, v5

    goto :goto_0

    :catch_0
    move-exception p0

    .line 617
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_3
    iget-boolean v3, p0, Landroidx/media3/datasource/cache/CachedContentIndex$LegacyStorage;->encrypt:Z

    if-eqz v3, :cond_4

    iput-boolean v1, p0, Landroidx/media3/datasource/cache/CachedContentIndex$LegacyStorage;->changed:Z

    .line 624
    :cond_4
    :goto_0
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    move v5, v0

    move v6, v5

    :goto_1
    if-ge v5, v3, :cond_5

    .line 627
    invoke-direct {p0, v2, v4}, Landroidx/media3/datasource/cache/CachedContentIndex$LegacyStorage;->readCachedContent(ILjava/io/DataInputStream;)Landroidx/media3/datasource/cache/CachedContent;

    move-result-object v7

    .line 628
    iget-object v8, v7, Landroidx/media3/datasource/cache/CachedContent;->key:Ljava/lang/String;

    invoke-virtual {p1, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    iget v8, v7, Landroidx/media3/datasource/cache/CachedContent;->id:I

    iget-object v9, v7, Landroidx/media3/datasource/cache/CachedContent;->key:Ljava/lang/String;

    invoke-virtual {p2, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 630
    invoke-direct {p0, v7, v2}, Landroidx/media3/datasource/cache/CachedContentIndex$LegacyStorage;->hashCachedContent(Landroidx/media3/datasource/cache/CachedContent;I)I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 632
    :cond_5
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result p0

    .line 633
    invoke-virtual {v4}, Ljava/io/DataInputStream;->read()I

    move-result p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 p2, -0x1

    if-ne p1, p2, :cond_6

    move p1, v1

    goto :goto_2

    :cond_6
    move p1, v0

    :goto_2
    if-ne p0, v6, :cond_8

    if-nez p1, :cond_7

    goto :goto_3

    .line 641
    :cond_7
    invoke-static {v4}, Landroidx/media3/common/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    return v1

    :cond_8
    :goto_3
    invoke-static {v4}, Landroidx/media3/common/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    return v0

    :cond_9
    :goto_4
    invoke-static {v4}, Landroidx/media3/common/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    return v0

    :catchall_0
    move-exception p0

    move-object v2, v4

    goto :goto_5

    :catch_1
    move-object v2, v4

    goto :goto_6

    :catchall_1
    move-exception p0

    :goto_5
    if-eqz v2, :cond_a

    invoke-static {v2}, Landroidx/media3/common/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 643
    :cond_a
    throw p0

    :catch_2
    :goto_6
    if-eqz v2, :cond_b

    .line 641
    invoke-static {v2}, Landroidx/media3/common/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    :cond_b
    return v0
.end method

.method private writeCachedContent(Landroidx/media3/datasource/cache/CachedContent;Ljava/io/DataOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 740
    iget p0, p1, Landroidx/media3/datasource/cache/CachedContent;->id:I

    invoke-virtual {p2, p0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 741
    iget-object p0, p1, Landroidx/media3/datasource/cache/CachedContent;->key:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 742
    invoke-virtual {p1}, Landroidx/media3/datasource/cache/CachedContent;->getMetadata()Landroidx/media3/datasource/cache/DefaultContentMetadata;

    move-result-object p0

    invoke-static {p0, p2}, Landroidx/media3/datasource/cache/CachedContentIndex;->access$200(Landroidx/media3/datasource/cache/DefaultContentMetadata;Ljava/io/DataOutputStream;)V

    return-void
.end method

.method private writeFile(Ljava/util/HashMap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/media3/datasource/cache/CachedContent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroidx/media3/datasource/cache/CachedContentIndex$LegacyStorage;->atomicFile:Landroidx/media3/common/util/AtomicFile;

    .line 650
    invoke-virtual {v1}, Landroidx/media3/common/util/AtomicFile;->startWrite()Ljava/io/OutputStream;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/datasource/cache/CachedContentIndex$LegacyStorage;->bufferedOutputStream:Landroidx/media3/datasource/cache/ReusableBufferedOutputStream;

    if-nez v2, :cond_0

    .line 652
    new-instance v2, Landroidx/media3/datasource/cache/ReusableBufferedOutputStream;

    invoke-direct {v2, v1}, Landroidx/media3/datasource/cache/ReusableBufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, p0, Landroidx/media3/datasource/cache/CachedContentIndex$LegacyStorage;->bufferedOutputStream:Landroidx/media3/datasource/cache/ReusableBufferedOutputStream;

    goto :goto_0

    .line 654
    :cond_0
    invoke-virtual {v2, v1}, Landroidx/media3/datasource/cache/ReusableBufferedOutputStream;->reset(Ljava/io/OutputStream;)V

    :goto_0
    iget-object v1, p0, Landroidx/media3/datasource/cache/CachedContentIndex$LegacyStorage;->bufferedOutputStream:Landroidx/media3/datasource/cache/ReusableBufferedOutputStream;

    .line 657
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x2

    .line 658
    :try_start_1
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-boolean v4, p0, Landroidx/media3/datasource/cache/CachedContentIndex$LegacyStorage;->encrypt:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 661
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-boolean v4, p0, Landroidx/media3/datasource/cache/CachedContentIndex$LegacyStorage;->encrypt:Z

    if-eqz v4, :cond_1

    const/16 v4, 0x10

    new-array v4, v4, [B

    iget-object v7, p0, Landroidx/media3/datasource/cache/CachedContentIndex$LegacyStorage;->random:Ljava/security/SecureRandom;

    .line 665
    invoke-static {v7}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/security/SecureRandom;

    invoke-virtual {v7, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 666
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->write([B)V

    .line 667
    new-instance v7, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v7, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v4, p0, Landroidx/media3/datasource/cache/CachedContentIndex$LegacyStorage;->cipher:Ljavax/crypto/Cipher;

    .line 669
    invoke-static {v4}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/crypto/Cipher;

    iget-object v8, p0, Landroidx/media3/datasource/cache/CachedContentIndex$LegacyStorage;->secretKeySpec:Ljavax/crypto/spec/SecretKeySpec;

    .line 670
    invoke-static {v8}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/security/Key;

    invoke-virtual {v4, v5, v8, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_2
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 674
    :try_start_3
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 675
    new-instance v4, Ljava/io/DataOutputStream;

    new-instance v5, Ljavax/crypto/CipherOutputStream;

    iget-object v7, p0, Landroidx/media3/datasource/cache/CachedContentIndex$LegacyStorage;->cipher:Ljavax/crypto/Cipher;

    invoke-direct {v5, v1, v7}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    invoke-direct {v4, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v2, v4

    goto :goto_1

    :catch_0
    move-exception p0

    .line 672
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 678
    :cond_1
    :goto_1
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 680
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/datasource/cache/CachedContent;

    .line 681
    invoke-direct {p0, v1, v2}, Landroidx/media3/datasource/cache/CachedContentIndex$LegacyStorage;->writeCachedContent(Landroidx/media3/datasource/cache/CachedContent;Ljava/io/DataOutputStream;)V

    .line 682
    invoke-direct {p0, v1, v3}, Landroidx/media3/datasource/cache/CachedContentIndex$LegacyStorage;->hashCachedContent(Landroidx/media3/datasource/cache/CachedContent;I)I

    move-result v1

    add-int/2addr v6, v1

    goto :goto_2

    .line 684
    :cond_2
    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object p0, p0, Landroidx/media3/datasource/cache/CachedContentIndex$LegacyStorage;->atomicFile:Landroidx/media3/common/util/AtomicFile;

    .line 685
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/AtomicFile;->endWrite(Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 690
    invoke-static {v0}, Landroidx/media3/common/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p0

    move-object v0, v2

    goto :goto_3

    :catchall_1
    move-exception p0

    :goto_3
    invoke-static {v0}, Landroidx/media3/common/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 691
    throw p0
.end method


# virtual methods
.method public delete()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/datasource/cache/CachedContentIndex$LegacyStorage;->atomicFile:Landroidx/media3/common/util/AtomicFile;

    .line 553
    invoke-virtual {p0}, Landroidx/media3/common/util/AtomicFile;->delete()V

    return-void
.end method

.method public exists()Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/datasource/cache/CachedContentIndex$LegacyStorage;->atomicFile:Landroidx/media3/common/util/AtomicFile;

    .line 548
    invoke-virtual {p0}, Landroidx/media3/common/util/AtomicFile;->exists()Z

    move-result p0

    return p0
.end method

.method public initialize(J)V
    .locals 0

    return-void
.end method

.method public load(Ljava/util/HashMap;Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/media3/datasource/cache/CachedContent;",
            ">;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Landroidx/media3/datasource/cache/CachedContentIndex$LegacyStorage;->changed:Z

    xor-int/lit8 v0, v0, 0x1

    .line 559
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 560
    invoke-direct {p0, p1, p2}, Landroidx/media3/datasource/cache/CachedContentIndex$LegacyStorage;->readFile(Ljava/util/HashMap;Landroid/util/SparseArray;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 561
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 562
    invoke-virtual {p2}, Landroid/util/SparseArray;->clear()V

    iget-object p0, p0, Landroidx/media3/datasource/cache/CachedContentIndex$LegacyStorage;->atomicFile:Landroidx/media3/common/util/AtomicFile;

    .line 563
    invoke-virtual {p0}, Landroidx/media3/common/util/AtomicFile;->delete()V

    :cond_0
    return-void
.end method

.method public onRemove(Landroidx/media3/datasource/cache/CachedContent;Z)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/datasource/cache/CachedContentIndex$LegacyStorage;->changed:Z

    return-void
.end method

.method public onUpdate(Landroidx/media3/datasource/cache/CachedContent;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/datasource/cache/CachedContentIndex$LegacyStorage;->changed:Z

    return-void
.end method

.method public storeFully(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/media3/datasource/cache/CachedContent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 569
    invoke-direct {p0, p1}, Landroidx/media3/datasource/cache/CachedContentIndex$LegacyStorage;->writeFile(Ljava/util/HashMap;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/media3/datasource/cache/CachedContentIndex$LegacyStorage;->changed:Z

    return-void
.end method

.method public storeIncremental(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/media3/datasource/cache/CachedContent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Landroidx/media3/datasource/cache/CachedContentIndex$LegacyStorage;->changed:Z

    if-nez v0, :cond_0

    return-void

    .line 578
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/media3/datasource/cache/CachedContentIndex$LegacyStorage;->storeFully(Ljava/util/HashMap;)V

    return-void
.end method
