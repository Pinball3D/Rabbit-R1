.class final Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;
.super Ljava/lang/Object;
.source "MediaSourceList.java"

# interfaces
.implements Lcom/google/android/exoplayer2/MediaSourceInfoHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/MediaSourceList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MediaSourceHolder"
.end annotation


# instance fields
.field public final activeMediaPeriodIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;",
            ">;"
        }
    .end annotation
.end field

.field public firstWindowIndexInChild:I

.field public isRemoved:Z

.field public final mediaSource:Lcom/google/android/exoplayer2/source/MaskingMediaSource;

.field public final uid:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/MediaSource;Z)V
    .locals 1

    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 485
    new-instance v0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;

    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplayer2/source/MaskingMediaSource;-><init>(Lcom/google/android/exoplayer2/source/MediaSource;Z)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->mediaSource:Lcom/google/android/exoplayer2/source/MaskingMediaSource;

    .line 486
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->activeMediaPeriodIds:Ljava/util/List;

    .line 487
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->uid:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getTimeline()Lcom/google/android/exoplayer2/Timeline;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->mediaSource:Lcom/google/android/exoplayer2/source/MaskingMediaSource;

    .line 503
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->getTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object p0

    return-object p0
.end method

.method public getUid()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->uid:Ljava/lang/Object;

    return-object p0
.end method

.method public reset(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->firstWindowIndexInChild:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->isRemoved:Z

    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->activeMediaPeriodIds:Ljava/util/List;

    .line 493
    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method
