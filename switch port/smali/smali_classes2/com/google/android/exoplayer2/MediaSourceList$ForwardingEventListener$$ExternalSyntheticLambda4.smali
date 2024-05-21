.class public final synthetic Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;

.field public final synthetic f$1:Landroid/util/Pair;

.field public final synthetic f$2:Lcom/google/android/exoplayer2/source/MediaLoadData;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda4;->f$0:Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;

    iput-object p2, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda4;->f$1:Landroid/util/Pair;

    iput-object p3, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda4;->f$2:Lcom/google/android/exoplayer2/source/MediaLoadData;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda4;->f$0:Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda4;->f$1:Landroid/util/Pair;

    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda4;->f$2:Lcom/google/android/exoplayer2/source/MediaLoadData;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->lambda$onDownstreamFormatChanged$5$com-google-android-exoplayer2-MediaSourceList$ForwardingEventListener(Landroid/util/Pair;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    return-void
.end method
