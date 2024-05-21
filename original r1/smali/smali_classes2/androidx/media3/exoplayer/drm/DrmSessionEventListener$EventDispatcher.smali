.class public Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;
.super Ljava/lang/Object;
.source "DrmSessionEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/drm/DrmSessionEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventDispatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;
    }
.end annotation


# instance fields
.field private final listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;",
            ">;"
        }
    .end annotation
.end field

.field public final mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

.field public final windowIndex:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 110
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;",
            ">;I",
            "Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;",
            ")V"
        }
    .end annotation

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput p2, p0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->windowIndex:I

    iput-object p3, p0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    return-void
.end method


# virtual methods
.method public addEventListener(Landroid/os/Handler;Landroidx/media3/exoplayer/drm/DrmSessionEventListener;)V
    .locals 1

    .line 144
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 146
    new-instance v0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;

    invoke-direct {v0, p1, p2}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;-><init>(Landroid/os/Handler;Landroidx/media3/exoplayer/drm/DrmSessionEventListener;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public drmKeysLoaded()V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 181
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;

    .line 182
    iget-object v2, v1, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;->listener:Landroidx/media3/exoplayer/drm/DrmSessionEventListener;

    .line 183
    iget-object v1, v1, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;->handler:Landroid/os/Handler;

    new-instance v3, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, v2}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher$$ExternalSyntheticLambda5;-><init>(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Landroidx/media3/exoplayer/drm/DrmSessionEventListener;)V

    invoke-static {v1, v3}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public drmKeysRemoved()V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 210
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;

    .line 211
    iget-object v2, v1, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;->listener:Landroidx/media3/exoplayer/drm/DrmSessionEventListener;

    .line 212
    iget-object v1, v1, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;->handler:Landroid/os/Handler;

    new-instance v3, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v2}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher$$ExternalSyntheticLambda2;-><init>(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Landroidx/media3/exoplayer/drm/DrmSessionEventListener;)V

    invoke-static {v1, v3}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public drmKeysRestored()V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 200
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;

    .line 201
    iget-object v2, v1, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;->listener:Landroidx/media3/exoplayer/drm/DrmSessionEventListener;

    .line 202
    iget-object v1, v1, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;->handler:Landroid/os/Handler;

    new-instance v3, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v2}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Landroidx/media3/exoplayer/drm/DrmSessionEventListener;)V

    invoke-static {v1, v3}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public drmSessionAcquired(I)V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 168
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;

    .line 169
    iget-object v2, v1, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;->listener:Landroidx/media3/exoplayer/drm/DrmSessionEventListener;

    .line 170
    iget-object v1, v1, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;->handler:Landroid/os/Handler;

    new-instance v3, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v2, p1}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Landroidx/media3/exoplayer/drm/DrmSessionEventListener;I)V

    invoke-static {v1, v3}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public drmSessionManagerError(Ljava/lang/Exception;)V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 190
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;

    .line 191
    iget-object v2, v1, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;->listener:Landroidx/media3/exoplayer/drm/DrmSessionEventListener;

    .line 192
    iget-object v1, v1, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;->handler:Landroid/os/Handler;

    new-instance v3, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, v2, p1}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher$$ExternalSyntheticLambda4;-><init>(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Landroidx/media3/exoplayer/drm/DrmSessionEventListener;Ljava/lang/Exception;)V

    invoke-static {v1, v3}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public drmSessionReleased()V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 220
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;

    .line 221
    iget-object v2, v1, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;->listener:Landroidx/media3/exoplayer/drm/DrmSessionEventListener;

    .line 222
    iget-object v1, v1, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;->handler:Landroid/os/Handler;

    new-instance v3, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, v2}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher$$ExternalSyntheticLambda3;-><init>(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Landroidx/media3/exoplayer/drm/DrmSessionEventListener;)V

    invoke-static {v1, v3}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method synthetic lambda$drmKeysLoaded$1$androidx-media3-exoplayer-drm-DrmSessionEventListener$EventDispatcher(Landroidx/media3/exoplayer/drm/DrmSessionEventListener;)V
    .locals 1

    .line 0
    iget v0, p0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->windowIndex:I

    iget-object p0, p0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 184
    invoke-interface {p1, v0, p0}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener;->onDrmKeysLoaded(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    return-void
.end method

.method synthetic lambda$drmKeysRemoved$4$androidx-media3-exoplayer-drm-DrmSessionEventListener$EventDispatcher(Landroidx/media3/exoplayer/drm/DrmSessionEventListener;)V
    .locals 1

    .line 0
    iget v0, p0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->windowIndex:I

    iget-object p0, p0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 214
    invoke-interface {p1, v0, p0}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener;->onDrmKeysRemoved(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    return-void
.end method

.method synthetic lambda$drmKeysRestored$3$androidx-media3-exoplayer-drm-DrmSessionEventListener$EventDispatcher(Landroidx/media3/exoplayer/drm/DrmSessionEventListener;)V
    .locals 1

    .line 0
    iget v0, p0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->windowIndex:I

    iget-object p0, p0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 204
    invoke-interface {p1, v0, p0}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener;->onDrmKeysRestored(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    return-void
.end method

.method synthetic lambda$drmSessionAcquired$0$androidx-media3-exoplayer-drm-DrmSessionEventListener$EventDispatcher(Landroidx/media3/exoplayer/drm/DrmSessionEventListener;I)V
    .locals 2

    .line 0
    iget v0, p0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->windowIndex:I

    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 173
    invoke-interface {p1, v0, v1}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener;->onDrmSessionAcquired(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    iget v0, p0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->windowIndex:I

    iget-object p0, p0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 174
    invoke-interface {p1, v0, p0, p2}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener;->onDrmSessionAcquired(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;I)V

    return-void
.end method

.method synthetic lambda$drmSessionManagerError$2$androidx-media3-exoplayer-drm-DrmSessionEventListener$EventDispatcher(Landroidx/media3/exoplayer/drm/DrmSessionEventListener;Ljava/lang/Exception;)V
    .locals 1

    .line 0
    iget v0, p0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->windowIndex:I

    iget-object p0, p0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 194
    invoke-interface {p1, v0, p0, p2}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener;->onDrmSessionManagerError(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Ljava/lang/Exception;)V

    return-void
.end method

.method synthetic lambda$drmSessionReleased$5$androidx-media3-exoplayer-drm-DrmSessionEventListener$EventDispatcher(Landroidx/media3/exoplayer/drm/DrmSessionEventListener;)V
    .locals 1

    .line 0
    iget v0, p0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->windowIndex:I

    iget-object p0, p0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 224
    invoke-interface {p1, v0, p0}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener;->onDrmSessionReleased(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    return-void
.end method

.method public removeEventListener(Landroidx/media3/exoplayer/drm/DrmSessionEventListener;)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 155
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;

    .line 156
    iget-object v2, v1, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;->listener:Landroidx/media3/exoplayer/drm/DrmSessionEventListener;

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 157
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public withParameters(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;
    .locals 1

    .line 134
    new-instance v0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    iget-object p0, p0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    return-object v0
.end method
