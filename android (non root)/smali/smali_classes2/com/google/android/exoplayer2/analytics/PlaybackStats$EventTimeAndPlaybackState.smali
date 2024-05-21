.class public final Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndPlaybackState;
.super Ljava/lang/Object;
.source "PlaybackStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/analytics/PlaybackStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventTimeAndPlaybackState"
.end annotation


# instance fields
.field public final eventTime:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

.field public final playbackState:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndPlaybackState;->eventTime:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    iput p2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndPlaybackState;->playbackState:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 64
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndPlaybackState;

    iget v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndPlaybackState;->playbackState:I

    .line 65
    iget v2, p1, Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndPlaybackState;->playbackState:I

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    iget-object p0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndPlaybackState;->eventTime:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    .line 68
    iget-object p1, p1, Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndPlaybackState;->eventTime:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndPlaybackState;->eventTime:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    .line 73
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndPlaybackState;->playbackState:I

    add-int/2addr v0, p0

    return v0
.end method
