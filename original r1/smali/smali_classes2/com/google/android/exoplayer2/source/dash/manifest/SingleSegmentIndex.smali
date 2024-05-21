.class final Lcom/google/android/exoplayer2/source/dash/manifest/SingleSegmentIndex;
.super Ljava/lang/Object;
.source "SingleSegmentIndex.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;


# instance fields
.field private final uri:Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SingleSegmentIndex;->uri:Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    return-void
.end method


# virtual methods
.method public getAvailableSegmentCount(JJ)J
    .locals 0

    const-wide/16 p0, 0x1

    return-wide p0
.end method

.method public getDurationUs(JJ)J
    .locals 0

    return-wide p3
.end method

.method public getFirstAvailableSegmentNum(JJ)J
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getFirstSegmentNum()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getNextSegmentAvailableTimeUs(JJ)J
    .locals 0

    const-wide p0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide p0
.end method

.method public getSegmentCount(J)J
    .locals 0

    const-wide/16 p0, 0x1

    return-wide p0
.end method

.method public getSegmentNum(JJ)J
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getSegmentUrl(J)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SingleSegmentIndex;->uri:Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    return-object p0
.end method

.method public getTimeUs(J)J
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public isExplicit()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
