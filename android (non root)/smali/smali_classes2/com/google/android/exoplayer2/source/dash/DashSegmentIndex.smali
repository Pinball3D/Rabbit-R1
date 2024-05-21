.class public interface abstract Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;
.super Ljava/lang/Object;
.source "DashSegmentIndex.java"


# static fields
.field public static final INDEX_UNBOUNDED:I = -0x1


# virtual methods
.method public abstract getAvailableSegmentCount(JJ)J
.end method

.method public abstract getDurationUs(JJ)J
.end method

.method public abstract getFirstAvailableSegmentNum(JJ)J
.end method

.method public abstract getFirstSegmentNum()J
.end method

.method public abstract getNextSegmentAvailableTimeUs(JJ)J
.end method

.method public abstract getSegmentCount(J)J
.end method

.method public abstract getSegmentNum(JJ)J
.end method

.method public abstract getSegmentUrl(J)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
.end method

.method public abstract getTimeUs(J)J
.end method

.method public abstract isExplicit()Z
.end method
