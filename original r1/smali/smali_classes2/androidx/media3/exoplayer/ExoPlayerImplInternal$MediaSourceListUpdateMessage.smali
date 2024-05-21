.class final Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/ExoPlayerImplInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaSourceListUpdateMessage"
.end annotation


# instance fields
.field private final mediaSourceHolders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final positionUs:J

.field private final shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

.field private final windowIndex:I


# direct methods
.method private constructor <init>(Ljava/util/List;Landroidx/media3/exoplayer/source/ShuffleOrder;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;",
            ">;",
            "Landroidx/media3/exoplayer/source/ShuffleOrder;",
            "IJ)V"
        }
    .end annotation

    .line 3179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->mediaSourceHolders:Ljava/util/List;

    iput-object p2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

    iput p3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->windowIndex:I

    iput-wide p4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->positionUs:J

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Landroidx/media3/exoplayer/source/ShuffleOrder;IJLandroidx/media3/exoplayer/ExoPlayerImplInternal$1;)V
    .locals 0

    .line 3168
    invoke-direct/range {p0 .. p5}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;-><init>(Ljava/util/List;Landroidx/media3/exoplayer/source/ShuffleOrder;IJ)V

    return-void
.end method

.method static synthetic access$200(Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)I
    .locals 0

    .line 3168
    iget p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->windowIndex:I

    return p0
.end method

.method static synthetic access$300(Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)Ljava/util/List;
    .locals 0

    .line 3168
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->mediaSourceHolders:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)Landroidx/media3/exoplayer/source/ShuffleOrder;
    .locals 0

    .line 3168
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

    return-object p0
.end method

.method static synthetic access$500(Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)J
    .locals 2

    .line 3168
    iget-wide v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->positionUs:J

    return-wide v0
.end method
