.class public interface abstract Lcom/google/android/exoplayer2/drm/MediaDrmCallback;
.super Ljava/lang/Object;
.source "MediaDrmCallback.java"


# virtual methods
.method public abstract executeKeyRequest(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/drm/MediaDrmCallbackException;
        }
    .end annotation
.end method

.method public abstract executeProvisionRequest(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/drm/MediaDrmCallbackException;
        }
    .end annotation
.end method
