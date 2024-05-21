.class public final Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;
.super Ljava/lang/Object;
.source "ServiceDescriptionElement.java"


# instance fields
.field public final maxOffsetMs:J

.field public final maxPlaybackSpeed:F

.field public final minOffsetMs:J

.field public final minPlaybackSpeed:F

.field public final targetOffsetMs:J


# direct methods
.method public constructor <init>(JJJFF)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;->targetOffsetMs:J

    iput-wide p3, p0, Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;->minOffsetMs:J

    iput-wide p5, p0, Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;->maxOffsetMs:J

    iput p7, p0, Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;->minPlaybackSpeed:F

    iput p8, p0, Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;->maxPlaybackSpeed:F

    return-void
.end method
