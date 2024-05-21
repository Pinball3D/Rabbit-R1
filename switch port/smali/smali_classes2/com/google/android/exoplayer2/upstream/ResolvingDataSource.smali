.class public final Lcom/google/android/exoplayer2/upstream/ResolvingDataSource;
.super Ljava/lang/Object;
.source "ResolvingDataSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/DataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/ResolvingDataSource$Factory;,
        Lcom/google/android/exoplayer2/upstream/ResolvingDataSource$Resolver;
    }
.end annotation


# instance fields
.field private final resolver:Lcom/google/android/exoplayer2/upstream/ResolvingDataSource$Resolver;

.field private final upstreamDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private upstreamOpened:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/ResolvingDataSource$Resolver;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/ResolvingDataSource;->upstreamDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/ResolvingDataSource;->resolver:Lcom/google/android/exoplayer2/upstream/ResolvingDataSource$Resolver;

    return-void
.end method


# virtual methods
.method public addTransferListener(Lcom/google/android/exoplayer2/upstream/TransferListener;)V
    .locals 0

    .line 100
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/android/exoplayer2/upstream/ResolvingDataSource;->upstreamDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 101
    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/upstream/DataSource;->addTransferListener(Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/ResolvingDataSource;->upstreamOpened:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/ResolvingDataSource;->upstreamOpened:Z

    iget-object p0, p0, Lcom/google/android/exoplayer2/upstream/ResolvingDataSource;->upstreamDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 132
    invoke-interface {p0}, Lcom/google/android/exoplayer2/upstream/DataSource;->close()V

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

    iget-object p0, p0, Lcom/google/android/exoplayer2/upstream/ResolvingDataSource;->upstreamDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 125
    invoke-interface {p0}, Lcom/google/android/exoplayer2/upstream/DataSource;->getResponseHeaders()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/ResolvingDataSource;->upstreamDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 119
    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/DataSource;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/upstream/ResolvingDataSource;->resolver:Lcom/google/android/exoplayer2/upstream/ResolvingDataSource$Resolver;

    .line 120
    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/upstream/ResolvingDataSource$Resolver;->resolveReportedUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/ResolvingDataSource;->resolver:Lcom/google/android/exoplayer2/upstream/ResolvingDataSource$Resolver;

    .line 106
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/upstream/ResolvingDataSource$Resolver;->resolveDataSpec(Lcom/google/android/exoplayer2/upstream/DataSpec;)Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object p1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/ResolvingDataSource;->upstreamOpened:Z

    iget-object p0, p0, Lcom/google/android/exoplayer2/upstream/ResolvingDataSource;->upstreamDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 108
    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/upstream/DataSource;->open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J

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

    iget-object p0, p0, Lcom/google/android/exoplayer2/upstream/ResolvingDataSource;->upstreamDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 113
    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/DataSource;->read([BII)I

    move-result p0

    return p0
.end method
