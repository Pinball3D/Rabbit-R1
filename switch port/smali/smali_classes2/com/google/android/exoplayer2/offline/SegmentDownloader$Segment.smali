.class public Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;
.super Ljava/lang/Object;
.source "SegmentDownloader.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/offline/SegmentDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Segment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;",
        ">;"
    }
.end annotation


# instance fields
.field public final dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

.field public final startTimeUs:J


# direct methods
.method public constructor <init>(JLcom/google/android/exoplayer2/upstream/DataSpec;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;->startTimeUs:J

    iput-object p3, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;)I
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;->startTimeUs:J

    .line 71
    iget-wide p0, p1, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;->startTimeUs:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/android/exoplayer2/util/Util;->compareLong(JJ)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 55
    check-cast p1, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;->compareTo(Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;)I

    move-result p0

    return p0
.end method
