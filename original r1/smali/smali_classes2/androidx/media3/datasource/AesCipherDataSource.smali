.class public final Landroidx/media3/datasource/AesCipherDataSource;
.super Ljava/lang/Object;
.source "AesCipherDataSource.java"

# interfaces
.implements Landroidx/media3/datasource/DataSource;


# instance fields
.field private cipher:Landroidx/media3/datasource/AesFlushingCipher;

.field private final secretKey:[B

.field private final upstream:Landroidx/media3/datasource/DataSource;


# direct methods
.method public constructor <init>([BLandroidx/media3/datasource/DataSource;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/media3/datasource/AesCipherDataSource;->upstream:Landroidx/media3/datasource/DataSource;

    iput-object p1, p0, Landroidx/media3/datasource/AesCipherDataSource;->secretKey:[B

    return-void
.end method


# virtual methods
.method public addTransferListener(Landroidx/media3/datasource/TransferListener;)V
    .locals 0

    .line 46
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Landroidx/media3/datasource/AesCipherDataSource;->upstream:Landroidx/media3/datasource/DataSource;

    .line 47
    invoke-interface {p0, p1}, Landroidx/media3/datasource/DataSource;->addTransferListener(Landroidx/media3/datasource/TransferListener;)V

    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/datasource/AesCipherDataSource;->cipher:Landroidx/media3/datasource/AesFlushingCipher;

    iget-object p0, p0, Landroidx/media3/datasource/AesCipherDataSource;->upstream:Landroidx/media3/datasource/DataSource;

    .line 89
    invoke-interface {p0}, Landroidx/media3/datasource/DataSource;->close()V

    return-void
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

    iget-object p0, p0, Landroidx/media3/datasource/AesCipherDataSource;->upstream:Landroidx/media3/datasource/DataSource;

    .line 83
    invoke-interface {p0}, Landroidx/media3/datasource/DataSource;->getResponseHeaders()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Landroidx/media3/datasource/AesCipherDataSource;->upstream:Landroidx/media3/datasource/DataSource;

    .line 78
    invoke-interface {p0}, Landroidx/media3/datasource/DataSource;->getUri()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public open(Landroidx/media3/datasource/DataSpec;)J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/datasource/AesCipherDataSource;->upstream:Landroidx/media3/datasource/DataSource;

    .line 52
    invoke-interface {v0, p1}, Landroidx/media3/datasource/DataSource;->open(Landroidx/media3/datasource/DataSpec;)J

    move-result-wide v0

    .line 53
    new-instance v8, Landroidx/media3/datasource/AesFlushingCipher;

    const/4 v3, 0x2

    iget-object v4, p0, Landroidx/media3/datasource/AesCipherDataSource;->secretKey:[B

    iget-object v5, p1, Landroidx/media3/datasource/DataSpec;->key:Ljava/lang/String;

    iget-wide v6, p1, Landroidx/media3/datasource/DataSpec;->uriPositionOffset:J

    iget-wide v9, p1, Landroidx/media3/datasource/DataSpec;->position:J

    add-long/2addr v6, v9

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Landroidx/media3/datasource/AesFlushingCipher;-><init>(I[BLjava/lang/String;J)V

    iput-object v8, p0, Landroidx/media3/datasource/AesCipherDataSource;->cipher:Landroidx/media3/datasource/AesFlushingCipher;

    return-wide v0
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Landroidx/media3/datasource/AesCipherDataSource;->upstream:Landroidx/media3/datasource/DataSource;

    .line 67
    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/datasource/DataSource;->read([BII)I

    move-result p3

    const/4 v0, -0x1

    if-ne p3, v0, :cond_1

    return v0

    :cond_1
    iget-object p0, p0, Landroidx/media3/datasource/AesCipherDataSource;->cipher:Landroidx/media3/datasource/AesFlushingCipher;

    .line 71
    invoke-static {p0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/datasource/AesFlushingCipher;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/datasource/AesFlushingCipher;->updateInPlace([BII)V

    return p3
.end method
