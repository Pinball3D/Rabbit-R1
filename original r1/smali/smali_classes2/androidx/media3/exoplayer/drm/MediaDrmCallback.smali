.class public interface abstract Landroidx/media3/exoplayer/drm/MediaDrmCallback;
.super Ljava/lang/Object;
.source "MediaDrmCallback.java"


# virtual methods
.method public abstract executeKeyRequest(Ljava/util/UUID;Landroidx/media3/exoplayer/drm/ExoMediaDrm$KeyRequest;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/drm/MediaDrmCallbackException;
        }
    .end annotation
.end method

.method public abstract executeProvisionRequest(Ljava/util/UUID;Landroidx/media3/exoplayer/drm/ExoMediaDrm$ProvisionRequest;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/drm/MediaDrmCallbackException;
        }
    .end annotation
.end method
