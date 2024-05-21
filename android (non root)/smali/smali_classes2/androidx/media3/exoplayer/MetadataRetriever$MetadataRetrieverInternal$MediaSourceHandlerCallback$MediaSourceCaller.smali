.class final Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller;
.super Ljava/lang/Object;
.source "MetadataRetriever.java"

# interfaces
.implements Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaSourceCaller"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller$MediaPeriodCallback;
    }
.end annotation


# instance fields
.field private final allocator:Landroidx/media3/exoplayer/upstream/Allocator;

.field private final mediaPeriodCallback:Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller$MediaPeriodCallback;

.field private mediaPeriodCreated:Z

.field final synthetic this$1:Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;)V
    .locals 2

    iput-object p1, p0, Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller;->this$1:Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    new-instance p1, Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller$MediaPeriodCallback;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller$MediaPeriodCallback;-><init>(Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller;Landroidx/media3/exoplayer/MetadataRetriever$1;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller;->mediaPeriodCallback:Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller$MediaPeriodCallback;

    .line 191
    new-instance p1, Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    const/4 v0, 0x1

    const/high16 v1, 0x10000

    invoke-direct {p1, v0, v1}, Landroidx/media3/exoplayer/upstream/DefaultAllocator;-><init>(ZI)V

    iput-object p1, p0, Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller;->allocator:Landroidx/media3/exoplayer/upstream/Allocator;

    return-void
.end method


# virtual methods
.method public onSourceInfoRefreshed(Landroidx/media3/exoplayer/source/MediaSource;Landroidx/media3/common/Timeline;)V
    .locals 4

    iget-boolean v0, p0, Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller;->mediaPeriodCreated:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller;->mediaPeriodCreated:Z

    iget-object v0, p0, Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller;->this$1:Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;

    .line 204
    new-instance v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    const/4 v2, 0x0

    .line 206
    invoke-virtual {p2, v2}, Landroidx/media3/common/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {v1, p2}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;)V

    iget-object p2, p0, Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller;->allocator:Landroidx/media3/exoplayer/upstream/Allocator;

    const-wide/16 v2, 0x0

    .line 205
    invoke-interface {p1, v1, p2, v2, v3}, Landroidx/media3/exoplayer/source/MediaSource;->createPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/Allocator;J)Landroidx/media3/exoplayer/source/MediaPeriod;

    move-result-object p1

    .line 204
    invoke-static {v0, p1}, Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;->access$502(Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;Landroidx/media3/exoplayer/source/MediaPeriod;)Landroidx/media3/exoplayer/source/MediaPeriod;

    iget-object p1, p0, Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller;->this$1:Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;

    .line 209
    invoke-static {p1}, Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;->access$500(Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;)Landroidx/media3/exoplayer/source/MediaPeriod;

    move-result-object p1

    iget-object p0, p0, Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller;->mediaPeriodCallback:Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller$MediaPeriodCallback;

    invoke-interface {p1, p0, v2, v3}, Landroidx/media3/exoplayer/source/MediaPeriod;->prepare(Landroidx/media3/exoplayer/source/MediaPeriod$Callback;J)V

    return-void
.end method
