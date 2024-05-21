.class public interface abstract Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager$Listener;
.super Ljava/lang/Object;
.source "PlaybackSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onAdPlaybackStarted(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onSessionActive(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V
.end method

.method public abstract onSessionCreated(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V
.end method

.method public abstract onSessionFinished(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Z)V
.end method
