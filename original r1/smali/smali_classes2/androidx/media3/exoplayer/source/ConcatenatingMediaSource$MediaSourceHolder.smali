.class final Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;
.super Ljava/lang/Object;
.source "ConcatenatingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;
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
            "Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;",
            ">;"
        }
    .end annotation
.end field

.field public childIndex:I

.field public firstWindowIndexInChild:I

.field public isRemoved:Z

.field public final mediaSource:Landroidx/media3/exoplayer/source/MaskingMediaSource;

.field public final uid:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/MediaSource;Z)V
    .locals 1

    .line 898
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 899
    new-instance v0, Landroidx/media3/exoplayer/source/MaskingMediaSource;

    invoke-direct {v0, p1, p2}, Landroidx/media3/exoplayer/source/MaskingMediaSource;-><init>(Landroidx/media3/exoplayer/source/MediaSource;Z)V

    iput-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->mediaSource:Landroidx/media3/exoplayer/source/MaskingMediaSource;

    .line 900
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->activeMediaPeriodIds:Ljava/util/List;

    .line 901
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->uid:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public reset(II)V
    .locals 0

    iput p1, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->childIndex:I

    iput p2, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->firstWindowIndexInChild:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->isRemoved:Z

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->activeMediaPeriodIds:Ljava/util/List;

    .line 908
    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method
