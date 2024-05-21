.class final Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;
.super Ljava/lang/Object;
.source "MediaMetricsListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/analytics/MediaMetricsListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ErrorInfo"
.end annotation


# instance fields
.field public final errorCode:I

.field public final subErrorCode:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 877
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;->errorCode:I

    iput p2, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;->subErrorCode:I

    return-void
.end method
