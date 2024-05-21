.class final Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$PendingFormatUpdate;
.super Ljava/lang/Object;
.source "MediaMetricsListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PendingFormatUpdate"
.end annotation


# instance fields
.field public final format:Lcom/google/android/exoplayer2/Format;

.field public final selectionReason:I

.field public final sessionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/Format;ILjava/lang/String;)V
    .locals 0

    .line 888
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$PendingFormatUpdate;->format:Lcom/google/android/exoplayer2/Format;

    iput p2, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$PendingFormatUpdate;->selectionReason:I

    iput-object p3, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$PendingFormatUpdate;->sessionId:Ljava/lang/String;

    return-void
.end method
