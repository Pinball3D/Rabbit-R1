.class public final Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;
.super Landroidx/media3/exoplayer/source/CompositeMediaSource;
.source "ConcatenatingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$ConcatenatedTimeline;,
        Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;,
        Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$FakeMediaSource;,
        Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$HandlerAndRunnable;,
        Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MessageData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/media3/exoplayer/source/CompositeMediaSource<",
        "Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final MSG_ADD:I = 0x0

.field private static final MSG_MOVE:I = 0x2

.field private static final MSG_ON_COMPLETION:I = 0x5

.field private static final MSG_REMOVE:I = 0x1

.field private static final MSG_SET_SHUFFLE_ORDER:I = 0x3

.field private static final MSG_UPDATE_TIMELINE:I = 0x4

.field private static final PLACEHOLDER_MEDIA_ITEM:Landroidx/media3/common/MediaItem;


# instance fields
.field private final enabledMediaSourceHolders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final isAtomic:Z

.field private final mediaSourceByMediaPeriod:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Landroidx/media3/exoplayer/source/MediaPeriod;",
            "Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaSourceByUid:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaSourceHolders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaSourcesPublic:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;",
            ">;"
        }
    .end annotation
.end field

.field private nextTimelineUpdateOnCompletionActions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$HandlerAndRunnable;",
            ">;"
        }
    .end annotation
.end field

.field private final pendingOnCompletionActions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$HandlerAndRunnable;",
            ">;"
        }
    .end annotation
.end field

.field private playbackThreadHandler:Landroid/os/Handler;

.field private shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

.field private timelineUpdateScheduled:Z

.field private final useLazyPreparation:Z


# direct methods
.method public static synthetic $r8$lambda$AhFP8_Da86SSkED5yzGwK0UeGmw(Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;Landroid/os/Message;)Z
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->handleMessage(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 64
    new-instance v0, Landroidx/media3/common/MediaItem$Builder;

    invoke-direct {v0}, Landroidx/media3/common/MediaItem$Builder;-><init>()V

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 65
    invoke-virtual {v0, v1}, Landroidx/media3/common/MediaItem$Builder;->setUri(Landroid/net/Uri;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/MediaItem$Builder;->build()Landroidx/media3/common/MediaItem;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->PLACEHOLDER_MEDIA_ITEM:Landroidx/media3/common/MediaItem;

    return-void
.end method

.method public varargs constructor <init>(ZLandroidx/media3/exoplayer/source/ShuffleOrder;[Landroidx/media3/exoplayer/source/MediaSource;)V
    .locals 1

    const/4 v0, 0x0

    .line 117
    invoke-direct {p0, p1, v0, p2, p3}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;-><init>(ZZLandroidx/media3/exoplayer/source/ShuffleOrder;[Landroidx/media3/exoplayer/source/MediaSource;)V

    return-void
.end method

.method public varargs constructor <init>(ZZLandroidx/media3/exoplayer/source/ShuffleOrder;[Landroidx/media3/exoplayer/source/MediaSource;)V
    .locals 3

    .line 135
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/CompositeMediaSource;-><init>()V

    .line 136
    array-length v0, p4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p4, v1

    .line 137
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 139
    :cond_0
    invoke-interface {p3}, Landroidx/media3/exoplayer/source/ShuffleOrder;->getLength()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {p3}, Landroidx/media3/exoplayer/source/ShuffleOrder;->cloneAndClear()Landroidx/media3/exoplayer/source/ShuffleOrder;

    move-result-object p3

    :cond_1
    iput-object p3, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 140
    new-instance p3, Ljava/util/IdentityHashMap;

    invoke-direct {p3}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p3, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->mediaSourceByMediaPeriod:Ljava/util/IdentityHashMap;

    .line 141
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->mediaSourceByUid:Ljava/util/Map;

    .line 142
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    .line 143
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    .line 144
    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    iput-object p3, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->nextTimelineUpdateOnCompletionActions:Ljava/util/Set;

    .line 145
    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    iput-object p3, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->pendingOnCompletionActions:Ljava/util/Set;

    .line 146
    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    iput-object p3, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->enabledMediaSourceHolders:Ljava/util/Set;

    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->isAtomic:Z

    iput-boolean p2, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->useLazyPreparation:Z

    .line 149
    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->addMediaSources(Ljava/util/Collection;)V

    return-void
.end method

.method public varargs constructor <init>(Z[Landroidx/media3/exoplayer/source/MediaSource;)V
    .locals 2

    .line 105
    new-instance v0, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;-><init>(I)V

    invoke-direct {p0, p1, v0, p2}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;-><init>(ZLandroidx/media3/exoplayer/source/ShuffleOrder;[Landroidx/media3/exoplayer/source/MediaSource;)V

    return-void
.end method

.method public varargs constructor <init>([Landroidx/media3/exoplayer/source/MediaSource;)V
    .locals 1

    const/4 v0, 0x0

    .line 95
    invoke-direct {p0, v0, p1}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;-><init>(Z[Landroidx/media3/exoplayer/source/MediaSource;)V

    return-void
.end method

.method static synthetic access$100()Landroidx/media3/common/MediaItem;
    .locals 1

    sget-object v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->PLACEHOLDER_MEDIA_ITEM:Landroidx/media3/common/MediaItem;

    return-object v0
.end method

.method private addMediaSourceInternal(ILandroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;)V
    .locals 2

    if-lez p1, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    .line 784
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;

    .line 785
    iget-object v1, v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->mediaSource:Landroidx/media3/exoplayer/source/MaskingMediaSource;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/source/MaskingMediaSource;->getTimeline()Landroidx/media3/common/Timeline;

    move-result-object v1

    .line 786
    iget v0, v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->firstWindowIndexInChild:I

    .line 787
    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 786
    invoke-virtual {p2, p1, v0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->reset(II)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 789
    invoke-virtual {p2, p1, v0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->reset(II)V

    .line 791
    :goto_0
    iget-object v0, p2, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->mediaSource:Landroidx/media3/exoplayer/source/MaskingMediaSource;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/MaskingMediaSource;->getTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    .line 792
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, v0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->correctOffsets(III)V

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    .line 793
    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->mediaSourceByUid:Ljava/util/Map;

    .line 794
    iget-object v0, p2, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->uid:Ljava/lang/Object;

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    iget-object p1, p2, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->mediaSource:Landroidx/media3/exoplayer/source/MaskingMediaSource;

    invoke-virtual {p0, p2, p1}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->prepareChildSource(Ljava/lang/Object;Landroidx/media3/exoplayer/source/MediaSource;)V

    .line 796
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->mediaSourceByMediaPeriod:Ljava/util/IdentityHashMap;

    invoke-virtual {p1}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->enabledMediaSourceHolders:Ljava/util/Set;

    .line 797
    invoke-interface {p0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 799
    :cond_1
    invoke-virtual {p0, p2}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->disableChildSource(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method private addMediaSourcesInternal(ILjava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;",
            ">;)V"
        }
    .end annotation

    .line 777
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;

    add-int/lit8 v1, p1, 0x1

    .line 778
    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->addMediaSourceInternal(ILandroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;)V

    move p1, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addPublicMediaSources(ILjava/util/Collection;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Landroidx/media3/exoplayer/source/MediaSource;",
            ">;",
            "Landroid/os/Handler;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-nez p4, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    if-ne v2, v3, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    .line 582
    :goto_2
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->playbackThreadHandler:Landroid/os/Handler;

    .line 584
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/source/MediaSource;

    .line 585
    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 587
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 588
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/exoplayer/source/MediaSource;

    .line 589
    new-instance v5, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;

    iget-boolean v6, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->useLazyPreparation:Z

    invoke-direct {v5, v4, v6}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;-><init>(Landroidx/media3/exoplayer/source/MediaSource;Z)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_4
    iget-object v3, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    .line 591
    invoke-interface {v3, p1, v2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    if-eqz v0, :cond_5

    .line 592
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    .line 594
    invoke-direct {p0, p3, p4}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->createOnCompletionAction(Landroid/os/Handler;Ljava/lang/Runnable;)Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$HandlerAndRunnable;

    move-result-object p0

    .line 595
    new-instance p2, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MessageData;

    invoke-direct {p2, p1, v2, p0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MessageData;-><init>(ILjava/lang/Object;Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$HandlerAndRunnable;)V

    .line 596
    invoke-virtual {v0, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 597
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_5

    :cond_5
    if-eqz p4, :cond_6

    if-eqz p3, :cond_6

    .line 599
    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_6
    :goto_5
    return-void
.end method

.method private correctOffsets(III)V
    .locals 2

    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    .line 842
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    .line 843
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;

    .line 844
    iget v1, v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->childIndex:I

    add-int/2addr v1, p2

    iput v1, v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->childIndex:I

    .line 845
    iget v1, v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->firstWindowIndexInChild:I

    add-int/2addr v1, p3

    iput v1, v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->firstWindowIndexInChild:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private createOnCompletionAction(Landroid/os/Handler;Ljava/lang/Runnable;)Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$HandlerAndRunnable;
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 679
    :cond_0
    new-instance v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$HandlerAndRunnable;

    invoke-direct {v0, p1, p2}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$HandlerAndRunnable;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;)V

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->pendingOnCompletionActions:Ljava/util/Set;

    .line 680
    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private disableUnusedMediaSources()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->enabledMediaSourceHolders:Ljava/util/Set;

    .line 863
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 864
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 865
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;

    .line 866
    iget-object v2, v1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->activeMediaPeriodIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 867
    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->disableChildSource(Ljava/lang/Object;)V

    .line 868
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private declared-synchronized dispatchOnCompletionActions(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$HandlerAndRunnable;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 769
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$HandlerAndRunnable;

    .line 770
    invoke-virtual {v1}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$HandlerAndRunnable;->dispatch()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->pendingOnCompletionActions:Ljava/util/Set;

    .line 772
    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 773
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private enableMediaSource(Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->enabledMediaSourceHolders:Ljava/util/Set;

    .line 858
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 859
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->enableChildSource(Ljava/lang/Object;)V

    return-void
.end method

.method private static getChildPeriodUid(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 880
    invoke-static {p0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$ConcatenatedTimeline;->getChildPeriodUidFromConcatenatedUid(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static getMediaSourceHolderUid(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 875
    invoke-static {p0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$ConcatenatedTimeline;->getChildTimelineUidFromConcatenatedUid(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static getPeriodUid(Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 884
    iget-object p0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->uid:Ljava/lang/Object;

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$ConcatenatedTimeline;->getConcatenatedUid(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private getPlaybackThreadHandlerOnPlaybackThread()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->playbackThreadHandler:Landroid/os/Handler;

    .line 764
    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    return-object p0
.end method

.method private handleMessage(Landroid/os/Message;)Z
    .locals 4

    .line 688
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    .line 727
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p1}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    .line 728
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->dispatchOnCompletionActions(Ljava/util/Set;)V

    goto/16 :goto_2

    .line 731
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 724
    :cond_1
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->updateTimelineAndScheduleOnCompletionActions()V

    goto/16 :goto_2

    .line 718
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 719
    invoke-static {p1}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MessageData;

    .line 720
    iget-object v0, p1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MessageData;->customData:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/source/ShuffleOrder;

    iput-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 721
    iget-object p1, p1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MessageData;->onCompletionAction:Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$HandlerAndRunnable;

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->scheduleTimelineUpdate(Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$HandlerAndRunnable;)V

    goto/16 :goto_2

    .line 711
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p1}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MessageData;

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 712
    iget v2, p1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MessageData;->index:I

    iget v3, p1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MessageData;->index:I

    add-int/2addr v3, v1

    invoke-interface {v0, v2, v3}, Landroidx/media3/exoplayer/source/ShuffleOrder;->cloneAndRemove(II)Landroidx/media3/exoplayer/source/ShuffleOrder;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 713
    iget-object v2, p1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MessageData;->customData:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v2, v1}, Landroidx/media3/exoplayer/source/ShuffleOrder;->cloneAndInsert(II)Landroidx/media3/exoplayer/source/ShuffleOrder;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 714
    iget v0, p1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MessageData;->index:I

    iget-object v2, p1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MessageData;->customData:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v0, v2}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->moveMediaSourceInternal(II)V

    .line 715
    iget-object p1, p1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MessageData;->onCompletionAction:Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$HandlerAndRunnable;

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->scheduleTimelineUpdate(Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$HandlerAndRunnable;)V

    goto :goto_2

    .line 697
    :cond_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p1}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MessageData;

    .line 698
    iget v0, p1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MessageData;->index:I

    .line 699
    iget-object v2, p1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MessageData;->customData:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v0, :cond_5

    iget-object v3, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 700
    invoke-interface {v3}, Landroidx/media3/exoplayer/source/ShuffleOrder;->getLength()I

    move-result v3

    if-ne v2, v3, :cond_5

    iget-object v3, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 701
    invoke-interface {v3}, Landroidx/media3/exoplayer/source/ShuffleOrder;->cloneAndClear()Landroidx/media3/exoplayer/source/ShuffleOrder;

    move-result-object v3

    iput-object v3, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

    goto :goto_0

    :cond_5
    iget-object v3, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 703
    invoke-interface {v3, v0, v2}, Landroidx/media3/exoplayer/source/ShuffleOrder;->cloneAndRemove(II)Landroidx/media3/exoplayer/source/ShuffleOrder;

    move-result-object v3

    iput-object v3, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

    :goto_0
    sub-int/2addr v2, v1

    :goto_1
    if-lt v2, v0, :cond_6

    .line 706
    invoke-direct {p0, v2}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->removeMediaSourceInternal(I)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 708
    :cond_6
    iget-object p1, p1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MessageData;->onCompletionAction:Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$HandlerAndRunnable;

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->scheduleTimelineUpdate(Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$HandlerAndRunnable;)V

    goto :goto_2

    .line 690
    :cond_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 691
    invoke-static {p1}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MessageData;

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 692
    iget v2, p1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MessageData;->index:I

    iget-object v3, p1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MessageData;->customData:Ljava/lang/Object;

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroidx/media3/exoplayer/source/ShuffleOrder;->cloneAndInsert(II)Landroidx/media3/exoplayer/source/ShuffleOrder;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 693
    iget v0, p1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MessageData;->index:I

    iget-object v2, p1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MessageData;->customData:Ljava/lang/Object;

    check-cast v2, Ljava/util/Collection;

    invoke-direct {p0, v0, v2}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->addMediaSourcesInternal(ILjava/util/Collection;)V

    .line 694
    iget-object p1, p1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MessageData;->onCompletionAction:Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$HandlerAndRunnable;

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->scheduleTimelineUpdate(Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$HandlerAndRunnable;)V

    :goto_2
    return v1
.end method

.method private maybeReleaseChildSource(Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;)V
    .locals 1

    .line 851
    iget-boolean v0, p1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->isRemoved:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->activeMediaPeriodIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->enabledMediaSourceHolders:Ljava/util/Set;

    .line 852
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 853
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->releaseChildSource(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private moveMediaSourceInternal(II)V
    .locals 4

    .line 827
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 828
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    .line 829
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;

    iget v2, v2, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->firstWindowIndexInChild:I

    iget-object v3, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    .line 830
    invoke-interface {v3, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;

    invoke-interface {v3, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_0
    if-gt v0, v1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    .line 832
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;

    .line 833
    iput v0, p1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->childIndex:I

    .line 834
    iput v2, p1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->firstWindowIndexInChild:I

    .line 835
    iget-object p1, p1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->mediaSource:Landroidx/media3/exoplayer/source/MaskingMediaSource;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/source/MaskingMediaSource;->getTimeline()Landroidx/media3/common/Timeline;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result p1

    add-int/2addr v2, p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private movePublicMediaSource(IILandroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-nez p4, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    if-ne v2, v3, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    .line 629
    :goto_2
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->playbackThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    .line 631
    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;

    invoke-interface {v1, p2, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    if-eqz v0, :cond_3

    .line 634
    invoke-direct {p0, p3, p4}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->createOnCompletionAction(Landroid/os/Handler;Ljava/lang/Runnable;)Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$HandlerAndRunnable;

    move-result-object p0

    .line 635
    new-instance p3, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MessageData;

    .line 636
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p3, p1, p2, p0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MessageData;-><init>(ILjava/lang/Object;Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$HandlerAndRunnable;)V

    const/4 p0, 0x2

    invoke-virtual {v0, p0, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 637
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3

    :cond_3
    if-eqz p4, :cond_4

    if-eqz p3, :cond_4

    .line 639
    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    :goto_3
    return-void
.end method

.method private removeMediaSourceInternal(I)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    .line 818
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->mediaSourceByUid:Ljava/util/Map;

    .line 819
    iget-object v2, v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->uid:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    iget-object v1, v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->mediaSource:Landroidx/media3/exoplayer/source/MaskingMediaSource;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/source/MaskingMediaSource;->getTimeline()Landroidx/media3/common/Timeline;

    move-result-object v1

    .line 821
    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v1

    neg-int v1, v1

    const/4 v2, -0x1

    invoke-direct {p0, p1, v2, v1}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->correctOffsets(III)V

    const/4 p1, 0x1

    .line 822
    iput-boolean p1, v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->isRemoved:Z

    .line 823
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->maybeReleaseChildSource(Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;)V

    return-void
.end method

.method private removePublicMediaSources(IILandroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p3, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-nez p4, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    if-ne v2, v3, :cond_2

    move v0, v1

    .line 609
    :cond_2
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->playbackThreadHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    .line 611
    invoke-static {v2, p1, p2}, Landroidx/media3/common/util/Util;->removeRange(Ljava/util/List;II)V

    if-eqz v0, :cond_3

    .line 614
    invoke-direct {p0, p3, p4}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->createOnCompletionAction(Landroid/os/Handler;Ljava/lang/Runnable;)Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$HandlerAndRunnable;

    move-result-object p0

    .line 615
    new-instance p3, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MessageData;

    .line 616
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p3, p1, p2, p0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MessageData;-><init>(ILjava/lang/Object;Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$HandlerAndRunnable;)V

    invoke-virtual {v0, v1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 617
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    :cond_3
    if-eqz p4, :cond_4

    if-eqz p3, :cond_4

    .line 619
    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    :goto_2
    return-void
.end method

.method private scheduleTimelineUpdate()V
    .locals 1

    const/4 v0, 0x0

    .line 737
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->scheduleTimelineUpdate(Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$HandlerAndRunnable;)V

    return-void
.end method

.method private scheduleTimelineUpdate(Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$HandlerAndRunnable;)V
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->timelineUpdateScheduled:Z

    if-nez v0, :cond_0

    .line 742
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->getPlaybackThreadHandlerOnPlaybackThread()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->timelineUpdateScheduled:Z

    :cond_0
    if-eqz p1, :cond_1

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->nextTimelineUpdateOnCompletionActions:Ljava/util/Set;

    .line 746
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private setPublicShuffleOrder(Landroidx/media3/exoplayer/source/ShuffleOrder;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-nez p3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    if-ne v2, v3, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    .line 646
    :goto_2
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->playbackThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4

    .line 649
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->getSize()I

    move-result v2

    .line 650
    invoke-interface {p1}, Landroidx/media3/exoplayer/source/ShuffleOrder;->getLength()I

    move-result v3

    if-eq v3, v2, :cond_3

    .line 653
    invoke-interface {p1}, Landroidx/media3/exoplayer/source/ShuffleOrder;->cloneAndClear()Landroidx/media3/exoplayer/source/ShuffleOrder;

    move-result-object p1

    .line 654
    invoke-interface {p1, v1, v2}, Landroidx/media3/exoplayer/source/ShuffleOrder;->cloneAndInsert(II)Landroidx/media3/exoplayer/source/ShuffleOrder;

    move-result-object p1

    .line 657
    :cond_3
    invoke-direct {p0, p2, p3}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->createOnCompletionAction(Landroid/os/Handler;Ljava/lang/Runnable;)Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$HandlerAndRunnable;

    move-result-object p0

    .line 658
    new-instance p2, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MessageData;

    invoke-direct {p2, v1, p1, p0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MessageData;-><init>(ILjava/lang/Object;Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$HandlerAndRunnable;)V

    const/4 p0, 0x3

    .line 659
    invoke-virtual {v0, p0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 662
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3

    .line 665
    :cond_4
    invoke-interface {p1}, Landroidx/media3/exoplayer/source/ShuffleOrder;->getLength()I

    move-result v0

    if-lez v0, :cond_5

    invoke-interface {p1}, Landroidx/media3/exoplayer/source/ShuffleOrder;->cloneAndClear()Landroidx/media3/exoplayer/source/ShuffleOrder;

    move-result-object p1

    :cond_5
    iput-object p1, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

    if-eqz p3, :cond_6

    if-eqz p2, :cond_6

    .line 667
    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_6
    :goto_3
    return-void
.end method

.method private updateMediaSourceInternal(Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;Landroidx/media3/common/Timeline;)V
    .locals 2

    .line 804
    iget v0, p1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->childIndex:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    .line 805
    iget v1, p1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->childIndex:I

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;

    .line 807
    invoke-virtual {p2}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result p2

    iget v0, v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->firstWindowIndexInChild:I

    iget v1, p1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->firstWindowIndexInChild:I

    sub-int/2addr v0, v1

    sub-int/2addr p2, v0

    if-eqz p2, :cond_0

    .line 810
    iget p1, p1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->childIndex:I

    add-int/lit8 p1, p1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->correctOffsets(III)V

    .line 814
    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->scheduleTimelineUpdate()V

    return-void
.end method

.method private updateTimelineAndScheduleOnCompletionActions()V
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->timelineUpdateScheduled:Z

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->nextTimelineUpdateOnCompletionActions:Ljava/util/Set;

    .line 753
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->nextTimelineUpdateOnCompletionActions:Ljava/util/Set;

    .line 754
    new-instance v1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$ConcatenatedTimeline;

    iget-object v2, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    iget-object v3, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

    iget-boolean v4, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->isAtomic:Z

    invoke-direct {v1, v2, v3, v4}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$ConcatenatedTimeline;-><init>(Ljava/util/Collection;Landroidx/media3/exoplayer/source/ShuffleOrder;Z)V

    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->refreshSourceInfo(Landroidx/media3/common/Timeline;)V

    .line 755
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->getPlaybackThreadHandlerOnPlaybackThread()Landroid/os/Handler;

    move-result-object p0

    const/4 v1, 0x5

    .line 756
    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 757
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method


# virtual methods
.method public declared-synchronized addMediaSource(ILandroidx/media3/exoplayer/source/MediaSource;)V
    .locals 1

    monitor-enter p0

    .line 201
    :try_start_0
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    .line 199
    invoke-direct {p0, p1, p2, v0, v0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->addPublicMediaSources(ILjava/util/Collection;Landroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addMediaSource(ILandroidx/media3/exoplayer/source/MediaSource;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    monitor-enter p0

    .line 219
    :try_start_0
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 218
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->addPublicMediaSources(ILjava/util/Collection;Landroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addMediaSource(Landroidx/media3/exoplayer/source/MediaSource;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    .line 175
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->addMediaSource(ILandroidx/media3/exoplayer/source/MediaSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addMediaSource(Landroidx/media3/exoplayer/source/MediaSource;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    .line 188
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->addMediaSource(ILandroidx/media3/exoplayer/source/MediaSource;Landroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addMediaSources(ILjava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Landroidx/media3/exoplayer/source/MediaSource;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 260
    :try_start_0
    invoke-direct {p0, p1, p2, v0, v0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->addPublicMediaSources(ILjava/util/Collection;Landroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addMediaSources(ILjava/util/Collection;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Landroidx/media3/exoplayer/source/MediaSource;",
            ">;",
            "Landroid/os/Handler;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 279
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->addPublicMediaSources(ILjava/util/Collection;Landroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addMediaSources(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/media3/exoplayer/source/MediaSource;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    .line 230
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    .line 229
    invoke-direct {p0, v0, p1, v1, v1}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->addPublicMediaSources(ILjava/util/Collection;Landroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addMediaSources(Ljava/util/Collection;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/media3/exoplayer/source/MediaSource;",
            ">;",
            "Landroid/os/Handler;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    .line 248
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0, p1, p2, p3}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->addPublicMediaSources(ILjava/util/Collection;Landroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clear()V
    .locals 2

    monitor-enter p0

    .line 397
    :try_start_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->getSize()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->removeMediaSourceRange(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clear(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 2

    monitor-enter p0

    .line 408
    :try_start_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->getSize()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, p1, p2}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->removeMediaSourceRange(IILandroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public createPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/Allocator;J)Landroidx/media3/exoplayer/source/MediaPeriod;
    .locals 3

    .line 479
    iget-object v0, p1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-static {v0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->getMediaSourceHolderUid(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 480
    iget-object v1, p1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-static {v1}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->getChildPeriodUid(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->copyWithPeriodUid(Ljava/lang/Object;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object p1

    iget-object v1, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->mediaSourceByUid:Ljava/util/Map;

    .line 481
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;

    if-nez v0, :cond_0

    .line 484
    new-instance v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;

    new-instance v1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$FakeMediaSource;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$FakeMediaSource;-><init>(Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$1;)V

    iget-boolean v2, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->useLazyPreparation:Z

    invoke-direct {v0, v1, v2}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;-><init>(Landroidx/media3/exoplayer/source/MediaSource;Z)V

    const/4 v1, 0x1

    .line 485
    iput-boolean v1, v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->isRemoved:Z

    .line 486
    iget-object v1, v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->mediaSource:Landroidx/media3/exoplayer/source/MaskingMediaSource;

    invoke-virtual {p0, v0, v1}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->prepareChildSource(Ljava/lang/Object;Landroidx/media3/exoplayer/source/MediaSource;)V

    .line 488
    :cond_0
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->enableMediaSource(Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;)V

    .line 489
    iget-object v1, v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->activeMediaPeriodIds:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 490
    iget-object v1, v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->mediaSource:Landroidx/media3/exoplayer/source/MaskingMediaSource;

    .line 491
    invoke-virtual {v1, p1, p2, p3, p4}, Landroidx/media3/exoplayer/source/MaskingMediaSource;->createPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/Allocator;J)Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    move-result-object p1

    iget-object p2, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->mediaSourceByMediaPeriod:Ljava/util/IdentityHashMap;

    .line 492
    invoke-virtual {p2, p1, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->disableUnusedMediaSources()V

    return-object p1
.end method

.method protected disableInternal()V
    .locals 0

    .line 511
    invoke-super {p0}, Landroidx/media3/exoplayer/source/CompositeMediaSource;->disableInternal()V

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->enabledMediaSourceHolders:Ljava/util/Set;

    .line 512
    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method protected enableInternal()V
    .locals 0

    return-void
.end method

.method public declared-synchronized getInitialTimeline()Landroidx/media3/common/Timeline;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 155
    invoke-interface {v0}, Landroidx/media3/exoplayer/source/ShuffleOrder;->getLength()I

    move-result v0

    iget-object v1, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 157
    invoke-interface {v0}, Landroidx/media3/exoplayer/source/ShuffleOrder;->cloneAndClear()Landroidx/media3/exoplayer/source/ShuffleOrder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    .line 159
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    .line 158
    invoke-interface {v0, v2, v1}, Landroidx/media3/exoplayer/source/ShuffleOrder;->cloneAndInsert(II)Landroidx/media3/exoplayer/source/ShuffleOrder;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 161
    :goto_0
    new-instance v1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$ConcatenatedTimeline;

    iget-object v2, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    iget-boolean v3, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->isAtomic:Z

    invoke-direct {v1, v2, v0, v3}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$ConcatenatedTimeline;-><init>(Ljava/util/Collection;Landroidx/media3/exoplayer/source/ShuffleOrder;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMediaItem()Landroidx/media3/common/MediaItem;
    .locals 0

    sget-object p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->PLACEHOLDER_MEDIA_ITEM:Landroidx/media3/common/MediaItem;

    return-object p0
.end method

.method protected getMediaPeriodIdForChildMediaPeriodId(Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .locals 4

    const/4 p0, 0x0

    .line 551
    :goto_0
    iget-object v0, p1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->activeMediaPeriodIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_1

    .line 554
    iget-object v0, p1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->activeMediaPeriodIds:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v0, v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iget-wide v2, p2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 556
    iget-object p0, p2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-static {p1, p0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->getPeriodUid(Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 557
    invoke-virtual {p2, p0}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->copyWithPeriodUid(Ljava/lang/Object;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method protected bridge synthetic getMediaPeriodIdForChildMediaPeriodId(Ljava/lang/Object;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .locals 0

    .line 54
    check-cast p1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;

    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->getMediaPeriodIdForChildMediaPeriodId(Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized getMediaSource(I)Landroidx/media3/exoplayer/source/MediaSource;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    .line 423
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;

    iget-object p1, p1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->mediaSource:Landroidx/media3/exoplayer/source/MaskingMediaSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getSize()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    .line 413
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getWindowIndexForChildWindowIndex(Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;I)I
    .locals 0

    .line 571
    iget p0, p1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->firstWindowIndexInChild:I

    add-int/2addr p2, p0

    return p2
.end method

.method protected bridge synthetic getWindowIndexForChildWindowIndex(Ljava/lang/Object;I)I
    .locals 0

    .line 54
    check-cast p1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;

    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->getWindowIndexForChildWindowIndex(Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;I)I

    move-result p0

    return p0
.end method

.method public isSingleWindow()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public declared-synchronized moveMediaSource(II)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 374
    :try_start_0
    invoke-direct {p0, p1, p2, v0, v0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->movePublicMediaSource(IILandroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 376
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized moveMediaSource(IILandroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    monitor-enter p0

    .line 392
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->movePublicMediaSource(IILandroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected onChildSourceInfoRefreshed(Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;Landroidx/media3/exoplayer/source/MediaSource;Landroidx/media3/common/Timeline;)V
    .locals 0

    .line 539
    invoke-direct {p0, p1, p3}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->updateMediaSourceInternal(Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;Landroidx/media3/common/Timeline;)V

    return-void
.end method

.method protected bridge synthetic onChildSourceInfoRefreshed(Ljava/lang/Object;Landroidx/media3/exoplayer/source/MediaSource;Landroidx/media3/common/Timeline;)V
    .locals 0

    .line 54
    check-cast p1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->onChildSourceInfoRefreshed(Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;Landroidx/media3/exoplayer/source/MediaSource;Landroidx/media3/common/Timeline;)V

    return-void
.end method

.method protected declared-synchronized prepareSourceInternal(Landroidx/media3/datasource/TransferListener;)V
    .locals 2

    monitor-enter p0

    .line 460
    :try_start_0
    invoke-super {p0, p1}, Landroidx/media3/exoplayer/source/CompositeMediaSource;->prepareSourceInternal(Landroidx/media3/datasource/TransferListener;)V

    .line 461
    new-instance p1, Landroid/os/Handler;

    new-instance v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;)V

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->playbackThreadHandler:Landroid/os/Handler;

    iget-object p1, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    .line 462
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 463
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->updateTimelineAndScheduleOnCompletionActions()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    .line 465
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Landroidx/media3/exoplayer/source/ShuffleOrder;->cloneAndInsert(II)Landroidx/media3/exoplayer/source/ShuffleOrder;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

    iget-object p1, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    .line 466
    invoke-direct {p0, v1, p1}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->addMediaSourcesInternal(ILjava/util/Collection;)V

    .line 467
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->scheduleTimelineUpdate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 469
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public releasePeriod(Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->mediaSourceByMediaPeriod:Ljava/util/IdentityHashMap;

    .line 500
    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;

    .line 501
    iget-object v1, v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->mediaSource:Landroidx/media3/exoplayer/source/MaskingMediaSource;

    invoke-virtual {v1, p1}, Landroidx/media3/exoplayer/source/MaskingMediaSource;->releasePeriod(Landroidx/media3/exoplayer/source/MediaPeriod;)V

    .line 502
    iget-object v1, v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->activeMediaPeriodIds:Ljava/util/List;

    check-cast p1, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    iget-object p1, p1, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->mediaSourceByMediaPeriod:Ljava/util/IdentityHashMap;

    .line 503
    invoke-virtual {p1}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 504
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->disableUnusedMediaSources()V

    .line 506
    :cond_0
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->maybeReleaseChildSource(Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;)V

    return-void
.end method

.method protected declared-synchronized releaseSourceInternal()V
    .locals 2

    monitor-enter p0

    .line 517
    :try_start_0
    invoke-super {p0}, Landroidx/media3/exoplayer/source/CompositeMediaSource;->releaseSourceInternal()V

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    .line 518
    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->enabledMediaSourceHolders:Ljava/util/Set;

    .line 519
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->mediaSourceByUid:Ljava/util/Map;

    .line 520
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 521
    invoke-interface {v0}, Landroidx/media3/exoplayer/source/ShuffleOrder;->cloneAndClear()Landroidx/media3/exoplayer/source/ShuffleOrder;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->playbackThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 523
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->playbackThreadHandler:Landroid/os/Handler;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->timelineUpdateScheduled:Z

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->nextTimelineUpdateOnCompletionActions:Ljava/util/Set;

    .line 527
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->pendingOnCompletionActions:Ljava/util/Set;

    .line 528
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->dispatchOnCompletionActions(Ljava/util/Set;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 529
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeMediaSource(I)Landroidx/media3/exoplayer/source/MediaSource;
    .locals 3

    monitor-enter p0

    .line 296
    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->getMediaSource(I)Landroidx/media3/exoplayer/source/MediaSource;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    const/4 v2, 0x0

    .line 297
    invoke-direct {p0, p1, v1, v2, v2}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->removePublicMediaSources(IILandroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeMediaSource(ILandroid/os/Handler;Ljava/lang/Runnable;)Landroidx/media3/exoplayer/source/MediaSource;
    .locals 2

    monitor-enter p0

    .line 319
    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->getMediaSource(I)Landroidx/media3/exoplayer/source/MediaSource;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    .line 320
    invoke-direct {p0, p1, v1, p2, p3}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->removePublicMediaSources(IILandroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeMediaSourceRange(II)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 339
    :try_start_0
    invoke-direct {p0, p1, p2, v0, v0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->removePublicMediaSources(IILandroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeMediaSourceRange(IILandroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    monitor-enter p0

    .line 362
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->removePublicMediaSources(IILandroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setShuffleOrder(Landroidx/media3/exoplayer/source/ShuffleOrder;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 432
    :try_start_0
    invoke-direct {p0, p1, v0, v0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->setPublicShuffleOrder(Landroidx/media3/exoplayer/source/ShuffleOrder;Landroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setShuffleOrder(Landroidx/media3/exoplayer/source/ShuffleOrder;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    monitor-enter p0

    .line 445
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->setPublicShuffleOrder(Landroidx/media3/exoplayer/source/ShuffleOrder;Landroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 446
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
