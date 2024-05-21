.class public final Landroidx/media3/datasource/DataSourceInputStream;
.super Ljava/io/InputStream;
.source "DataSourceInputStream.java"


# instance fields
.field private closed:Z

.field private final dataSource:Landroidx/media3/datasource/DataSource;

.field private final dataSpec:Landroidx/media3/datasource/DataSpec;

.field private opened:Z

.field private final singleByteArray:[B

.field private totalBytesRead:J


# direct methods
.method public constructor <init>(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/datasource/DataSourceInputStream;->opened:Z

    iput-boolean v0, p0, Landroidx/media3/datasource/DataSourceInputStream;->closed:Z

    iput-object p1, p0, Landroidx/media3/datasource/DataSourceInputStream;->dataSource:Landroidx/media3/datasource/DataSource;

    iput-object p2, p0, Landroidx/media3/datasource/DataSourceInputStream;->dataSpec:Landroidx/media3/datasource/DataSpec;

    const/4 p1, 0x1

    new-array p1, p1, [B

    iput-object p1, p0, Landroidx/media3/datasource/DataSourceInputStream;->singleByteArray:[B

    return-void
.end method

.method private checkOpened()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Landroidx/media3/datasource/DataSourceInputStream;->opened:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/datasource/DataSourceInputStream;->dataSource:Landroidx/media3/datasource/DataSource;

    iget-object v1, p0, Landroidx/media3/datasource/DataSourceInputStream;->dataSpec:Landroidx/media3/datasource/DataSpec;

    .line 101
    invoke-interface {v0, v1}, Landroidx/media3/datasource/DataSource;->open(Landroidx/media3/datasource/DataSpec;)J

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/datasource/DataSourceInputStream;->opened:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public bytesRead()J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/datasource/DataSourceInputStream;->totalBytesRead:J

    return-wide v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Landroidx/media3/datasource/DataSourceInputStream;->closed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/datasource/DataSourceInputStream;->dataSource:Landroidx/media3/datasource/DataSource;

    .line 94
    invoke-interface {v0}, Landroidx/media3/datasource/DataSource;->close()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/datasource/DataSourceInputStream;->closed:Z

    :cond_0
    return-void
.end method

.method public open()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Landroidx/media3/datasource/DataSourceInputStream;->checkOpened()V

    return-void
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/datasource/DataSourceInputStream;->singleByteArray:[B

    .line 69
    invoke-virtual {p0, v0}, Landroidx/media3/datasource/DataSourceInputStream;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/media3/datasource/DataSourceInputStream;->singleByteArray:[B

    const/4 v0, 0x0

    .line 70
    aget-byte p0, p0, v0

    and-int/lit16 v1, p0, 0xff

    :goto_0
    return v1
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 75
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Landroidx/media3/datasource/DataSourceInputStream;->read([BII)I

    move-result p0

    return p0
.end method

.method public read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Landroidx/media3/datasource/DataSourceInputStream;->closed:Z

    xor-int/lit8 v0, v0, 0x1

    .line 80
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 81
    invoke-direct {p0}, Landroidx/media3/datasource/DataSourceInputStream;->checkOpened()V

    iget-object v0, p0, Landroidx/media3/datasource/DataSourceInputStream;->dataSource:Landroidx/media3/datasource/DataSource;

    .line 82
    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/datasource/DataSource;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return p2

    :cond_0
    iget-wide p2, p0, Landroidx/media3/datasource/DataSourceInputStream;->totalBytesRead:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Landroidx/media3/datasource/DataSourceInputStream;->totalBytesRead:J

    return p1
.end method
