.class public final synthetic Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;

.field public final synthetic f$1:Landroid/util/Pair;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda7;->f$0:Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;

    iput-object p2, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda7;->f$1:Landroid/util/Pair;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda7;->f$0:Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;

    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda7;->f$1:Landroid/util/Pair;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->lambda$onDrmKeysRemoved$10$com-google-android-exoplayer2-MediaSourceList$ForwardingEventListener(Landroid/util/Pair;)V

    return-void
.end method
