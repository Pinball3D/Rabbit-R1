.class public final synthetic Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

.field public final synthetic f$1:J

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda4;->f$0:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iput-wide p2, p0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda4;->f$1:J

    iput p4, p0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda4;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda4;->f$0:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda4;->f$1:J

    iget p0, p0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda4;->f$2:I

    invoke-virtual {v0, v1, v2, p0}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->lambda$reportVideoFrameProcessingOffset$4$com-google-android-exoplayer2-video-VideoRendererEventListener$EventDispatcher(JI)V

    return-void
.end method
