.class public final synthetic Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;

.field public final synthetic f$1:Landroid/util/Pair;

.field public final synthetic f$2:Lcom/google/android/exoplayer2/source/LoadEventInfo;

.field public final synthetic f$3:Lcom/google/android/exoplayer2/source/MediaLoadData;

.field public final synthetic f$4:Ljava/io/IOException;

.field public final synthetic f$5:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;Ljava/io/IOException;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda3;->f$0:Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;

    iput-object p2, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda3;->f$1:Landroid/util/Pair;

    iput-object p3, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda3;->f$2:Lcom/google/android/exoplayer2/source/LoadEventInfo;

    iput-object p4, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda3;->f$3:Lcom/google/android/exoplayer2/source/MediaLoadData;

    iput-object p5, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda3;->f$4:Ljava/io/IOException;

    iput-boolean p6, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda3;->f$5:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda3;->f$0:Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda3;->f$1:Landroid/util/Pair;

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda3;->f$2:Lcom/google/android/exoplayer2/source/LoadEventInfo;

    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda3;->f$3:Lcom/google/android/exoplayer2/source/MediaLoadData;

    iget-object v4, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda3;->f$4:Ljava/io/IOException;

    iget-boolean v5, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda3;->f$5:Z

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->lambda$onLoadError$3$com-google-android-exoplayer2-MediaSourceList$ForwardingEventListener(Landroid/util/Pair;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;Ljava/io/IOException;Z)V

    return-void
.end method
