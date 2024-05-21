.class public interface abstract Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;
.super Ljava/lang/Object;
.source "PlaybackSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager$Listener;
    }
.end annotation


# virtual methods
.method public abstract belongsToSession(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)Z
.end method

.method public abstract finishAllSessions(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
.end method

.method public abstract getActiveSessionId()Ljava/lang/String;
.end method

.method public abstract getSessionForMediaPeriodId(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Ljava/lang/String;
.end method

.method public abstract setListener(Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager$Listener;)V
.end method

.method public abstract updateSessions(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
.end method

.method public abstract updateSessionsWithDiscontinuity(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V
.end method

.method public abstract updateSessionsWithTimelineChange(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
.end method
