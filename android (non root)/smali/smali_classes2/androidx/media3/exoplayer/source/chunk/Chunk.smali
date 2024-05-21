.class public abstract Landroidx/media3/exoplayer/source/chunk/Chunk;
.super Ljava/lang/Object;
.source "Chunk.java"

# interfaces
.implements Landroidx/media3/exoplayer/upstream/Loader$Loadable;


# instance fields
.field protected final dataSource:Landroidx/media3/datasource/StatsDataSource;

.field public final dataSpec:Landroidx/media3/datasource/DataSpec;

.field public final endTimeUs:J

.field public final loadTaskId:J

.field public final startTimeUs:J

.field public final trackFormat:Landroidx/media3/common/Format;

.field public final trackSelectionData:Ljava/lang/Object;

.field public final trackSelectionReason:I

.field public final type:I


# direct methods
.method public constructor <init>(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;ILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V
    .locals 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Landroidx/media3/datasource/StatsDataSource;

    invoke-direct {v0, p1}, Landroidx/media3/datasource/StatsDataSource;-><init>(Landroidx/media3/datasource/DataSource;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/source/chunk/Chunk;->dataSource:Landroidx/media3/datasource/StatsDataSource;

    .line 92
    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/datasource/DataSpec;

    iput-object p1, p0, Landroidx/media3/exoplayer/source/chunk/Chunk;->dataSpec:Landroidx/media3/datasource/DataSpec;

    iput p3, p0, Landroidx/media3/exoplayer/source/chunk/Chunk;->type:I

    iput-object p4, p0, Landroidx/media3/exoplayer/source/chunk/Chunk;->trackFormat:Landroidx/media3/common/Format;

    iput p5, p0, Landroidx/media3/exoplayer/source/chunk/Chunk;->trackSelectionReason:I

    iput-object p6, p0, Landroidx/media3/exoplayer/source/chunk/Chunk;->trackSelectionData:Ljava/lang/Object;

    iput-wide p7, p0, Landroidx/media3/exoplayer/source/chunk/Chunk;->startTimeUs:J

    iput-wide p9, p0, Landroidx/media3/exoplayer/source/chunk/Chunk;->endTimeUs:J

    .line 99
    invoke-static {}, Landroidx/media3/exoplayer/source/LoadEventInfo;->getNewId()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/chunk/Chunk;->loadTaskId:J

    return-void
.end method


# virtual methods
.method public final bytesLoaded()J
    .locals 2

    iget-object p0, p0, Landroidx/media3/exoplayer/source/chunk/Chunk;->dataSource:Landroidx/media3/datasource/StatsDataSource;

    .line 112
    invoke-virtual {p0}, Landroidx/media3/datasource/StatsDataSource;->getBytesRead()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getDurationUs()J
    .locals 4

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/chunk/Chunk;->endTimeUs:J

    iget-wide v2, p0, Landroidx/media3/exoplayer/source/chunk/Chunk;->startTimeUs:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final getResponseHeaders()Ljava/util/Map;
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

    iget-object p0, p0, Landroidx/media3/exoplayer/source/chunk/Chunk;->dataSource:Landroidx/media3/datasource/StatsDataSource;

    .line 133
    invoke-virtual {p0}, Landroidx/media3/datasource/StatsDataSource;->getLastResponseHeaders()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/chunk/Chunk;->dataSource:Landroidx/media3/datasource/StatsDataSource;

    .line 123
    invoke-virtual {p0}, Landroidx/media3/datasource/StatsDataSource;->getLastOpenedUri()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method
