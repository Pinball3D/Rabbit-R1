.class final Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller$MediaPeriodCallback;
.super Ljava/lang/Object;
.source "MetadataRetriever.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaPeriodCallback"
.end annotation


# instance fields
.field final synthetic this$2:Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller$MediaPeriodCallback;->this$2:Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller;

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller;Lcom/google/android/exoplayer2/MetadataRetriever$1;)V
    .locals 0

    .line 207
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller$MediaPeriodCallback;-><init>(Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller;)V

    return-void
.end method


# virtual methods
.method public onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller$MediaPeriodCallback;->this$2:Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller;

    .line 217
    iget-object p0, p0, Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller;->this$1:Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;

    iget-object p0, p0, Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;->this$0:Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal;

    invoke-static {p0}, Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal;->access$100(Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal;)Lcom/google/android/exoplayer2/util/HandlerWrapper;

    move-result-object p0

    const/4 p1, 0x2

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(I)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;->sendToTarget()V

    return-void
.end method

.method public bridge synthetic onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V
    .locals 0

    .line 207
    check-cast p1, Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller$MediaPeriodCallback;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    return-void
.end method

.method public onPrepared(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller$MediaPeriodCallback;->this$2:Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller;

    .line 211
    iget-object v0, v0, Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller;->this$1:Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;

    iget-object v0, v0, Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;->this$0:Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal;

    invoke-static {v0}, Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal;->access$200(Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller$MediaPeriodCallback;->this$2:Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller;

    .line 212
    iget-object p0, p0, Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller;->this$1:Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;

    iget-object p0, p0, Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;->this$0:Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal;

    invoke-static {p0}, Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal;->access$100(Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal;)Lcom/google/android/exoplayer2/util/HandlerWrapper;

    move-result-object p0

    const/4 p1, 0x3

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(I)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;->sendToTarget()V

    return-void
.end method
