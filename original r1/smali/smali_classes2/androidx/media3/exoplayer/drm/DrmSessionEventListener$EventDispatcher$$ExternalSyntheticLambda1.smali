.class public final synthetic Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

.field public final synthetic f$1:Landroidx/media3/exoplayer/drm/DrmSessionEventListener;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Landroidx/media3/exoplayer/drm/DrmSessionEventListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher$$ExternalSyntheticLambda1;->f$0:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    iput-object p2, p0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher$$ExternalSyntheticLambda1;->f$1:Landroidx/media3/exoplayer/drm/DrmSessionEventListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher$$ExternalSyntheticLambda1;->f$0:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    iget-object p0, p0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher$$ExternalSyntheticLambda1;->f$1:Landroidx/media3/exoplayer/drm/DrmSessionEventListener;

    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->lambda$drmKeysRestored$3$androidx-media3-exoplayer-drm-DrmSessionEventListener$EventDispatcher(Landroidx/media3/exoplayer/drm/DrmSessionEventListener;)V

    return-void
.end method
