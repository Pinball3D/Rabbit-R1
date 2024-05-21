.class final Lcom/google/android/exoplayer2/source/IcyDataSource;
.super Ljava/lang/Object;
.source "IcyDataSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/DataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/IcyDataSource$Listener;
    }
.end annotation


# instance fields
.field private bytesUntilMetadata:I

.field private final listener:Lcom/google/android/exoplayer2/source/IcyDataSource$Listener;

.field private final metadataIntervalBytes:I

.field private final metadataLengthByteHolder:[B

.field private final upstream:Lcom/google/android/exoplayer2/upstream/DataSource;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSource;ILcom/google/android/exoplayer2/source/IcyDataSource$Listener;)V
    .locals 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lez p2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 62
    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/IcyDataSource;->upstream:Lcom/google/android/exoplayer2/upstream/DataSource;

    iput p2, p0, Lcom/google/android/exoplayer2/source/IcyDataSource;->metadataIntervalBytes:I

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/IcyDataSource;->listener:Lcom/google/android/exoplayer2/source/IcyDataSource$Listener;

    new-array p1, v0, [B

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/IcyDataSource;->metadataLengthByteHolder:[B

    iput p2, p0, Lcom/google/android/exoplayer2/source/IcyDataSource;->bytesUntilMetadata:I

    return-void
.end method

.method private readMetadata()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/IcyDataSource;->upstream:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/IcyDataSource;->metadataLengthByteHolder:[B

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 121
    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/upstream/DataSource;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/IcyDataSource;->metadataLengthByteHolder:[B

    .line 125
    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1

    return v3

    .line 132
    :cond_1
    new-array v4, v0, [B

    move v5, v0

    move v6, v2

    :goto_0
    if-lez v5, :cond_3

    iget-object v7, p0, Lcom/google/android/exoplayer2/source/IcyDataSource;->upstream:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 134
    invoke-interface {v7, v4, v6, v5}, Lcom/google/android/exoplayer2/upstream/DataSource;->read([BII)I

    move-result v7

    if-ne v7, v1, :cond_2

    return v2

    :cond_2
    add-int/2addr v6, v7

    sub-int/2addr v5, v7

    goto :goto_0

    :cond_3
    :goto_1
    if-lez v0, :cond_4

    add-int/lit8 v1, v0, -0x1

    .line 143
    aget-byte v1, v4, v1

    if-nez v1, :cond_4

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    if-lez v0, :cond_5

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/IcyDataSource;->listener:Lcom/google/android/exoplayer2/source/IcyDataSource$Listener;

    .line 148
    new-instance v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v1, v4, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([BI)V

    invoke-interface {p0, v1}, Lcom/google/android/exoplayer2/source/IcyDataSource$Listener;->onIcyMetadata(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    :cond_5
    return v3
.end method


# virtual methods
.method public addTransferListener(Lcom/google/android/exoplayer2/upstream/TransferListener;)V
    .locals 0

    .line 72
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/IcyDataSource;->upstream:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 73
    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/upstream/DataSource;->addTransferListener(Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    return-void
.end method

.method public close()V
    .locals 0

    .line 110
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/IcyDataSource;->upstream:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 105
    invoke-interface {p0}, Lcom/google/android/exoplayer2/upstream/DataSource;->getResponseHeaders()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/IcyDataSource;->upstream:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 100
    invoke-interface {p0}, Lcom/google/android/exoplayer2/upstream/DataSource;->getUri()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J
    .locals 0

    .line 78
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public read([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/exoplayer2/source/IcyDataSource;->bytesUntilMetadata:I

    const/4 v1, -0x1

    if-nez v0, :cond_1

    .line 84
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/IcyDataSource;->readMetadata()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/source/IcyDataSource;->metadataIntervalBytes:I

    iput v0, p0, Lcom/google/android/exoplayer2/source/IcyDataSource;->bytesUntilMetadata:I

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/IcyDataSource;->upstream:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget v2, p0, Lcom/google/android/exoplayer2/source/IcyDataSource;->bytesUntilMetadata:I

    .line 90
    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/DataSource;->read([BII)I

    move-result p1

    if-eq p1, v1, :cond_2

    iget p2, p0, Lcom/google/android/exoplayer2/source/IcyDataSource;->bytesUntilMetadata:I

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/exoplayer2/source/IcyDataSource;->bytesUntilMetadata:I

    :cond_2
    return p1
.end method
