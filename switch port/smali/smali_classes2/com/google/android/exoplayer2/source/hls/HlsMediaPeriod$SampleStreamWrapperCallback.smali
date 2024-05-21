.class Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod$SampleStreamWrapperCallback;
.super Ljava/lang/Object;
.source "HlsMediaPeriod.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SampleStreamWrapperCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod$SampleStreamWrapperCallback;->this$0:Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;

    .line 888
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod$1;)V
    .locals 0

    .line 888
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod$SampleStreamWrapperCallback;-><init>(Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V
    .locals 0

    .line 888
    check-cast p1, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod$SampleStreamWrapperCallback;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;)V

    return-void
.end method

.method public onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod$SampleStreamWrapperCallback;->this$0:Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;

    .line 918
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->access$400(Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;)Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod$SampleStreamWrapperCallback;->this$0:Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    return-void
.end method

.method public onPlaylistRefreshRequired(Landroid/net/Uri;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod$SampleStreamWrapperCallback;->this$0:Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;

    .line 913
    invoke-static {p0}, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->access$500(Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;)Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->refreshPlaylist(Landroid/net/Uri;)V

    return-void
.end method

.method public onPrepared()V
    .locals 11

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod$SampleStreamWrapperCallback;->this$0:Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;

    .line 891
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->access$106(Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;)I

    move-result v0

    if-lez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod$SampleStreamWrapperCallback;->this$0:Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;

    .line 896
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->access$200(Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;)[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v5, v0, v3

    .line 897
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v5

    iget v5, v5, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 899
    :cond_1
    new-array v0, v4, [Lcom/google/android/exoplayer2/source/TrackGroup;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod$SampleStreamWrapperCallback;->this$0:Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;

    .line 901
    invoke-static {v1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->access$200(Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;)[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    move-result-object v1

    array-length v3, v1

    move v4, v2

    move v5, v4

    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v6, v1, v4

    .line 902
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v7

    iget v7, v7, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    move v8, v2

    :goto_2
    if-ge v8, v7, :cond_2

    add-int/lit8 v9, v5, 0x1

    .line 904
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v10

    aput-object v10, v0, v5

    add-int/lit8 v8, v8, 0x1

    move v5, v9

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod$SampleStreamWrapperCallback;->this$0:Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;

    .line 907
    new-instance v2, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-direct {v2, v0}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->access$302(Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;Lcom/google/android/exoplayer2/source/TrackGroupArray;)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod$SampleStreamWrapperCallback;->this$0:Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;

    .line 908
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->access$400(Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;)Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod$SampleStreamWrapperCallback;->this$0:Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->onPrepared(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    return-void
.end method
