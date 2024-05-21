.class public final Landroidx/media3/datasource/AesFlushingCipher;
.super Ljava/lang/Object;
.source "AesFlushingCipher.java"


# instance fields
.field private final blockSize:I

.field private final cipher:Ljavax/crypto/Cipher;

.field private final flushedBlock:[B

.field private pendingXorBytes:I

.field private final zerosBlock:[B


# direct methods
.method public constructor <init>(I[BJJ)V
    .locals 6

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-string v0, "AES/CTR/NoPadding"

    .line 54
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/datasource/AesFlushingCipher;->cipher:Ljavax/crypto/Cipher;

    .line 55
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v1

    iput v1, p0, Landroidx/media3/datasource/AesFlushingCipher;->blockSize:I

    .line 56
    new-array v2, v1, [B

    iput-object v2, p0, Landroidx/media3/datasource/AesFlushingCipher;->zerosBlock:[B

    .line 57
    new-array v2, v1, [B

    iput-object v2, p0, Landroidx/media3/datasource/AesFlushingCipher;->flushedBlock:[B

    int-to-long v2, v1

    .line 58
    div-long v2, p5, v2

    int-to-long v4, v1

    .line 59
    rem-long/2addr p5, v4

    long-to-int p5, p5

    .line 60
    new-instance p6, Ljavax/crypto/spec/SecretKeySpec;

    .line 62
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    const-string v4, "/"

    invoke-static {v1, v4}, Landroidx/media3/common/util/Util;->splitAtFirst(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    aget-object v1, v1, v4

    invoke-direct {p6, p2, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance p2, Ljavax/crypto/spec/IvParameterSpec;

    .line 63
    invoke-direct {p0, p3, p4, v2, v3}, Landroidx/media3/datasource/AesFlushingCipher;->getInitializationVector(JJ)[B

    move-result-object p3

    invoke-direct {p2, p3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 60
    invoke-virtual {v0, p1, p6, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    if-eqz p5, :cond_0

    .line 65
    new-array p1, p5, [B

    invoke-virtual {p0, p1, v4, p5}, Landroidx/media3/datasource/AesFlushingCipher;->updateInPlace([BII)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    .line 72
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public constructor <init>(I[BLjava/lang/String;J)V
    .locals 7

    .line 49
    invoke-static {p3}, Landroidx/media3/datasource/AesFlushingCipher;->getFNV64Hash(Ljava/lang/String;)J

    move-result-wide v3

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Landroidx/media3/datasource/AesFlushingCipher;-><init>(I[BJJ)V

    return-void
.end method

.method private static getFNV64Hash(Ljava/lang/String;)J
    .locals 7

    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    return-wide v0

    :cond_0
    const/4 v2, 0x0

    .line 143
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 144
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-long v3, v3

    xor-long/2addr v0, v3

    const/4 v3, 0x1

    shl-long v3, v0, v3

    const/4 v5, 0x4

    shl-long v5, v0, v5

    add-long/2addr v3, v5

    const/4 v5, 0x5

    shl-long v5, v0, v5

    add-long/2addr v3, v5

    const/4 v5, 0x7

    shl-long v5, v0, v5

    add-long/2addr v3, v5

    const/16 v5, 0x8

    shl-long v5, v0, v5

    add-long/2addr v3, v5

    const/16 v5, 0x28

    shl-long v5, v0, v5

    add-long/2addr v3, v5

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method private getInitializationVector(JJ)[B
    .locals 0

    const/16 p0, 0x10

    .line 129
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0, p3, p4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method private nonFlushingUpdate([BII[BI)I
    .locals 6

    :try_start_0
    iget-object v0, p0, Landroidx/media3/datasource/AesFlushingCipher;->cipher:Ljavax/crypto/Cipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 121
    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->update([BII[BI)I

    move-result p0
    :try_end_0
    .catch Ljavax/crypto/ShortBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 124
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public update([BII[BI)V
    .locals 8

    move v2, p2

    :cond_0
    iget p2, p0, Landroidx/media3/datasource/AesFlushingCipher;->pendingXorBytes:I

    if-lez p2, :cond_1

    .line 85
    aget-byte v0, p1, v2

    iget-object v1, p0, Landroidx/media3/datasource/AesFlushingCipher;->flushedBlock:[B

    iget v3, p0, Landroidx/media3/datasource/AesFlushingCipher;->blockSize:I

    sub-int/2addr v3, p2

    aget-byte v1, v1, v3

    xor-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, p4, p5

    add-int/lit8 p5, p5, 0x1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Landroidx/media3/datasource/AesFlushingCipher;->pendingXorBytes:I

    add-int/lit8 p3, p3, -0x1

    if-nez p3, :cond_0

    return-void

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 96
    invoke-direct/range {v0 .. v5}, Landroidx/media3/datasource/AesFlushingCipher;->nonFlushingUpdate([BII[BI)I

    move-result p1

    if-ne p3, p1, :cond_2

    return-void

    :cond_2
    sub-int/2addr p3, p1

    iget p2, p0, Landroidx/media3/datasource/AesFlushingCipher;->blockSize:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge p3, p2, :cond_3

    move p2, v1

    goto :goto_0

    :cond_3
    move p2, v0

    .line 107
    :goto_0
    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    add-int/2addr p5, p1

    iget p1, p0, Landroidx/media3/datasource/AesFlushingCipher;->blockSize:I

    sub-int v5, p1, p3

    iput v5, p0, Landroidx/media3/datasource/AesFlushingCipher;->pendingXorBytes:I

    iget-object v3, p0, Landroidx/media3/datasource/AesFlushingCipher;->zerosBlock:[B

    const/4 v4, 0x0

    iget-object v6, p0, Landroidx/media3/datasource/AesFlushingCipher;->flushedBlock:[B

    const/4 v7, 0x0

    move-object v2, p0

    .line 110
    invoke-direct/range {v2 .. v7}, Landroidx/media3/datasource/AesFlushingCipher;->nonFlushingUpdate([BII[BI)I

    move-result p1

    iget p2, p0, Landroidx/media3/datasource/AesFlushingCipher;->blockSize:I

    if-ne p1, p2, :cond_4

    goto :goto_1

    :cond_4
    move v1, v0

    .line 111
    :goto_1
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    :goto_2
    if-ge v0, p3, :cond_5

    add-int/lit8 p1, p5, 0x1

    iget-object p2, p0, Landroidx/media3/datasource/AesFlushingCipher;->flushedBlock:[B

    .line 115
    aget-byte p2, p2, v0

    aput-byte p2, p4, p5

    add-int/lit8 v0, v0, 0x1

    move p5, p1

    goto :goto_2

    :cond_5
    return-void
.end method

.method public updateInPlace([BII)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p1

    move v5, p2

    .line 77
    invoke-virtual/range {v0 .. v5}, Landroidx/media3/datasource/AesFlushingCipher;->update([BII[BI)V

    return-void
.end method
