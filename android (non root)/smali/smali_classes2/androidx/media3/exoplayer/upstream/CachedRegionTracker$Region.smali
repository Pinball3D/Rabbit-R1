.class Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;
.super Ljava/lang/Object;
.source "CachedRegionTracker.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/upstream/CachedRegionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Region"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;",
        ">;"
    }
.end annotation


# instance fields
.field public endOffset:J

.field public endOffsetIndex:I

.field public startOffset:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;->startOffset:J

    iput-wide p3, p0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;->endOffset:J

    return-void
.end method


# virtual methods
.method public compareTo(Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;)I
    .locals 2

    iget-wide v0, p0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;->startOffset:J

    .line 201
    iget-wide p0, p1, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;->startOffset:J

    invoke-static {v0, v1, p0, p1}, Landroidx/media3/common/util/Util;->compareLong(JJ)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 181
    check-cast p1, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;->compareTo(Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;)I

    move-result p0

    return p0
.end method
