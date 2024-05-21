.class final Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;
.super Ljava/lang/Object;
.source "MediaMetricsListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/analytics/MediaMetricsListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PendingFormatUpdate"
.end annotation


# instance fields
.field public final format:Landroidx/media3/common/Format;

.field public final selectionReason:I

.field public final sessionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/media3/common/Format;ILjava/lang/String;)V
    .locals 0

    .line 890
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;->format:Landroidx/media3/common/Format;

    iput p2, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;->selectionReason:I

    iput-object p3, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;->sessionId:Ljava/lang/String;

    return-void
.end method
