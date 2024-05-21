.class public final synthetic Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;

.field public final synthetic f$1:Landroid/util/Pair;

.field public final synthetic f$2:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda3;->f$0:Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;

    iput-object p2, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda3;->f$1:Landroid/util/Pair;

    iput-object p3, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda3;->f$0:Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;

    iget-object v1, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda3;->f$1:Landroid/util/Pair;

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Exception;

    invoke-virtual {v0, v1, p0}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->lambda$onDrmSessionManagerError$8$androidx-media3-exoplayer-MediaSourceList$ForwardingEventListener(Landroid/util/Pair;Ljava/lang/Exception;)V

    return-void
.end method
