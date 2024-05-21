.class public final Landroidx/media3/datasource/ResolvingDataSource;
.super Ljava/lang/Object;
.source "ResolvingDataSource.java"

# interfaces
.implements Landroidx/media3/datasource/DataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/datasource/ResolvingDataSource$Resolver;,
        Landroidx/media3/datasource/ResolvingDataSource$Factory;
    }
.end annotation


# instance fields
.field private final resolver:Landroidx/media3/datasource/ResolvingDataSource$Resolver;

.field private final upstreamDataSource:Landroidx/media3/datasource/DataSource;

.field private upstreamOpened:Z


# direct methods
.method public constructor <init>(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/ResolvingDataSource$Resolver;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/datasource/ResolvingDataSource;->upstreamDataSource:Landroidx/media3/datasource/DataSource;

    iput-object p2, p0, Landroidx/media3/datasource/ResolvingDataSource;->resolver:Landroidx/media3/datasource/ResolvingDataSource$Resolver;

    return-void
.end method


# virtual methods
.method public addTransferListener(Landroidx/media3/datasource/TransferListener;)V
    .locals 0

    .line 102
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Landroidx/media3/datasource/ResolvingDataSource;->upstreamDataSource:Landroidx/media3/datasource/DataSource;

    .line 103
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

    iget-boolean v0, p0, Landroidx/media3/datasource/ResolvingDataSource;->upstreamOpened:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/datasource/ResolvingDataSource;->upstreamOpened:Z

    iget-object p0, p0, Landroidx/media3/datasource/ResolvingDataSource;->upstreamDataSource:Landroidx/media3/datasource/DataSource;

    .line 134
    invoke-interface {p0}, Landroidx/media3/datasource/DataSource;->close()V

    :cond_0
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

    iget-object p0, p0, Landroidx/media3/datasource/ResolvingDataSource;->upstreamDataSource:Landroidx/media3/datasource/DataSource;

    .line 127
    invoke-interface {p0}, Landroidx/media3/datasource/DataSource;->getResponseHeaders()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroidx/media3/datasource/ResolvingDataSource;->upstreamDataSource:Landroidx/media3/datasource/DataSource;

    .line 121
    invoke-interface {v0}, Landroidx/media3/datasource/DataSource;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/media3/datasource/ResolvingDataSource;->resolver:Landroidx/media3/datasource/ResolvingDataSource$Resolver;

    .line 122
    invoke-interface {p0, v0}, Landroidx/media3/datasource/ResolvingDataSource$Resolver;->resolveReportedUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public open(Landroidx/media3/datasource/DataSpec;)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/datasource/ResolvingDataSource;->resolver:Landroidx/media3/datasource/ResolvingDataSource$Resolver;

    .line 108
    invoke-interface {v0, p1}, Landroidx/media3/datasource/ResolvingDataSource$Resolver;->resolveDataSpec(Landroidx/media3/datasource/DataSpec;)Landroidx/media3/datasource/DataSpec;

    move-result-object p1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/datasource/ResolvingDataSource;->upstreamOpened:Z

    iget-object p0, p0, Landroidx/media3/datasource/ResolvingDataSource;->upstreamDataSource:Landroidx/media3/datasource/DataSource;

    .line 110
    invoke-interface {p0, p1}, Landroidx/media3/datasource/DataSource;->open(Landroidx/media3/datasource/DataSpec;)J

    move-result-wide p0

    return-wide p0
.end method

.method public read([BII)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Landroidx/media3/datasource/ResolvingDataSource;->upstreamDataSource:Landroidx/media3/datasource/DataSource;

    .line 115
    invoke-interface {p0, p1, p2, p3}, Landroidx/media3/datasource/DataSource;->read([BII)I

    move-result p0

    return p0
.end method
