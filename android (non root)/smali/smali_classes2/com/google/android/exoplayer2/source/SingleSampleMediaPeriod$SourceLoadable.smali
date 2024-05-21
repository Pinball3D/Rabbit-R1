.class final Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;
.super Ljava/lang/Object;
.source "SingleSampleMediaPeriod.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/Loader$Loadable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SourceLoadable"
.end annotation


# instance fields
.field private final dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

.field public final dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

.field public final loadTaskId:J

.field private sampleData:[B


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/upstream/DataSource;)V
    .locals 2

    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 420
    invoke-static {}, Lcom/google/android/exoplayer2/source/LoadEventInfo;->getNewId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->loadTaskId:J

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 422
    new-instance p1, Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/upstream/StatsDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;)Lcom/google/android/exoplayer2/upstream/StatsDataSource;
    .locals 0

    .line 410
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;)[B
    .locals 0

    .line 410
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->sampleData:[B

    return-object p0
.end method


# virtual methods
.method public cancelLoad()V
    .locals 0

    return-void
.end method

.method public load()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    .line 433
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/StatsDataSource;->resetBytesRead()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 436
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/StatsDataSource;->open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J

    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    .line 440
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/StatsDataSource;->getBytesRead()J

    move-result-wide v0

    long-to-int v0, v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->sampleData:[B

    if-nez v1, :cond_0

    const/16 v1, 0x400

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->sampleData:[B

    goto :goto_1

    .line 443
    :cond_0
    array-length v2, v1

    if-ne v0, v2, :cond_1

    .line 444
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->sampleData:[B

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->sampleData:[B

    .line 446
    array-length v3, v2

    sub-int/2addr v3, v0

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/android/exoplayer2/upstream/StatsDataSource;->read([BII)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    .line 449
    invoke-static {p0}, Lcom/google/android/exoplayer2/upstream/DataSourceUtil;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    invoke-static {p0}, Lcom/google/android/exoplayer2/upstream/DataSourceUtil;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    .line 450
    throw v0
.end method
