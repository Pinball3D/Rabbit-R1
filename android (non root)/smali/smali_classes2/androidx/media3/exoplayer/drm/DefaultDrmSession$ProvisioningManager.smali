.class public interface abstract Landroidx/media3/exoplayer/drm/DefaultDrmSession$ProvisioningManager;
.super Ljava/lang/Object;
.source "DefaultDrmSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/drm/DefaultDrmSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ProvisioningManager"
.end annotation


# virtual methods
.method public abstract onProvisionCompleted()V
.end method

.method public abstract onProvisionError(Ljava/lang/Exception;Z)V
.end method

.method public abstract provisionRequired(Landroidx/media3/exoplayer/drm/DefaultDrmSession;)V
.end method
