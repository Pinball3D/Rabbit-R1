.class final Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;
.super Ljava/lang/Object;
.source "DefaultHlsPlaylistTracker.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/Loader$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaPlaylistBundle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/upstream/Loader$Callback<",
        "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<",
        "Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final BLOCK_MSN_PARAM:Ljava/lang/String; = "_HLS_msn"

.field private static final BLOCK_PART_PARAM:Ljava/lang/String; = "_HLS_part"

.field private static final SKIP_PARAM:Ljava/lang/String; = "_HLS_skip"


# instance fields
.field private earliestNextLoadTimeMs:J

.field private excludeUntilMs:J

.field private lastSnapshotChangeMs:J

.field private lastSnapshotLoadMs:J

.field private loadPending:Z

.field private final mediaPlaylistDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private final mediaPlaylistLoader:Lcom/google/android/exoplayer2/upstream/Loader;

.field private playlistError:Ljava/io/IOException;

.field private playlistSnapshot:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

.field private final playlistUrl:Landroid/net/Uri;

.field final synthetic this$0:Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker;Landroid/net/Uri;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->this$0:Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker;

    .line 530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistUrl:Landroid/net/Uri;

    .line 532
    new-instance p2, Lcom/google/android/exoplayer2/upstream/Loader;

    const-string v0, "DefaultHlsPlaylistTracker:MediaPlaylist"

    invoke-direct {p2, v0}, Lcom/google/android/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->mediaPlaylistLoader:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 533
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker;->access$700(Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker;)Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;

    move-result-object p1

    const/4 p2, 0x4

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;->createDataSource(I)Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->mediaPlaylistDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;J)Z
    .locals 0

    .line 512
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->excludePlaylist(J)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;Lcom/google/android/exoplayer2/source/LoadEventInfo;)V
    .locals 0

    .line 512
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->processLoadedPlaylist(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;Lcom/google/android/exoplayer2/source/LoadEventInfo;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;)J
    .locals 2

    .line 512
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->excludeUntilMs:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;)Landroid/net/Uri;
    .locals 0

    .line 512
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistUrl:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;Landroid/net/Uri;)V
    .locals 0

    .line 512
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->loadPlaylistInternal(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    .locals 0

    .line 512
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistSnapshot:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    return-object p0
.end method

.method private excludePlaylist(J)Z
    .locals 2

    .line 810
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->excludeUntilMs:J

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistUrl:Landroid/net/Uri;

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->this$0:Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker;

    .line 811
    invoke-static {p2}, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker;->access$1700(Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->this$0:Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker;

    invoke-static {p0}, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker;->access$1800(Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getMediaPlaylistUriForReload()Landroid/net/Uri;
    .locals 8

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistSnapshot:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    if-eqz v0, :cond_5

    .line 775
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->serverControl:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$ServerControl;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$ServerControl;->skipUntilUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistSnapshot:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->serverControl:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$ServerControl;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$ServerControl;->canBlockReload:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistUrl:Landroid/net/Uri;

    .line 780
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistSnapshot:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    .line 781
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->serverControl:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$ServerControl;

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$ServerControl;->canBlockReload:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistSnapshot:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    .line 782
    iget-wide v4, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistSnapshot:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    .line 783
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v6, v1

    add-long/2addr v4, v6

    const-string v1, "_HLS_msn"

    .line 784
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistSnapshot:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    .line 785
    iget-wide v4, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->partTargetDurationUs:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistSnapshot:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    .line 786
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->trailingParts:Ljava/util/List;

    .line 787
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    .line 788
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v1}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;->isPreload:Z

    if-eqz v1, :cond_1

    add-int/lit8 v4, v4, -0x1

    :cond_1
    const-string v1, "_HLS_part"

    .line 792
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistSnapshot:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    .line 795
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->serverControl:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$ServerControl;

    iget-wide v4, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$ServerControl;->skipUntilUs:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_4

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistSnapshot:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    .line 797
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->serverControl:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$ServerControl;

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$ServerControl;->canSkipDateRanges:Z

    if-eqz p0, :cond_3

    const-string p0, "v2"

    goto :goto_0

    :cond_3
    const-string p0, "YES"

    :goto_0
    const-string v1, "_HLS_skip"

    .line 796
    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 799
    :cond_4
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_1
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistUrl:Landroid/net/Uri;

    return-object p0
.end method

.method private loadPlaylistImmediately(Landroid/net/Uri;)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->this$0:Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker;

    .line 697
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker;->access$1300(Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker;)Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParserFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->this$0:Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker;

    invoke-static {v1}, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker;->access$1200(Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker;)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistSnapshot:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParserFactory;->createPlaylistParser(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;

    move-result-object v0

    .line 698
    new-instance v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->mediaPlaylistDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    const/4 v3, 0x4

    invoke-direct {v1, v2, p1, v3, v0}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Landroid/net/Uri;ILcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->mediaPlaylistLoader:Lcom/google/android/exoplayer2/upstream/Loader;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->this$0:Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker;

    .line 708
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker;->access$900(Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker;)Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    move-result-object v0

    iget v2, v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->type:I

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;->getMinimumLoadableRetryCount(I)I

    move-result v0

    .line 705
    invoke-virtual {p1, v1, p0, v0}, Lcom/google/android/exoplayer2/upstream/Loader;->startLoading(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;Lcom/google/android/exoplayer2/upstream/Loader$Callback;I)J

    move-result-wide v6

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->this$0:Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker;

    .line 709
    invoke-static {p0}, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker;->access$800(Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object p0

    new-instance p1, Lcom/google/android/exoplayer2/source/LoadEventInfo;

    iget-wide v3, v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->loadTaskId:J

    iget-object v5, v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/source/LoadEventInfo;-><init>(JLcom/google/android/exoplayer2/upstream/DataSpec;J)V

    iget v0, v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->type:I

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadStarted(Lcom/google/android/exoplayer2/source/LoadEventInfo;I)V

    return-void
.end method

.method private loadPlaylistInternal(Landroid/net/Uri;)V
    .locals 4

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->excludeUntilMs:J

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->loadPending:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->mediaPlaylistLoader:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 677
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->mediaPlaylistLoader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->hasFatalError()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 681
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->earliestNextLoadTimeMs:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->loadPending:Z

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->this$0:Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker;

    .line 684
    invoke-static {v2}, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker;->access$1100(Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;Landroid/net/Uri;)V

    iget-wide p0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->earliestNextLoadTimeMs:J

    sub-long/2addr p0, v0

    invoke-virtual {v2, v3, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 691
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->loadPlaylistImmediately(Landroid/net/Uri;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private processLoadedPlaylist(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;Lcom/google/android/exoplayer2/source/LoadEventInfo;)V
    .locals 11

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistSnapshot:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    .line 718
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->lastSnapshotLoadMs:J

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->this$0:Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker;

    .line 720
    invoke-static {v3, v0, p1}, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker;->access$1400(Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistSnapshot:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    const/4 v4, 0x0

    if-eq v3, v0, :cond_0

    iput-object v4, p0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistError:Ljava/io/IOException;

    iput-wide v1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->lastSnapshotChangeMs:J

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->this$0:Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker;

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistUrl:Landroid/net/Uri;

    .line 724
    invoke-static {p1, p2, v3}, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker;->access$1500(Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker;Landroid/net/Uri;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)V

    goto :goto_1

    .line 725
    :cond_0
    iget-boolean v3, v3, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    if-nez v3, :cond_3

    .line 728
    iget-wide v5, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    int-to-long v7, p1

    add-long/2addr v5, v7

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistSnapshot:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    iget-wide v7, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    cmp-long p1, v5, v7

    const/4 v3, 0x1

    if-gez p1, :cond_1

    .line 734
    new-instance v4, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistResetException;

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistUrl:Landroid/net/Uri;

    invoke-direct {v4, p1}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistResetException;-><init>(Landroid/net/Uri;)V

    move v5, v3

    goto :goto_0

    :cond_1
    iget-wide v5, p0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->lastSnapshotChangeMs:J

    sub-long v5, v1, v5

    long-to-double v5, v5

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistSnapshot:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    .line 735
    iget-wide v7, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->targetDurationUs:J

    .line 736
    invoke-static {v7, v8}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v7

    long-to-double v7, v7

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->this$0:Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker;

    .line 737
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker;->access$1600(Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker;)D

    move-result-wide v9

    mul-double/2addr v7, v9

    cmpl-double p1, v5, v7

    const/4 v5, 0x0

    if-lez p1, :cond_2

    .line 739
    new-instance v4, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistStuckException;

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistUrl:Landroid/net/Uri;

    invoke-direct {v4, p1}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistStuckException;-><init>(Landroid/net/Uri;)V

    :cond_2
    :goto_0
    if-eqz v4, :cond_3

    iput-object v4, p0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistError:Ljava/io/IOException;

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->this$0:Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker;

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistUrl:Landroid/net/Uri;

    .line 743
    new-instance v7, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;

    new-instance v8, Lcom/google/android/exoplayer2/source/MediaLoadData;

    const/4 v9, 0x4

    invoke-direct {v8, v9}, Lcom/google/android/exoplayer2/source/MediaLoadData;-><init>(I)V

    invoke-direct {v7, p2, v8, v4, v3}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;-><init>(Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;Ljava/io/IOException;I)V

    invoke-static {p1, v6, v7, v5}, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker;->access$1000(Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker;Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;Z)Z

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistSnapshot:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    .line 754
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->serverControl:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$ServerControl;

    iget-boolean p1, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$ServerControl;->canBlockReload:Z

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistSnapshot:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    if-eq p1, v0, :cond_4

    .line 759
    iget-wide p1, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->targetDurationUs:J

    goto :goto_2

    .line 760
    :cond_4
    iget-wide p1, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->targetDurationUs:J

    const-wide/16 v3, 0x2

    div-long/2addr p1, v3

    goto :goto_2

    :cond_5
    const-wide/16 p1, 0x0

    .line 762
    :goto_2
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide p1

    add-long/2addr v1, p1

    iput-wide v1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->earliestNextLoadTimeMs:J

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistSnapshot:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    .line 766
    iget-wide p1, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->partTargetDurationUs:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p1, v0

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistUrl:Landroid/net/Uri;

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->this$0:Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker;

    .line 768
    invoke-static {p2}, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker;->access$1700(Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistSnapshot:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    .line 769
    iget-boolean p1, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    if-nez p1, :cond_7

    .line 770
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->getMediaPlaylistUriForReload()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->loadPlaylistInternal(Landroid/net/Uri;)V

    :cond_7
    return-void
.end method


# virtual methods
.method public getPlaylistSnapshot()Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistSnapshot:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    return-object p0
.end method

.method public isSnapshotValid()Z
    .locals 9

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistSnapshot:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 545
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistSnapshot:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    .line 546
    iget-wide v4, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->durationUs:J

    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v4

    const-wide/16 v6, 0x7530

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistSnapshot:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    .line 547
    iget-boolean v0, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    const/4 v6, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistSnapshot:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    iget v0, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->playlistType:I

    const/4 v7, 0x2

    if-eq v0, v7, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistSnapshot:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    iget v0, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->playlistType:I

    if-eq v0, v6, :cond_1

    iget-wide v7, p0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->lastSnapshotLoadMs:J

    add-long/2addr v7, v4

    cmp-long p0, v7, v2

    if-lez p0, :cond_2

    :cond_1
    move v1, v6

    :cond_2
    return v1
.end method

.method synthetic lambda$loadPlaylistInternal$0$com-google-android-exoplayer2-source-hls-playlist-DefaultHlsPlaylistTracker$MediaPlaylistBundle(Landroid/net/Uri;)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->loadPending:Z

    .line 687
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->loadPlaylistImmediately(Landroid/net/Uri;)V

    return-void
.end method

.method public loadPlaylist()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistUrl:Landroid/net/Uri;

    .line 554
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->loadPlaylistInternal(Landroid/net/Uri;)V

    return-void
.end method

.method public maybeThrowPlaylistRefreshError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->mediaPlaylistLoader:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 558
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->maybeThrowError()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistError:Ljava/io/IOException;

    if-nez p0, :cond_0

    return-void

    .line 560
    :cond_0
    throw p0
.end method

.method public bridge synthetic onLoadCanceled(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJZ)V
    .locals 0

    .line 512
    check-cast p1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;

    invoke-virtual/range {p0 .. p6}, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->onLoadCanceled(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;JJZ)V

    return-void
.end method

.method public onLoadCanceled(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;JJZ)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;",
            ">;JJZ)V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    .line 602
    new-instance v14, Lcom/google/android/exoplayer2/source/LoadEventInfo;

    iget-wide v3, v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->loadTaskId:J

    iget-object v5, v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 606
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->getUri()Landroid/net/Uri;

    move-result-object v6

    .line 607
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->getResponseHeaders()Ljava/util/Map;

    move-result-object v7

    .line 610
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v12

    move-object v2, v14

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    invoke-direct/range {v2 .. v13}, Lcom/google/android/exoplayer2/source/LoadEventInfo;-><init>(JLcom/google/android/exoplayer2/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->this$0:Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker;

    .line 611
    invoke-static {v2}, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker;->access$900(Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker;)Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    move-result-object v2

    iget-wide v3, v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->loadTaskId:J

    invoke-interface {v2, v3, v4}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;->onLoadTaskConcluded(J)V

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->this$0:Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker;

    .line 612
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker;->access$800(Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v14, v1}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadCanceled(Lcom/google/android/exoplayer2/source/LoadEventInfo;I)V

    return-void
.end method

.method public bridge synthetic onLoadCompleted(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJ)V
    .locals 0

    .line 512
    check-cast p1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;

    invoke-virtual/range {p0 .. p5}, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->onLoadCompleted(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;JJ)V

    return-void
.end method

.method public onLoadCompleted(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;JJ)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;",
            ">;JJ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 573
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;

    .line 574
    new-instance v15, Lcom/google/android/exoplayer2/source/LoadEventInfo;

    iget-wide v4, v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->loadTaskId:J

    iget-object v6, v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 578
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->getUri()Landroid/net/Uri;

    move-result-object v7

    .line 579
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->getResponseHeaders()Ljava/util/Map;

    move-result-object v8

    .line 582
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v13

    move-object v3, v15

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v3 .. v14}, Lcom/google/android/exoplayer2/source/LoadEventInfo;-><init>(JLcom/google/android/exoplayer2/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 583
    instance-of v3, v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    const/4 v4, 0x4

    if-eqz v3, :cond_0

    .line 584
    check-cast v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    invoke-direct {v0, v2, v15}, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->processLoadedPlaylist(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;Lcom/google/android/exoplayer2/source/LoadEventInfo;)V

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->this$0:Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker;

    .line 585
    invoke-static {v2}, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker;->access$800(Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v2

    invoke-virtual {v2, v15, v4}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadCompleted(Lcom/google/android/exoplayer2/source/LoadEventInfo;I)V

    goto :goto_0

    :cond_0
    const-string v2, "Loaded playlist has unexpected type."

    const/4 v3, 0x0

    .line 588
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistError:Ljava/io/IOException;

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->this$0:Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker;

    .line 590
    invoke-static {v2}, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker;->access$800(Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistError:Ljava/io/IOException;

    const/4 v5, 0x1

    invoke-virtual {v2, v15, v4, v3, v5}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadError(Lcom/google/android/exoplayer2/source/LoadEventInfo;ILjava/io/IOException;Z)V

    :goto_0
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->this$0:Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker;

    .line 593
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker;->access$900(Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker;)Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    move-result-object v0

    iget-wide v1, v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->loadTaskId:J

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;->onLoadTaskConcluded(J)V

    return-void
.end method

.method public bridge synthetic onLoadError(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;
    .locals 0

    .line 512
    check-cast p1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;

    invoke-virtual/range {p0 .. p7}, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->onLoadError(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;

    move-result-object p0

    return-object p0
.end method

.method public onLoadError(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;",
            ">;JJ",
            "Ljava/io/IOException;",
            "I)",
            "Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    .line 622
    new-instance v15, Lcom/google/android/exoplayer2/source/LoadEventInfo;

    iget-wide v4, v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->loadTaskId:J

    iget-object v6, v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 626
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->getUri()Landroid/net/Uri;

    move-result-object v7

    .line 627
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->getResponseHeaders()Ljava/util/Map;

    move-result-object v8

    .line 630
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v13

    move-object v3, v15

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v3 .. v14}, Lcom/google/android/exoplayer2/source/LoadEventInfo;-><init>(JLcom/google/android/exoplayer2/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 631
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->getUri()Landroid/net/Uri;

    move-result-object v3

    const-string v4, "_HLS_msn"

    invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    .line 632
    :goto_0
    instance-of v6, v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser$DeltaUpdateException;

    if-nez v3, :cond_1

    if-eqz v6, :cond_3

    .line 635
    :cond_1
    instance-of v3, v2, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;

    if-eqz v3, :cond_2

    .line 636
    move-object v3, v2

    check-cast v3, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;

    iget v3, v3, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;->responseCode:I

    goto :goto_1

    :cond_2
    const v3, 0x7fffffff

    :goto_1
    if-nez v6, :cond_7

    const/16 v6, 0x190

    if-eq v3, v6, :cond_7

    const/16 v6, 0x1f7

    if-ne v3, v6, :cond_3

    goto :goto_3

    .line 649
    :cond_3
    new-instance v3, Lcom/google/android/exoplayer2/source/MediaLoadData;

    iget v6, v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->type:I

    invoke-direct {v3, v6}, Lcom/google/android/exoplayer2/source/MediaLoadData;-><init>(I)V

    .line 650
    new-instance v6, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;

    move/from16 v7, p7

    invoke-direct {v6, v15, v3, v2, v7}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;-><init>(Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;Ljava/io/IOException;I)V

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->this$0:Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker;

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistUrl:Landroid/net/Uri;

    .line 653
    invoke-static {v3, v7, v6, v5}, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker;->access$1000(Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker;Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;Z)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->this$0:Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker;

    .line 656
    invoke-static {v3}, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker;->access$900(Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker;)Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    move-result-object v3

    invoke-interface {v3, v6}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;->getRetryDelayMsFor(Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;)J

    move-result-wide v6

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v6, v8

    if-eqz v3, :cond_4

    .line 659
    invoke-static {v5, v6, v7}, Lcom/google/android/exoplayer2/upstream/Loader;->createRetryAction(ZJ)Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;

    move-result-object v3

    goto :goto_2

    .line 660
    :cond_4
    sget-object v3, Lcom/google/android/exoplayer2/upstream/Loader;->DONT_RETRY_FATAL:Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;

    goto :goto_2

    .line 662
    :cond_5
    sget-object v3, Lcom/google/android/exoplayer2/upstream/Loader;->DONT_RETRY:Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;

    .line 665
    :goto_2
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;->isRetry()Z

    move-result v5

    xor-int/2addr v4, v5

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->this$0:Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker;

    .line 666
    invoke-static {v5}, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker;->access$800(Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v5

    iget v6, v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->type:I

    invoke-virtual {v5, v15, v6, v2, v4}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadError(Lcom/google/android/exoplayer2/source/LoadEventInfo;ILjava/io/IOException;Z)V

    if-eqz v4, :cond_6

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->this$0:Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker;

    .line 668
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker;->access$900(Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker;)Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    move-result-object v0

    iget-wide v1, v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->loadTaskId:J

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;->onLoadTaskConcluded(J)V

    :cond_6
    return-object v3

    .line 642
    :cond_7
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->earliestNextLoadTimeMs:J

    .line 643
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->loadPlaylist()V

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->this$0:Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker;

    .line 644
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker;->access$800(Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget v1, v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->type:I

    .line 645
    invoke-virtual {v0, v15, v1, v2, v4}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadError(Lcom/google/android/exoplayer2/source/LoadEventInfo;ILjava/io/IOException;Z)V

    .line 646
    sget-object v0, Lcom/google/android/exoplayer2/upstream/Loader;->DONT_RETRY:Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;

    return-object v0
.end method

.method public release()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->mediaPlaylistLoader:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 565
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/Loader;->release()V

    return-void
.end method
