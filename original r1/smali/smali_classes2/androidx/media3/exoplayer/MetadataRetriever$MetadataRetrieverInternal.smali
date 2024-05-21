.class final Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal;
.super Ljava/lang/Object;
.source "MetadataRetriever.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/MetadataRetriever;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MetadataRetrieverInternal"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;
    }
.end annotation


# static fields
.field private static final MESSAGE_CHECK_FOR_FAILURE:I = 0x1

.field private static final MESSAGE_CONTINUE_LOADING:I = 0x2

.field private static final MESSAGE_PREPARE_SOURCE:I = 0x0

.field private static final MESSAGE_RELEASE:I = 0x3


# instance fields
.field private final mediaSourceFactory:Landroidx/media3/exoplayer/source/MediaSource$Factory;

.field private final mediaSourceHandler:Landroidx/media3/common/util/HandlerWrapper;

.field private final mediaSourceThread:Landroid/os/HandlerThread;

.field private final trackGroupsFuture:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture<",
            "Landroidx/media3/exoplayer/source/TrackGroupArray;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/MediaSource$Factory;Landroidx/media3/common/util/Clock;)V
    .locals 1

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal;->mediaSourceFactory:Landroidx/media3/exoplayer/source/MediaSource$Factory;

    .line 117
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "ExoPlayer:MetadataRetriever"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal;->mediaSourceThread:Landroid/os/HandlerThread;

    .line 118
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 120
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    new-instance v0, Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;

    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;-><init>(Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal;)V

    invoke-interface {p2, p1, v0}, Landroidx/media3/common/util/Clock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal;->mediaSourceHandler:Landroidx/media3/common/util/HandlerWrapper;

    .line 121
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal;->trackGroupsFuture:Lcom/google/common/util/concurrent/SettableFuture;

    return-void
.end method

.method static synthetic access$000(Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal;)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 0

    .line 103
    iget-object p0, p0, Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal;->mediaSourceFactory:Landroidx/media3/exoplayer/source/MediaSource$Factory;

    return-object p0
.end method

.method static synthetic access$100(Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal;)Landroidx/media3/common/util/HandlerWrapper;
    .locals 0

    .line 103
    iget-object p0, p0, Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal;->mediaSourceHandler:Landroidx/media3/common/util/HandlerWrapper;

    return-object p0
.end method

.method static synthetic access$200(Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal;)Lcom/google/common/util/concurrent/SettableFuture;
    .locals 0

    .line 103
    iget-object p0, p0, Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal;->trackGroupsFuture:Lcom/google/common/util/concurrent/SettableFuture;

    return-object p0
.end method

.method static synthetic access$300(Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal;)Landroid/os/HandlerThread;
    .locals 0

    .line 103
    iget-object p0, p0, Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal;->mediaSourceThread:Landroid/os/HandlerThread;

    return-object p0
.end method


# virtual methods
.method public retrieveMetadata(Landroidx/media3/common/MediaItem;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/MediaItem;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/exoplayer/source/TrackGroupArray;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal;->mediaSourceHandler:Landroidx/media3/common/util/HandlerWrapper;

    const/4 v1, 0x0

    .line 125
    invoke-interface {v0, v1, p1}, Landroidx/media3/common/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroidx/media3/common/util/HandlerWrapper$Message;

    move-result-object p1

    invoke-interface {p1}, Landroidx/media3/common/util/HandlerWrapper$Message;->sendToTarget()V

    iget-object p0, p0, Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal;->trackGroupsFuture:Lcom/google/common/util/concurrent/SettableFuture;

    return-object p0
.end method
