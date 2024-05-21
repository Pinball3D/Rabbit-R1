.class public final synthetic Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;

.field public final synthetic f$1:Landroid/util/Pair;

.field public final synthetic f$2:Landroidx/media3/exoplayer/source/LoadEventInfo;

.field public final synthetic f$3:Landroidx/media3/exoplayer/source/MediaLoadData;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda6;->f$0:Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;

    iput-object p2, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda6;->f$1:Landroid/util/Pair;

    iput-object p3, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda6;->f$2:Landroidx/media3/exoplayer/source/LoadEventInfo;

    iput-object p4, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda6;->f$3:Landroidx/media3/exoplayer/source/MediaLoadData;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda6;->f$0:Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;

    iget-object v1, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda6;->f$1:Landroid/util/Pair;

    iget-object v2, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda6;->f$2:Landroidx/media3/exoplayer/source/LoadEventInfo;

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda6;->f$3:Landroidx/media3/exoplayer/source/MediaLoadData;

    invoke-virtual {v0, v1, v2, p0}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->lambda$onLoadCanceled$2$androidx-media3-exoplayer-MediaSourceList$ForwardingEventListener(Landroid/util/Pair;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    return-void
.end method
