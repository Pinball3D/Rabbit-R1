.class final Landroidx/media3/exoplayer/ExoPlayerImpl$MediaSourceHolderSnapshot;
.super Ljava/lang/Object;
.source "ExoPlayerImpl.java"

# interfaces
.implements Landroidx/media3/exoplayer/MediaSourceInfoHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/ExoPlayerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaSourceHolderSnapshot"
.end annotation


# instance fields
.field private timeline:Landroidx/media3/common/Timeline;

.field private final uid:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroidx/media3/common/Timeline;)V
    .locals 0

    .line 2879
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$MediaSourceHolderSnapshot;->uid:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$MediaSourceHolderSnapshot;->timeline:Landroidx/media3/common/Timeline;

    return-void
.end method

.method static synthetic access$202(Landroidx/media3/exoplayer/ExoPlayerImpl$MediaSourceHolderSnapshot;Landroidx/media3/common/Timeline;)Landroidx/media3/common/Timeline;
    .locals 0

    .line 2873
    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$MediaSourceHolderSnapshot;->timeline:Landroidx/media3/common/Timeline;

    return-object p1
.end method


# virtual methods
.method public getTimeline()Landroidx/media3/common/Timeline;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$MediaSourceHolderSnapshot;->timeline:Landroidx/media3/common/Timeline;

    return-object p0
.end method

.method public getUid()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$MediaSourceHolderSnapshot;->uid:Ljava/lang/Object;

    return-object p0
.end method
