.class public final synthetic Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;

.field public final synthetic f$1:Landroid/util/Pair;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda6;->f$0:Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;

    iput-object p2, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda6;->f$1:Landroid/util/Pair;

    iput p3, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda6;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda6;->f$0:Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda6;->f$1:Landroid/util/Pair;

    iget p0, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda6;->f$2:I

    invoke-virtual {v0, v1, p0}, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->lambda$onDrmSessionAcquired$6$com-google-android-exoplayer2-MediaSourceList$ForwardingEventListener(Landroid/util/Pair;I)V

    return-void
.end method
