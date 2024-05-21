.class public final Lcom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;
.super Ljava/lang/Object;
.source "WebvttCueInfo.java"


# instance fields
.field public final cue:Lcom/google/android/exoplayer2/text/Cue;

.field public final endTimeUs:J

.field public final startTimeUs:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/text/Cue;JJ)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;->cue:Lcom/google/android/exoplayer2/text/Cue;

    iput-wide p2, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;->startTimeUs:J

    iput-wide p4, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;->endTimeUs:J

    return-void
.end method
