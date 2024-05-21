.class public Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;
.super Ljava/lang/Object;
.source "SegmentDownloader.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/offline/SegmentDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Segment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;",
        ">;"
    }
.end annotation


# instance fields
.field public final dataSpec:Landroidx/media3/datasource/DataSpec;

.field public final startTimeUs:J


# direct methods
.method public constructor <init>(JLandroidx/media3/datasource/DataSpec;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;->startTimeUs:J

    iput-object p3, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;->dataSpec:Landroidx/media3/datasource/DataSpec;

    return-void
.end method


# virtual methods
.method public compareTo(Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;)I
    .locals 2

    iget-wide v0, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;->startTimeUs:J

    .line 74
    iget-wide p0, p1, Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;->startTimeUs:J

    invoke-static {v0, v1, p0, p1}, Landroidx/media3/common/util/Util;->compareLong(JJ)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 58
    check-cast p1, Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;->compareTo(Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;)I

    move-result p0

    return p0
.end method
