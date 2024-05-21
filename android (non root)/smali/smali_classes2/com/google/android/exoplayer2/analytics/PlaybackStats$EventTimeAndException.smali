.class public final Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndException;
.super Ljava/lang/Object;
.source "PlaybackStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/analytics/PlaybackStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventTimeAndException"
.end annotation


# instance fields
.field public final eventTime:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

.field public final exception:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .locals 0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndException;->eventTime:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    iput-object p2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndException;->exception:Ljava/lang/Exception;

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

    .line 146
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 149
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndException;

    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndException;->eventTime:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    .line 150
    iget-object v2, p1, Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndException;->eventTime:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    :cond_2
    iget-object p0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndException;->exception:Ljava/lang/Exception;

    .line 153
    iget-object p1, p1, Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndException;->exception:Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndException;->eventTime:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    .line 158
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndException;->exception:Ljava/lang/Exception;

    .line 159
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method
