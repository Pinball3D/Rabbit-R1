.class public final Landroidx/media3/datasource/TeeDataSource;
.super Ljava/lang/Object;
.source "TeeDataSource.java"

# interfaces
.implements Landroidx/media3/datasource/DataSource;


# instance fields
.field private bytesRemaining:J

.field private final dataSink:Landroidx/media3/datasource/DataSink;

.field private dataSinkNeedsClosing:Z

.field private final upstream:Landroidx/media3/datasource/DataSource;


# direct methods
.method public constructor <init>(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSink;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/datasource/DataSource;

    iput-object p1, p0, Landroidx/media3/datasource/TeeDataSource;->upstream:Landroidx/media3/datasource/DataSource;

    .line 43
    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/datasource/DataSink;

    iput-object p1, p0, Landroidx/media3/datasource/TeeDataSource;->dataSink:Landroidx/media3/datasource/DataSink;

    return-void
.end method


# virtual methods
.method public addTransferListener(Landroidx/media3/datasource/TransferListener;)V
    .locals 0

    .line 48
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Landroidx/media3/datasource/TeeDataSource;->upstream:Landroidx/media3/datasource/DataSource;

    .line 49
    invoke-interface {p0, p1}, Landroidx/media3/datasource/DataSource;->addTransferListener(Landroidx/media3/datasource/TransferListener;)V

    return-void
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroidx/media3/datasource/TeeDataSource;->upstream:Landroidx/media3/datasource/DataSource;

    .line 97
    invoke-interface {v1}, Landroidx/media3/datasource/DataSource;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v1, p0, Landroidx/media3/datasource/TeeDataSource;->dataSinkNeedsClosing:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Landroidx/media3/datasource/TeeDataSource;->dataSinkNeedsClosing:Z

    iget-object p0, p0, Landroidx/media3/datasource/TeeDataSource;->dataSink:Landroidx/media3/datasource/DataSink;

    .line 101
    invoke-interface {p0}, Landroidx/media3/datasource/DataSink;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    iget-boolean v2, p0, Landroidx/media3/datasource/TeeDataSource;->dataSinkNeedsClosing:Z

    if-eqz v2, :cond_1

    iput-boolean v0, p0, Landroidx/media3/datasource/TeeDataSource;->dataSinkNeedsClosing:Z

    iget-object p0, p0, Landroidx/media3/datasource/TeeDataSource;->dataSink:Landroidx/media3/datasource/DataSink;

    invoke-interface {p0}, Landroidx/media3/datasource/DataSink;->close()V

    .line 103
    :cond_1
    throw v1
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

    iget-object p0, p0, Landroidx/media3/datasource/TeeDataSource;->upstream:Landroidx/media3/datasource/DataSource;

    .line 91
    invoke-interface {p0}, Landroidx/media3/datasource/DataSource;->getResponseHeaders()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Landroidx/media3/datasource/TeeDataSource;->upstream:Landroidx/media3/datasource/DataSource;

    .line 86
    invoke-interface {p0}, Landroidx/media3/datasource/DataSource;->getUri()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public open(Landroidx/media3/datasource/DataSpec;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/datasource/TeeDataSource;->upstream:Landroidx/media3/datasource/DataSource;

    .line 54
    invoke-interface {v0, p1}, Landroidx/media3/datasource/DataSource;->open(Landroidx/media3/datasource/DataSpec;)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/datasource/TeeDataSource;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-wide v2

    .line 58
    :cond_0
    iget-wide v0, p1, Landroidx/media3/datasource/DataSpec;->length:J

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    iget-wide v0, p0, Landroidx/media3/datasource/TeeDataSource;->bytesRemaining:J

    cmp-long v4, v0, v4

    if-eqz v4, :cond_1

    .line 60
    invoke-virtual {p1, v2, v3, v0, v1}, Landroidx/media3/datasource/DataSpec;->subrange(JJ)Landroidx/media3/datasource/DataSpec;

    move-result-object p1

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/datasource/TeeDataSource;->dataSinkNeedsClosing:Z

    iget-object v0, p0, Landroidx/media3/datasource/TeeDataSource;->dataSink:Landroidx/media3/datasource/DataSink;

    .line 63
    invoke-interface {v0, p1}, Landroidx/media3/datasource/DataSink;->open(Landroidx/media3/datasource/DataSpec;)V

    iget-wide p0, p0, Landroidx/media3/datasource/TeeDataSource;->bytesRemaining:J

    return-wide p0
.end method

.method public read([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Landroidx/media3/datasource/TeeDataSource;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object v0, p0, Landroidx/media3/datasource/TeeDataSource;->upstream:Landroidx/media3/datasource/DataSource;

    .line 72
    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/datasource/DataSource;->read([BII)I

    move-result p3

    if-lez p3, :cond_1

    iget-object v0, p0, Landroidx/media3/datasource/TeeDataSource;->dataSink:Landroidx/media3/datasource/DataSink;

    .line 75
    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/datasource/DataSink;->write([BII)V

    iget-wide p1, p0, Landroidx/media3/datasource/TeeDataSource;->bytesRemaining:J

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    int-to-long v0, p3

    sub-long/2addr p1, v0

    iput-wide p1, p0, Landroidx/media3/datasource/TeeDataSource;->bytesRemaining:J

    :cond_1
    return p3
.end method
