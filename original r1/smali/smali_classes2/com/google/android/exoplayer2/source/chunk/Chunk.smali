.class public abstract Lcom/google/android/exoplayer2/source/chunk/Chunk;
.super Ljava/lang/Object;
.source "Chunk.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/Loader$Loadable;


# instance fields
.field protected final dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

.field public final dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

.field public final endTimeUs:J

.field public final loadTaskId:J

.field public final startTimeUs:J

.field public final trackFormat:Lcom/google/android/exoplayer2/Format;

.field public final trackSelectionData:Ljava/lang/Object;

.field public final trackSelectionReason:I

.field public final type:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;ILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V
    .locals 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/upstream/StatsDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    .line 90
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/upstream/DataSpec;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iput p3, p0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->type:I

    iput-object p4, p0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    iput p5, p0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackSelectionReason:I

    iput-object p6, p0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackSelectionData:Ljava/lang/Object;

    iput-wide p7, p0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->startTimeUs:J

    iput-wide p9, p0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->endTimeUs:J

    .line 97
    invoke-static {}, Lcom/google/android/exoplayer2/source/LoadEventInfo;->getNewId()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->loadTaskId:J

    return-void
.end method


# virtual methods
.method public final bytesLoaded()J
    .locals 2

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    .line 110
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/StatsDataSource;->getBytesRead()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getDurationUs()J
    .locals 4

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->endTimeUs:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->startTimeUs:J

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

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    .line 131
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/StatsDataSource;->getLastResponseHeaders()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    .line 121
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/StatsDataSource;->getLastOpenedUri()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method
