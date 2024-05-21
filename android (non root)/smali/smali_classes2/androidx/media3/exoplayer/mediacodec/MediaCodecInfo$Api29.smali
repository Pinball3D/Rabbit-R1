.class final Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo$Api29;
.super Ljava/lang/Object;
.source "MediaCodecInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api29"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 908
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areResolutionAndFrameRateCovered(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)I
    .locals 2

    .line 913
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedPerformancePoints()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 915
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 916
    invoke-static {}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 923
    :cond_0
    new-instance v1, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    double-to-int p3, p3

    invoke-direct {v1, p1, p2, p3}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    .line 926
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    .line 927
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    invoke-virtual {p1, v1}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->covers(Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    return v0
.end method
